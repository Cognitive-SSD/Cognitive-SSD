-------------------------------------------------------------------------------
-- axi_cdma_reg_module
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
-- Filename:          axi_cdma_reg_module.vhd
-- Description: This entity is AXI DMA Register Module Top Level
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
use axi_cdma_v4_1_9.axi_cdma_lite_if;
use axi_cdma_v4_1_9.axi_cdma_register;

library lib_cdc_v1_0_2;

-------------------------------------------------------------------------------
entity  axi_cdma_reg_module is
  generic(
    
    C_CDMA_BUILD_MODE           : integer range  0 to  1    := 0        ;
      -- Indicates the as-built topology of the AXI CDMA
      -- 0 = Simple DMA only support 
      -- 1 = Simple DMA and Scatter Gather support included
      
    C_S_AXI_LITE_ADDR_WIDTH     : integer range 2 to 32    := 6       ;
        -- Address width of the AXI Lite Interface (bits)
    
    C_S_AXI_LITE_DATA_WIDTH     : integer range 32 to 32    := 32       ;
        -- Data width of the AXI Lite Interface (bits)
    
    C_AXI_LITE_IS_ASYNC         : integer range  0 to  1    := 0        ;
       -- Specifies if the AXI Lite Register interface needs to
       -- be asynchronous to the CDMA data transport path clocking
       -- 0 = Use same clocking as data path
       -- 1 = Use special AXI Lite clock for the axi lite interface
    
    C_M_AXI_SG_ADDR_WIDTH       : integer range 32 to 64    := 32
      -- Address width of the SG AXI Interface (bits)
  );
  port (

    
    
    ---------------------------------------------------------------------------------
    -- AXI4-Lite Interface
    ---------------------------------------------------------------------------------
    
    -- AXI Lite Clock (needs to be the same as axi4-lite clock when
    -- C_AXI_LITE_IS_ASYNC = 0 )                                         -- AXI4-Lite
    axi_lite_aclk               : in  std_logic                         ;-- AXI4-Lite
    
    -- AXI Lite Bus Side Reset (synchronized to the axi_lite_aclk)
    axi_lite_reset              : in  std_logic                         ;-- AXI4-Lite
                                                                         
    -- AXI Lite Core side Reset (synchronized to the axi_aclk)
    axi_lite_cside_reset        : in  std_logic                         ;-- AXI4-Lite
                                                                         
                                                                         
                                                                         
    -- AXI Lite Write Address Channel                                    -- AXI4-Lite
    s_axi_lite_awvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_awready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_awaddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Data Channel                                       -- AXI4-Lite
    s_axi_lite_wvalid           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_wready           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_wdata            : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Response Channel                                   -- AXI4-Lite
    s_axi_lite_bresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite
    s_axi_lite_bvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_bready           : in  std_logic                         ;-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Address Channel                                     -- AXI4-Lite
    s_axi_lite_arvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_arready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_araddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
    -- AXI Lite Read Data Channel                                        -- AXI4-Lite
    s_axi_lite_rvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_rready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_rdata            : out std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
    s_axi_lite_rresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite




    -- Primary Input Clock for everything other than AXI4-Lite   
    axi_aclk                   : In std_logic                           ;
    
    -- Primary Input Reset synchronized to axi_aclk
    axi_reg_reset              : In std_logic                           ;


    -- Composite Interrupt Output
    reg_introut                : out std_logic                          ;

    -- Composite error Output
    reg_error_out              : out std_logic                          ;

    -- Soft Reset Set Control
    reg_soft_reset_request     : out std_logic                          ;
    
    -- Soft Reset Clear
    reg_soft_reset_clr         : in  std_logic                          ;

    -- DMA Go Control
    reg_dma_go                 : Out  std_logic                         ;

    -- SG Mode control
    reg_dma_sg_mode            : Out  std_logic                         ;

    -- Key Hole read
    dma_keyhole_read           : Out  std_logic                         ;

    -- Key Hole write
    dma_keyhole_write          : Out  std_logic                         ;

    -- Cyclic feature
    dma_cyclic                 : Out  std_logic                         ;

    -- CDMASR Idle bit set
    reg_idle_set               : in  std_logic                          ;
    
    -- CDMASR Idle bit clear
    reg_idle_clr               : in  std_logic                          ;
    
    -- CDMASR Interrupt on Complet set
    reg_ioc_irq_set            : in  std_logic                          ;
    
    -- CDMASR Delay Interrupt set
    reg_dly_irq_set            : in  std_logic                          ;
    
    -- CDMASR Delay Interrupt Counter value   
    reg_irqdelay_status        : in  std_logic_vector(7 downto 0)       ;
    
    -- CDMASR Threshold Interrupt Counter value   
    reg_irqthresh_status       : in  std_logic_vector(7 downto 0)       ;
    
    -- CDMASR Threshold Interrupt Counter value write enable   
    reg_irqthresh_wren         : out std_logic                          ;
    
    -- CDMASR Delay Interrupt Counter value write enable   
    reg_irqdelay_wren          : out std_logic                          ;


  
  
    -- Composite DataMover Internal Error flag
    reg_dma_interr_set         : in  std_logic                          ;
    
    -- Composite DataMover Slave Error flag
    reg_dma_slverr_set         : in  std_logic                          ;
    
    -- Composite DataMover Decode Error flag
    reg_dma_decerr_set         : in  std_logic                          ;

   
   
   
    -- SG Descriptor Fetch internal error flag
    reg_ftch_interr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch slave error flag
    reg_ftch_slverr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch decode error flag
    reg_ftch_decerr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch error address
    reg_ftch_error_addr        : in  std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0) ;
   
    
    
    
    -- SG Descriptor Update internal error flag
    reg_updt_interr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch slave error flag
    reg_updt_slverr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch decode error flag
    reg_updt_decerr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch error address
    reg_updt_error_addr        : in  std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0) ;

    
    
    -- SG CURDESC Update Write enable
    reg_new_curdesc_wren       : in  std_logic                          ;
    
    -- SG CURDESC Update address value
    reg_new_curdesc            : in  std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0) ;
    
    
    -- Tailpointer Register Updated flag
    reg_tailpntr_updated       : out std_logic                          ;
    
    -- Current Descriptor Register Updated flag
    reg_currdesc_updated       : out std_logic                          ;


 
 
    -- CDMA Control Register value
    reg_dmacr                  : out std_logic_vector
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) ;
    
    -- CDMA Status Register value
    reg_dmasr                  : out std_logic_vector
                                     (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
    -- CDMA Current Descriptor Register value
    reg_curdesc                : out std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;
    
    -- CDMA Tailpointer Register value
    reg_taildesc               : out std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;
    
    -- CDMA Source Address Register value
    reg_src_addr               : out std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0);
    
    -- CDMA destination Register value
    reg_dest_addr              : out std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0);
    
    -- CDMA BTT Register value
    reg_btt                    : out std_logic_vector
                                     (C_S_AXI_LITE_DATA_WIDTH-1 downto 0)

    );
end axi_cdma_reg_module;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_reg_module is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------


  Constant CDMA_NUM_REG          : Integer := 16;


  Constant DMACR_REG_CE          : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000000001";

  Constant DMASR_REG_CE          : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000000010";

  Constant CURDESC_LS_REG_CE     : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000000100";

  Constant CURDESC_MS_REG_CE     : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000001000";

  Constant TAILDESC_LS_REG_CE     : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000010000";

  Constant TAILDESC_MS_REG_CE     : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000100000";

  Constant SA_LS_REG_CE           : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000001000000";

  Constant SA_MS_REG_CE           : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000010000000";

  Constant DA_LS_REG_CE           : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000100000000";

  Constant DA_MS_REG_CE           : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000001000000000";

  Constant BTT_REG_CE             : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000010000000000";





-------------------------------------------------------------------------------
-- Signal / Type Declarations
---------------------------- ---------------------------------------------------
  signal sig_axi2ip_wrce           : std_logic_vector(CDMA_NUM_REG - 1 downto 0)      := (others => '0');
  signal sig_axi2ip_wrdata         : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_axi2ip_rdce           : std_logic_vector(CDMA_NUM_REG - 1 downto 0)      := (others => '0');
  signal sig_ip2axi_rddata         : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');

  signal sig_dmacr                 : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_dmasr                 : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_curdesc_lsb           : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_curdesc_msb           : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_taildesc_lsb          : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_taildesc_msb          : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_src_addr_lsb          : std_logic_vector(c_s_axi_lite_data_width-1 downto 0) := (others => '0');
  signal sig_dest_addr_lsb         : std_logic_vector(c_s_axi_lite_data_width-1 downto 0) := (others => '0');
  signal sig_src_addr_msb          : std_logic_vector(c_s_axi_lite_data_width-1 downto 0) := (others => '0');
  signal sig_dest_addr_msb         : std_logic_vector(c_s_axi_lite_data_width-1 downto 0) := (others => '0');
  signal sig_btt                   : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');

  signal sig_axi_lite_bside_resetn : std_logic := '0';
  signal sig_axi_lite_cside_resetn : std_logic := '0';

  signal sig_interrupt_out         : std_logic := '0';
  signal sig_reg2out_irpt          : std_logic := '0';

-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

  -- Reset Inversions for the AXI Lite IF
  sig_axi_lite_bside_resetn  <= not(axi_lite_reset);
  sig_axi_lite_cside_resetn  <= not(axi_lite_cside_reset);
  
  
  
  -- Register Outputs
  reg_dmacr            <= sig_dmacr;
  reg_dmasr            <= sig_dmasr;
  reg_curdesc (31 downto 0)          <= sig_curdesc_lsb;
  reg_taildesc (31 downto 0)        <= sig_taildesc_lsb;
  reg_src_addr (31 downto 0)        <= sig_src_addr_lsb;
  reg_dest_addr (31 downto 0)       <= sig_dest_addr_lsb;
  reg_btt              <= sig_btt;

  -- Composite Interrupt Output
  reg_introut          <= sig_interrupt_out ;


   GEN_64_BIT_ADDR : if (C_M_AXI_SG_ADDR_WIDTH = 64) generate
      begin
  
  reg_curdesc (63 downto 32)          <= sig_curdesc_msb;
  reg_taildesc (63 downto 32)        <= sig_taildesc_msb;
  reg_src_addr (63 downto 32)        <= sig_src_addr_msb;
  reg_dest_addr (63 downto 32)       <= sig_dest_addr_msb;

   end generate GEN_64_BIT_ADDR;

  ------------------------------------------------------------
  -- Instance: I_AXI_LITE
  --
  -- Description:
  --   Instance for the AXI Lite Interface Module
  --
  ------------------------------------------------------------
  I_AXI_LITE : entity axi_cdma_v4_1_9.axi_cdma_lite_if
    generic map(
      C_NUM_CE                    => CDMA_NUM_REG             ,
      C_AXI_LITE_IS_ASYNC         => C_AXI_LITE_IS_ASYNC      ,
      C_S_AXI_LITE_ADDR_WIDTH     => C_S_AXI_LITE_ADDR_WIDTH  ,
      C_S_AXI_LITE_DATA_WIDTH     => C_S_AXI_LITE_DATA_WIDTH
    )
    port map(
      
      -- AXI Lite Clock and Reset
      s_axi_lite_aclk             => axi_lite_aclk             ,
      s_axi_lite_aresetn          => sig_axi_lite_bside_resetn ,

      -- AXI Lite Write Address Channel
      s_axi_lite_awvalid          => s_axi_lite_awvalid       ,
      s_axi_lite_awready          => s_axi_lite_awready       ,
      s_axi_lite_awaddr           => s_axi_lite_awaddr        ,

      -- AXI Lite Write Data Channel
      s_axi_lite_wvalid           => s_axi_lite_wvalid        ,
      s_axi_lite_wready           => s_axi_lite_wready        ,
      s_axi_lite_wdata            => s_axi_lite_wdata         ,

      -- AXI Lite Write Response Channel
      s_axi_lite_bresp            => s_axi_lite_bresp         ,
      s_axi_lite_bvalid           => s_axi_lite_bvalid        ,
      s_axi_lite_bready           => s_axi_lite_bready        ,

      -- AXI Lite Read Address Channel
      s_axi_lite_arvalid          => s_axi_lite_arvalid       ,
      s_axi_lite_arready          => s_axi_lite_arready       ,
      s_axi_lite_araddr           => s_axi_lite_araddr        ,
      s_axi_lite_rvalid           => s_axi_lite_rvalid        ,
      s_axi_lite_rready           => s_axi_lite_rready        ,
      s_axi_lite_rdata            => s_axi_lite_rdata         ,
      s_axi_lite_rresp            => s_axi_lite_rresp         ,

      -- User IP Interface
      
      -- IP side Interface clock and Reset inputs
      -- Used when C_AXI_LITE_IS_ASYNC = 1
      ip2axi_aclk                 => axi_aclk                 ,
      ip2axi_aresetn              => sig_axi_lite_cside_resetn,
                                  
      axi2ip_wrce                 => sig_axi2ip_wrce          ,
      axi2ip_wrdata               => sig_axi2ip_wrdata        ,
      axi2ip_rdce                 => sig_axi2ip_rdce          ,
      axi2ip_rdaddr               => open                     ,
      ip2axi_rddata               => sig_ip2axi_rddata

    );







-------------------------------------------------------------------------------
-- AXI LITE READ MUX
-------------------------------------------------------------------------------
AXI_LITE_READ_MUX : process(sig_axi2ip_rdce  ,
                            sig_dmacr        ,
                            sig_dmasr        ,
                            sig_curdesc_lsb  ,
                            sig_taildesc_lsb ,
                            sig_curdesc_msb  ,
                            sig_taildesc_msb ,
                            sig_src_addr_lsb ,
                            sig_src_addr_msb ,
                            sig_dest_addr_lsb,
                            sig_dest_addr_msb,
                            sig_btt)
    begin


      -- Read Mux
      case sig_axi2ip_rdce is

        ---------------------------------
        When DMACR_REG_CE =>
          sig_ip2axi_rddata <= sig_dmacr;

        ---------------------------------
        When DMASR_REG_CE =>
          sig_ip2axi_rddata <= sig_dmasr;

        ---------------------------------
        When CURDESC_LS_REG_CE =>
          sig_ip2axi_rddata <= sig_curdesc_lsb;

        ---------------------------------
        When CURDESC_MS_REG_CE =>
          sig_ip2axi_rddata <= sig_curdesc_msb;
        ---------------------------------
        When TAILDESC_LS_REG_CE =>
          sig_ip2axi_rddata <= sig_taildesc_lsb;

        ---------------------------------
        When TAILDESC_MS_REG_CE =>
          sig_ip2axi_rddata <= sig_taildesc_msb;

        ---------------------------------
        When SA_LS_REG_CE =>
          sig_ip2axi_rddata <= sig_src_addr_lsb;

        ---------------------------------
        When SA_MS_REG_CE =>
          sig_ip2axi_rddata <= sig_src_addr_msb;

        ---------------------------------
        When DA_LS_REG_CE =>
          sig_ip2axi_rddata <= sig_dest_addr_lsb;

        ---------------------------------
        When DA_MS_REG_CE =>
          sig_ip2axi_rddata <= sig_dest_addr_msb;

        ---------------------------------
        When BTT_REG_CE =>
          sig_ip2axi_rddata <= sig_btt;

        ---------------------------------
        when others =>
          sig_ip2axi_rddata <= (others => '0');
      end case;

    end process AXI_LITE_READ_MUX;





   
   ------------------------------------------------------------
   -- If Generate
   --
   -- Label: GEN_NO_IRPT_RESYNC
   --
   -- If Generate Description:
   --  The AXI clock and the AXI Lite clock are the same so
   -- synchronization registers are not required.
   --
   ------------------------------------------------------------
   GEN_NO_IRPT_RESYNC : if (C_AXI_LITE_IS_ASYNC = 0) generate
   
   
      begin
   
        sig_interrupt_out <= sig_reg2out_irpt;     
             
      end generate GEN_NO_IRPT_RESYNC;
   
   
   
   
   
   ------------------------------------------------------------
   -- If Generate
   --
   -- Label: GEN_IRPT_RESYNC
   --
   -- If Generate Description:
   --  The AXI clock and the AXI Lite clock are not the same so
   -- synchronization registers are are required.
   --
   ------------------------------------------------------------
   GEN_IRPT_RESYNC : if (C_AXI_LITE_IS_ASYNC = 1) generate
        ATTRIBUTE async_reg                      : STRING;
   
      signal lsig_sync_reg1_cdc_tig : std_logic := '0';
      signal lsig_sync_reg2 : std_logic := '0';
        --ATTRIBUTE async_reg OF lsig_sync_reg1_cdc_tig  : SIGNAL IS "true";
        --ATTRIBUTE async_reg OF lsig_sync_reg2  : SIGNAL IS "true";
 
      begin
   
        sig_interrupt_out <= lsig_sync_reg2;     
             
      
        -------------------------------------------------------------
        -- Synchronous Process with Sync Reset
        --
        -- Label: IMP_SYNC_IRPT_SYNC_REG
        --
        -- Process Description:
        --   Implements the syncronization registers for the AXI
        -- to AXI Lite clock domain crossing of the interrupt out.
        --
        -------------------------------------------------------------
IMP_SYNC_IRPT_SYNC_REG : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => '0',
        prmry_resetn               => '0',
        prmry_in                   => sig_reg2out_irpt,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => axi_lite_aclk,
        scndry_resetn              => '0',
        scndry_out                 => lsig_sync_reg2,
        scndry_vect_out            => open
    );



--        IMP_SYNC_IRPT_SYNC_REG : process (axi_lite_aclk)
--          begin
--            if (axi_lite_aclk'event and axi_lite_aclk = '1') then
--            --   if (axi_lite_reset = '1') then
--        
--            --     lsig_sync_reg1 <= '0';
--            --     lsig_sync_reg2 <= '0'; 
--                 
--            --   else
--        
--                 lsig_sync_reg1_cdc_tig <= sig_reg2out_irpt;
--                 lsig_sync_reg2 <= lsig_sync_reg1_cdc_tig; 
--                 
--            --   end if; 
--            end if;       
--          end process IMP_SYNC_IRPT_SYNC_REG; 
      
      
      end generate GEN_IRPT_RESYNC;
   
   
   


   ------------------------------------------------------------
   -- Instance: I_REGISTER_BLOCK
   --
   -- Description:
   --   Instance of the AXI CDMA register block.
   --
   ------------------------------------------------------------
   I_REGISTER_BLOCK : entity axi_cdma_v4_1_9.axi_cdma_register
     generic map (
       C_CDMA_BUILD_MODE           => C_CDMA_BUILD_MODE        ,
       C_NUM_REGISTERS             => CDMA_NUM_REG            ,
       C_S_AXI_LITE_DATA_WIDTH     => C_S_AXI_LITE_DATA_WIDTH  ,
       C_M_AXI_SG_ADDR_WIDTH       => C_M_AXI_SG_ADDR_WIDTH
     )
     port map(
       -- Secondary Clock / Reset
       axi_aclk                    => axi_aclk                 ,
       axi_reset                   => axi_reg_reset            ,

       -- CPU Write Control (via AXI Lite)
       axi2ip_wrce                 => sig_axi2ip_wrce          ,
       axi2ip_wrdata               => sig_axi2ip_wrdata        ,


       -- Composite Interrupt Output
       introut                     => sig_reg2out_irpt         ,

       -- Composite error Output
       error_out                   => reg_error_out            ,

       -- Soft Reset Control
       soft_reset_request          => reg_soft_reset_request   ,
       soft_reset_clr              => reg_soft_reset_clr       ,


        -- DMA Go Control
        dma_go                     => reg_dma_go               ,


        -- SG Mode control
        dma_sg_mode                => reg_dma_sg_mode          ,

        -- Key Hole write
        dma_keyhole_write          => dma_keyhole_write        ,

        -- Key Hole read
        dma_keyhole_read           => dma_keyhole_read         ,
 
        -- Key Hole read
        dma_cyclic                 => dma_cyclic               ,
 

       -- DMASR Register bit control/status
       idle_set                    => reg_idle_set             ,
       idle_clr                    => reg_idle_clr             ,
       ioc_irq_set                 => reg_ioc_irq_set          ,
       dly_irq_set                 => reg_dly_irq_set          ,
       irqdelay_status             => reg_irqdelay_status      ,
       irqthresh_status            => reg_irqthresh_status     ,
       irqthresh_wren              => reg_irqthresh_wren       ,
       irqdelay_wren               => reg_irqdelay_wren        ,

       -- DataMover Errors
       dma_interr_set              => reg_dma_interr_set       ,
       dma_slverr_set              => reg_dma_slverr_set       ,
       dma_decerr_set              => reg_dma_decerr_set       ,

       -- SG Descriptor Fetch errors
       ftch_interr_set             => reg_ftch_interr_set      ,
       ftch_slverr_set             => reg_ftch_slverr_set      ,
       ftch_decerr_set             => reg_ftch_decerr_set      ,
       ftch_error_addr             => reg_ftch_error_addr      ,

       -- SG Descriptor Update errors
       updt_interr_set             => reg_updt_interr_set      ,
       updt_slverr_set             => reg_updt_slverr_set      ,
       updt_decerr_set             => reg_updt_decerr_set      ,
       updt_error_addr             => reg_updt_error_addr      ,


       -- SG CURDESC Update (from SG)
       update_curdesc              => reg_new_curdesc_wren    ,
       new_curdesc                 => reg_new_curdesc         ,

       -- SG Detected SW Register Update
       tailpntr_updated            => reg_tailpntr_updated    ,
       currdesc_updated            => reg_currdesc_updated    ,

       -- Register State Out
       dmacr                       => sig_dmacr                ,
       dmasr                       => sig_dmasr                ,
       curdesc_lsb                 => sig_curdesc_lsb          ,
       curdesc_msb                 => sig_curdesc_msb                     ,
       taildesc_lsb                => sig_taildesc_lsb         ,
       taildesc_msb                => sig_taildesc_msb                     ,
       src_addr_lsb                => sig_src_addr_lsb         ,
       src_addr_msb                => sig_src_addr_msb                     ,
       dest_addr_lsb               => sig_dest_addr_lsb        ,
       dest_addr_msb               => sig_dest_addr_msb                     ,
       btt                         => sig_btt

     );










end implementation;
