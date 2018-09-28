-------------------------------------------------------------------------------
-- axi_cdma
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
-- Filename:          axi_cdma.vhd
-- Description: This entity is the top level entity for the AXI CDMA core.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library axi_cdma_v4_1_9;
use axi_cdma_v4_1_9.axi_cdma_pkg.all;
use axi_cdma_v4_1_9.axi_cdma_simple_wrap;
use axi_cdma_v4_1_9.axi_cdma_sg_wrap;



-------------------------------------------------------------------------------
entity  axi_cdma is
  generic(

    -----------------------------------------------------------------------
    -- AXI Lite Register Interface Parameters
    -----------------------------------------------------------------------
    C_S_AXI_LITE_ADDR_WIDTH    : integer range 2 to 32    := 6;
        -- Address width of the AXI Lite Interface (bits)

    C_S_AXI_LITE_DATA_WIDTH    : integer range 32 to 32    := 32;
        -- Data width of the AXI Lite Interface (bits)

    C_AXI_LITE_IS_ASYNC        : Integer range  0 to 1     :=  0;
       -- Specifies if the AXI Lite Register interface needs to
       -- be asynchronous to the CDMA data transport path clocking
       -- 0 = s_axi_lite_aclk is the same as m_axi_aclk
       -- 1 = s_axi_lite_aclk is asynchronous to the m_axi_aclk


    -----------------------------------------------------------------------
    -- DataMover Parameters
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
        -- 0 = Omit Store and Forward functionality
        -- 1 = Include Store and Forward functionality


    -----------------------------------------------------------------------
    -- Scatter Gather Parameters
    -----------------------------------------------------------------------
    C_INCLUDE_SG               : integer range 0 to 1      := 0;
        -- 0 = Omit Scatter Gather functionality
        -- 1 = Include Scatter Gather functionality

    C_M_AXI_SG_ADDR_WIDTH      : integer range 32 to 64    := 32;
        -- Master AXI Memory Map Address Width for Scatter Gather
        -- R/W Port (bits)

    C_M_AXI_SG_DATA_WIDTH      : integer range 32 to 32    := 32;
        -- Master AXI Memory Map Data Width for Scatter Gather
        -- R/W Port (bits)

    C_DLYTMR_RESOLUTION        : integer range 1 to 100000 := 125;
        -- Interrupt Delay Timer resolution in clock ticks of axi_clk


    -----------------------------------------------------------------------
    -- Target FPGA Family Parameter
    -----------------------------------------------------------------------
    C_FAMILY                   : string := "virtex7";
        -- Target FPGA Device Family

    C_INSTANCE                 : string := "axi_cdma"

    );
  port (

    -----------------------------------------------------------------------
    -- Primary Clock
    -----------------------------------------------------------------------
    m_axi_aclk                  : in  std_logic                         ;-- AXI4

    -----------------------------------------------------------------------
    -- Primary Reset Input (active low)
    -----------------------------------------------------------------------
--    m_axi_aresetn                : in  std_logic                        ;-- AXI4



    -----------------------------------------------------------------------
    -- AXI Lite clock
    -----------------------------------------------------------------------
    s_axi_lite_aclk             : in  std_logic                         ;-- AXI4-Lite

    -----------------------------------------------------------------------
    -- AXI Lite reset
    -----------------------------------------------------------------------
    s_axi_lite_aresetn          : in  std_logic                         ;-- AXI4-Lite



    -----------------------------------------------------------------------
    -- Interrupt output
    -----------------------------------------------------------------------
    cdma_introut                : out std_logic                         ;-- Interupt Out


    ---------------------------------------------------------------------------------
    -- AXI4-Lite Register Access Interface
    ---------------------------------------------------------------------------------
    -- AXI Lite Write Address Channel                                    -- AXI4-Lite
    s_axi_lite_awready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_awvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_awaddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (5 downto 0);-- AXI4-Lite
--    s_axi_lite_awaddr           : in  std_logic_vector                   -- AXI4-Lite
--                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
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
                                    (5 downto 0);-- AXI4-Lite
--    s_axi_lite_araddr           : in  std_logic_vector                   -- AXI4-Lite
--                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Data Channel                                        -- AXI4-Lite
    s_axi_lite_rready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_rvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_rdata            : out std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
    s_axi_lite_rresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite


    ----------------------------------------------------------------------------
    -- AXI4 DataMover Read Channel
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
    -- AXI4 DataMover Write Channel
    -----------------------------------------------------------------------------
    -- DataMover Write Address Channel                                    -- AXI4
    m_axi_awready               : in  std_logic                         ; -- AXI4
    m_axi_awvalid               : out std_logic                         ; -- AXI4
    m_axi_awaddr                : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)   ; -- AXI4
    m_axi_awlen                 : out std_logic_vector(7 downto 0)      ; -- AXI4
    m_axi_awsize                : out std_logic_vector(2 downto 0)      ; -- AXI4
    m_axi_awburst               : out std_logic_vector(1 downto 0)      ; -- AXI4
    m_axi_awprot                : out std_logic_vector(2 downto 0)      ; -- AXI4
    m_axi_awcache               : out std_logic_vector(3 downto 0)      ; -- AXI4
                                                                          -- AXI4
    -- DataMover Write Data Channel                                       -- AXI4
    m_axi_wready                : in  std_logic                         ; -- AXI4
    m_axi_wvalid                : out std_logic                         ; -- AXI4
    m_axi_wdata                 : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)   ; -- AXI4
    m_axi_wstrb                 : out std_logic_vector                    -- AXI4
                                      ((C_M_AXI_DATA_WIDTH/8)-1 downto 0);-- AXI4
    m_axi_wlast                 : out std_logic                         ; -- AXI4
                                                                          -- AXI4
    -- DataMover Write Response Channel                                   -- AXI4
    m_axi_bready                : out std_logic                         ; -- AXI4
    m_axi_bvalid                : in  std_logic                         ; -- AXI4
    m_axi_bresp                 : in  std_logic_vector(1 downto 0)      ; -- AXI4




    ----------------------------------------------------------------------------
    -- AXI4 Scatter Gather Interface
    ----------------------------------------------------------------------------
    -- Scatter Gather Write Address Channel                              -- AXI4
    m_axi_sg_awready            : in  std_logic := '0'                        ;-- AXI4
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
    m_axi_sg_wready             : in  std_logic       := '0'                  ;-- AXI4
    m_axi_sg_wvalid             : out std_logic                         ;-- AXI4
    m_axi_sg_wdata              : out std_logic_vector                   -- AXI4
                                      (C_M_AXI_SG_DATA_WIDTH-1 downto 0);-- AXI4
    m_axi_sg_wstrb              : out std_logic_vector                   -- AXI4
                                  ((C_M_AXI_SG_DATA_WIDTH/8)-1 downto 0);-- AXI4
    m_axi_sg_wlast              : out std_logic                         ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Write Response Channel                             -- AXI4
    m_axi_sg_bready             : out std_logic                         ;-- AXI4
    m_axi_sg_bvalid             : in  std_logic       := '0'                  ;-- AXI4
    m_axi_sg_bresp              : in  std_logic_vector(1 downto 0) := (others => '0')     ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Read Address Channel                               -- AXI4
    m_axi_sg_arready            : in  std_logic       := '0'                  ;-- AXI4
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
    m_axi_sg_rvalid             : in  std_logic       := '0'                  ;-- AXI4
    m_axi_sg_rdata              : in  std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_DATA_WIDTH-1 downto 0) := (others => '0')  ;-- AXI4
    m_axi_sg_rresp              : in  std_logic_vector(1 downto 0)     := (others => '0')  ;-- AXI4
    m_axi_sg_rlast              : in  std_logic                        := '0' ;-- AXI4



    -----------------------------------------------------------------------
    -- Test Support for Xilinx internal use
    -----------------------------------------------------------------------
    cdma_tvect_out              : Out  std_logic_vector(31 downto 0)


    );

-----------------------------------------------------------------
-- Start of PSFUtil MPD attributes
-----------------------------------------------------------------
--attribute IP_GROUP                            : string;
--attribute IP_GROUP     of axi_cdma            : entity   is "LOGICORE";

--attribute IPTYPE                              : string;
--attribute IPTYPE       of axi_cdma            : entity   is "PERIPHERAL";

--attribute RUN_NGCBUILD                        : string;
--attribute RUN_NGCBUILD of axi_cdma            : entity   is "TRUE";

-----------------------------------------------------------------
-- End of PSFUtil MPD attributes
-----------------------------------------------------------------
end axi_cdma;



-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";



-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- Functions

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



  -------------------------------------------------------------------
  -- Function
  --
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

  function width_calc (value_in : integer)
                     return integer is
  variable addr_value : integer := 32;

  begin
      if (value_in > 32) then
          addr_value := 64;
      else
          addr_value :=32;
      end if;

      return(addr_value);

end function width_calc;





-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

 Constant SOFT_RST_TIME_CLKS : integer := 8;
   -- Specifies the time of the soft reset assertion in
   -- m_axi_aclk clock periods.


 -- Calculates the minimum needed depth of the CDMA Store and Forward FIFO
 Constant PIPEDEPTH_BURST_LEN_PROD : integer :=
          (funct_get_max(C_READ_ADDR_PIPE_DEPTH, C_WRITE_ADDR_PIPE_DEPTH)+2)
           * C_M_AXI_MAX_BURST_LEN;

 -- Assigns the depth of the CDMA Store and Forward FIFO to the nearest
 -- power of 2
 Constant SF_FIFO_DEPTH       : integer range 128 to 8192 :=
                                funct_rnd2pwr_of_2(PIPEDEPTH_BURST_LEN_PROD);

constant ADDR_WIDTH : integer := width_calc (C_M_AXI_ADDR_WIDTH);




-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------

-- No signals Declared




-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
signal m_axi_aresetn : std_logic;


signal m_axi_sg_awaddr_internal : std_logic_vector (ADDR_WIDTH-1 downto 0)  ;
signal m_axi_sg_araddr_internal : std_logic_vector (ADDR_WIDTH-1 downto 0)  ;
signal m_axi_araddr_internal : std_logic_vector (ADDR_WIDTH-1 downto 0)  ;
signal m_axi_awaddr_internal : std_logic_vector (ADDR_WIDTH-1 downto 0)  ;

begin

 m_axi_aresetn <= '1';




m_axi_araddr <= m_axi_araddr_internal (C_M_AXI_ADDR_WIDTH-1 downto 0);
m_axi_awaddr <= m_axi_awaddr_internal (C_M_AXI_ADDR_WIDTH-1 downto 0);





  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_SIMPLE_MODE
  --
  -- If Generate Description:
  --  This IfGen Implements the CDMA with Simple Mode
  --
  --
  ------------------------------------------------------------
  GEN_SIMPLE_MODE : if (C_INCLUDE_SG = 0) generate

     begin

       -----------------------------------------------------------
       -- Housekeep the Scatter Gather output signals that are not
       -- used in Simple DMA mode.
       -----------------------------------------------------------

       -- Scatter Gather Write Address Channel
       m_axi_sg_awvalid      <=  '0'            ;
       m_axi_sg_awaddr       <=  (others => '0');
       m_axi_sg_awlen        <=  (others => '0');
       m_axi_sg_awsize       <=  (others => '0');
       m_axi_sg_awburst      <=  (others => '0');
       m_axi_sg_awprot       <=  (others => '0');
       m_axi_sg_awcache      <=  (others => '0');

       -- Scatter Gather Write Data Channel
       m_axi_sg_wvalid       <=  '0';
       m_axi_sg_wdata        <=  (others => '0');
       m_axi_sg_wstrb        <=  (others => '0');
       m_axi_sg_wlast        <=  '0'            ;

       -- Scatter Gather Write Response Channel
       m_axi_sg_bready       <=  '0'            ;

       -- Scatter Gather Read Address Channel
       m_axi_sg_arvalid      <=  '0'            ;
       m_axi_sg_araddr       <=  (others => '0');
       m_axi_sg_arlen        <=  (others => '0');
       m_axi_sg_arsize       <=  (others => '0');
       m_axi_sg_arburst      <=  (others => '0');
       m_axi_sg_arprot       <=  (others => '0');
       m_axi_sg_arcache      <=  (others => '0');

       -- Memory Map to Stream Scatter Gather Read Data Channel
       m_axi_sg_rready       <=  '0'            ;








       ------------------------------------------------------------
       -- Instance: I_SIMPLE_MODE_WRAP
       --
       -- Description:
       --  Instance for the CDMA Simple Mode Wrapper
       --
       ------------------------------------------------------------
       I_SIMPLE_MODE_WRAP : entity axi_cdma_v4_1_9.axi_cdma_simple_wrap
       generic map (

         C_S_AXI_LITE_ADDR_WIDTH    =>  C_S_AXI_LITE_ADDR_WIDTH ,
         C_S_AXI_LITE_DATA_WIDTH    =>  C_S_AXI_LITE_DATA_WIDTH ,
         C_AXI_LITE_IS_ASYNC        =>  C_AXI_LITE_IS_ASYNC     ,
         C_M_AXI_ADDR_WIDTH         =>  ADDR_WIDTH, --C_M_AXI_ADDR_WIDTH      ,
         C_M_AXI_DATA_WIDTH         =>  C_M_AXI_DATA_WIDTH      ,
         C_M_AXI_MAX_BURST_LEN      =>  C_M_AXI_MAX_BURST_LEN   ,
         C_INCLUDE_DRE              =>  C_INCLUDE_DRE           ,
         C_USE_DATAMOVER_LITE       =>  C_USE_DATAMOVER_LITE    ,
         C_READ_ADDR_PIPE_DEPTH     =>  C_READ_ADDR_PIPE_DEPTH  ,
         C_WRITE_ADDR_PIPE_DEPTH    =>  C_WRITE_ADDR_PIPE_DEPTH ,
         C_INCLUDE_SF               =>  C_INCLUDE_SF            ,
         C_SF_FIFO_DEPTH            =>  SF_FIFO_DEPTH           ,
         C_SOFT_RST_TIME_CLKS       =>  SOFT_RST_TIME_CLKS      ,
         C_FAMILY                   =>  C_FAMILY
         )
       port map (

         -- Primary Clock and Reset
         axi_aclk                    => m_axi_aclk          ,
         axi_resetn                  => m_axi_aresetn        ,


         -- AXI Lite clock and Reset
         axi_lite_aclk               => s_axi_lite_aclk     ,
         axi_lite_resetn             => s_axi_lite_aresetn  ,


         -- Interrupt output
         cdma_introut                => cdma_introut        ,


         -- Error Discrete output
         cdma_error_out              => open                ,


         -- AXI Lite Write Address Channel
         s_axi_lite_awready          => s_axi_lite_awready  ,
         s_axi_lite_awvalid          => s_axi_lite_awvalid  ,
         s_axi_lite_awaddr           => s_axi_lite_awaddr   ,

         -- AXI Lite Write Data Channel
         s_axi_lite_wready           => s_axi_lite_wready   ,
         s_axi_lite_wvalid           => s_axi_lite_wvalid   ,
         s_axi_lite_wdata            => s_axi_lite_wdata    ,

         -- AXI Lite Write Response Channel
         s_axi_lite_bready           => s_axi_lite_bready   ,
         s_axi_lite_bvalid           => s_axi_lite_bvalid   ,
         s_axi_lite_bresp            => s_axi_lite_bresp    ,

         -- AXI Lite Read Address Channel
         s_axi_lite_arready          => s_axi_lite_arready  ,
         s_axi_lite_arvalid          => s_axi_lite_arvalid  ,
         s_axi_lite_araddr           => s_axi_lite_araddr   ,

         -- AXI Lite Read Data Channel
         s_axi_lite_rready           => s_axi_lite_rready   ,
         s_axi_lite_rvalid           => s_axi_lite_rvalid   ,
         s_axi_lite_rdata            => s_axi_lite_rdata    ,
         s_axi_lite_rresp            => s_axi_lite_rresp    ,



         -- DataMover MMap Read Address Channel
         m_axi_arready               => m_axi_arready       ,
         m_axi_arvalid               => m_axi_arvalid       ,
         m_axi_araddr                => m_axi_araddr_internal, --m_axi_araddr        ,
         m_axi_arlen                 => m_axi_arlen         ,
         m_axi_arsize                => m_axi_arsize        ,
         m_axi_arburst               => m_axi_arburst       ,
         m_axi_arprot                => m_axi_arprot        ,
         m_axi_arcache               => m_axi_arcache       ,

         -- DataMover MMap Read Data Channel
         m_axi_rready                => m_axi_rready        ,
         m_axi_rvalid                => m_axi_rvalid        ,
         m_axi_rdata                 => m_axi_rdata         ,
         m_axi_rresp                 => m_axi_rresp         ,
         m_axi_rlast                 => m_axi_rlast         ,

         -- DataMover Write Address Channel
         m_axi_awready               => m_axi_awready       ,
         m_axi_awvalid               => m_axi_awvalid       ,
         m_axi_awaddr                => m_axi_awaddr_internal, --m_axi_awaddr        ,
         m_axi_awlen                 => m_axi_awlen         ,
         m_axi_awsize                => m_axi_awsize        ,
         m_axi_awburst               => m_axi_awburst       ,
         m_axi_awprot                => m_axi_awprot        ,
         m_axi_awcache               => m_axi_awcache       ,

         -- DataMover Write Data Channel
         m_axi_wready                => m_axi_wready        ,
         m_axi_wvalid                => m_axi_wvalid        ,
         m_axi_wdata                 => m_axi_wdata         ,
         m_axi_wstrb                 => m_axi_wstrb         ,
         m_axi_wlast                 => m_axi_wlast         ,

         -- DataMover Write Response Channel
         m_axi_bready                => m_axi_bready        ,
         m_axi_bvalid                => m_axi_bvalid        ,
         m_axi_bresp                 => m_axi_bresp         ,


         -- Debug test vector (Xilinx use only)
         axi_cdma_tstvec             => cdma_tvect_out


         );



       end generate GEN_SIMPLE_MODE;










  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_SG_MODE
  --
  -- If Generate Description:
  --  This IfGen Implements the CDMA with Scatter Gather Mode
  --
  --
  ------------------------------------------------------------
  GEN_SG_MODE : if (C_INCLUDE_SG = 1) generate

    begin



       ------------------------------------------------------------
       -- Instance: I_SG_MODE_WRAP
       --
       -- Description:
       --  Instance for the CDMA Scatter Gather Mode Wrapper
       --
       ------------------------------------------------------------
       I_SG_MODE_WRAP : entity axi_cdma_v4_1_9.axi_cdma_sg_wrap
       generic map (

         C_S_AXI_LITE_ADDR_WIDTH    =>  C_S_AXI_LITE_ADDR_WIDTH ,
         C_S_AXI_LITE_DATA_WIDTH    =>  C_S_AXI_LITE_DATA_WIDTH ,
         C_AXI_LITE_IS_ASYNC        =>  C_AXI_LITE_IS_ASYNC     ,
         C_M_AXI_ADDR_WIDTH         =>  ADDR_WIDTH, --C_M_AXI_ADDR_WIDTH      ,
         C_M_AXI_DATA_WIDTH         =>  C_M_AXI_DATA_WIDTH      ,
         C_M_AXI_MAX_BURST_LEN      =>  C_M_AXI_MAX_BURST_LEN   ,
         C_INCLUDE_DRE              =>  C_INCLUDE_DRE           ,
         C_READ_ADDR_PIPE_DEPTH     =>  C_READ_ADDR_PIPE_DEPTH  ,
         C_WRITE_ADDR_PIPE_DEPTH    =>  C_WRITE_ADDR_PIPE_DEPTH ,
         C_INCLUDE_SF               =>  C_INCLUDE_SF            ,
         C_SF_FIFO_DEPTH            =>  SF_FIFO_DEPTH           ,
         C_M_AXI_SG_ADDR_WIDTH      =>  ADDR_WIDTH, --C_M_AXI_SG_ADDR_WIDTH   ,
         C_M_AXI_SG_DATA_WIDTH      =>  C_M_AXI_SG_DATA_WIDTH   ,
         C_DLYTMR_RESOLUTION        =>  C_DLYTMR_RESOLUTION     ,
         C_SOFT_RST_TIME_CLKS       =>  SOFT_RST_TIME_CLKS      ,
         C_ACTUAL_ADDR               => C_M_AXI_SG_ADDR_WIDTH   ,
         C_FAMILY                   =>  C_FAMILY
         )
       port map (

         -- Primary Clock and Reset
         axi_aclk                    => m_axi_aclk          ,
         axi_resetn                  => m_axi_aresetn        ,


         -- AXI Lite clock and Reset
         axi_lite_aclk               => s_axi_lite_aclk     ,
         axi_lite_resetn             => s_axi_lite_aresetn  ,


         -- Interrupt output
         cdma_introut                => cdma_introut        ,


         -- Error Discrete output
         cdma_error_out              => open                ,



         -- AXI Lite Write Address Channel
         s_axi_lite_awready          => s_axi_lite_awready  ,
         s_axi_lite_awvalid          => s_axi_lite_awvalid  ,
         s_axi_lite_awaddr           => s_axi_lite_awaddr   ,

         -- AXI Lite Write Data Channel
         s_axi_lite_wready           => s_axi_lite_wready   ,
         s_axi_lite_wvalid           => s_axi_lite_wvalid   ,
         s_axi_lite_wdata            => s_axi_lite_wdata    ,

         -- AXI Lite Write Response Channel
         s_axi_lite_bready           => s_axi_lite_bready   ,
         s_axi_lite_bvalid           => s_axi_lite_bvalid   ,
         s_axi_lite_bresp            => s_axi_lite_bresp    ,

         -- AXI Lite Read Address Channel
         s_axi_lite_arready          => s_axi_lite_arready  ,
         s_axi_lite_arvalid          => s_axi_lite_arvalid  ,
         s_axi_lite_araddr           => s_axi_lite_araddr   ,

         -- AXI Lite Read Data Channel
         s_axi_lite_rready           => s_axi_lite_rready   ,
         s_axi_lite_rvalid           => s_axi_lite_rvalid   ,
         s_axi_lite_rdata            => s_axi_lite_rdata    ,
         s_axi_lite_rresp            => s_axi_lite_rresp    ,



         -- DataMover MMap Read Address Channel
         m_axi_arready               => m_axi_arready       ,
         m_axi_arvalid               => m_axi_arvalid       ,
         m_axi_araddr                => m_axi_araddr_internal, --m_axi_araddr        ,
         m_axi_arlen                 => m_axi_arlen         ,
         m_axi_arsize                => m_axi_arsize        ,
         m_axi_arburst               => m_axi_arburst       ,
         m_axi_arprot                => m_axi_arprot        ,
         m_axi_arcache               => m_axi_arcache       ,

         -- DataMover MMap Read Data Channel
         m_axi_rready                => m_axi_rready        ,
         m_axi_rvalid                => m_axi_rvalid        ,
         m_axi_rdata                 => m_axi_rdata         ,
         m_axi_rresp                 => m_axi_rresp         ,
         m_axi_rlast                 => m_axi_rlast         ,

         -- DataMover Write Address Channel
         m_axi_awready               => m_axi_awready       ,
         m_axi_awvalid               => m_axi_awvalid       ,
         m_axi_awaddr                => m_axi_awaddr_internal, --m_axi_awaddr        ,
         m_axi_awlen                 => m_axi_awlen         ,
         m_axi_awsize                => m_axi_awsize        ,
         m_axi_awburst               => m_axi_awburst       ,
         m_axi_awprot                => m_axi_awprot        ,
         m_axi_awcache               => m_axi_awcache       ,

         -- DataMover Write Data Channel
         m_axi_wready                => m_axi_wready        ,
         m_axi_wvalid                => m_axi_wvalid        ,
         m_axi_wdata                 => m_axi_wdata         ,
         m_axi_wstrb                 => m_axi_wstrb         ,
         m_axi_wlast                 => m_axi_wlast         ,

         -- DataMover Write Response Channel
         m_axi_bready                => m_axi_bready        ,
         m_axi_bvalid                => m_axi_bvalid        ,
         m_axi_bresp                 => m_axi_bresp         ,



        -- Scatter Gather Write Address Channel
        m_axi_sg_awready            => m_axi_sg_awready     ,
        m_axi_sg_awvalid            => m_axi_sg_awvalid     ,
        m_axi_sg_awaddr             => m_axi_sg_awaddr_internal, --m_axi_sg_awaddr      ,
        m_axi_sg_awlen              => m_axi_sg_awlen       ,
        m_axi_sg_awsize             => m_axi_sg_awsize      ,
        m_axi_sg_awburst            => m_axi_sg_awburst     ,
        m_axi_sg_awprot             => m_axi_sg_awprot      ,
        m_axi_sg_awcache            => m_axi_sg_awcache     ,

        -- Scatter Gather Write Data Channel
        m_axi_sg_wready             => m_axi_sg_wready      ,
        m_axi_sg_wvalid             => m_axi_sg_wvalid      ,
        m_axi_sg_wdata              => m_axi_sg_wdata       ,
        m_axi_sg_wstrb              => m_axi_sg_wstrb       ,
        m_axi_sg_wlast              => m_axi_sg_wlast       ,

        -- Scatter Gather Write Response Channel
        m_axi_sg_bready             => m_axi_sg_bready      ,
        m_axi_sg_bvalid             => m_axi_sg_bvalid      ,
        m_axi_sg_bresp              => m_axi_sg_bresp       ,

        -- Scatter Gather Read Address Channel
        m_axi_sg_arready            => m_axi_sg_arready     ,
        m_axi_sg_arvalid            => m_axi_sg_arvalid     ,
        m_axi_sg_araddr             => m_axi_sg_araddr_internal, --m_axi_sg_araddr      ,
        m_axi_sg_arlen              => m_axi_sg_arlen       ,
        m_axi_sg_arsize             => m_axi_sg_arsize      ,
        m_axi_sg_arburst            => m_axi_sg_arburst     ,
        m_axi_sg_arprot             => m_axi_sg_arprot      ,
        m_axi_sg_arcache            => m_axi_sg_arcache     ,

        -- Scatter Gather Read Data Channel
        m_axi_sg_rready             => m_axi_sg_rready      ,
        m_axi_sg_rvalid             => m_axi_sg_rvalid      ,
        m_axi_sg_rdata              => m_axi_sg_rdata       ,
        m_axi_sg_rresp              => m_axi_sg_rresp       ,
        m_axi_sg_rlast              => m_axi_sg_rlast       ,


        -- Debug test vector (Xilinx use only)
        axi_cdma_tstvec             => cdma_tvect_out

        );

        m_axi_sg_araddr <= m_axi_sg_araddr_internal (C_M_AXI_ADDR_WIDTH-1 downto 0);
        m_axi_sg_awaddr <= m_axi_sg_awaddr_internal (C_M_AXI_ADDR_WIDTH-1 downto 0);


    end generate GEN_SG_MODE;




end implementation;
