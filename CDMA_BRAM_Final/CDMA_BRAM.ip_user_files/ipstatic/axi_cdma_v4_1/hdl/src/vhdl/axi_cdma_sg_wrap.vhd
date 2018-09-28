-------------------------------------------------------------------------------
-- axi_cdma_sg_wrap
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma_sg_wrap.vhd
--
-- Description:
--
-- This file is the module wrapper for the AXI CDMA core when parameterized
-- for only Simple Mode DMA operations.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--
-- VHDL Libraries
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;


library unisim;
use unisim.vcomponents.all;

 
library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.all;


library axi_datamover_v5_1_11;
use axi_datamover_v5_1_11.axi_datamover;


library axi_sg_v4_1_3;
use axi_sg_v4_1_3.axi_sg;


library axi_cdma_v4_1_9;
use axi_cdma_v4_1_9.axi_cdma_pkg.all;
use axi_cdma_v4_1_9.axi_cdma_reset;
use axi_cdma_v4_1_9.axi_cdma_reg_module;
use axi_cdma_v4_1_9.axi_cdma_simple_cntlr;
use axi_cdma_v4_1_9.axi_cdma_sg_cntlr;
use axi_cdma_v4_1_9.axi_cdma_sf;


-------------------------------------------------------------------------------
entity  axi_cdma_sg_wrap is
  generic(

    -----------------------------------------------------------------------
    -- AXI Lite Register Interface Parameters
    -----------------------------------------------------------------------
    C_S_AXI_LITE_ADDR_WIDTH    : integer range 2 to 32    := 6;
        -- Address width of the AXI Lite Interface (bits)

    C_S_AXI_LITE_DATA_WIDTH    : integer range 32 to 32    := 32;
        -- Data width of the AXI Lite Interface (bits)

    C_AXI_LITE_IS_ASYNC        : Integer range  0 to 1     := 0;
       -- Specifies if the AXI Lite Register interface needs to
       -- be asynchronous to the CDMA data transport path clocking
       -- 0 = Use same clocking as data path
       -- 1 = Use special AXI Lite clock for the axi lite interface
     
       
    -----------------------------------------------------------------------
    -- DataMover Memory Map Master Interface Parameters
    -----------------------------------------------------------------------
    C_M_AXI_ADDR_WIDTH         : integer range 32 to 64    := 32;
        -- DataMover Master AXI Memory Map Address Width (bits)

    C_M_AXI_DATA_WIDTH         : integer range 32 to 1024   := 32;
        -- DataMover Master AXI Memory Map Data Width (bits)

    C_M_AXI_MAX_BURST_LEN      : integer range 2 to 256   := 16;
        -- DataMover Maximum burst length to use for AXI MMAP requests
        -- Allowed values are 16, 32, 64, 128, and 256 (data beats)

    C_INCLUDE_DRE              : integer range 0 to 1      := 0;
        -- Include or exclude DataMover Data Realignment (DRE)
        -- NOTE:  DRE is only available for 32 and 64 bit data widths
        -- 0 = Exclude DRE
        -- 1 = Include DRE

    C_USE_DATAMOVER_LITE       : integer range 0 to 1      := 0;
        -- Enable DataMover Lite mode
        -- NOTE:  Data widths limited to 32 and 64 bits, max burst
        -- limited to 16, 32, and 64 data beats, no DRE, 4K address
        -- guarding must be done by SW programmer.
        -- 0 = Normal DataMover mode
        -- 1 = Lite dataMover mode

    C_READ_ADDR_PIPE_DEPTH         : Integer range 1 to 30 := 4;
       -- This parameter specifies the depth of the DataMover
       -- read address pipelining queues for the Main data transport
       -- channels. The effective address pipelining on the AXI4 Read
       -- Address Channel will be the value assigned plus 2. 
    
    C_WRITE_ADDR_PIPE_DEPTH         : Integer range 1 to 30 := 4;
       -- This parameter specifies the depth of the DataMover
       -- write address pipelining queues for the Main data transport
       -- channel. The effective address pipelining on the AXI4 Write
       -- Address Channel will be the value assigned plus 2.



    -----------------------------------------------------------------------
    -- Store and Forward Parameters
    -----------------------------------------------------------------------
    C_INCLUDE_SF               : integer range 0 to 1      := 1;
        -- This parameter includes includes/omits Store and Forward.
    
    C_SF_FIFO_DEPTH            : Integer range 128 to 8192 := 128 ;
        -- This parameter sets the depth of the Store and Forward FIFO.
    
    
    
    -----------------------------------------------------------------------
    -- Scatter Gather Parameters
    -----------------------------------------------------------------------
    C_M_AXI_SG_ADDR_WIDTH      : integer range 32 to 64    := 32;
        -- Master AXI Memory Map Address Width for Scatter Gather
        -- R/W Port (bits)

    C_M_AXI_SG_DATA_WIDTH      : integer range 32 to 32    := 32;
        -- Master AXI Memory Map Data Width for Scatter Gather
        -- R/W Port (bits)

    C_DLYTMR_RESOLUTION        : integer range 1 to 100000 := 125;
        -- Interrupt Delay Timer resolution in clock ticks of axi_aclk



    -----------------------------------------------------------------------
    -- Soft Reset Assertion Time
    -----------------------------------------------------------------------
    C_SOFT_RST_TIME_CLKS      : integer range 1 to 64     := 8;
       -- Specifies the time of the soft reset assertion in
       -- axi_aclk clock periods.
    C_ACTUAL_ADDR             : integer range 32 to 64 := 32;

    -----------------------------------------------------------------------
    -- Target FPGA Family Parameter
    -----------------------------------------------------------------------
    C_FAMILY                   : string := "virtex7"
        -- Target FPGA Device Family

    );
  port (

    -----------------------------------------------------------------------
    -- Primary Clock 
    -----------------------------------------------------------------------
    axi_aclk                    : in  std_logic                         ;

 
    -----------------------------------------------------------------------
    -- Primary Reset Input (active low synchronous to axi_aclk) 
    -----------------------------------------------------------------------
    axi_resetn                  : in  std_logic                         ;

   
 
    -----------------------------------------------------------------------
    -- AXI Lite clock 
    -----------------------------------------------------------------------
    axi_lite_aclk               : in  std_logic                         ;
    
    -----------------------------------------------------------------------
    -- AXI Lite reset (active low synchronous to axi_lite_aclk) 
    -----------------------------------------------------------------------
    axi_lite_resetn             : in  std_logic                         ;
    
    
    
    -----------------------------------------------------------------------
    -- Interrupt output
    -----------------------------------------------------------------------
    cdma_introut                : out std_logic                         ;

 
    -----------------------------------------------------------------------
    -- Error Discrete output
    -----------------------------------------------------------------------
    cdma_error_out              : out std_logic                         ;


    ---------------------------------------------------------------------------------
    -- AXI Lite Register Access Interface
    ---------------------------------------------------------------------------------
    -- AXI Lite Write Address Channel                                    -- AXI4-Lite
    s_axi_lite_awready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_awvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_awaddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Data Channel                                       -- AXI4-Lite
    s_axi_lite_wready           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_wvalid           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_wdata            : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Response Channel                                   -- AXI4-Lite
    s_axi_lite_bready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_bvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_bresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Address Channel                                     -- AXI4-Lite
    s_axi_lite_arready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_arvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_araddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Data Channel                                        -- AXI4-Lite
    s_axi_lite_rready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_rvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_rdata            : out std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
    s_axi_lite_rresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite


    ----------------------------------------------------------------------------
    -- AXI DataMover Read Channel
    ----------------------------------------------------------------------------
    -- DataMover MMap Read Address Channel                               -- AXI4
    m_axi_arready               : in  std_logic                         ;-- AXI4
    m_axi_arvalid               : out std_logic                         ;-- AXI4
    m_axi_araddr                : out std_logic_vector                   -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)   ;-- AXI4
    m_axi_arlen                 : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_arsize                : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_arburst               : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_arprot                : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_arcache               : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- DataMover MMap Read Data Channel                                  -- AXI4
    m_axi_rready                : out std_logic                         ;-- AXI4
    m_axi_rvalid                : in  std_logic                         ;-- AXI4
    m_axi_rdata                 : in  std_logic_vector                   -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)   ;-- AXI4
    m_axi_rresp                 : in  std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_rlast                 : in  std_logic                         ;-- AXI4



    -----------------------------------------------------------------------------
    -- AXI DataMover Write Channel
    -----------------------------------------------------------------------------
    -- DataMover Write Address Channel                                    -- AXI4
    m_axi_awready               : in  std_logic                          ;-- AXI4
    m_axi_awvalid               : out std_logic                          ;-- AXI4
    m_axi_awaddr                : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_awlen                 : out std_logic_vector(7 downto 0)       ;-- AXI4
    m_axi_awsize                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_awburst               : out std_logic_vector(1 downto 0)       ;-- AXI4
    m_axi_awprot                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_awcache               : out std_logic_vector(3 downto 0)       ;-- AXI4
                                                                          -- AXI4
    -- DataMover Write Data Channel                                       -- AXI4
    m_axi_wready                : in  std_logic                          ;-- AXI4
    m_axi_wvalid                : out std_logic                          ;-- AXI4
    m_axi_wdata                 : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_wstrb                 : out std_logic_vector                    -- AXI4
                                      ((C_M_AXI_DATA_WIDTH/8)-1 downto 0);-- AXI4
    m_axi_wlast                 : out std_logic                          ;-- AXI4
                                                                          -- AXI4
    -- DataMover Write Response Channel                                   -- AXI4
    m_axi_bready                : out std_logic                          ;-- AXI4
    m_axi_bvalid                : in  std_logic                          ;-- AXI4
    m_axi_bresp                 : in  std_logic_vector(1 downto 0)       ;-- AXI4



    ----------------------------------------------------------------------------
    -- AXI Scatter Gather Interface
    ----------------------------------------------------------------------------
    -- Scatter Gather Write Address Channel                              -- AXI4
    m_axi_sg_awready            : in  std_logic                         ;-- AXI4
    m_axi_sg_awvalid            : out std_logic                         ;-- AXI4
    m_axi_sg_awaddr             : out std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;-- AXI4
    m_axi_sg_awlen              : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_sg_awsize             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_awburst            : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_sg_awprot             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_awcache            : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Write Data Channel                                 -- AXI4
    m_axi_sg_wready             : in  std_logic                         ;-- AXI4
    m_axi_sg_wvalid             : out std_logic                         ;-- AXI4
    m_axi_sg_wdata              : out std_logic_vector                   -- AXI4
                                      (C_M_AXI_SG_DATA_WIDTH-1 downto 0);-- AXI4
    m_axi_sg_wstrb              : out std_logic_vector                   -- AXI4
                                  ((C_M_AXI_SG_DATA_WIDTH/8)-1 downto 0);-- AXI4
    m_axi_sg_wlast              : out std_logic                         ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Write Response Channel                             -- AXI4
    m_axi_sg_bready             : out std_logic                         ;-- AXI4
    m_axi_sg_bvalid             : in  std_logic                         ;-- AXI4
    m_axi_sg_bresp              : in  std_logic_vector(1 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Read Address Channel                               -- AXI4
    m_axi_sg_arready            : in  std_logic                         ;-- AXI4
    m_axi_sg_arvalid            : out std_logic                         ;-- AXI4
    m_axi_sg_araddr             : out std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;-- AXI4
    m_axi_sg_arlen              : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_sg_arsize             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_arburst            : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_sg_arprot             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_arcache            : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Read Data Channel                                  -- AXI4
    m_axi_sg_rready             : out std_logic                         ;-- AXI4
    m_axi_sg_rvalid             : in  std_logic                         ;-- AXI4
    m_axi_sg_rdata              : in  std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_DATA_WIDTH-1 downto 0)  ;-- AXI4
    m_axi_sg_rresp              : in  std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_sg_rlast              : in  std_logic                         ;-- AXI4


    -- Debug test vector (Xilinx use only)
    axi_cdma_tstvec             : out std_logic_vector(31 downto 0)

    );






-----------------------------------------------------------------
-- End of PSFUtil MPD attributes
-----------------------------------------------------------------
end axi_cdma_sg_wrap;








-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_sg_wrap is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";





-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

-- General Use
 Constant LOGIC_LOW                   : std_logic := '0';
 Constant LOGIC_HIGH                  : std_logic := '1';



-- AXI CDMA Build Mode (This Wrapper is with SG); 1 = Scatter Gather Enabled
 constant CDMA_BUILD_MODE             : integer := 1;


-- Indicates that ACLK is synchronous to ch1_aclk and ch2_aclk 
 Constant ACLK_IS_SYNC                : integer := 0;
 

-- SG Channel 1 Include/omit
 Constant INCLUDE_CH1                 : integer := 1;

-- SG Channel 2 Include/omit
 Constant OMIT_CH2                    : integer := 0;

-- SG Include Update Engine
 Constant INCLUDE_UPDATE_ENG          : integer := 1;

-- SG Include Interrupt Controller
 Constant INCLUDE_IRPT_CNTLR          : integer := 1;

-- SG Include Delay Timer
 Constant INCLUDE_DLY_TIMER           : integer := 1;

 -- SG Fetch Master Stream Width
 Constant M_AXIS_SG_TDATA_WIDTH       : integer := 32;
 
 -- SG Pointer Update Stream Width
 Constant S_AXIS_UPDPTR_TDATA_WIDTH   : integer := 32;

 -- SG Status Update Stream Width
 Constant C_S_AXIS_UPDSTS_TDATA_WIDTH : integer := 33;

 -- SG Update Slave Stream Width
 Constant S_AXIS_SG_DATA_WIDTH        : integer := 34;

 -- SG Fetch Descriptor Queue Depth
 Constant SG_FTCH_DESC2QUEUE          : integer := 4;

 -- SG Update Descriptor Queue Depth
 --Constant SG_UPDT_DESC2QUEUE        : integer := 8; 
 Constant SG_UPDT_DESC2QUEUE          : integer := 4; 

 -- SG Ch1 number of descriptor words to fetch
 Constant SG_CH1_WORDS_TO_FETCH       : integer := 8;

 -- SG Ch1 number of descriptor words to update
 Constant SG_CH1_WORDS_TO_UPDATE      : integer := 1;

 -- SG Ch1 First Update word offset from desctiptor start
 Constant SG_CH1_FIRST_UPDATE_WORD    : integer := 7;

 -- SG Ch1 Stale Descriptor Error enable
 Constant SG_CH1_ENBL_STALE_ERROR     : integer := 1;



 -- SG Ch2 words to fetch (Not used in CDMA application)
 Constant SG_CH2_WORDS_TO_FETCH       : integer := 4;

 -- SG Ch2 words to update (Not used in CDMA application)
 Constant SG_CH2_WORDS_TO_UPDATE      : integer := 1;

 -- SG Ch2 First Update word offset from desctiptor start (Not used in CDMA application)
 Constant SG_CH2_FIRST_UPDATE_WORD    : integer := 0;

 -- SG Ch2 Stale Descriptor Error enable (Not used in CDMA application)
 Constant SG_CH2_ENBL_STALE_ERROR     : integer := 0;



-- AXI DataMover Include Status FIFO
 constant DM_INCLUDE_STS_FIFO           : integer := 1;

-- AXI DataMover Command / Status FIFO Depth
 constant DM_SG_CMDSTS_FIFO_DEPTH       : integer := 1;

-- AXI MM2S DataMover Full mode value
 constant MM2S_FULL_MODE                : integer := 1;

-- AXI MM2S DataMover Lite mode value
 constant MM2S_LITE_MODE                : integer := 2;

-- AXI S2MM DataMover Full mode value
 constant S2MM_FULL_MODE                : integer := 1;

-- AXI S2MM DataMover LITE mode value
 constant S2MM_LITE_MODE                : integer := 4;

-- AXI DataMover clocking mode
 constant DM_USE_SYNC_CLOCKS            : integer := 0;

-- AXI DataMover BTT Used width (Set the to the max allowed)
 constant DM_BTT_WIDTH                  : integer := 23;

-- AXI DataMover S2MM DRE Enable (set to disabled)
 constant DM_S2MM_DRE_DISABLED          : integer := 0;

-- AXI DataMover Include Store and Forward
 constant DM_OMIT_S2MM_STORE_FORWARD    : integer := 0;
 constant DM_ENABLE_S2MM_STORE_FORWARD  : integer := 1; 
 Constant STORE_FORWARD_CNTL            : integer := DM_OMIT_S2MM_STORE_FORWARD;
 
 

-- AXI DataMover Stream Backend width
 constant DM_STREAM_DWIDTH              : integer := C_M_AXI_DATA_WIDTH;

-- AXI DataMover Base status vector width
 constant BASE_STATUS_WIDTH             : integer := 8;

-- AXI DataMover S2MM status stream data width delta
-- if Store and Forward enabled
 Constant SF_ADDED_STS_WIDTH            : integer := 24;

-- AXI DataMover status stream data width (S2MM is based on mode of operation)
 constant DM_MM2S_STATUS_WIDTH          : integer := BASE_STATUS_WIDTH;
 constant DM_S2MM_STATUS_WIDTH          : integer := BASE_STATUS_WIDTH + 
                                                     (STORE_FORWARD_CNTL * 
                                                      SF_ADDED_STS_WIDTH);

-- DataMover Command Stream data Width in bits
 constant DM_CMD_WIDTH             : integer := 72+(C_M_AXI_ADDR_WIDTH-32);
-- constant DM_CMD_WIDTH             : integer := 104;


 -- SG Delay and Threshold field widths
 Constant DLY_THRESH_WIDTH         : integer := 8;

 -- SG Delay and Threshold zero values
 Constant IRQ_DLY_THRESH_ZEROS     : std_logic_vector(DLY_THRESH_WIDTH-1 downto 0) := (others => '0');

 -- SG Address zero value
 Constant SG_ADDR_ZEROS            : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');

 -- SG Descriptor Fetch data width
 Constant SG_FETCH_DWIDTH          : integer := M_AXIS_SG_TDATA_WIDTH;

 -- SG Descriptor Update data width
 Constant SG_UPDATE_DWIDTH         : integer := S_AXIS_SG_DATA_WIDTH;

 -- SG Pointer Update data value of zeroes
 Constant SG_UPDPTR_DATA_ZEROS     : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');

 -- SG Status Update data value of zeroes
 Constant SG_UPDSTS_DATA_ZEROS     : std_logic_vector(C_S_AXIS_UPDSTS_TDATA_WIDTH-1 downto 0) := (others => '0');

-- AXI DataMover pipeline depth constants
 Constant DM_READ_ADDR_PIPE_DEPTH  : integer := C_READ_ADDR_PIPE_DEPTH;
 Constant DM_WRITE_ADDR_PIPE_DEPTH : integer := C_WRITE_ADDR_PIPE_DEPTH;


  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_get_max
  --
  -- Function Description:
  --   Returns the greater of two integers.
  --
  -------------------------------------------------------------------
  function funct_get_max (value_in_1 : integer;
                          value_in_2 : integer)
                          return integer is

    Variable max_value : Integer := 0;

  begin

    If (value_in_1 > value_in_2) Then

      max_value := value_in_1;

    else

      max_value := value_in_2;

    End if;

    Return (max_value);

  end function funct_get_max;
  -------------------------------------------------------------------


  -- Function Name: funct_rnd2pwr_of_2
  --
  -- Function Description:
  --  Rounds the input value up to the nearest power of 2 between
  --  128 and 8192.
  --
  -------------------------------------------------------------------
  function funct_rnd2pwr_of_2 (input_value : integer) return integer is

    Variable temp_pwr2 : Integer := 128;

  begin

    if (input_value <= 128) then

       temp_pwr2 := 128;

    elsif (input_value <= 256) then

       temp_pwr2 := 256;

    elsif (input_value <= 512) then

       temp_pwr2 := 512;

    elsif (input_value <= 1024) then

       temp_pwr2 := 1024;

    elsif (input_value <= 2048) then

       temp_pwr2 := 2048;

    elsif (input_value <= 4096) then

       temp_pwr2 := 4096;

    else

       temp_pwr2 := 8192;

    end if;


    Return (temp_pwr2);

  end function funct_rnd2pwr_of_2;
  -------------------------------------------------------------------
 


 -- Calculates the minimum needed depth of the CDMA Store and Forward FIFO
 Constant PIPEDEPTH_BURST_LEN_PROD : integer :=
          (funct_get_max(4, 4)+2)
           * C_M_AXI_MAX_BURST_LEN;

 -- Assigns the depth of the CDMA Store and Forward FIFO to the nearest
 -- power of 2
 Constant SF_FIFO_DEPTH       : integer range 128 to 8192 :=
                                funct_rnd2pwr_of_2(PIPEDEPTH_BURST_LEN_PROD);



-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------

-- Reset Module signals
 signal sig_rst2lite_bside_reset       : std_logic := '0';
 signal sig_rst2lite_cside_reset       : std_logic := '0';
 
 signal sig_rst2reg_reset              : std_logic := '0';
 signal sig_rst2cntlr_reset            : std_logic := '0';
 signal sig_rst2sgcntlr_reset          : std_logic := '0';
 signal sig_rst2sg_resetn              : std_logic := '0';
 signal sig_rst2dm_resetn              : std_logic := '0';
 signal sig_rst2cntlr_halt             : std_logic := '0';
 signal sig_cntlr2rst_halt_cmplt       : std_logic := '0';
 signal sig_dm_mm2s_halt               : std_logic := '0';
 signal sig_dm_mm2s_halt_cmplt         : std_logic := '0';
 signal sig_dm_s2mm_halt               : std_logic := '0';
 signal sig_dm_s2mm_halt_cmplt         : std_logic := '0';

-- Register Module Signals
 signal sig_reg2cntlr_src_addr        : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2cntlr_dest_addr       : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2cntlr_btt             : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2cntlr_go              : std_logic := '0';
 signal sig_cntlr2reg_idle_set        : std_logic := '0';
 signal sig_cntlr2reg_idle_clr        : std_logic := '0';
 signal sig_cntlr2reg_decerr_set      : std_logic := '0';
 signal sig_cntlr2reg_slverr_set      : std_logic := '0';
 signal sig_cntlr2reg_interr_set      : std_logic := '0';
 signal sig_cntlr2reg_ioc_set         : std_logic := '0';
 signal sig_cntlr2reg_iocirpt_set     : std_logic := '0';
 signal sig_reg2rst_soft_reset        : std_logic := '0';
 signal sig_rst2reg_soft_reset_clr    : std_logic := '0';
 signal sig_reg2cntlr_sg_mode         : std_logic := '0';

-- DataMover MM2S error discrete
 signal sig_dm_mm2s_err               : std_logic := '0';

-- DataMover MM2S command Stream
 signal sig_cntl2mm2s_cmd_tdata       : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_mm2s2cntl_cmd_tready      : std_logic := '0';
 signal sig_cntl2mm2s_cmd_tvalid      : std_logic := '0';

-- DataMover MM2S status Stream
 signal sig_mm2s2cntl_sts_tdata       : std_logic_vector(DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_mm2s2cntl_sts_tstrb       : std_logic_vector((DM_MM2S_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_mm2s2cntl_sts_tvalid      : std_logic := '0';
 signal sig_cntl2mm2s_sts_tready      : std_logic := '0';

-- DataMover S2MM error discrete
 signal sig_dm_s2mm_err               : std_logic := '0';

-- DataMover S2MM command Stream
 signal sig_cntl2s2mm_cmd_tdata       : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_cntl2s2mm_cmd_tvalid      : std_logic := '0';
 signal sig_s2mm2cntl_cmd_tready      : std_logic := '0';

-- DataMover S2MM status Stream
 signal sig_s2mm2cntl_sts_tdata       : std_logic_vector(DM_S2MM_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_s2mm2cntl_sts_tstrb       : std_logic_vector((DM_S2MM_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_s2mm2cntl_sts_tvalid      : std_logic := '0';
 signal sig_cntl2s2mm_sts_tready      : std_logic := '0';

-- DataMover stream loopback hookup
 signal sig_mm2s_axis_tdata           : std_logic_vector(DM_STREAM_DWIDTH-1 downto 0)     := (others => '0');
 signal sig_mm2s_axis_tkeep           : std_logic_vector((DM_STREAM_DWIDTH/8)-1 downto 0) := (others => '0');
 signal sig_mm2s_axis_tlast           : std_logic := '0';
 signal sig_mm2s_axis_tvalid          : std_logic := '0';
 signal sig_mm2s_axis_tready          : std_logic := '0';

 -- SG/Register signals
 signal sig_reg2sg_dmacr                  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2sg_dmasr                  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2sg_curdesc                : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2sg_taildesc               : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2sgcntlr_currdesc_updated  : std_logic := '0';
 signal sig_reg2sg_tailpntr_updated       : std_logic := '0';
 signal sig_reg2sg_irqdelay_wren          : std_logic := '0';
 signal sig_reg2sg_irqthresh_wren         : std_logic := '0';

 signal sig_sg2reg_ftch_interr_set        : std_logic := '0';
 signal sig_sg2reg_ftch_slverr_set        : std_logic := '0';
 signal sig_sg2reg_ftch_decerr_set        : std_logic := '0';

 signal sig_sg2reg_updt_interr_set        : std_logic := '0';
 signal sig_sg2reg_updt_slverr_set        : std_logic := '0';
 signal sig_sg2reg_updt_decerr_set        : std_logic := '0';

 signal sig_sg2sgcntlr_ftch_error         : std_logic := '0';
 signal sig_sg2reg_ftch_error_addr        : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');

 signal sig_sg2sgcntlr_updt_error         : std_logic := '0';
 signal sig_sg2reg_updt_error_addr        : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');

 signal sig_sg2reg_irqdelay_status        : std_logic_vector(DLY_THRESH_WIDTH-1 downto 0) := (others => '0');
 signal sig_sg2reg_irqthresh_status       : std_logic_vector(DLY_THRESH_WIDTH-1 downto 0) := (others => '0');



 -- SG Controller signals
 signal sig_rst2sgcntl_halt               : std_logic := '0';
 signal sig_sgcntl2rst_halt_cmplt         : std_logic := '0';

 signal sig_sgcntl2reg_idle_set           : std_logic := '0';
 signal sig_sgcntl2reg_idle_clr           : std_logic := '0';

 signal sig_sgcntl2sg_pkt_sof             : std_logic := '0';
 signal sig_sgcntl2sg_pkt_eof             : std_logic := '0';

 signal sig_sg2sgcntl_ioc_irq_set         : std_logic := '0';
 signal sig_sg2sgcntl_dly_irq_set         : std_logic := '0';

 signal sig_sgcntl2reg_ioc_irq_set        : std_logic := '0';
 signal sig_sgcntl2reg_dly_irq_set        : std_logic := '0';

 signal sig_sg2sgcntlr_ftch_tdata         : std_logic_vector(SG_FETCH_DWIDTH-1 downto 0) := (others => '0');
 signal sig_sg2sgcntlr_ftch_tdata_new         : std_logic_vector(127+(3*(C_M_AXI_ADDR_WIDTH-32)) downto 0) := (others => '0');
 signal sig_sg2sgcntlr_ftch_tvalid        : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_tvalid_new        : std_logic := '0';
 signal sig_sgcntl2sg_ftch_tready         : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_tlast         : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_desc_available : std_logic := '0';

 signal sig_sg2sgcntlr_updptr_tready      : std_logic := '0';
 signal sig_sgcntl2sg_updptr_tvalid       : std_logic := '0';
 signal sig_sgcntl2sg_updptr_tdata        : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_sgcntl2sg_updptr_tlast        : std_logic := '0';

 signal sig_sg2sgcntlr_updsts_tready      : std_logic := '0';
 signal sig_sgcntl2sg_updsts_tvalid       : std_logic := '0';
 signal sig_sgcntl2sg_updsts_tdata        : std_logic_vector(C_S_AXIS_UPDSTS_TDATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_sgcntl2sg_updsts_tlast        : std_logic := '0';
 
 signal sig_sgcntlr2sg_run_stop           : std_logic := '0';
 signal sig_sgcntlr2sg_desc_flush         : std_logic := '0';

 signal sig_sg2sgcntlr_ftch_idle          : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_err_early     : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_stale_desc    : std_logic := '0';

 signal sig_sg2sgcntlr_updt_idle          : std_logic := '0';
 signal sig_sg2sgcntlr_updt_ioc_irq_set   : std_logic := '0';

 signal sig_sg2sgcntlr_dma_interr_set     : std_logic := '0';
 signal sig_sg2sgcntlr_dma_slverr_set     : std_logic := '0';
 signal sig_sg2sgcntlr_dma_decerr_set     : std_logic := '0';

 signal sig_sgcntlr2reg_dma_interr_set    : std_logic := '0';
 signal sig_sgcntlr2reg_dma_slverr_set    : std_logic := '0';
 signal sig_sgcntlr2reg_dma_decerr_set    : std_logic := '0';

 signal sig_sgcntlr2reg_new_curdesc_wren  : std_logic := '0';
 signal sig_sgcntlr2reg_new_curdesc       : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');


 -- Shared SG and Simple Mode register IF signals
 signal sig_composite_idle_set            : std_logic := '0';
 signal sig_composite_idle_clr            : std_logic := '0';
 signal sig_composite_iocirpt_set         : std_logic := '0';

 signal sig_composite_dm_decerr_set       : std_logic := '0';
 signal sig_composite_dm_slverr_set       : std_logic := '0';
 signal sig_composite_dm_interr_set       : std_logic := '0';


 -- DataMover input signals multiplexed between Simple and SG Mode controllers

 signal sig_dm_mm2s_cmd_tdata             : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_dm_mm2s_cmd_tvalid            : std_logic := '0';
 signal sig_dm_mm2s_sts_tready            : std_logic := '0';
 signal sig_dm_s2mm_cmd_tdata             : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_dm_s2mm_cmd_tvalid            : std_logic := '0';
 signal sig_dm_s2mm_sts_tready            : std_logic := '0';

 -- DataMover output signals shared between the Simple and SG Contorllers
 signal sig_dm_mm2s_cmd_tready            : std_logic := '0';
 signal sig_dm_mm2s_sts_tvalid            : std_logic := '0';
 signal sig_dm_mm2s_sts_tdata             : std_logic_vector(DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_dm_mm2s_sts_tkeep             : std_logic_vector((DM_MM2S_STATUS_WIDTH/8)-1 downto 0) := (others => '0');

 signal sig_dm_s2mm_cmd_tready            : std_logic := '0';
 signal sig_dm_s2mm_sts_tvalid            : std_logic := '0';



 -- SG DataMover Interface signals
 -- DataMover MM2S error discrete
 signal sig_mm2s2sgcntl_err               : std_logic := '0';

 -- DataMover MM2S command Stream
 signal sig_sgcntl2mm2s_cmd_tdata         : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_sgcntl2mm2s_cmd_tvalid        : std_logic := '0';
 signal sig_mm2s2sgcntl_cmd_tready        : std_logic := '0';

 -- DataMover MM2S status Stream
 signal sig_mm2s2sgcntl_sts_tdata         : std_logic_vector(DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_mm2s2sgcntl_sts_tstrb         : std_logic_vector((DM_MM2S_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_mm2s2sgcntl_sts_tvalid        : std_logic := '0';
 signal sig_sgcntl2mm2s_sts_tready        : std_logic := '0';

 -- DataMover S2MM error discrete
 signal sig_s2mm2sgcntl_err               : std_logic := '0';


 -- DataMover S2MM command Stream
 signal sig_sgcntl2s2mm_cmd_tdata         : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_sgcntl2s2mm_cmd_tvalid        : std_logic := '0';
 signal sig_s2mm2sgcntl_cmd_tready        : std_logic := '0';

 -- DataMover S2MM status Stream
 signal sig_s2mm2sgcntl_sts_tdata         : std_logic_vector(BASE_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_s2mm2sgcntl_sts_tstrb         : std_logic_vector((BASE_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_s2mm2sgcntl_sts_tvalid        : std_logic := '0';
 signal sig_sgcntl2s2mm_sts_tready        : std_logic := '0';

 -- DataMover halt control 
 signal sig_rst2mm2s_halt                 : std_logic := '0';
 signal sig_rst2s2mm_halt                 : std_logic := '0';
 signal sig_sgcntl2mm2s_halt              : std_logic := '0';
 signal sig_sgcntl2s2mm_halt              : std_logic := '0';

 
 
 -- DataMover Input Stream 
 signal sig_s2mm_axis_tready              : std_logic := '0';
 signal sig_s2mm_axis_tvalid              : std_logic := '0';
 signal sig_s2mm_axis_tdata               : std_logic_vector(DM_STREAM_DWIDTH-1 downto 0)     := (others => '0');
 signal sig_s2mm_axis_tkeep               : std_logic_vector((DM_STREAM_DWIDTH/8)-1 downto 0) := (others => '0');
 signal sig_s2mm_axis_tlast               : std_logic := '0';

 
 signal sig_dm_s2mm_sts_tdata             : std_logic_vector(DM_S2MM_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_dm_s2mm_sts_tkeep             : std_logic_vector((DM_S2MM_STATUS_WIDTH/8)-1 downto 0) := (others => '0');

 -- DataMover Address Pipe Controls
 signal sig_mm2s_allow_addr_req           : std_logic := '0';
 signal sig_mm2s_addr_req_posted          : std_logic := '0';
 signal sig_mm2s_rd_xfer_cmplt            : std_logic := '0';
 signal sig_s2mm_allow_addr_req           : std_logic := '0';
 signal sig_s2mm_addr_req_posted          : std_logic := '0';
 signal sig_s2mm_wr_xfer_cmplt            : std_logic := '0';
 signal sig_s2mm_ld_nxt_len               : std_logic := '0';
 signal sig_s2mm_wr_len                   : std_logic_vector(7 downto 0) := (others => '0');

 -- store and Forward module Reset
 signal sig_sf_reset                      : std_logic := '0';

 signal dma_keyhole_write                 : std_logic;
 signal dma_keyhole_read                  : std_logic; 
 signal dma_cyclic                        : std_logic; 

-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin


-------------------------------------------------------------------------------
-- AXI CDMA Test Vector (For Xilinx Internal Use Only)
-------------------------------------------------------------------------------

  -- Simple Mode (bits 7 downto 0)
   axi_cdma_tstvec(0)  <=  sig_reg2cntlr_go               ;
   axi_cdma_tstvec(1)  <=  sig_cntlr2reg_idle_set         ;
   axi_cdma_tstvec(2)  <=  sig_cntlr2reg_idle_clr         ;
   axi_cdma_tstvec(3)  <=  sig_cntlr2reg_iocirpt_set      ;
   axi_cdma_tstvec(4)  <=  sig_cntlr2reg_decerr_set       ;
   axi_cdma_tstvec(5)  <=  sig_cntlr2reg_slverr_set       ;
   axi_cdma_tstvec(6)  <=  sig_cntlr2reg_interr_set       ;
   axi_cdma_tstvec(7)  <= '0'                             ;
   
   
   
  -- SG Mode bits 31 downto 8)
   axi_cdma_tstvec(8)  <=  sig_sgcntlr2sg_run_stop        ;
   axi_cdma_tstvec(9)  <=  sig_sgcntl2sg_pkt_sof          ;
   axi_cdma_tstvec(10) <=  sig_sgcntl2sg_pkt_eof          ;
   axi_cdma_tstvec(11) <=  sig_sgcntl2reg_ioc_irq_set     ; 
   axi_cdma_tstvec(12) <=  sig_sgcntl2reg_dly_irq_set     ; 

   axi_cdma_tstvec(13) <=  sig_sg2sgcntlr_ftch_error      ;
   axi_cdma_tstvec(14) <=  sig_sg2sgcntlr_ftch_stale_desc ;
   axi_cdma_tstvec(15) <=  sig_sg2reg_ftch_interr_set     ;
   axi_cdma_tstvec(16) <=  sig_sg2reg_ftch_slverr_set     ;
   axi_cdma_tstvec(17) <=  sig_sg2reg_ftch_decerr_set     ;
                           
   axi_cdma_tstvec(18) <=  sig_sg2sgcntlr_updt_error      ;
   axi_cdma_tstvec(19) <=  sig_sg2reg_updt_interr_set     ;
   axi_cdma_tstvec(20) <=  sig_sg2reg_updt_slverr_set     ;
   axi_cdma_tstvec(21) <=  sig_sg2reg_updt_decerr_set     ;
                                                          
   axi_cdma_tstvec(22) <=  sig_sgcntlr2reg_dma_interr_set ;
   axi_cdma_tstvec(23) <=  sig_sgcntlr2reg_dma_slverr_set ;
   axi_cdma_tstvec(24) <=  sig_sgcntlr2reg_dma_decerr_set ;
   
   axi_cdma_tstvec(31 downto 25) <= (others => '0')       ;


   -- Create a postive reset for the Store and Forward module
   -- from the inverted DataMover active low reset.
   
   
   -- CR591254 change
   -- sig_sf_reset        <= not(sig_rst2dm_resetn)      ;
   sig_sf_reset        <= sig_rst2cntlr_reset      ;
 
 
 
 
 
 
 

-------------------------------------------------------------------------------
-- Module Instances
-------------------------------------------------------------------------------





   ------------------------------------------------------------
   -- Instance: I_RST_MODULE
   --
   -- Description:
   --  Instance for the Reset Module used with Simple Mode
   -- operation. It manages both hard and soft reset generation.
   --
   ------------------------------------------------------------
   I_RST_MODULE : entity  axi_cdma_v4_1_9.axi_cdma_reset
    generic map(

      C_AXI_LITE_IS_ASYNC     => C_AXI_LITE_IS_ASYNC          ,
      C_SOFT_RST_TIME_CLKS    => C_SOFT_RST_TIME_CLKS

     )
     port map(
       -- Primary Clock and Reset Sources
       axi_aclk                 => axi_aclk                   ,
       axi_resetn               => axi_resetn                 ,

       -- AXI Lite Clock and Reset Sources
       axi_lite_aclk            => axi_lite_aclk              ,
       axi_lite_resetn          => axi_lite_resetn            ,
                                                            

       -- CDMA Module hard reset outputs
       rst2lite_bside_reset     => sig_rst2lite_bside_reset   ,
       rst2lite_cside_reset     => sig_rst2lite_cside_reset   ,
       rst2reg_reset            => sig_rst2reg_reset          ,
       rst2cntlr_reset          => sig_rst2cntlr_reset        ,
       rst2sgcntlr_reset        => sig_rst2sgcntlr_reset      ,
       rst2sg_resetn            => sig_rst2sg_resetn          ,
       rst2dm_resetn            => sig_rst2dm_resetn          ,


       -- Soft Reset Request from Register module
       reg2rst_soft_reset_in    => sig_reg2rst_soft_reset     ,
       rst2reg_soft_reset_clr   => sig_rst2reg_soft_reset_clr ,


       -- CDMA Simple Controller halt
       rst2cntlr_halt           => sig_rst2cntlr_halt         ,
       cntlr2rst_halt_cmplt     => sig_cntlr2rst_halt_cmplt   ,

       -- CDMA SG Controller halt
       rst2sg_halt              => sig_rst2sgcntl_halt        ,
       sg2rst_halt_cmplt        => sig_sgcntl2rst_halt_cmplt  ,

       -- CDMA DatMover MM2S Halt
       rst2dm_mm2s_halt         => sig_rst2mm2s_halt          ,
       dm2rst_mm2s_halt_cmplt   => sig_dm_mm2s_halt_cmplt     ,

       -- CDMA DatMover S2MM Halt
       rst2dm_s2mm_halt         => sig_rst2s2mm_halt          ,
       dm2rst_s2mm_halt_cmplt   => sig_dm_s2mm_halt_cmplt

     );








  -------------------------------------------------------------
  -- Combinational Process
  --
  -- Label: REG_IF_MUX
  --
  -- Process Description:
  --  This process implements a mux for Register Module input
  -- signals that are shared between the Simple DMA mode and
  -- SG mode operations.
  --
  -------------------------------------------------------------
  REG_IF_MUX : process (sig_reg2cntlr_sg_mode,
                        sig_sgcntl2reg_idle_set        ,
                        sig_sgcntl2reg_idle_clr        ,
                        sig_sgcntl2reg_ioc_irq_set     ,
                        sig_sgcntlr2reg_dma_decerr_set ,
                        sig_sgcntlr2reg_dma_slverr_set ,
                        sig_sgcntlr2reg_dma_interr_set ,
                        sig_cntlr2reg_idle_set         ,
                        sig_cntlr2reg_idle_clr         ,
                        sig_cntlr2reg_iocirpt_set      ,
                        sig_cntlr2reg_decerr_set       ,
                        sig_cntlr2reg_slverr_set       ,
                        sig_cntlr2reg_interr_set
                        )
     begin

       case sig_reg2cntlr_sg_mode is
         when '1' => -- SG Mode Enabled

           sig_composite_idle_set        <= sig_sgcntl2reg_idle_set        ;
           sig_composite_idle_clr        <= sig_sgcntl2reg_idle_clr        ;
           sig_composite_iocirpt_set     <= sig_sgcntl2reg_ioc_irq_set     ;
           sig_composite_dm_decerr_set   <= sig_sgcntlr2reg_dma_decerr_set ;
           sig_composite_dm_slverr_set   <= sig_sgcntlr2reg_dma_slverr_set ;
           sig_composite_dm_interr_set   <= sig_sgcntlr2reg_dma_interr_set ;

         when others =>  -- Simple DMA Enabled

           sig_composite_idle_set        <=  sig_cntlr2reg_idle_set    ;
           sig_composite_idle_clr        <=  sig_cntlr2reg_idle_clr    ;
           sig_composite_iocirpt_set     <=  sig_cntlr2reg_iocirpt_set ;
           sig_composite_dm_decerr_set   <=  sig_cntlr2reg_decerr_set  ;
           sig_composite_dm_slverr_set   <=  sig_cntlr2reg_slverr_set  ;
           sig_composite_dm_interr_set   <=  sig_cntlr2reg_interr_set  ;

       end case;


     end process REG_IF_MUX;









  ------------------------------------------------------------
  -- Instance: I_HYBRID_REG_MODULE
  --
  -- Description:
  --  Instance for the Register Module used with Simple and
  -- SG Mode operations.
  --
  ------------------------------------------------------------
  I_HYBRID_REG_MODULE : entity axi_cdma_v4_1_9.axi_cdma_reg_module
    generic map(
      C_CDMA_BUILD_MODE           => CDMA_BUILD_MODE              ,
      C_S_AXI_LITE_ADDR_WIDTH     => C_S_AXI_LITE_ADDR_WIDTH      ,
      C_S_AXI_LITE_DATA_WIDTH     => C_S_AXI_LITE_DATA_WIDTH      ,
      C_AXI_LITE_IS_ASYNC         => C_AXI_LITE_IS_ASYNC          ,
      C_M_AXI_SG_ADDR_WIDTH       => C_M_AXI_ADDR_WIDTH
      )
    port map(
      
      -- AXI Lite Clock and Reset
      axi_lite_aclk               => axi_lite_aclk                 ,
      axi_lite_reset              => sig_rst2lite_bside_reset      ,

      -- AXI Lite Core side Reset
      axi_lite_cside_reset        => sig_rst2lite_cside_reset      ,
      
      -- AXI Lite Write Address Channel
      s_axi_lite_awvalid          => s_axi_lite_awvalid            ,
      s_axi_lite_awready          => s_axi_lite_awready            ,
      s_axi_lite_awaddr           => s_axi_lite_awaddr             ,

      -- AXI Lite Write Data Channel
      s_axi_lite_wvalid           => s_axi_lite_wvalid             ,
      s_axi_lite_wready           => s_axi_lite_wready             ,
      s_axi_lite_wdata            => s_axi_lite_wdata              ,

      -- AXI Lite Write Response Channel
      s_axi_lite_bresp            => s_axi_lite_bresp              ,
      s_axi_lite_bvalid           => s_axi_lite_bvalid             ,
      s_axi_lite_bready           => s_axi_lite_bready             ,

      -- AXI Lite Read Address Channel
      s_axi_lite_arvalid          => s_axi_lite_arvalid            ,
      s_axi_lite_arready          => s_axi_lite_arready            ,
      s_axi_lite_araddr           => s_axi_lite_araddr             ,

      -- AXI Lite Read Data Channel
      s_axi_lite_rvalid           => s_axi_lite_rvalid             ,
      s_axi_lite_rready           => s_axi_lite_rready             ,
      s_axi_lite_rdata            => s_axi_lite_rdata              ,
      s_axi_lite_rresp            => s_axi_lite_rresp              ,



      -- Register Clock and Reset
      axi_aclk                    => axi_aclk                      ,
      axi_reg_reset               => sig_rst2reg_reset             ,


      -- Composite Interrupt Output
      reg_introut                 => cdma_introut                  ,

      -- Composite error Output
      reg_error_out               => cdma_error_out                ,


      -- Soft Reset Control
      reg_soft_reset_request      => sig_reg2rst_soft_reset        ,
      reg_soft_reset_clr          => sig_rst2reg_soft_reset_clr    ,




      -- Simple DMA Go Control
      reg_dma_go                  =>  sig_reg2cntlr_go              ,


      -- SG Mode control
      reg_dma_sg_mode             =>  sig_reg2cntlr_sg_mode         ,

      -- Key Hole write
      dma_keyhole_write           => dma_keyhole_write        ,

      -- Key Hole read
      dma_keyhole_read            => dma_keyhole_read         ,

      -- Key Hole read
      dma_cyclic                  => dma_cyclic               ,



      -- CDMASR Control inputs
      reg_idle_set                => sig_composite_idle_set        ,
      reg_idle_clr                => sig_composite_idle_clr        ,
      reg_ioc_irq_set             => sig_composite_iocirpt_set     ,
      reg_dly_irq_set             => sig_sgcntl2reg_dly_irq_set    ,

      -- Status from SG indicating current Delay and Thresh cntr values
      reg_irqdelay_status         => sig_sg2reg_irqdelay_status   ,
      reg_irqthresh_status        => sig_sg2reg_irqthresh_status  ,

      -- Controls to SG to load new DMACR Delay and Thresh values
      reg_irqthresh_wren          => sig_reg2sg_irqthresh_wren     ,
      reg_irqdelay_wren           => sig_reg2sg_irqdelay_wren      ,


      -- DataMover Errors
      reg_dma_decerr_set          =>  sig_composite_dm_decerr_set  ,
      reg_dma_slverr_set          =>  sig_composite_dm_slverr_set  ,
      reg_dma_interr_set          =>  sig_composite_dm_interr_set  ,



      -- SG Descriptor Fetch errors
      reg_ftch_interr_set         =>  sig_sg2reg_ftch_interr_set   ,
      reg_ftch_slverr_set         =>  sig_sg2reg_ftch_slverr_set   ,
      reg_ftch_decerr_set         =>  sig_sg2reg_ftch_decerr_set   ,
      reg_ftch_error_addr         =>  sig_sg2reg_ftch_error_addr   ,

      -- SG Descriptor Update errors
      reg_updt_interr_set         =>  sig_sg2reg_updt_interr_set   ,
      reg_updt_slverr_set         =>  sig_sg2reg_updt_slverr_set   ,
      reg_updt_decerr_set         =>  sig_sg2reg_updt_decerr_set   ,
      reg_updt_error_addr         =>  sig_sg2reg_updt_error_addr   ,


      -- From SG Controller CURDESC Update
      reg_new_curdesc_wren        =>  sig_sgcntlr2reg_new_curdesc_wren ,
      reg_new_curdesc             =>  sig_sgcntlr2reg_new_curdesc      ,

      -- To SG TAILDESC Update (also used to start SG operations in SGMode)
      reg_tailpntr_updated        =>  sig_reg2sg_tailpntr_updated     ,
      reg_currdesc_updated        =>  sig_reg2sgcntlr_currdesc_updated,

    -- Register State Out
      reg_dmacr                   => sig_reg2sg_dmacr              ,
      reg_dmasr                   => sig_reg2sg_dmasr              ,
      reg_curdesc                 => sig_reg2sg_curdesc            ,
      reg_taildesc                => sig_reg2sg_taildesc           ,
      reg_src_addr                => sig_reg2cntlr_src_addr        ,
      reg_dest_addr               => sig_reg2cntlr_dest_addr       ,
      reg_btt                     => sig_reg2cntlr_btt

    );









  ------------------------------------------------------------
  -- Instance: I_SIMPLE_DMA_CNTLR
  --
  -- Description:
  --
  --  Control Logic module for the Simple Mode CDMA operation.
  --
  ------------------------------------------------------------
  I_SIMPLE_DMA_CNTLR : entity  axi_cdma_v4_1_9.axi_cdma_simple_cntlr
    generic map(

      C_DM_CMD_WIDTH              => DM_CMD_WIDTH            ,
      C_DM_DATA_WIDTH             => C_M_AXI_DATA_WIDTH      ,
      C_DM_MM2S_STATUS_WIDTH      => DM_MM2S_STATUS_WIDTH    ,
      C_DM_S2MM_STATUS_WIDTH      => BASE_STATUS_WIDTH       ,
      C_ADDR_WIDTH                => C_M_AXI_ADDR_WIDTH      ,
      C_BTT_WIDTH                 => DM_BTT_WIDTH            ,
      C_FAMILY                    => C_FAMILY

    )
    port map(

      -- Clock and reset
      axi_aclk                    => axi_aclk                         ,
      axi_reset                   => sig_rst2cntlr_reset              ,

      -- Halt request
      rst2cntlr_halt              => sig_rst2cntlr_halt               ,
      cntlr2rst_halt_cmplt        => sig_cntlr2rst_halt_cmplt         ,



      -- Register Module Start and Mode Controls
      reg2cntlr_go                => sig_reg2cntlr_go                 ,
      reg2cntlr_sg_mode           => sig_reg2cntlr_sg_mode            ,
      burst_type_read             => dma_keyhole_read                  ,
      burst_type_write            => dma_keyhole_write                 ,


      -- Register Module command qualifiers
      reg2cntlr_src_addr          => sig_reg2cntlr_src_addr           ,
      reg2cntlr_dest_addr         => sig_reg2cntlr_dest_addr          ,
      reg2cntlr_btt               => sig_reg2cntlr_btt(DM_BTT_WIDTH-1
                                                       downto 0)      ,


      -- General Status Bit controls
      cntlr2reg_idle_set          => sig_cntlr2reg_idle_set           ,
      cntlr2reg_idle_clr          => sig_cntlr2reg_idle_clr           ,
      cntlr2reg_iocirpt_set       => sig_cntlr2reg_iocirpt_set        ,


      -- DataMover Error Status bit controls
      cntlr2reg_decerr_set        => sig_cntlr2reg_decerr_set         ,
      cntlr2reg_slverr_set        => sig_cntlr2reg_slverr_set         ,
      cntlr2reg_interr_set        => sig_cntlr2reg_interr_set         ,



      -- DataMover MM2S Command Interface Ports (AXI Stream)
      mm2s2cntl_cmd_tready        => sig_mm2s2cntl_cmd_tready         ,
      cntl2mm2s_cmd_tvalid        => sig_cntl2mm2s_cmd_tvalid         ,
      cntl2mm2s_cmd_tdata         => sig_cntl2mm2s_cmd_tdata          ,

      -- DataMover MM2S Status Interface Ports (AXI Stream)
      cntl2mm2s_sts_tready        => sig_cntl2mm2s_sts_tready         ,
      mm2s2cntl_sts_tvalid        => sig_mm2s2cntl_sts_tvalid         ,
      mm2s2cntl_sts_tdata         => sig_dm_mm2s_sts_tdata            ,
      mm2s2cntl_sts_tstrb         => sig_dm_mm2s_sts_tkeep            ,

      -- DataMover MM2S error discrete
      mm2s2cntl_err               => sig_dm_mm2s_err                  ,



      -- DataMover S2MM Command Interface Ports (AXI Stream)
      cntl2s2mm_cmd_tdata         => sig_cntl2s2mm_cmd_tdata          ,
      cntl2s2mm_cmd_tvalid        => sig_cntl2s2mm_cmd_tvalid         ,
      s2mm2cntl_cmd_tready        => sig_s2mm2cntl_cmd_tready         ,

      -- DataMover S2MM Status Interface Ports (AXI Stream)
      s2mm2cntl_sts_tdata         => sig_s2mm2sgcntl_sts_tdata        ,
      s2mm2cntl_sts_tstrb         => sig_s2mm2sgcntl_sts_tstrb        ,
      s2mm2cntl_sts_tvalid        => sig_s2mm2cntl_sts_tvalid         ,
      cntl2s2mm_sts_tready        => sig_cntl2s2mm_sts_tready         ,

      -- DataMover S2MM error discrete
      s2mm2cntl_err               => sig_dm_s2mm_err

    );





  ------------------------------------------------------------
  -- Instance: I_SG_CNTLR
  --
  -- Description:
  --
  --  Control Logic module for the Scatter Gather Mode CDMA
  --  operation.
  --
  ------------------------------------------------------------
  I_SG_CNTLR : entity  axi_cdma_v4_1_9.axi_cdma_sg_cntlr
    generic map(

      C_SG_ADDR_WIDTH               => C_M_AXI_SG_ADDR_WIDTH            ,
      C_SG_FETCH_DWIDTH             => SG_FETCH_DWIDTH                  ,
      C_SG_PTR_UPDATE_DWIDTH        => C_M_AXI_SG_ADDR_WIDTH, --S_AXIS_UPDPTR_TDATA_WIDTH        ,
      C_SG_STS_UPDATE_DWIDTH        => C_S_AXIS_UPDSTS_TDATA_WIDTH      ,
      C_DM_CMD_WIDTH                => DM_CMD_WIDTH                     ,
      C_DM_DATA_WIDTH               => C_M_AXI_DATA_WIDTH               ,
      C_DM_MM2S_STATUS_WIDTH        => DM_MM2S_STATUS_WIDTH             ,
      C_DM_S2MM_STATUS_WIDTH        => BASE_STATUS_WIDTH                ,
      C_FAMILY                      => C_FAMILY

    )
    port map(

      -- Clock and reset
      axi_aclk                      => axi_aclk                         ,
      axi_reset                     => sig_rst2sgcntlr_reset            ,

      -- Halt request
      rst2sgcntl_halt               => sig_rst2sgcntl_halt              ,
      sgcntl2rst_halt_cmplt         => sig_sgcntl2rst_halt_cmplt        ,
      sgcntlr2sg_desc_flush         =>  sig_sgcntlr2sg_desc_flush       ,

      -- MM2S Type of Burst, 1 is increment, 0 is fixed
      burst_type_read               => dma_keyhole_read                  ,

      -- S2MM Type of Burst, 1 is increment, 0 is fixed
      burst_type_write              => dma_keyhole_write                 ,

      -- Register Module Start and Mode Controls
      reg2sgcntl_sg_mode            => sig_reg2cntlr_sg_mode            ,
      reg2sgcntl_tailpntr_updated   => sig_reg2sg_tailpntr_updated      ,
      reg2sgcntl_currdesc_updated   => sig_reg2sgcntlr_currdesc_updated ,

      -- Misc Controls to SG
      sgcntlr2sg_run_stop           =>  sig_sgcntlr2sg_run_stop         ,  

      -- Idle bit control to Register
      sgcntl2reg_idle_set           =>  sig_sgcntl2reg_idle_set         ,  
      sgcntl2reg_idle_clr           =>  sig_sgcntl2reg_idle_clr         ,  

      -- SOF/EOF control to SG
      sgcntl2sg_pkt_sof             =>  sig_sgcntl2sg_pkt_sof           ,  
      sgcntl2sg_pkt_eof             =>  sig_sgcntl2sg_pkt_eof           ,  

      -- Interrupt status from SG
      sg2sgcntl_ioc_irq_set         =>  sig_sg2sgcntl_ioc_irq_set       ,  
      sg2sgcntl_dly_irq_set         =>  sig_sg2sgcntl_dly_irq_set       ,  
                                                                          
      -- Interrupt control to Register
      sgcntl2reg_ioc_irq_set        =>  sig_sgcntl2reg_ioc_irq_set      ,  
      sgcntl2reg_dly_irq_set        =>  sig_sgcntl2reg_dly_irq_set      ,  

      -- Descriptor Fetch Stream from SG
      sgcntl2sg_ftch_tready         =>  sig_sgcntl2sg_ftch_tready       ,  
      sg2sgcntlr_ftch_tvalid        =>  sig_sg2sgcntlr_ftch_tvalid      ,  
      sg2sgcntlr_ftch_tvalid_new        =>  sig_sg2sgcntlr_ftch_tvalid_new      ,  
      sg2sgcntlr_ftch_tdata         =>  sig_sg2sgcntlr_ftch_tdata       ,  
      sg2sgcntlr_ftch_tdata_new         =>  sig_sg2sgcntlr_ftch_tdata_new       ,  
      sg2sgcntlr_ftch_tlast         =>  sig_sg2sgcntlr_ftch_tlast       ,  
      sig_sg2sgcntlr_ftch_desc_available => sig_sg2sgcntlr_ftch_desc_available ,

      -- Descriptor Pointer Update Stream to SG
      sg2sgcntlr_updptr_tready      =>  sig_sg2sgcntlr_updptr_tready    ,  
      sgcntl2sg_updptr_tvalid       =>  sig_sgcntl2sg_updptr_tvalid     ,  
      sgcntl2sg_updptr_tdata        =>  sig_sgcntl2sg_updptr_tdata      ,  
      sgcntl2sg_updptr_tlast        =>  sig_sgcntl2sg_updptr_tlast      ,  

      -- Descriptor Status Update Stream to SG
      sg2sgcntlr_updsts_tready      =>  sig_sg2sgcntlr_updsts_tready    ,  
      sgcntl2sg_updsts_tvalid       =>  sig_sgcntl2sg_updsts_tvalid     ,  
      sgcntl2sg_updsts_tdata        =>  sig_sgcntl2sg_updsts_tdata      ,  
      sgcntl2sg_updsts_tlast        =>  sig_sgcntl2sg_updsts_tlast      ,  

      -- Descriptor Fetch status from SG
      sg2sgcntlr_ftch_idle          =>  sig_sg2sgcntlr_ftch_idle        ,  
      sg2sgcntlr_ftch_err_early     =>  sig_sg2sgcntlr_ftch_err_early   ,  
      sg2sgcntlr_ftch_stale_desc    =>  sig_sg2sgcntlr_ftch_stale_desc  ,  
      sg2sgcntlr_ftch_error         =>  sig_sg2sgcntlr_ftch_error       ,  

      -- Descriptor Update status from SG
      sg2sgcntlr_updt_idle          =>  sig_sg2sgcntlr_updt_idle        ,  
      sg2sgcntlr_updt_ioc_irq_set   =>  sig_sg2sgcntlr_updt_ioc_irq_set ,  
      sg2sgcntlr_updt_error         =>  sig_sg2sgcntlr_updt_error       ,  

      -- Echo of Main DataMover detected errors from SG
      sg2sgcntlr_dma_interr_set     =>  sig_sg2sgcntlr_dma_interr_set   ,  
      sg2sgcntlr_dma_slverr_set     =>  sig_sg2sgcntlr_dma_slverr_set   ,  
      sg2sgcntlr_dma_decerr_set     =>  sig_sg2sgcntlr_dma_decerr_set   ,  

      -- Main DM Error bit controls to Register
      sgcntlr2reg_dma_interr_set    =>  sig_sgcntlr2reg_dma_interr_set  ,  
      sgcntlr2reg_dma_slverr_set    =>  sig_sgcntlr2reg_dma_slverr_set  ,  
      sgcntlr2reg_dma_decerr_set    =>  sig_sgcntlr2reg_dma_decerr_set  ,  

      -- Current DEscriptor Update control to Register
      sgcntlr2reg_new_curdesc_wren  => sig_sgcntlr2reg_new_curdesc_wren ,  
      sgcntlr2reg_new_curdesc       => sig_sgcntlr2reg_new_curdesc      ,  




      -- DataMover MM2S Command Interface Ports (AXI Stream)
      mm2s2sgcntl_cmd_tready        =>  sig_mm2s2sgcntl_cmd_tready      ,  
      sgcntl2mm2s_cmd_tvalid        =>  sig_sgcntl2mm2s_cmd_tvalid      ,  
      sgcntl2mm2s_cmd_tdata         =>  sig_sgcntl2mm2s_cmd_tdata       ,  

      -- DataMover MM2S Status Interface Ports (AXI Stream)
      sgcntl2mm2s_sts_tready        =>  sig_sgcntl2mm2s_sts_tready      ,  
      mm2s2sgcntl_sts_tvalid        =>  sig_mm2s2sgcntl_sts_tvalid      ,  
      mm2s2sgcntl_sts_tdata         =>  sig_dm_mm2s_sts_tdata           ,  
      mm2s2sgcntl_sts_tstrb         =>  sig_dm_mm2s_sts_tkeep           ,  

      -- DataMover MM2S error discrete
      mm2s2sgcntl_err               =>  sig_dm_mm2s_err                 ,  
    
      -- DataMover MM2S Halt 
      sgcntl2mm2s_halt              =>  sig_sgcntl2mm2s_halt            ,  
      mm2s2sgcntl_halt_cmplt        =>  sig_dm_mm2s_halt_cmplt          ,  
    
    
              
      -- DataMover S2MM Command Interface Ports (AXI Stream)
      s2mm2sgcntl_cmd_tready        =>  sig_s2mm2sgcntl_cmd_tready      ,  
      sgcntl2s2mm_cmd_tvalid        =>  sig_sgcntl2s2mm_cmd_tvalid      ,  
      sgcntl2s2mm_cmd_tdata         =>  sig_sgcntl2s2mm_cmd_tdata       ,  

      -- DataMover S2MM Status Interface Ports (AXI Stream)
      sgcntl2s2mm_sts_tready        =>  sig_sgcntl2s2mm_sts_tready      ,  
      s2mm2sgcntl_sts_tvalid        =>  sig_s2mm2sgcntl_sts_tvalid      ,  
      s2mm2sgcntl_sts_tdata         =>  sig_s2mm2sgcntl_sts_tdata       ,  
      s2mm2sgcntl_sts_tstrb         =>  sig_s2mm2sgcntl_sts_tstrb       ,  

      -- DataMover S2MM error discrete
      s2mm2sgcntl_err               =>  sig_dm_s2mm_err                 ,  
      
      -- DataMover MM2S Halt                                 
      sgcntl2s2mm_halt              =>  sig_sgcntl2s2mm_halt            ,  
      s2mm2sgcntl_halt_cmplt        =>  sig_dm_s2mm_halt_cmplt             
      
    );




-------------------------------------------------------------------------------
-- Scatter Gather Engine
-------------------------------------------------------------------------------
I_SG_ENGINE : entity  axi_sg_v4_1_3.axi_sg
    generic map(
        C_M_AXI_SG_ADDR_WIDTH       => C_M_AXI_SG_ADDR_WIDTH         ,
        C_M_AXI_SG_DATA_WIDTH       => C_M_AXI_SG_DATA_WIDTH         ,
        C_M_AXIS_SG_TDATA_WIDTH     => M_AXIS_SG_TDATA_WIDTH         ,
        C_S_AXIS_UPDPTR_TDATA_WIDTH => S_AXIS_UPDPTR_TDATA_WIDTH     , 
        C_S_AXIS_UPDSTS_TDATA_WIDTH => C_S_AXIS_UPDSTS_TDATA_WIDTH   , 
        C_SG_FTCH_DESC2QUEUE        => SG_FTCH_DESC2QUEUE            ,
        C_SG_UPDT_DESC2QUEUE        => SG_UPDT_DESC2QUEUE            ,
        C_SG_CH1_WORDS_TO_FETCH     => SG_CH1_WORDS_TO_FETCH         ,
        C_SG_CH1_WORDS_TO_UPDATE    => SG_CH1_WORDS_TO_UPDATE        ,
        C_SG_CH1_FIRST_UPDATE_WORD  => SG_CH1_FIRST_UPDATE_WORD      ,
        C_SG_CH1_ENBL_STALE_ERROR   => SG_CH1_ENBL_STALE_ERROR       ,
        C_SG_CH2_WORDS_TO_FETCH     => SG_CH2_WORDS_TO_FETCH         ,
        C_SG_CH2_WORDS_TO_UPDATE    => SG_CH2_WORDS_TO_UPDATE        ,
        C_SG_CH2_FIRST_UPDATE_WORD  => SG_CH2_FIRST_UPDATE_WORD      ,
        C_SG_CH2_ENBL_STALE_ERROR   => SG_CH2_ENBL_STALE_ERROR       ,
        C_INCLUDE_CH1               => INCLUDE_CH1                   ,
        C_INCLUDE_CH2               => OMIT_CH2                      ,  
        C_INCLUDE_DESC_UPDATE       => INCLUDE_UPDATE_ENG            ,
        C_INCLUDE_INTRPT            => INCLUDE_IRPT_CNTLR            ,
        C_INCLUDE_DLYTMR            => INCLUDE_DLY_TIMER             ,
        C_DLYTMR_RESOLUTION         => C_DLYTMR_RESOLUTION           ,
        C_AXIS_IS_ASYNC             => 0                             ,                
        C_ENABLE_MULTI_CHANNEL      => 0                             ,
        C_ENABLE_CDMA               => 1                             ,
        C_NUM_S2MM_CHANNELS         => 1                             ,
        C_NUM_MM2S_CHANNELS         => 1                             ,
        C_ACTUAL_ADDR               => C_ACTUAL_ADDR                 ,
        C_FAMILY                    => C_FAMILY
    )
    port map(
        -----------------------------------------------------------------------
        -- AXI Scatter Gather Interface
        -----------------------------------------------------------------------
        m_axi_sg_aclk               => axi_aclk                             ,
        m_axi_mm2s_aclk             => axi_aclk                             ,
        p_reset_n                   => '1'                                  ,
                                   
        m_axi_sg_aresetn            => sig_rst2sg_resetn                    ,
        
        dm_resetn                   => sig_rst2dm_resetn                    ,

        sg_ctl                      => "00000000"                           ,

        -- Scatter Gather Write Address Channel
        m_axi_sg_awaddr             => m_axi_sg_awaddr                      ,
        m_axi_sg_awlen              => m_axi_sg_awlen                       ,
        m_axi_sg_awsize             => m_axi_sg_awsize                      ,
        m_axi_sg_awburst            => m_axi_sg_awburst                     ,
        m_axi_sg_awprot             => m_axi_sg_awprot                      ,
        m_axi_sg_awcache            => m_axi_sg_awcache                     ,
        m_axi_sg_awuser             => open, --m_axi_sg_awcache                     ,
        m_axi_sg_awvalid            => m_axi_sg_awvalid                     ,
        m_axi_sg_awready            => m_axi_sg_awready                     ,

        -- Scatter Gather Write Data Channel
        m_axi_sg_wdata              => m_axi_sg_wdata                       ,
        m_axi_sg_wstrb              => m_axi_sg_wstrb                       ,
        m_axi_sg_wlast              => m_axi_sg_wlast                       ,
        m_axi_sg_wvalid             => m_axi_sg_wvalid                      ,
        m_axi_sg_wready             => m_axi_sg_wready                      ,

        -- Scatter Gather Write Response Channel
        m_axi_sg_bresp              => m_axi_sg_bresp                       ,
        m_axi_sg_bvalid             => m_axi_sg_bvalid                      ,
        m_axi_sg_bready             => m_axi_sg_bready                      ,

        -- Scatter Gather Read Address Channel
        m_axi_sg_araddr             => m_axi_sg_araddr                      ,
        m_axi_sg_arlen              => m_axi_sg_arlen                       ,
        m_axi_sg_arsize             => m_axi_sg_arsize                      ,
        m_axi_sg_arburst            => m_axi_sg_arburst                     ,
        m_axi_sg_arprot             => m_axi_sg_arprot                      ,
        m_axi_sg_arcache            => m_axi_sg_arcache                     ,
        m_axi_sg_aruser             => open, --m_axi_sg_arcache                     ,
        m_axi_sg_arvalid            => m_axi_sg_arvalid                     ,
        m_axi_sg_arready            => m_axi_sg_arready                     ,

        -- Memory Map to Stream Scatter Gather Read Data Channel
        m_axi_sg_rdata              => m_axi_sg_rdata                       ,
        m_axi_sg_rresp              => m_axi_sg_rresp                       ,
        m_axi_sg_rlast              => m_axi_sg_rlast                       ,
        m_axi_sg_rvalid             => m_axi_sg_rvalid                      ,
        m_axi_sg_rready             => m_axi_sg_rready                      ,


        -- Channel 1 Control and Status
        ch1_run_stop                => sig_sgcntlr2sg_run_stop              , 
        ch1_cyclic                  => dma_cyclic,
        ch1_desc_flush              => sig_sgcntlr2sg_desc_flush            , 
        ch1_cntrl_strm_stop         => '0'                                  ,

        ch1_ftch_idle               => sig_sg2sgcntlr_ftch_idle             , 
        ch1_ftch_interr_set         => sig_sg2reg_ftch_interr_set           , 
        ch1_ftch_slverr_set         => sig_sg2reg_ftch_slverr_set           , 
        ch1_ftch_decerr_set         => sig_sg2reg_ftch_decerr_set           , 
        ch1_ftch_err_early          => sig_sg2sgcntlr_ftch_err_early        , 
        ch1_ftch_stale_desc         => sig_sg2sgcntlr_ftch_stale_desc       , 

        ch1_updt_idle               => sig_sg2sgcntlr_updt_idle             , 
        ch1_updt_ioc_irq_set        => sig_sg2sgcntlr_updt_ioc_irq_set      , 
        ch1_updt_interr_set         => sig_sg2reg_updt_interr_set           , 
        ch1_updt_slverr_set         => sig_sg2reg_updt_slverr_set           , 
        ch1_updt_decerr_set         => sig_sg2reg_updt_decerr_set           , 

        ch1_dma_interr_set          => sig_sg2sgcntlr_dma_interr_set        , 
        ch1_dma_slverr_set          => sig_sg2sgcntlr_dma_slverr_set        , 
        ch1_dma_decerr_set          => sig_sg2sgcntlr_dma_decerr_set        , 

        ch1_tailpntr_enabled        => sig_reg2sg_dmacr(DMACR_TAILPEN_BIT)  , 
        ch1_taildesc_wren           => sig_reg2sg_tailpntr_updated          , 
        ch1_taildesc                => sig_reg2sg_taildesc                  , 
        ch1_curdesc                 => sig_reg2sg_curdesc                   , 

        -- Channel 1 Interrupt Coalescing Signals
        ch1_irqthresh_rstdsbl       => LOGIC_LOW                            ,
        ch1_dlyirq_dsble            => sig_reg2sg_dmasr(DMASR_DLYIRQ_BIT)              ,  
        ch1_irqdelay_wren           => sig_reg2sg_irqdelay_wren                        ,  
        ch1_irqdelay                => sig_reg2sg_dmacr(DMACR_IRQDELAY_MSB_BIT downto     
                                                        DMACR_IRQDELAY_LSB_BIT)        ,  

        ch1_irqthresh_wren          => sig_reg2sg_irqthresh_wren                       ,  
        ch1_irqthresh               => sig_reg2sg_dmacr(DMACR_IRQTHRESH_MSB_BIT downto    
                                                        DMACR_IRQTHRESH_LSB_BIT)       ,  

        ch1_packet_sof              => sig_sgcntl2sg_pkt_sof                ,  
        ch1_packet_eof              => sig_sgcntl2sg_pkt_eof                ,  
        ch1_ioc_irq_set             => sig_sg2sgcntl_ioc_irq_set            ,  
        ch1_dly_irq_set             => sig_sg2sgcntl_dly_irq_set            ,  
        ch1_irqdelay_status         => sig_sg2reg_irqdelay_status           ,  
        ch1_irqthresh_status        => sig_sg2reg_irqthresh_status          ,  

        -- Channel 1 AXI Fetch Stream Out
        m_axis_ch1_ftch_aclk        => axi_aclk                             ,
        m_axis_ch1_ftch_tdata       => sig_sg2sgcntlr_ftch_tdata            ,  
        m_axis_ch1_ftch_tdata_new       => sig_sg2sgcntlr_ftch_tdata_new            ,  
        m_axis_ch1_ftch_tvalid      => sig_sg2sgcntlr_ftch_tvalid           ,  
        m_axis_ch1_ftch_tvalid_new      => sig_sg2sgcntlr_ftch_tvalid_new           ,  
        m_axis_ch1_ftch_tready      => sig_sgcntl2sg_ftch_tready            ,  
        m_axis_ch1_ftch_tlast       => sig_sg2sgcntlr_ftch_tlast            ,  
        m_axis_ftch1_desc_available  => sig_sg2sgcntlr_ftch_desc_available,


        -- Channel 1 Pointer Update Stream In
        s_axis_ch1_updt_aclk        =>  axi_aclk                            ,
        s_axis_ch1_updtptr_tdata    =>  sig_sgcntl2sg_updptr_tdata          , 
        s_axis_ch1_updtptr_tvalid   =>  sig_sgcntl2sg_updptr_tvalid         ,  
        s_axis_ch1_updtptr_tready   =>  sig_sg2sgcntlr_updptr_tready        ,  
        s_axis_ch1_updtptr_tlast    =>  sig_sgcntl2sg_updptr_tlast          ,  
                                                                               
        -- Channel 1 Status Update Stream In
        s_axis_ch1_updtsts_tdata    =>  sig_sgcntl2sg_updsts_tdata          , 
        s_axis_ch1_updtsts_tvalid   =>  sig_sgcntl2sg_updsts_tvalid         ,  
        s_axis_ch1_updtsts_tready   =>  sig_sg2sgcntlr_updsts_tready        ,  
        s_axis_ch1_updtsts_tlast    =>  sig_sgcntl2sg_updsts_tlast          ,  
        
        
        -- Channel 2 Control and Status
        ch2_run_stop                => LOGIC_LOW                  ,
        ch2_cyclic                  => '0',
        ch2_desc_flush              => LOGIC_LOW                  ,
        ch2_ftch_idle               => open                       ,
        ch2_ftch_interr_set         => open                       ,
        ch2_ftch_slverr_set         => open                       ,
        ch2_ftch_decerr_set         => open                       ,
        ch2_ftch_err_early          => open                       ,
        ch2_ftch_stale_desc         => open                       ,
        ch2_updt_idle               => open                       ,
        ch2_updt_ioc_irq_set        => open                       ,
        ch2_updt_interr_set         => open                       ,
        ch2_updt_slverr_set         => open                       ,
        ch2_updt_decerr_set         => open                       ,
        ch2_dma_interr_set          => open                       ,
        ch2_dma_slverr_set          => open                       ,
        ch2_dma_decerr_set          => open                       ,
        ch2_tailpntr_enabled        => LOGIC_LOW                  ,
        ch2_taildesc_wren           => LOGIC_LOW                  ,
        ch2_taildesc                => SG_ADDR_ZEROS              ,
        ch2_curdesc                 => SG_ADDR_ZEROS              ,

        -- Channel 2 Interrupt Coalescing Signals
        ch2_irqthresh_rstdsbl       => LOGIC_LOW                  ,
        ch2_dlyirq_dsble            => LOGIC_LOW                  ,
        ch2_irqdelay_wren           => LOGIC_LOW                  ,
        ch2_irqdelay                => IRQ_DLY_THRESH_ZEROS       ,
        ch2_irqthresh_wren          => LOGIC_LOW                  ,
        ch2_irqthresh               => IRQ_DLY_THRESH_ZEROS       ,
        ch2_packet_sof              => LOGIC_LOW                  ,
        ch2_packet_eof              => LOGIC_LOW                  ,
        ch2_ioc_irq_set             => open                       ,
        ch2_dly_irq_set             => open                       ,
        ch2_irqdelay_status         => open                       ,
        ch2_irqthresh_status        => open                       ,

        -- Channel 2 AXI Fetch Stream Out
        m_axis_ch2_ftch_aclk        => axi_aclk                   , 
        m_axis_ch2_ftch_tdata       => open                       ,
        m_axis_ch2_ftch_tvalid      => open                       ,
        m_axis_ch2_ftch_tready      => LOGIC_LOW                  ,
        m_axis_ch2_ftch_tlast       => open                       ,

        -- Channel 2 Pointer Update Stream In
        s_axis_ch2_updt_aclk        =>  axi_aclk                  ,
        s_axis_ch2_updtptr_tdata    =>  SG_UPDPTR_DATA_ZEROS      , 
        s_axis_ch2_updtptr_tvalid   =>  LOGIC_LOW                 ,  
        s_axis_ch2_updtptr_tready   =>  open                      ,  
        s_axis_ch2_updtptr_tlast    =>  LOGIC_LOW                 ,  
                                                                            
        -- Channel 2 Status Update Stream In
        s_axis_ch2_updtsts_tdata    =>  SG_UPDSTS_DATA_ZEROS      , 
        s_axis_ch2_updtsts_tvalid   =>  LOGIC_LOW                 ,  
        s_axis_ch2_updtsts_tready   =>  open                      ,  
        s_axis_ch2_updtsts_tlast    =>  LOGIC_LOW                 ,  
        
        
        -- Error addresses
        ftch_error                  => sig_sg2sgcntlr_ftch_error  ,
        ftch_error_addr             => sig_sg2reg_ftch_error_addr ,
        
        updt_error                  => sig_sg2sgcntlr_updt_error  ,
        updt_error_addr             => sig_sg2reg_updt_error_addr
    );










-------------------------------------------------------------
-- Combinational Process
--
-- Label: DM_IF_MUX
--
-- Process Description:
--  THis process implements a multiplexer for the input controls
-- to the Main dataMover that are driven by the Simple Mode
-- Controller or the SG Mode Controller.
--
-------------------------------------------------------------
DM_IF_MUX : process (sig_reg2cntlr_sg_mode      ,
                     sig_sgcntl2mm2s_cmd_tdata  ,
                     sig_sgcntl2mm2s_cmd_tvalid ,
                     sig_sgcntl2mm2s_sts_tready ,
                     sig_sgcntl2s2mm_cmd_tdata  ,
                     sig_sgcntl2s2mm_cmd_tvalid ,
                     sig_sgcntl2s2mm_sts_tready ,
                     sig_cntl2mm2s_cmd_tdata    ,
                     sig_cntl2mm2s_cmd_tvalid   ,
                     sig_cntl2mm2s_sts_tready   ,
                     sig_cntl2s2mm_cmd_tdata    ,
                     sig_cntl2s2mm_cmd_tvalid   ,
                     sig_cntl2s2mm_sts_tready   ,
                     sig_sgcntl2mm2s_halt       ,
                     sig_sgcntl2s2mm_halt       ,
                     sig_rst2mm2s_halt          ,
                     sig_rst2s2mm_halt
                     )
   begin

     case sig_reg2cntlr_sg_mode is
       when '1' => -- SG Mode Enabled

         sig_dm_mm2s_cmd_tdata    <= sig_sgcntl2mm2s_cmd_tdata  ;
         sig_dm_mm2s_cmd_tvalid   <= sig_sgcntl2mm2s_cmd_tvalid ;
         sig_dm_mm2s_sts_tready   <= sig_sgcntl2mm2s_sts_tready ;
         sig_dm_s2mm_cmd_tdata    <= sig_sgcntl2s2mm_cmd_tdata  ;
         sig_dm_s2mm_cmd_tvalid   <= sig_sgcntl2s2mm_cmd_tvalid ;
         sig_dm_s2mm_sts_tready   <= sig_sgcntl2s2mm_sts_tready ;
         sig_dm_mm2s_halt         <= sig_sgcntl2mm2s_halt       ;
         sig_dm_s2mm_halt         <= sig_sgcntl2s2mm_halt       ;

       when others =>  -- Simple DMA Enabled

         sig_dm_mm2s_cmd_tdata    <= sig_cntl2mm2s_cmd_tdata   ;
         sig_dm_mm2s_cmd_tvalid   <= sig_cntl2mm2s_cmd_tvalid  ;
         sig_dm_mm2s_sts_tready   <= sig_cntl2mm2s_sts_tready  ;
         sig_dm_s2mm_cmd_tdata    <= sig_cntl2s2mm_cmd_tdata   ;
         sig_dm_s2mm_cmd_tvalid   <= sig_cntl2s2mm_cmd_tvalid  ;
         sig_dm_s2mm_sts_tready   <= sig_cntl2s2mm_sts_tready  ;
         sig_dm_mm2s_halt         <= sig_rst2mm2s_halt         ;
         sig_dm_s2mm_halt         <= sig_rst2s2mm_halt         ;

     end case;


   end process DM_IF_MUX;



 -------------------------------------------------------------
 -- Combinational Process
 --
 -- Label: DM_RDY_VLD_DEMUX
 --
 -- Process Description:
 --  This process implements a demultiplexer for the DataMover
 -- Ready/Valid signals driven back to the Simple Mode Controller
 -- and the SG Mode Controller. Data and Strobes are not
 -- Demux'd.
 --
 -------------------------------------------------------------
 DM_RDY_VLD_DEMUX : process (sig_reg2cntlr_sg_mode  ,
                             sig_dm_mm2s_cmd_tready ,
                             sig_dm_mm2s_sts_tvalid ,
                             sig_dm_s2mm_cmd_tready ,
                             sig_dm_s2mm_sts_tvalid
                             )
    begin

      case sig_reg2cntlr_sg_mode is
        when '1' =>  -- SG Mode Enabled

          sig_mm2s2cntl_cmd_tready   <= '0';
          sig_mm2s2sgcntl_cmd_tready <= sig_dm_mm2s_cmd_tready;

          sig_mm2s2cntl_sts_tvalid   <= '0';
          sig_mm2s2sgcntl_sts_tvalid <= sig_dm_mm2s_sts_tvalid;

          sig_s2mm2cntl_cmd_tready   <= '0';
          sig_s2mm2sgcntl_cmd_tready <= sig_dm_s2mm_cmd_tready;

          sig_s2mm2cntl_sts_tvalid   <= '0';
          sig_s2mm2sgcntl_sts_tvalid <= sig_dm_s2mm_sts_tvalid;

        when others =>  -- Simple DMA Mode Enabled

          sig_mm2s2cntl_cmd_tready   <= sig_dm_mm2s_cmd_tready;
          sig_mm2s2sgcntl_cmd_tready <= '0';

          sig_mm2s2cntl_sts_tvalid   <= sig_dm_mm2s_sts_tvalid;
          sig_mm2s2sgcntl_sts_tvalid <= '0';

          sig_s2mm2cntl_cmd_tready   <= sig_dm_s2mm_cmd_tready;
          sig_s2mm2sgcntl_cmd_tready <= '0';

          sig_s2mm2cntl_sts_tvalid   <= sig_dm_s2mm_sts_tvalid;
          sig_s2mm2sgcntl_sts_tvalid <= '0';

      end case;

    end process DM_RDY_VLD_DEMUX;



  
  
  
  
  
  ---------------------------------------------------------------------------------------
  -- DataMover and support

  
  -- Rip the basic status output from the DataMover S2MM status reply stream
  sig_s2mm2sgcntl_sts_tdata <=  sig_dm_s2mm_sts_tdata(BASE_STATUS_WIDTH-1 downto 0);
  sig_s2mm2sgcntl_sts_tstrb <=  sig_dm_s2mm_sts_tkeep((BASE_STATUS_WIDTH/8)-1 downto 0);

  
  
  
  ------------------------------------------------------------
  -- Instance: I_DATAMOVER
  --
  -- Description:
  --
  -- Data Path DataMover
  -- Reads data from the AXI MMAP Read Channel and Writes the data
  -- to the AXI MMAP Write Channel via commands from the Controller
  -- Module.
  --
  --
  ------------------------------------------------------------
  I_DATAMOVER : entity axi_datamover_v5_1_11.axi_datamover
    generic map(
      C_INCLUDE_MM2S              => MM2S_FULL_MODE               ,
      C_M_AXI_MM2S_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH           ,
      C_M_AXI_MM2S_DATA_WIDTH     => C_M_AXI_DATA_WIDTH           ,
      C_M_AXIS_MM2S_TDATA_WIDTH   => DM_STREAM_DWIDTH             ,
      C_INCLUDE_MM2S_STSFIFO      => DM_INCLUDE_STS_FIFO          ,
      C_MM2S_STSCMD_FIFO_DEPTH    => DM_SG_CMDSTS_FIFO_DEPTH      ,
      C_MM2S_STSCMD_IS_ASYNC      => DM_USE_SYNC_CLOCKS           ,
      C_INCLUDE_MM2S_DRE          => C_INCLUDE_DRE                ,
      C_MM2S_BURST_SIZE           => C_M_AXI_MAX_BURST_LEN        ,
      C_MM2S_BTT_USED             => DM_BTT_WIDTH                 ,
      C_MM2S_ADDR_PIPE_DEPTH      => DM_READ_ADDR_PIPE_DEPTH      ,
      C_MM2S_INCLUDE_SF           => 0                            ,
  
      C_ENABLE_CACHE_USER         => 0                            ,
      C_ENABLE_SKID_BUF           => "11000"                      ,
      C_CMD_WIDTH                 => DM_CMD_WIDTH                 ,

      C_INCLUDE_S2MM              => S2MM_FULL_MODE               ,
      C_M_AXI_S2MM_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH           ,
      C_M_AXI_S2MM_DATA_WIDTH     => C_M_AXI_DATA_WIDTH           ,
      C_S_AXIS_S2MM_TDATA_WIDTH   => DM_STREAM_DWIDTH             ,
      C_INCLUDE_S2MM_STSFIFO      => DM_INCLUDE_STS_FIFO          ,
      C_S2MM_STSCMD_FIFO_DEPTH    => DM_SG_CMDSTS_FIFO_DEPTH      ,
      C_S2MM_STSCMD_IS_ASYNC      => DM_USE_SYNC_CLOCKS           ,
      C_INCLUDE_S2MM_DRE          => DM_S2MM_DRE_DISABLED         ,
      C_S2MM_BURST_SIZE           => C_M_AXI_MAX_BURST_LEN        ,
      C_S2MM_BTT_USED             => DM_BTT_WIDTH                 ,
      C_S2MM_SUPPORT_INDET_BTT    => STORE_FORWARD_CNTL           ,
      C_S2MM_ADDR_PIPE_DEPTH      => DM_WRITE_ADDR_PIPE_DEPTH     ,
      C_S2MM_INCLUDE_SF           => 0                            ,
      C_FAMILY                    => C_FAMILY
    )
    port map(
      -- MM2S Primary Clock / Reset input
      m_axi_mm2s_aclk             => axi_aclk                   ,
      m_axi_mm2s_aresetn          => sig_rst2dm_resetn          ,

      -- MM2S Soft Shutdown
      mm2s_halt                   => sig_dm_mm2s_halt           ,
      mm2s_halt_cmplt             => sig_dm_mm2s_halt_cmplt     ,

      -- MM2S Error output discrete
      mm2s_err                    => sig_dm_mm2s_err            ,

      -- Memory Map to Stream Command FIFO and Status FIFO Async CLK/RST --------------
      m_axis_mm2s_cmdsts_aclk     => LOGIC_LOW                  ,
      m_axis_mm2s_cmdsts_aresetn  => LOGIC_HIGH                 ,

      -- User Command Interface Ports (AXI Stream)
      s_axis_mm2s_cmd_tvalid      => sig_dm_mm2s_cmd_tvalid     ,
      s_axis_mm2s_cmd_tready      => sig_dm_mm2s_cmd_tready     ,
      s_axis_mm2s_cmd_tdata       => sig_dm_mm2s_cmd_tdata      ,

      -- User Status Interface Ports (AXI Stream)
      m_axis_mm2s_sts_tvalid      => sig_dm_mm2s_sts_tvalid     ,
      m_axis_mm2s_sts_tready      => sig_dm_mm2s_sts_tready     ,
      m_axis_mm2s_sts_tdata       => sig_dm_mm2s_sts_tdata      ,
      m_axis_mm2s_sts_tkeep       => sig_dm_mm2s_sts_tkeep      ,
      m_axis_mm2s_sts_tlast       => open                       ,

   
      -- Address Posting contols
      mm2s_allow_addr_req         => sig_mm2s_allow_addr_req    ,
      mm2s_addr_req_posted        => sig_mm2s_addr_req_posted   ,
      mm2s_rd_xfer_cmplt          => sig_mm2s_rd_xfer_cmplt     ,
      
   
      -- MM2S AXI Address Channel I/O  --------------------------------------
      m_axi_mm2s_arid             => open                       ,
      m_axi_mm2s_araddr           => m_axi_araddr               ,
      m_axi_mm2s_arlen            => m_axi_arlen                ,
      m_axi_mm2s_arsize           => m_axi_arsize               ,
      m_axi_mm2s_arburst          => m_axi_arburst              ,
      m_axi_mm2s_arprot           => m_axi_arprot               ,
      m_axi_mm2s_arcache          => m_axi_arcache              ,
      m_axi_mm2s_aruser           => open, --m_axi_arcache              ,
      m_axi_mm2s_arvalid          => m_axi_arvalid              ,
      m_axi_mm2s_arready          => m_axi_arready              ,

      -- MM2S AXI MMap Read Data Channel I/O  -------------------------------
      m_axi_mm2s_rdata            => m_axi_rdata                ,
      m_axi_mm2s_rresp            => m_axi_rresp                ,
      m_axi_mm2s_rlast            => m_axi_rlast                ,
      m_axi_mm2s_rvalid           => m_axi_rvalid               ,
      m_axi_mm2s_rready           => m_axi_rready               ,

      -- MM2S AXI Master Stream Channel I/O  --------------------------------
      m_axis_mm2s_tdata           => sig_mm2s_axis_tdata        ,
      m_axis_mm2s_tkeep           => sig_mm2s_axis_tkeep        ,
      m_axis_mm2s_tlast           => sig_mm2s_axis_tlast        ,
      m_axis_mm2s_tvalid          => sig_mm2s_axis_tvalid       ,
      m_axis_mm2s_tready          => sig_mm2s_axis_tready       ,

      -- Testing Support I/O
      mm2s_dbg_sel                => (others => '0')            ,
      mm2s_dbg_data               => open                       ,

      -- S2MM Primary Clock/Reset input
      m_axi_s2mm_aclk             => axi_aclk                    ,
      m_axi_s2mm_aresetn          => sig_rst2dm_resetn          ,

      -- S2MM Soft Shutdown
      s2mm_halt                   => sig_dm_s2mm_halt           ,
      s2mm_halt_cmplt             => sig_dm_s2mm_halt_cmplt     ,

      -- S2MM Error output discrete
      s2mm_err                    => sig_dm_s2mm_err            ,

      -- Stream to Memory Map Command FIFO and Status FIFO I/O --------------
      m_axis_s2mm_cmdsts_awclk    => LOGIC_LOW                  ,
      m_axis_s2mm_cmdsts_aresetn  => LOGIC_HIGH                 ,

      -- User Command Interface Ports (AXI Stream)
      s_axis_s2mm_cmd_tvalid      => sig_dm_s2mm_cmd_tvalid     ,
      s_axis_s2mm_cmd_tready      => sig_dm_s2mm_cmd_tready     ,
      s_axis_s2mm_cmd_tdata       => sig_dm_s2mm_cmd_tdata      ,

      -- User Status Interface Ports (AXI Stream)
      m_axis_s2mm_sts_tvalid      => sig_dm_s2mm_sts_tvalid     ,
      m_axis_s2mm_sts_tready      => sig_dm_s2mm_sts_tready     ,
      m_axis_s2mm_sts_tdata       => sig_dm_s2mm_sts_tdata      ,
      m_axis_s2mm_sts_tkeep       => sig_dm_s2mm_sts_tkeep      ,
      m_axis_s2mm_sts_tlast       => open                       ,
                                                                   
   
      -- Address posting controls
      s2mm_allow_addr_req         => sig_s2mm_allow_addr_req    ,
      s2mm_addr_req_posted        => sig_s2mm_addr_req_posted   ,
      s2mm_wr_xfer_cmplt          => sig_s2mm_wr_xfer_cmplt     ,
      s2mm_ld_nxt_len             => sig_s2mm_ld_nxt_len        ,
      s2mm_wr_len                 => sig_s2mm_wr_len            ,
      
      
     

      -- S2MM AXI Address Channel I/O  --------------------------------------
      m_axi_s2mm_awid             => open                       ,
      m_axi_s2mm_awaddr           => m_axi_awaddr               ,
      m_axi_s2mm_awlen            => m_axi_awlen                ,
      m_axi_s2mm_awsize           => m_axi_awsize               ,
      m_axi_s2mm_awburst          => m_axi_awburst              ,
      m_axi_s2mm_awprot           => m_axi_awprot               ,
      m_axi_s2mm_awcache          => m_axi_awcache              ,
      m_axi_s2mm_awuser           => open, --m_axi_awcache              ,
      m_axi_s2mm_awvalid          => m_axi_awvalid              ,
      m_axi_s2mm_awready          => m_axi_awready              ,

      -- S2MM AXI MMap Write Data Channel I/O  ------------------------------
      m_axi_s2mm_wdata            => m_axi_wdata                ,
      m_axi_s2mm_wstrb            => m_axi_wstrb                ,
      m_axi_s2mm_wlast            => m_axi_wlast                ,
      m_axi_s2mm_wvalid           => m_axi_wvalid               ,
      m_axi_s2mm_wready           => m_axi_wready               ,

      -- S2MM AXI MMap Write response Channel I/O  --------------------------
      m_axi_s2mm_bresp            => m_axi_bresp                ,
      m_axi_s2mm_bvalid           => m_axi_bvalid               ,
      m_axi_s2mm_bready           => m_axi_bready               ,

      -- S2MM AXI Slave Stream Channel I/O  ---------------------------------
      s_axis_s2mm_tdata           => sig_s2mm_axis_tdata        ,
      s_axis_s2mm_tkeep           => sig_s2mm_axis_tkeep        ,
      s_axis_s2mm_tlast           => sig_s2mm_axis_tlast        ,
      s_axis_s2mm_tvalid          => sig_s2mm_axis_tvalid       ,
      s_axis_s2mm_tready          => sig_s2mm_axis_tready       ,

      -- Testing Support I/O
      s2mm_dbg_sel                => (others => '0')            ,
      s2mm_dbg_data               => open
    );



 
 
 
 
 
 
 
 
 ------------------------------------------------------------
 -- If Generate
 --
 -- Label: GEN_INCLUDE_SF
 --
 -- If Generate Description:
 --   This IfGen includes the Store and Forward module
 --
 --
 ------------------------------------------------------------
 GEN_INCLUDE_SF : if (C_INCLUDE_SF = 1) generate
 
 
    begin
 
         
      ------------------------------------------------------------
      -- Instance: I_STORE_FORWARD 
      --
      -- Description:
      --   This is the instance for the AXI CDMA Store and Forward
      -- Module.  
      --
      ------------------------------------------------------------
       I_STORE_FORWARD : entity axi_cdma_v4_1_9.axi_cdma_sf
       generic map (
           
           C_WR_ADDR_PIPE_DEPTH   =>  DM_WRITE_ADDR_PIPE_DEPTH,
           C_SF_FIFO_DEPTH        =>  SF_FIFO_DEPTH         , 
           C_MAX_BURST_LEN        =>  C_M_AXI_MAX_BURST_LEN   , 
           C_DRE_IS_USED          =>  C_INCLUDE_DRE           ,
           C_STREAM_DWIDTH        =>  C_M_AXI_DATA_WIDTH      , 
           C_FAMILY               =>  C_FAMILY               

         )
       port map (

           -- Clock input
           aclk                    => axi_aclk       ,  
       
           -- Reset input
           reset                   => sig_sf_reset   ,  
         
         
          -- DataMover Read Side Address Pipelining control Interface ----
           ok_to_post_rd_addr      => sig_mm2s_allow_addr_req  ,  
           rd_addr_posted          => sig_mm2s_addr_req_posted ,
           rd_xfer_cmplt           => sig_mm2s_rd_xfer_cmplt   ,
             
          -- Read Side Stream In from DataMover MM2S ---------------------
           sf2sin_tready           => sig_mm2s_axis_tready     ,  
           sin2sf_tvalid           => sig_mm2s_axis_tvalid     ,  
           sin2sf_tdata            => sig_mm2s_axis_tdata      ,        
           sin2sf_tkeep            => sig_mm2s_axis_tkeep      ,          
           sin2sf_tlast            => sig_mm2s_axis_tlast      ,  
                    
                     
          -- DataMover Write Side Address Pipelining control Interface ---
           ok_to_post_wr_addr      => sig_s2mm_allow_addr_req  ,  
           wr_addr_posted          => sig_s2mm_addr_req_posted ,  
           wr_xfer_cmplt           => sig_s2mm_wr_xfer_cmplt   ,  
           wr_ld_nxt_len           => sig_s2mm_ld_nxt_len      ,
           wr_len                  => sig_s2mm_wr_len          ,
           
          -- Write Side Stream Out to DataMover S2MM  --------------------
           sout2sf_tready          => sig_s2mm_axis_tready     ,  
           sf2sout_tvalid          => sig_s2mm_axis_tvalid     ,  
           sf2sout_tdata           => sig_s2mm_axis_tdata      ,  
           sf2sout_tkeep           => sig_s2mm_axis_tkeep      ,  
           sf2sout_tlast           => sig_s2mm_axis_tlast        
      

         );

 
    end generate GEN_INCLUDE_SF;
 
 
 
 
 
 
 
 
 
 ------------------------------------------------------------
 -- If Generate
 --
 -- Label: GEN_OMIT_SF
 --
 -- If Generate Description:
 --   This IfGen includes the Store and Forward module
 --
 --
 ------------------------------------------------------------
 GEN_OMIT_SF : if (C_INCLUDE_SF = 0) generate
 
 
    begin
 
 
      sig_mm2s_allow_addr_req <= LOGIC_HIGH;
 
      sig_s2mm_allow_addr_req <= LOGIC_HIGH;
 
 
 
      sig_mm2s_axis_tready    <= sig_s2mm_axis_tready ;  
      sig_s2mm_axis_tvalid    <= sig_mm2s_axis_tvalid ;  
      sig_s2mm_axis_tdata     <= sig_mm2s_axis_tdata  ;  
      sig_s2mm_axis_tkeep     <= sig_mm2s_axis_tkeep  ;  
      sig_s2mm_axis_tlast     <= sig_mm2s_axis_tlast  ;  
 
 
 
    end generate GEN_OMIT_SF;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
end implementation;
