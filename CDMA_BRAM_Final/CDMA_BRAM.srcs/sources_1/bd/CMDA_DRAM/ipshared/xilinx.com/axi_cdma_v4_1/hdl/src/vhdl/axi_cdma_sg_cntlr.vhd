-------------------------------------------------------------------------------
-- axi_cdma_sg_cntlr
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
-- Filename:          axi_cdma_sg_cntlr.vhd
-- Description: This entity is reset module entity for the AXI DMA core.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------   
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;


library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.all;


library axi_cdma_v4_1_9;
use axi_cdma_v4_1_9.axi_cdma_pulse_gen;



-------------------------------------------------------------------------------
entity  axi_cdma_sg_cntlr is
  Generic (
  
    C_SG_ADDR_WIDTH         : integer  := 32; 
    C_SG_FETCH_DWIDTH       : integer  := 32; 
    C_SG_PTR_UPDATE_DWIDTH  : integer  := 32;  
    C_SG_STS_UPDATE_DWIDTH  : integer  := 33;  
    C_DM_CMD_WIDTH          : integer  := 72;
    C_DM_DATA_WIDTH         : integer  := 32;
    C_DM_MM2S_STATUS_WIDTH  : integer  := 8; 
    C_DM_S2MM_STATUS_WIDTH  : integer  := 8; 
    C_FAMILY                : String   := "virtex7"
   
   );
  port (
    -- Clock Input
    axi_aclk                     : in  std_logic ;
    
    -- Reset Input (active high)
    axi_reset                    : in  std_logic ;


    -- Halt request from the Reset module
    rst2sgcntl_halt              : in  std_logic ;  
    -- Halt complete status to the Reset module
    sgcntl2rst_halt_cmplt        : out std_logic ;  
    
    -- SG Queue Flush Request
    sgcntlr2sg_desc_flush        : out std_logic ;                                                     
    
    
    
    -- Register Module SG Mode Control
    reg2sgcntl_sg_mode           : in  std_logic ; 

    -- MM2S Type of Burst, 1 is increment, 0 is fixed
    burst_type_read                : in std_logic;

    -- S2MM Type of Burst, 1 is increment, 0 is fixed
    burst_type_write                : in std_logic;
    
    -- Register Module Tail pointer updated flag
    reg2sgcntl_tailpntr_updated  : in  std_logic ;
    
    -- Register Module Current Desciptor pointer updated flag
    reg2sgcntl_currdesc_updated  : in  std_logic ;
       
    
    -- Run/Stop Control to SG
    sgcntlr2sg_run_stop          : out std_logic ;                                                     
 
   
    -- Idle bit set to Register Module Status Register
    sgcntl2reg_idle_set          : out std_logic ;  
   
    -- Idle bit clear to Register Module Status Register
    sgcntl2reg_idle_clr          : out std_logic ; 
    
   
    -- SOF control to SG
    sgcntl2sg_pkt_sof            : out std_logic ;                                                      
   
    -- EOF control to SG
    sgcntl2sg_pkt_eof            : out std_logic ;                                                      
 
    -- Interrupt on complete status bit set from SG
    sg2sgcntl_ioc_irq_set        : in  std_logic ;                                                      
 
    -- Delay Interrupt status bit set from SG
    sg2sgcntl_dly_irq_set        : in  std_logic ;                                                      

    -- Interrupt on complete status bit set to Register Module
    sgcntl2reg_ioc_irq_set       : out std_logic ;                                                      

    -- Delay Interrupt status bit set to Register Module
    sgcntl2reg_dly_irq_set       : out std_logic ;                                                      
 
    
    -- Descriptor Fetch Stream Interface from SG                                        
    sgcntl2sg_ftch_tready        : out std_logic ;                                          -- Axi4-Stream                
    sg2sgcntlr_ftch_tvalid       : in  std_logic ;                                          -- Axi4-Stream                
    sg2sgcntlr_ftch_tvalid_new       : in  std_logic ;                                          -- Axi4-Stream                
    sg2sgcntlr_ftch_tdata        : in  std_logic_vector(C_SG_FETCH_DWIDTH-1 downto 0) ;     -- Axi4-Stream      
    sg2sgcntlr_ftch_tdata_new        : in  std_logic_vector(127+(3*(C_SG_ADDR_WIDTH-32)) downto 0) ;     -- Axi4-Stream      
    sg2sgcntlr_ftch_tlast        : in  std_logic ;                                          -- Axi4-Stream               
    sig_sg2sgcntlr_ftch_desc_available : in std_logic; 
 
    -- Descriptor Pointer Update Stream to SG
    sg2sgcntlr_updptr_tready     : in  std_logic ;                                          -- Axi4-Stream            
    sgcntl2sg_updptr_tvalid      : out std_logic ;                                          -- Axi4-Stream            
    sgcntl2sg_updptr_tdata       : out std_logic_vector(C_SG_PTR_UPDATE_DWIDTH-1 downto 0) ;-- Axi4-Stream      
    sgcntl2sg_updptr_tlast       : out std_logic ;                                          -- Axi4-Stream            

    -- Descriptor Status Update Stream to SG
    sg2sgcntlr_updsts_tready     : in  std_logic ;                                          -- Axi4-Stream            
    sgcntl2sg_updsts_tvalid      : out std_logic ;                                          -- Axi4-Stream            
    sgcntl2sg_updsts_tdata       : out std_logic_vector(C_SG_STS_UPDATE_DWIDTH-1 downto 0) ;-- Axi4-Stream      
    sgcntl2sg_updsts_tlast       : out std_logic ;                                          -- Axi4-Stream            
    
    
    -- Descriptor Fetch Idle status from SG
    sg2sgcntlr_ftch_idle         : in  std_logic ;                                                      
    
    -- Descriptor Fetch error early from SG
    sg2sgcntlr_ftch_err_early    : in  std_logic ;                                                      
    
    -- Descriptor Fetch stale descriptor error from SG
    sg2sgcntlr_ftch_stale_desc   : in  std_logic ;                                                      
    
    -- Descriptor Fetch error from SG
    sg2sgcntlr_ftch_error        : in  std_logic ;  
    
    
    
    -- Descriptor update Idle status from SG
    sg2sgcntlr_updt_idle         : in  std_logic ;                                                      
    
    -- Descriptor interrupt on complete bit set from SG
    sg2sgcntlr_updt_ioc_irq_set  : in  std_logic ;                                                      
    
    -- Descriptor Update error from SG
    sg2sgcntlr_updt_error        : in  std_logic ;                                                      
    
    
    
    -- Echo of Main DataMover internal error from SG
    sg2sgcntlr_dma_interr_set    : in  std_logic ;                                                      
    
    -- Echo of Main DataMover Slave error from SG
    sg2sgcntlr_dma_slverr_set    : in  std_logic ;                                                      
    
    -- Echo of Main DataMover Decode error from SG
    sg2sgcntlr_dma_decerr_set    : in  std_logic ;                                                      
    
     
     
    -- Echo of Main DataMover internal error to the Register Module
    sgcntlr2reg_dma_interr_set   : out std_logic ;                                                      
    
    -- Echo of Main DataMover Slave error to the Register Module
    sgcntlr2reg_dma_slverr_set   : out std_logic ;                                                      
    
    -- Echo of Main DataMover Decode error to the Register Module
    sgcntlr2reg_dma_decerr_set   : out std_logic ;                                                      
    
     
     
    -- Current Descriptor write control to Register Module
    sgcntlr2reg_new_curdesc_wren : out std_logic ;                                                      
    
    -- Current Descriptor to Register Module
    sgcntlr2reg_new_curdesc  : out std_logic_vector(C_SG_ADDR_WIDTH-1 downto 0) ; 
    
  
  
    -- DataMover MM2S Command Interface Ports (AXI Stream)
    mm2s2sgcntl_cmd_tready       : in  std_logic  ;                                 -- DM MM2S CMD IF
    sgcntl2mm2s_cmd_tvalid       : out std_logic  ;                                 -- DM MM2S CMD IF
    sgcntl2mm2s_cmd_tdata        : out std_logic_vector(C_DM_CMD_WIDTH-1 downto 0); -- DM MM2S CMD IF 

    -- DataMover MM2S Status Interface Ports (AXI Stream)
    sgcntl2mm2s_sts_tready       : out std_logic  ;                                             -- DM MM2S Status IF
    mm2s2sgcntl_sts_tvalid       : in  std_logic  ;                                             -- DM MM2S Status IF
    mm2s2sgcntl_sts_tdata        : in  std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     -- DM MM2S Status IF
    mm2s2sgcntl_sts_tstrb        : in  std_logic_vector((C_DM_MM2S_STATUS_WIDTH/8)-1 downto 0); -- DM MM2S Status IF 
    
    -- DataMover MM2S error discrete
    mm2s2sgcntl_err              : in  std_logic  ;  
    
    -- DataMover MM2S Halt request input
    sgcntl2mm2s_halt             : Out std_logic  ;
    
    -- DataMover MM2S Halt complete flag
    mm2s2sgcntl_halt_cmplt       : In  std_logic  ;
    
    
    -- DataMover S2MM Command Interface Ports (AXI Stream)
    s2mm2sgcntl_cmd_tready       : in  std_logic  ;                                  -- DM S2MM CMD IF
    sgcntl2s2mm_cmd_tvalid       : out std_logic  ;                                  -- DM S2MM CMD IF
    sgcntl2s2mm_cmd_tdata        : out std_logic_vector(C_DM_CMD_WIDTH-1 downto 0);  -- DM S2MM CMD IF
    
    -- DataMover S2MM Status Interface Ports (AXI Stream)
    sgcntl2s2mm_sts_tready       : out std_logic  ;                                            -- DM S2MM Status IF   
    s2mm2sgcntl_sts_tvalid       : in  std_logic  ;                                            -- DM S2MM Status IF   
    s2mm2sgcntl_sts_tdata        : in  std_logic_vector(C_DM_S2MM_STATUS_WIDTH-1 downto 0);    -- DM S2MM Status IF   
    s2mm2sgcntl_sts_tstrb        : in  std_logic_vector((C_DM_S2MM_STATUS_WIDTH/8)-1 downto 0);-- DM S2MM Status IF   
    
    -- DataMover S2MM error discrete
    s2mm2sgcntl_err              : in  std_logic  ;               
    
    -- DataMover S2MM Halt request input
    sgcntl2s2mm_halt             : Out std_logic  ;
    
    -- DataMover S2MM Halt complete flag
    s2mm2sgcntl_halt_cmplt       : In  std_logic  
    
  );

end axi_cdma_sg_cntlr;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_sg_cntlr is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";








-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_calc_offset_bits
  --
  -- Function Description:
  --  Calculates the width of the destination address offset bits
  --  needed for populating the MM2S Command DSA field.
  --
  -------------------------------------------------------------------
  function funct_calc_offset_bits (data_width : integer) return integer is
  
   Variable lvar_bits_needed : Integer := 0;
  
  begin

    case data_width is
      when 32 =>
        lvar_bits_needed  := 2;
      when 64 =>
        lvar_bits_needed  := 3;
      when 128 =>
        lvar_bits_needed  := 4;
      when others => -- 256 bits
        lvar_bits_needed  := 5;
    end case;
    
   
    Return (lvar_bits_needed);
   
  end function funct_calc_offset_bits;


 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

  Constant DM_CMD_PEND_WIDTH     : integer := 5; -- bits
  Constant DM_CMD_PEND_ONE       : unsigned(DM_CMD_PEND_WIDTH-1 downto 0) := TO_UNSIGNED(1,DM_CMD_PEND_WIDTH);
  Constant DM_CMD_PEND_ZERO      : unsigned(DM_CMD_PEND_WIDTH-1 downto 0) := TO_UNSIGNED(0,DM_CMD_PEND_WIDTH);
  
  Constant NO_SYNCHRONIZERS      : integer := 0;
  Constant POSITIVE_EDGE_TRIGGER : integer := 1;
  Constant NEGATIVE_EDGE_TRIGGER : integer := 0;
  Constant TWO_CLKS              : integer := 2;
  Constant ONE_CLK               : integer := 1;
  
  Constant CMD_TAG_WIDTH         : integer := 4;
  Constant CMD_DSA_WIDTH         : integer := 6;
  Constant DSA_ADDR_OFFSET_WIDTH : integer := funct_calc_offset_bits(C_DM_DATA_WIDTH);
  Constant CMD_RSVD              : std_logic_vector(3 downto 0) := (others => '0');
  Constant CMD_DSA_ZEROED        : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');
  
  Constant STS_TAG_MS_INDEX      : integer := CMD_TAG_WIDTH-1;
  Constant STS_INTERR_INDEX      : integer := STS_TAG_MS_INDEX+1;
  Constant STS_DECERR_INDEX      : integer := STS_INTERR_INDEX+1;
  Constant STS_SLVERR_INDEX      : integer := STS_DECERR_INDEX+1;
  Constant STS_OK_INDEX          : integer := STS_SLVERR_INDEX+1;
  
  Constant DM_ADDR_FIELD_WIDTH   : integer := 32;
  Constant DM_BTT_FIELD_WIDTH    : integer := 23; 
  Constant BTT_ZERO              : std_logic_vector(DM_BTT_FIELD_WIDTH-1 downto 0) := (others => '0');
  
  Constant TAG_CNT_ONE           : unsigned(CMD_TAG_WIDTH-1 downto 0) := TO_UNSIGNED(1,CMD_TAG_WIDTH);
  
  Constant DESCR_DBEAT_CNT_WIDTH : integer := 3; -- bits
  Constant DESCR_DBEAT_CNT_ONE   : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := 
                                   TO_UNSIGNED(1,DESCR_DBEAT_CNT_WIDTH);
  
  -- Descriptor Load databeat positions
  Constant CDA_LS : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(0,DESCR_DBEAT_CNT_WIDTH);
  Constant CDA_MS : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(1,DESCR_DBEAT_CNT_WIDTH);
--  Constant SA_LS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(2,DESCR_DBEAT_CNT_WIDTH);
  Constant SA_LS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(1,DESCR_DBEAT_CNT_WIDTH);
  Constant SA_MS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(3,DESCR_DBEAT_CNT_WIDTH);
--  Constant DA_LS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(4,DESCR_DBEAT_CNT_WIDTH);
  Constant DA_LS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(2,DESCR_DBEAT_CNT_WIDTH);
  Constant DA_MS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(5,DESCR_DBEAT_CNT_WIDTH);
--  Constant BTT    : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(6,DESCR_DBEAT_CNT_WIDTH);
  Constant BTT    : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(3,DESCR_DBEAT_CNT_WIDTH);
  Constant STATUS : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(7,DESCR_DBEAT_CNT_WIDTH);
  
  
  -- Status update word reserved field
  Constant STATUS_USED_WIDTH : integer :=   1   -- Update IOC bit
                                          + 1   -- Cmplt bit
                                          + 1   -- DMADecErr bit
                                          + 1   -- DMASlvErr bit
                                          + 1 ; -- DMAIntErr bit
  
  Constant STATUS_RSVD_WIDTH        : integer := C_SG_STS_UPDATE_DWIDTH - STATUS_USED_WIDTH;
  Constant STATUS_RSVD              : std_logic_vector(STATUS_RSVD_WIDTH-1 downto 0) := (others => '0');


  
  Constant FTCH_UPDT_CNTR_WIDTH     : integer := 5;  -- 5 bits wide
  
  Constant FTCH_UPDT_ZERO           : unsigned(FTCH_UPDT_CNTR_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(0, FTCH_UPDT_CNTR_WIDTH);  
  
  Constant FTCH_UPDT_ONE            : unsigned(FTCH_UPDT_CNTR_WIDTH-1 downto 0) := 
                                       TO_UNSIGNED(1, FTCH_UPDT_CNTR_WIDTH);  
  
  
  
  Constant UPDT_FLTR_WIDTH          : integer := 8;  -- 8 clocks
  
  Constant UPDT_FLTR_CNTR_WIDTH     : integer := 4;  -- 4 bits wide
  
  Constant UPDT_FLTR_CNTR_LD_VALUE  : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(UPDT_FLTR_WIDTH, UPDT_FLTR_CNTR_WIDTH);  
  
  Constant UPDT_FLTR_CNTR_ZERO      : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(0, UPDT_FLTR_CNTR_WIDTH);  
  
  Constant UPDT_FLTR_CNTR_ONE       : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(1, UPDT_FLTR_CNTR_WIDTH);  
  

  
  
  Constant FETCH_LIMIT               : integer := 4; -- limit of allowed prefetches for DM Cmds
  
  Constant FTCH_LIMITER_CNTR_WIDTH   : integer := 4;  -- 4 bits wide (16 values)
  
  
  Constant FTCH_LIMIT_VALUE          : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                       TO_UNSIGNED(FETCH_LIMIT, FTCH_LIMITER_CNTR_WIDTH);  
  
  
  Constant FTCH_LIMITER_CNTR_ZERO    : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                       TO_UNSIGNED(0, FTCH_LIMITER_CNTR_WIDTH);  
  
  Constant FTCH_LIMITER_CNTR_ONE     : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                       TO_UNSIGNED(1, FTCH_LIMITER_CNTR_WIDTH);  
  



-------------------------------------------------------------------------------
-- Type Declarations
-------------------------------------------------------------------------------


  -- Define the Fetch State Machine type and states
  type sg_fetch_sm_type is (FTCH_IDLE      ,
                            CHK_SG_DM_RDY  ,
                            LOAD_DESC      ,
                            XFER_DONE      
                           );
 
  -- Define the Status State Machine type and states
  type sg_status_sm_type is (STS_IDLE        ,
                             GET_MM2S_STATUS ,
                             GET_S2MM_STATUS ,
                             DO_UPDATE
                            );
 
  -- Update Stream arbiter type
  type update_arb_type is (ARB_IDLE        ,
                           ARB_GRANT_FETCH ,
                           ARB_GRANT_STATUS
                          );
   
  -- shutdown sequencer type
  type shtdwn_type is (SHTDWN_IDLE        ,
                       HALT_FTCH_DM       ,
                       WAIT_FTCH_IDLE     ,
                       WAIT_FTCH_UPDATE   ,
                       WAIT_DM_HALT_CMPLT ,
                       WAIT_STS_IDLE      ,
                       WAIT_STS_UPDATE    ,
                       WAIT_SG_UPDATE     ,
                       SHTDWN_CMPLT
                      );
  
   
   
-------------------------------------------------------------------------------
-- Signal Declarations
-------------------------------------------------------------------------------

  -- Fetch State machine
  signal sig_ftch_sm_state              : sg_fetch_sm_type := FTCH_IDLE;
  signal sig_ftch_sm_state_ns           : sg_fetch_sm_type := FTCH_IDLE;
  signal sig_ftch_sm_set_getdesc        : std_logic := '0';
  signal sig_ftch_sm_set_getdesc_ns     : std_logic := '0';
  signal sig_ftch_sm_ld_dm_cmd          : std_logic := '0';
  signal sig_ftch_sm_ld_dm_cmd_ns       : std_logic := '0';
  signal sig_ftch_sm_push_updt          : std_logic := '0';
  signal sig_ftch_sm_push_updt_ns       : std_logic := '0';
  signal sig_ftch_sm_done               : std_logic := '0';
  signal sig_ftch_sm_done_ns            : std_logic := '0';
  
  
  -- Status State machine
  signal sig_sts_sm_state               : sg_status_sm_type := STS_IDLE;
  signal sig_sts_sm_state_ns            : sg_status_sm_type := STS_IDLE;
  signal sig_sts_sm_pop_mm2s_sts        : std_logic := '0';
  signal sig_sts_sm_pop_mm2s_sts_ns     : std_logic := '0';
  signal sig_sts_sm_pop_s2mm_sts        : std_logic := '0';
  signal sig_sts_sm_pop_s2mm_sts_ns     : std_logic := '0';
  signal sig_sts_sm_push_updt           : std_logic := '0';
  signal sig_sts_sm_push_updt_ns        : std_logic := '0';
  
      
  -- High level control
  signal sig_sg_active                  : std_logic := '1';
  signal sig_sg_run                     : std_logic := '0';
  signal sig_idle_clr                   : std_logic := '0';
  signal sig_idle_set                   : std_logic := '0';
  signal sig_dm_cmd_pend_cntr           : unsigned(DM_CMD_PEND_WIDTH-1 downto 0) := (others => '0');
  signal sig_inc_cmd_pending            : std_logic := '0';
  signal sig_decr_cmd_pending           : std_logic := '0';
  signal sig_dm_cmd_pend_eq0            : std_logic := '0';
  signal sig_composite_idle             : std_logic := '0';
  
  
  -- Soft shutdown support
  signal sig_halt_request               : std_logic := '0';
  signal sig_halt_cmplt_reg             : std_logic := '0';
      
      
      
  -- DataMover Cmd/Status IF
  signal sig_cmd_tag                    : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_cmd_tag_cntr               : unsigned(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_dsa_offset            : std_logic_vector(DSA_ADDR_OFFSET_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_dsa_field             : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');
  signal sig_btt_dm_slice               : std_logic_vector(DM_BTT_FIELD_WIDTH-1 downto 0) := (others => '0');
  
  signal sig_mm2s_s2mm_cmd_rdy          : std_logic := '0';
  
  signal sig_mm2s_cmd                   : std_logic_vector(C_DM_CMD_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_cmd_valid             : std_logic := '0';
  signal sig_mm2s_cmd_ready             : std_logic := '0';
  
  signal sig_mm2s_sts_tready            : std_logic  ;                                             
  signal sig_mm2s_sts_tvalid            : std_logic  ;                                             
  signal sig_mm2s_sts_tdata             : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     
  
  signal sig_s2mm_cmd                   : std_logic_vector(C_DM_CMD_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_cmd_valid             : std_logic := '0';
  signal sig_s2mm_cmd_ready             : std_logic := '0';
  
  signal sig_s2mm_sts_tready            : std_logic  ;                                             
  signal sig_s2mm_sts_tvalid            : std_logic  ;                                             
  signal sig_s2mm_sts_tdata             : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     

  
  -- DataMover Status Scoring and Update
  signal sig_mm2s_status_reg            : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_status_reg            : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
  
  signal sig_mm2s_tag                   : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_slverr                : std_logic := '0';
  signal sig_mm2s_decerr                : std_logic := '0';
  signal sig_mm2s_interr                : std_logic := '0';
 
  signal sig_s2mm_tag                   : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_slverr                : std_logic := '0';
  signal sig_s2mm_decerr                : std_logic := '0';
  signal sig_s2mm_interr                : std_logic := '0';
 
  signal sig_mm2s2cntl_err              : std_logic := '0';
  signal sig_s2mm2cntl_err              : std_logic := '0';

  signal sig_composite_interr           : std_logic := '0';
  signal sig_composite_slverr           : std_logic := '0';
  signal sig_composite_decerr           : std_logic := '0';
  signal sig_tag_error                  : std_logic := '0';
 
  -- SG Update Ready signals
  signal sig_fetch_updptr_tready       : std_logic := '0';
  signal sig_status_updsts_tready      : std_logic := '0';
  
  
  -- Descriptor Fetch support
  signal sig_fetch_dbeat_cnt            : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := (others => '0');
  signal sig_good_fetch_dbeat           : std_logic := '0';
  signal sig_fetch_go                   : std_logic := '0';
  signal sig_fetch_done                 : std_logic := '0';
  signal sig_fetch_last                 : std_logic := '0';
  
  -- Descriptor fetch holding registers
  signal sig_curr_desc_pntr_reg         : std_logic_vector(C_SG_FETCH_DWIDTH-1 downto 0) := (others => '0');
  signal sig_curr_desc_pntr_reg_64         : std_logic_vector(C_SG_FETCH_DWIDTH-1 downto 0) := (others => '0');
  signal sig_src_addr_reg               : std_logic_vector(C_SG_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_dest_addr_reg              : std_logic_vector(C_SG_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_btt_reg                    : std_logic_vector(C_SG_FETCH_DWIDTH-1 downto 0) := (others => '0');
  
  -- Descriptor fetch SG update support
  signal sig_ld_fetch_update_reg        : std_logic := '0';
  signal sig_pop_fetch_update_reg       : std_logic := '0';
  signal sig_fetch_update_reg           : std_logic_vector(C_SG_PTR_UPDATE_DWIDTH-1 downto 0) := (others => '0');
  signal sig_fetch_update_full_1        : std_logic := '0';
  signal sig_fetch_update_empty_1       : std_logic := '0';
  signal sig_fetch_update_full          : std_logic := '0';
  signal sig_fetch_update_empty         : std_logic := '0';
  signal sig_fetch_update_last          : std_logic := '0';
  
  -- Status SG Update support
  signal sig_ld_dm_status_reg           : std_logic := '0';
  signal sig_pop_dm_status_reg          : std_logic := '0';
  signal sig_dm_status_reg              : std_logic_vector(C_SG_STS_UPDATE_DWIDTH-1 downto 0) := (others => '0');
  signal sig_dm_status_full             : std_logic := '0';
  signal sig_dm_status_empty            : std_logic := '0';
  
  -- Controlled Shutdown support
  Signal sig_shtdwn_sm_state            : shtdwn_type := SHTDWN_IDLE;
  Signal sig_shtdwn_sm_state_ns         : shtdwn_type := SHTDWN_IDLE;
   signal sig_shtdwn_sm_flush_sg        : std_logic   := '0';
  signal sig_shtdwn_sm_flush_sg_ns      : std_logic   := '0';
  signal sig_shtdwn_sm_set_ftch_halt    : std_logic   := '0';
  signal sig_shtdwn_sm_set_ftch_halt_ns : std_logic   := '0';
  signal sig_shtdwn_sm_set_dm_halt      : std_logic   := '0';
  signal sig_shtdwn_sm_set_dm_halt_ns   : std_logic   := '0';
  signal sig_shtdwn_sm_set_sts_halt     : std_logic   := '0';
  signal sig_shtdwn_sm_set_sts_halt_ns  : std_logic   := '0';
  signal sig_shtdwn_sm_set_cmplt        : std_logic   := '0';
  signal sig_shtdwn_sm_set_cmplt_ns     : std_logic   := '0';
  
  signal sig_do_shutdown                : std_logic   := '0';
  signal sig_sg_error                   : std_logic   := '0';
  signal sig_halt_fetch                 : std_logic   := '0';
  signal sig_halt_status                : std_logic   := '0';
  signal sig_halt_dm                    : std_logic   := '0';
  signal sig_dmhalt_cmplt               : std_logic   := '0';
  signal sig_flush_sg                   : std_logic   := '0';
  signal sig_ftchsm_idle                : std_logic   := '0';
  signal sig_stssm_idle                 : std_logic   := '0';
  
  -- SG Idle detection enhancement
  signal sig_ftch_updt_cntr             : unsigned(FTCH_UPDT_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_incr_ftch_updt_cntr        : std_logic := '0';
  signal sig_decr_ftch_updt_cntr        : std_logic := '0';
  signal sig_ftch_updt_cntr_eq0         : std_logic := '0';
  signal sig_final_updt_idle            : std_logic := '0';
  signal sig_update_idle_rising         : std_logic := '0';
  signal sig_shutdown_idle              : std_logic := '0';
  signal sig_shutdown_idle_rising       : std_logic := '0';
  
  signal sig_updt_filter_cntr           : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_updt_filter_cntr_eq0       : std_logic := '0';
  signal sig_ld_updt_filter_cntr        : std_logic := '0';
  
  
  -- SG Fetch Limiter (lock up avoidance)
  signal sig_ftch_limit_cntr            : unsigned(FTCH_LIMITER_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_incr_ftch_limit_cntr       : std_logic := '0';
  signal sig_decr_ftch_limit_cntr       : std_logic := '0';
  signal sig_ftch_limit_cntr_eq0        : std_logic := '0';
  signal sig_ftch_limit_cntr_eqlimit    : std_logic := '0';
 
  signal type_of_burst_write            : std_logic; 
  signal type_of_burst                  : std_logic; 
  
  signal ZERO_WORD               : std_logic_vector (31 downto 0) := (others => '0'); 
                                                       
-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

 
 
 
 
-------------------------------------------------------------------------------
-- SG Run/Stop
-------------------------------------------------------------------------------

 
 sgcntlr2sg_run_stop <= sig_sg_run ;
 
 
 -------------------------------------------------------------
 -- Synchronous Process with Sync Reset
 --
 -- Label: IMP_SG_RUN_FLOP
 --
 -- Process Description:
 --    Implements the flop for the SG Run control. The Run/Stop
 -- control is set when SG Mode is enabled and the Current
 -- Descriptor Register is updated by SW (in the Reg Module).
 --
 -------------------------------------------------------------
 IMP_SG_RUN_FLOP : process (axi_aclk)
   begin
     if (axi_aclk'event and axi_aclk = '1') then
        if (axi_reset          = '1' or
            reg2sgcntl_sg_mode = '0') then
 
          sig_sg_run <= '0';
 
        elsif (reg2sgcntl_currdesc_updated = '1') then
 
          sig_sg_run <= '1';
 
        else
 
          null;  -- Hold Current State
 
        end if; 
     end if;       
   end process IMP_SG_RUN_FLOP; 
 
 



-------------------------------------------------------------------------------
-- SG Xfer "Really" Done Detection
-------------------------------------------------------------------------------

  sig_idle_set            <=  (not(sig_do_shutdown)     and  -- not in a shutdown sequence
                              sig_update_idle_rising    and  -- update engine done
                              sig_ftch_updt_cntr_eq0    and  -- the last update queued
                              sig_updt_filter_cntr_eq0  and 
                              sg2sgcntlr_ftch_idle)     or   -- not in update filter period
                              sig_shutdown_idle_rising;    -- in shutdown and complete
                              
  
  sig_incr_ftch_updt_cntr <=  sig_ftch_sm_set_getdesc ;
                                    
  sig_decr_ftch_updt_cntr <=  sig_pop_dm_status_reg   ;
  
  sig_ftch_updt_cntr_eq0  <= '1'
    when sig_ftch_updt_cntr = FTCH_UPDT_ZERO
    Else '0';
  
  sig_final_updt_idle <=  sig_ftch_updt_cntr_eq0 and -- all fetches have corresponding updates
                          sg2sgcntlr_updt_idle ;     -- and the SG Update engine is idle
  
  

  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_FTCH_UPDT_CNTR
  --
  -- Process Description:
  --   Implements a counter to keep track of the number of
  -- descriptor fetches and updates. This is used to detirmine
  -- when SG operation are really completed.
  --
  -------------------------------------------------------------
  IMP_FTCH_UPDT_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset = '1') then
  
           sig_ftch_updt_cntr <= FTCH_UPDT_ZERO;
  
         elsif (sig_incr_ftch_updt_cntr = '1' and
                sig_decr_ftch_updt_cntr = '0') then
  
           sig_ftch_updt_cntr <= sig_ftch_updt_cntr + FTCH_UPDT_ONE;
  
         Elsif (sig_ftch_updt_cntr_eq0  = '0' and
                sig_decr_ftch_updt_cntr = '1' and
                sig_incr_ftch_updt_cntr = '0') Then
  
           sig_ftch_updt_cntr <= sig_ftch_updt_cntr - FTCH_UPDT_ONE;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_FTCH_UPDT_CNTR; 
     
     
     
     
  ------------------------------------------------------------
  -- Instance: I_GEN_SG_IDLE_RISE 
  --
  -- Description:
  --   Generates a pulse signaling the last SG update
  -- operation has completed.  
  --
  ------------------------------------------------------------
  I_GEN_SG_IDLE_RISE : entity axi_cdma_v4_1_9.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,   
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,   
    C_PULSE_WIDTH_CLKS =>  ONE_CLK         
      
    )
  port map (

    Clk_In             =>  axi_aclk                   ,   
    Rst_In             =>  axi_reset                  ,   
    Sig_in             =>  sg2sgcntlr_updt_idle       ,   
    Pulse_Out          =>  sig_update_idle_rising                   

    );


     
 
 
 
  
  
-------------------------------------------------------------------------------
-- Update Filter Counter
--
--  Used to filter the lag between the acceptance of an update by the SG 
--  and the Update Idle flag being reset by the SG (going to not idle).
--  
-------------------------------------------------------------------------------

 
  -- Start the filter counter when a status update is accepted
  -- by the SG Update interface
  sig_ld_updt_filter_cntr <=  sig_pop_dm_status_reg;
 
 
  sig_updt_filter_cntr_eq0 <= '1'
    when (sig_updt_filter_cntr = UPDT_FLTR_CNTR_ZERO)
    else '0';
 
 
 
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_UPDT_FILTER_CNTR
  --
  -- Process Description:
  --   Implements a counter to filter the time lag between an update
  -- being accepted by the SG and the Update Idle Flag being reset
  -- by the SG.
  --
  -------------------------------------------------------------
  IMP_UPDT_FILTER_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset = '1') then
  
           sig_updt_filter_cntr <= UPDT_FLTR_CNTR_ZERO;
  
         Elsif (sig_ld_updt_filter_cntr = '1') Then
         
           sig_updt_filter_cntr <= UPDT_FLTR_CNTR_LD_VALUE;
         
         Elsif (sig_updt_filter_cntr_eq0 = '0') Then
  
           sig_updt_filter_cntr <= sig_updt_filter_cntr - UPDT_FLTR_CNTR_ONE;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_UPDT_FILTER_CNTR; 
     
     
     
 
 
 
 
 
 
 
 
 


-------------------------------------------------------------------------------
-- Idle Set and Clear logic
-------------------------------------------------------------------------------

  -- The SG operation starts when the Tail Pointer is written by SW in the 
  -- Register Module
  
  sgcntl2reg_idle_set   <= sig_idle_set ;
  sgcntl2reg_idle_clr   <= sig_idle_clr ;


  
      
  ------------------------------------------------------------
  -- Instance: I_GEN_IDLE_CLR 
  --
  -- Description:
  --   Generates the Idle Clear pulse of 1 clock width.  
  --
  ------------------------------------------------------------
  I_GEN_IDLE_CLR : entity axi_cdma_v4_1_9.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,   
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,   
    C_PULSE_WIDTH_CLKS =>  ONE_CLK         
      
    )
  port map (

    Clk_In             =>  axi_aclk                   ,   
    Rst_In             =>  axi_reset                  ,   
    Sig_in             =>  reg2sgcntl_tailpntr_updated,   
    Pulse_Out          =>  sig_idle_clr                   

    );


 
 
  sig_shutdown_idle <=  (sig_do_shutdown  and   -- In a shutdown sequence and
                         sig_halt_cmplt_reg );  -- shutdown complete
 
 
 
 
    
  ------------------------------------------------------------
  -- Instance: I_GEN_IDLE_SET 
  --
  -- Description:
  --   Generates the Idle Set pulse of 1 clock width.  
  --
  ------------------------------------------------------------
  I_GEN_IDLE_SET : entity axi_cdma_v4_1_9.axi_cdma_pulse_gen
  generic map (
  
    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,   
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,   
    C_PULSE_WIDTH_CLKS =>  ONE_CLK         
      
    )
  port map (
  
    Clk_In             =>  axi_aclk              ,   
    Rst_In             =>  axi_reset             ,   
    Sig_in             =>  sig_shutdown_idle     ,   
    Pulse_Out          =>  sig_shutdown_idle_rising                   
  
    );
  


  
  
  -- Controls for the DataMover Command pending counter
  sig_inc_cmd_pending  <= sig_ftch_sm_ld_dm_cmd;
  sig_decr_cmd_pending <= sig_sts_sm_push_updt ;
  
  sig_dm_cmd_pend_eq0 <= '1'
    when (sig_dm_cmd_pend_cntr = DM_CMD_PEND_ZERO)
    Else '0';
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_DM_CMD_PEND_CNTR
  --
  -- Process Description:
  --
  --
  -------------------------------------------------------------
  IMP_DM_CMD_PEND_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset = '1') then
  
           sig_dm_cmd_pend_cntr <= DM_CMD_PEND_ZERO;
  
         elsif (sig_inc_cmd_pending  = '1' and
                sig_decr_cmd_pending = '0') then
  
           sig_dm_cmd_pend_cntr <= sig_dm_cmd_pend_cntr + DM_CMD_PEND_ONE;
  
         elsif (sig_inc_cmd_pending  = '0' and
                sig_decr_cmd_pending = '1' and
                sig_dm_cmd_pend_eq0  = '0') then
  
           sig_dm_cmd_pend_cntr <= sig_dm_cmd_pend_cntr - DM_CMD_PEND_ONE;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_DM_CMD_PEND_CNTR; 
  
  
  
  
  
  
  
  
  
  
  


-------------------------------------------------------------------------------
-- SOF/EOF control logic
-------------------------------------------------------------------------------

  -- Since CDMA does not need to support SOF/EOF concept (no Stream IF) then
  -- every descriptor processed is by definition a EOF/SOF case (from the 
  -- viewpoint of the DataMover and the SG engine).
  
  sgcntl2sg_pkt_sof    <= sig_idle_clr            or -- Used to stop Delay Timer when a descr is ready or
                          sig_shtdwn_sm_set_cmplt ;  -- Stop delay timer on shutdown completion
  
  sgcntl2sg_pkt_eof    <= sig_idle_set            ;  -- Used to start Delay timer 







-------------------------------------------------------------------------------
-- IOC and Delay Interrupt set control logic
-------------------------------------------------------------------------------

  -- Just pass these through the SG Controller for now. These were 
  -- brought through the SG Controller just in case the need arose
  -- for some protection from the register module during simple DMA
  -- mode.

  sgcntl2reg_ioc_irq_set  <=  sg2sgcntl_ioc_irq_set;
  sgcntl2reg_dly_irq_set  <=  sg2sgcntl_dly_irq_set;

 
 



-------------------------------------------------------------------------------
-- Current Descriptor Update to Register module control logic
-------------------------------------------------------------------------------

   -- Update the Register module with the latest Descriptor's Current
   -- DEscriptor Address when the SG Fetch Update occurs.                                                         
                                                            
   sgcntlr2reg_new_curdesc_wren  <=  sig_ftch_sm_push_updt  ;                                                        
   sgcntlr2reg_new_curdesc (31 downto 0)   <=  sig_curr_desc_pntr_reg ;                                                        
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            

-------------------------------------------------------------------------------
-- SG DMA Error set control logic
-------------------------------------------------------------------------------

  -- Just pass these through the SG Controller for now. These were 
  -- brought through the SG Controller just in case the need arose
  -- for some protection from the register module during simple DMA
  -- mode.

  sgcntlr2reg_dma_interr_set  <= sg2sgcntlr_dma_interr_set  ;
  sgcntlr2reg_dma_slverr_set  <= sg2sgcntlr_dma_slverr_set  ;
  sgcntlr2reg_dma_decerr_set  <= sg2sgcntlr_dma_decerr_set  ;






 
   
-------------------------------------------------------------------------------
-- Misc logic
-------------------------------------------------------------------------------

  
  
  
  -- See if DataMover is ready for next command
  sig_mm2s_s2mm_cmd_rdy <= sig_mm2s_cmd_ready and
                           sig_s2mm_cmd_ready;
 
 
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_SG_ACTIVE_FLAG
  --
  -- Process Description:
  --  Internal flag for enable and disable of state machines.
  --
  -------------------------------------------------------------
  IMP_SG_ACTIVE_FLAG : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset    = '1' or
             sig_idle_set = '1') then
  
--           sig_sg_active <= '0';
  
         elsif (sig_idle_clr = '1') then
  
--           sig_sg_active <= '1';
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_SG_ACTIVE_FLAG; 
 
                          








-------------------------------------------------------------------------------
-- FETCH Prefetch Limiter Logic
-------------------------------------------------------------------------------

  
  
  
  sig_incr_ftch_limit_cntr <=  sig_ftch_sm_set_getdesc ;
                                    
  sig_decr_ftch_limit_cntr <=  sig_pop_dm_status_reg   ;
  
  sig_ftch_limit_cntr_eq0  <= '1'
    when sig_ftch_limit_cntr = FTCH_LIMITER_CNTR_ZERO
    Else '0';
  
  sig_ftch_limit_cntr_eqlimit  <= '1'
    when sig_ftch_limit_cntr = FTCH_LIMIT_VALUE
    Else '0';
  


  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_FTCH_LIMIT_CNTR
  --
  -- Process Description:
  --   Implements a counter to keep track of the number of
  -- descriptor fetches and updates. This is used to limit the
  -- difference to a fixed value to keep the SG Update Queue from
  -- going full. The SG Update Queue full can lead to SG lockup.
  --
  -------------------------------------------------------------
  IMP_FTCH_LIMIT_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset = '1') then
  
           sig_ftch_limit_cntr <= FTCH_LIMITER_CNTR_ZERO;
  
         elsif (sig_incr_ftch_limit_cntr = '1' and
                sig_decr_ftch_limit_cntr = '0') then
  
           sig_ftch_limit_cntr <= sig_ftch_limit_cntr + FTCH_LIMITER_CNTR_ONE;
  
         Elsif (sig_ftch_limit_cntr_eq0  = '0' and
                sig_decr_ftch_limit_cntr = '1' and
                sig_incr_ftch_limit_cntr = '0') Then
  
           sig_ftch_limit_cntr <= sig_ftch_limit_cntr - FTCH_LIMITER_CNTR_ONE;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_FTCH_LIMIT_CNTR; 
     
     
     
     
                          
-------------------------------------------------------------------------------
-- Descriptor Fetch Logic
-------------------------------------------------------------------------------

  
   sgcntl2sg_ftch_tready <= sig_fetch_go or
                            sig_halt_fetch ; -- force tready high on a shutdown
   
   
--   sig_fetch_last        <= sg2sgcntlr_ftch_tlast;
   sig_fetch_last        <= '1'; --sg2sgcntlr_ftch_tlast;
   
   
--   sig_good_fetch_dbeat  <= sig_fetch_go and
   sig_good_fetch_dbeat  <= sg2sgcntlr_ftch_tvalid_new;
                            
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_FETCH_GO_FLOP
  --
  -- Process Description:
  --  Implements the fetch go and done flags
  --
  -------------------------------------------------------------
  IMP_FETCH_GO_FLOP : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset        = '1' or
             sig_ftch_sm_done = '1') then
  
      --     sig_fetch_go   <= '0';
      --     sig_fetch_done <= '0';
  
         elsif (sig_ftch_sm_set_getdesc_ns = '1') then
  
      --     sig_fetch_go   <= '1';
      --     sig_fetch_done <= '0';
  
         Elsif (sig_good_fetch_dbeat  = '1' and
                sig_fetch_last        = '1') Then
  
      --     sig_fetch_go   <= '0';
      --     sig_fetch_done <= '1';
  
         else
  
           null;  -- hold current state
  
         end if; 
      end if;       
    end process IMP_FETCH_GO_FLOP; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_FETCH_DB_CNTR
  --
  -- Process Description:
  --  Implements the descriptor fetch data beat counter
  --
  -------------------------------------------------------------
  IMP_FETCH_DB_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset                   = '1' or
             sig_ftch_sm_set_getdesc_ns  = '1') then
  
           sig_fetch_dbeat_cnt <= (others => '0');
  
         elsif (sig_good_fetch_dbeat = '1' and
                sig_fetch_done       = '0' and
                sig_fetch_last       = '0') then
  
           sig_fetch_dbeat_cnt <= sig_fetch_dbeat_cnt +
                                  DESCR_DBEAT_CNT_ONE ;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_FETCH_DB_CNTR; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_CURR_DESC_PNTR_REG
  --
  -- Process Description:
  --   Implements the Next descriptor pointer reg. It is 
  -- cleared when the fetch process is complete.
  --
  -------------------------------------------------------------
--  IMP_CURR_DESC_PNTR_REG : process (axi_aclk)
--    begin
--      if (axi_aclk'event and axi_aclk = '1') then
--         if (axi_reset        = '1' or
--             sig_ftch_sm_done = '1') then
  
--           sig_curr_desc_pntr_reg <= (others => '0');
  
--         elsif (sig_good_fetch_dbeat = '1' and
--                sig_fetch_dbeat_cnt  = CDA_LS) then
  
           sig_curr_desc_pntr_reg <= sg2sgcntlr_ftch_tdata_new (127 downto 96);
  
--         else
  
--           null;  -- Hold Current State
  
--         end if; 
--      end if;       
--    end process IMP_CURR_DESC_PNTR_REG; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_SRC_ADDR_REG
  --
  -- Process Description:
  --   Implements the Source Address register. It is 
  -- cleared when the fetch process is complete.
  --
  -------------------------------------------------------------
--  IMP_SRC_ADDR_REG : process (axi_aclk)
--    begin
--      if (axi_aclk'event and axi_aclk = '1') then
--         if (axi_reset        = '1' or
--             sig_ftch_sm_done = '1') then
  
--           sig_src_addr_reg <= (others => '0');
  
--         elsif (sig_good_fetch_dbeat = '1' and
--                sig_fetch_dbeat_cnt  = SA_LS) then
  
           sig_src_addr_reg (31 downto 0) <= sg2sgcntlr_ftch_tdata_new (31 downto 0);
  
--         else
  
--           null;  -- Hold Current State
  
--         end if; 
--      end if;       
--    end process IMP_SRC_ADDR_REG; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_DEST_ADDR_REG
  --
  -- Process Description:
  --   Implements the Destination Address register. It is 
  -- cleared when the fetch process is complete.
  --
  -------------------------------------------------------------
--  IMP_DEST_ADDR_REG : process (axi_aclk)
--    begin
--      if (axi_aclk'event and axi_aclk = '1') then
--         if (axi_reset        = '1' or
--             sig_ftch_sm_done = '1') then
  
--           sig_dest_addr_reg <= (others => '0');
  
--         elsif (sig_good_fetch_dbeat = '1' and
--                sig_fetch_dbeat_cnt  = DA_LS) then
  
           sig_dest_addr_reg(31 downto 0) <= sg2sgcntlr_ftch_tdata_new (63 downto 32);
  
--         else
  
--           null;  -- Hold Current State
  
--         end if; 
--      end if;       
--    end process IMP_DEST_ADDR_REG; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_BTT_REG
  --
  -- Process Description:
  --   Implements the BTT register. It is 
  -- cleared when the fetch process is complete.
  --
  -------------------------------------------------------------
--  IMP_BTT_REG : process (axi_aclk)
--    begin
--      if (axi_aclk'event and axi_aclk = '1') then
--         if (axi_reset        = '1' or
--             sig_ftch_sm_done = '1') then
  
--           sig_btt_reg <= (others => '0');
  
--         elsif (sig_good_fetch_dbeat = '1' and
--                sig_fetch_dbeat_cnt  = BTT) then
  
           sig_btt_reg <= sg2sgcntlr_ftch_tdata_new (95 downto 64);
  
--         else
  
--           null;  -- Hold Current State
  
--         end if; 
--      end if;       
--    end process IMP_BTT_REG; 









-------------------------------------------------------------------------------
-- Rip the needed BTT bits for the DataMover from the descriptor BTT register
-------------------------------------------------------------------------------



  
  sig_btt_dm_slice  <= sig_btt_reg(DM_BTT_FIELD_WIDTH-1 downto 0);
  
  



-------------------------------------------------------------------------------
-- Command TAG Generator (just an incrementing counter)
-- The Command tag is used for test and debug to track command execution flow
-- through the DataMover.
-------------------------------------------------------------------------------

  sig_cmd_tag   <=  STD_LOGIC_VECTOR(sig_cmd_tag_cntr);
 

  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: DM_TAG_CNTR
  --
  -- Process Description:
  --   Command tag generator. This is just a simple counter
  -- that increments every time a command is loaded into the
  -- DataMover. Counter rollover is ok.
  --
  -------------------------------------------------------------
  DM_TAG_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset          = '1' or
             reg2sgcntl_sg_mode = '0') then
  
           sig_cmd_tag_cntr <= (others => '0');
  
         elsif (sig_ftch_sm_ld_dm_cmd = '1') then
  
           sig_cmd_tag_cntr <= sig_cmd_tag_cntr + TAG_CNT_ONE;
  
         else
  
           null;  -- hold current state
  
         end if; 
      end if;       
    end process DM_TAG_CNTR; 
  




-------------------------------------------------------------------------------
-- MM2S Command Generation
-------------------------------------------------------------------------------
 
 
  sgcntl2mm2s_cmd_tdata    <= sig_mm2s_cmd           ;
  sgcntl2mm2s_cmd_tvalid   <= sig_mm2s_cmd_valid     ;
  sig_mm2s_cmd_ready       <= mm2s2sgcntl_cmd_tready ;

  sig_mm2s_cmd_valid       <= sig_ftch_sm_ld_dm_cmd  ;
 
  type_of_burst          <= '1' and (not burst_type_read); 
 
  -- Formulate the MM2S Command
  sig_mm2s_cmd <=  CMD_RSVD            &  -- reserved
                   sig_cmd_tag         &  -- Tag
                   sig_src_addr_reg    &  -- Address
                   '1'                 &  -- DRR bit
                   '1'                 &  -- EOF bit
                   sig_mm2s_dsa_field  &  -- DSA Field Assignment
                   type_of_burst       &
--                   '1'                 &  -- Incrementing burst type
                   sig_btt_dm_slice ;     -- BTT
    
 
 
   -- Rip the Destnation address offset bits
   sig_mm2s_dsa_offset <= sig_dest_addr_reg(DSA_ADDR_OFFSET_WIDTH-1 downto 0);
 
   -- Size the dest addr offset to the DSA field width
   sig_mm2s_dsa_field  <=  STD_LOGIC_VECTOR(RESIZE(UNSIGNED(sig_mm2s_dsa_offset), CMD_DSA_WIDTH));
 
 
 
 
-------------------------------------------------------------------------------
-- MM2S Status Reg and logic
-------------------------------------------------------------------------------
 
   sgcntl2mm2s_sts_tready <=  sig_sts_sm_pop_mm2s_sts  or 
                              sig_halt_dm             ;   -- allow status to flush on shutdown
   sig_mm2s_sts_tvalid    <=  mm2s2sgcntl_sts_tvalid  ;    
   sig_mm2s_sts_tdata     <=  mm2s2sgcntl_sts_tdata   ;    

 
 
   
   -- DataMover MM2S Error discrete
   sig_mm2s2cntl_err      <= mm2s2sgcntl_err          ;
   
   -- Rip the status bits from the status register
   sig_mm2s_tag           <= sig_mm2s_status_reg(STS_TAG_MS_INDEX downto 0);
   sig_mm2s_interr        <= sig_mm2s_status_reg(STS_INTERR_INDEX);
   sig_mm2s_decerr        <= sig_mm2s_status_reg(STS_DECERR_INDEX);
   sig_mm2s_slverr        <= sig_mm2s_status_reg(STS_SLVERR_INDEX);
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_MM2S_STATUS_REG
   --
   -- Process Description:
   --  Implements the MM2S status reply holding register.
   --
   -------------------------------------------------------------
   IMP_MM2S_STATUS_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset       = '1' or
              sig_sts_sm_push_updt = '1') then
   
            sig_mm2s_status_reg <= (others => '0');
   
          elsif (sig_sts_sm_pop_mm2s_sts = '1') then
   
            sig_mm2s_status_reg <= sig_mm2s_sts_tdata;
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_MM2S_STATUS_REG; 
 
 
 
 
 
 
 
 
 
 
 
  
-------------------------------------------------------------------------------
-- S2MM Command Generation
-------------------------------------------------------------------------------

 
  sgcntl2s2mm_cmd_tdata   <= sig_s2mm_cmd           ;
  sgcntl2s2mm_cmd_tvalid  <= sig_s2mm_cmd_valid     ;
  sig_s2mm_cmd_ready      <= s2mm2sgcntl_cmd_tready ; 

  sig_s2mm_cmd_valid      <= sig_ftch_sm_ld_dm_cmd  ;
 
  type_of_burst_write          <= '1' and (not burst_type_write); 
  
  
  -- Formulate the S2MM Command
  sig_s2mm_cmd <=  CMD_RSVD            &  -- reserved
                   sig_cmd_tag         &  -- Tag
                   sig_dest_addr_reg   &  -- Address
                   '1'                 &  -- DRR bit
                   '1'                 &  -- EOF bit
                   CMD_DSA_ZEROED      &  -- DSA Field Assignment
                   type_of_burst_write &
--                   '1'                 &  -- Incrementing burst type
                   sig_btt_dm_slice ;     -- BTT
    
    
   
   
   
   
-------------------------------------------------------------------------------
-- S2MM Status Reg and logic
-------------------------------------------------------------------------------
 
   sgcntl2s2mm_sts_tready <=  sig_sts_sm_pop_s2mm_sts or 
                              sig_halt_dm             ;  -- allow status to flush on shutdown;  
   sig_s2mm_sts_tvalid    <=  s2mm2sgcntl_sts_tvalid  ;    
   sig_s2mm_sts_tdata     <=  s2mm2sgcntl_sts_tdata   ;    

 
   -- DataMover S2MM Error discrete
   sig_s2mm2cntl_err      <= s2mm2sgcntl_err          ;
   
   -- Rip the status bits from the status register
   sig_s2mm_tag           <= sig_s2mm_status_reg(STS_TAG_MS_INDEX downto 0);
   sig_s2mm_interr        <= sig_s2mm_status_reg(STS_INTERR_INDEX);
   sig_s2mm_decerr        <= sig_s2mm_status_reg(STS_DECERR_INDEX);
   sig_s2mm_slverr        <= sig_s2mm_status_reg(STS_SLVERR_INDEX);
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_S2MM_STATUS_REG
   --
   -- Process Description:
   --  Implements the MM2S status reply holding register.
   --
   -------------------------------------------------------------
   IMP_S2MM_STATUS_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset            = '1' or
              sig_sts_sm_push_updt = '1') then
   
            sig_s2mm_status_reg <= (others => '0');
   
          elsif (sig_sts_sm_pop_s2mm_sts = '1') then
   
            sig_s2mm_status_reg <= sig_s2mm_sts_tdata;
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_S2MM_STATUS_REG; 
 
 
 
 
 
 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- Fetch Update words formulation
-------------------------------------------------------------------------------
   
   
   -- Assign the Fetch update outputs to the SG Fetch Update port 
   sgcntl2sg_updptr_tvalid  <= sig_fetch_update_full    ;  
   sgcntl2sg_updptr_tdata   <= sig_fetch_update_reg     ;  
   sgcntl2sg_updptr_tlast   <= sig_fetch_update_last    ;  
   sig_fetch_updptr_tready  <= sg2sgcntlr_updptr_tready ;
   
  
   sig_fetch_update_last    <= sig_fetch_update_full;-- and
--                               not(sig_fetch_update_full_1);
   
   
   sig_ld_fetch_update_reg  <= sig_ftch_sm_push_updt and
                               sig_fetch_update_empty ;
  
   sig_pop_fetch_update_reg <= sig_fetch_update_full and
                               sig_fetch_updptr_tready ;
  
  
  
  
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_FETCH_UPDATE_FLAGS
   --
   -- Process Description:
   --   Implements the Fetch Update Register status flags.
   -- Note that this simulates a 2-deep register requiring
   -- 2 pops to become empty (not full).
   --
   -------------------------------------------------------------
   IMP_FETCH_UPDATE_FLAGS : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset      = '1' or sig_pop_fetch_update_reg = '1' or 
              sig_halt_fetch = '1') then
   
     --       sig_fetch_update_full_1  <= '0';
            sig_fetch_update_full    <= '0';
     --       sig_fetch_update_empty_1 <= '1';
            sig_fetch_update_empty   <= '1';
   
          elsif (sig_ld_fetch_update_reg = '1') then
   
     --       sig_fetch_update_full_1  <= '1';
            sig_fetch_update_full    <= '1';
    --        sig_fetch_update_empty_1 <= '0';
            sig_fetch_update_empty   <= '0';
   
    --      elsif (sig_pop_fetch_update_reg = '1') then
   
    --        sig_fetch_update_full_1  <= '0';
    --        sig_fetch_update_full    <= sig_fetch_update_full_1;
    --        sig_fetch_update_empty_1 <= '1';
    --        sig_fetch_update_empty   <= sig_fetch_update_empty_1;
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_FETCH_UPDATE_FLAGS; 
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_FETCH_UPDATE_REG
   --
   -- Process Description:
   --   Implements the fetch update register for the current
   -- descriptor address write to the SG Update port.
   --
   -------------------------------------------------------------
   IMP_FETCH_UPDATE_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset                = '1' or
              sig_pop_fetch_update_reg = '1') then
   
            sig_fetch_update_reg (31 downto 0)  <= (others => '0');
   
          elsif (sig_ld_fetch_update_reg = '1') then
   
            sig_fetch_update_reg (31 downto 0)  <= sig_curr_desc_pntr_reg;  -- Curr Descr Pointer LS 
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_FETCH_UPDATE_REG; 
   
   GEN_64_ADDR : if (C_SG_ADDR_WIDTH = 64) generate
    begin
   IMP_FETCH_UPDATE_REG1 : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset                = '1' or
              sig_pop_fetch_update_reg = '1') then
   
            sig_fetch_update_reg (63 downto 32)  <= (others => '0');
   
          elsif (sig_ld_fetch_update_reg = '1') then
   
            sig_fetch_update_reg (63 downto 32)  <= sig_curr_desc_pntr_reg_64;  -- Curr Descr Pointer LS 
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_FETCH_UPDATE_REG1; 
 
           sgcntlr2reg_new_curdesc (63 downto 32)       <=  sig_curr_desc_pntr_reg_64 ;                                                        
           sig_src_addr_reg (63 downto 32) <= sg2sgcntlr_ftch_tdata_new (159 downto 128);
           sig_dest_addr_reg(63 downto 32) <= sg2sgcntlr_ftch_tdata_new (191 downto 160);
           sig_curr_desc_pntr_reg_64 <= sg2sgcntlr_ftch_tdata_new (223 downto 192);

    end generate GEN_64_ADDR;
   
   
   







-------------------------------------------------------------------------------
-- Status DM Error merging
-------------------------------------------------------------------------------
 
   
   
   -- If the MM2S Status tag does not match the S2MM Status tag,
   -- this is a nasty internal error where a status reply has been
   -- dropped by the DataMover. This is a unique condition for the
   -- CDMA application.
   sig_tag_error <= '0'
     When (sig_halt_dm = '1')
     else '1'
     when (sig_s2mm_tag /= sig_mm2s_tag)
     Else '0';
                                
   
   sig_composite_interr  <=  (sig_s2mm_interr or 
                              sig_mm2s_interr or
                              sig_tag_error)  and
                              not(sig_halt_dm) ;
       
   sig_composite_slverr <=   (sig_s2mm_slverr  or
                              sig_mm2s_slverr) and
                              not(sig_halt_dm) ;
                             
   sig_composite_decerr <=   (sig_s2mm_decerr  or
                              sig_mm2s_decerr) and
                              not(sig_halt_dm) ;                         
                             
       
   
   
-------------------------------------------------------------------------------
-- Status Update Register Logic
-------------------------------------------------------------------------------
 
   
   -- Assign Output Stream port to SG Status Update interface
    sgcntl2sg_updsts_tvalid  <= sig_dm_status_full;  
    sgcntl2sg_updsts_tdata   <= sig_dm_status_reg ;  
    sgcntl2sg_updsts_tlast   <= '1'               ;  
    sig_status_updsts_tready <= sg2sgcntlr_updsts_tready ;
   
    sig_ld_dm_status_reg     <= sig_sts_sm_push_updt and
                                sig_dm_status_empty;
   
    sig_pop_dm_status_reg  <= sig_dm_status_full    and
                              sig_status_updsts_tready ;
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_DM_STATUS_REG
   --
   -- Process Description:
   --   Implements the composite transfer status register for the 
   -- descriptor.
   --
   -------------------------------------------------------------
   IMP_DM_STATUS_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset             = '1' or
              sig_pop_dm_status_reg = '1' or
              sig_halt_status       = '1') then
   
            sig_dm_status_reg     <= (others => '0');
            sig_dm_status_full    <= '0';
            sig_dm_status_empty   <= '1';
   
          elsif (sig_ld_dm_status_reg = '1') then
   
            sig_dm_status_reg     <= '1'                  &  -- SG Update IOC bit
                                     '1'                  &  -- Descriptor Cmplt bit
                                     sig_composite_decerr &  -- DM Decode Error
                                     sig_composite_slverr &  -- DM Slave Error
                                     sig_composite_interr &  -- DM Internal Error
                                     STATUS_RSVD    ;        -- Unused (zeros)
                                      
            sig_dm_status_full    <= '1';
            sig_dm_status_empty   <= '0';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_DM_STATUS_REG; 
   
   
   
   
   
   
   
   
   
   
-------------------------------------------------------------------------------
-- Descriptor Fetch State Machine
-------------------------------------------------------------------------------
 
   
   
   
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: IMP_FETCH_SM_COMB
   --
   -- Process Description:
   --  Implements the combinatorial portion of the Descriptor
   -- Fetch from SG state machine.
   --
   -------------------------------------------------------------
   IMP_FETCH_SM_COMB : process (sig_ftch_sm_state      ,
                                sig_halt_fetch         ,
                                sig_sg_active          ,
                                sig_sg2sgcntlr_ftch_desc_available ,
                                sig_mm2s_s2mm_cmd_rdy  ,
                                sig_fetch_update_empty ,
              --                  sig_fetch_done         ,
                                sig_ftch_limit_cntr_eqlimit
                               )
      begin

        -- assign the default values
        sig_ftch_sm_state_ns         <=  FTCH_IDLE ;
        sig_ftch_sm_set_getdesc_ns   <=  '0'       ;
        sig_ftch_sm_ld_dm_cmd_ns     <=  '0'       ;
        sig_ftch_sm_push_updt_ns     <=  '0'       ;
        sig_ftch_sm_done_ns          <=  '0'       ;
        

        case sig_ftch_sm_state is
          
          ---------------------------------
          when FTCH_IDLE =>
          
            If (sig_sg_active  = '1' and 
                sig_halt_fetch = '0') Then  -- Start operations
                 
              sig_ftch_sm_state_ns    <=  CHK_SG_DM_RDY ;
            
            Else                        -- wait here

              sig_ftch_sm_state_ns      <=  FTCH_IDLE ;
              
            End if;
      
          
          ---------------------------------
          when CHK_SG_DM_RDY =>
          
            if (sig_halt_fetch = '1') then
            
              sig_ftch_sm_state_ns       <=  XFER_DONE ;
            
            
            elsif (sig_ftch_limit_cntr_eqlimit = '0' and
                   sig_sg2sgcntlr_ftch_desc_available  = '1' and
                   sig_mm2s_s2mm_cmd_rdy       = '1' and
                   sig_fetch_update_empty      = '1') then
            
              sig_ftch_sm_state_ns       <=  LOAD_DESC ;
              sig_ftch_sm_set_getdesc_ns <=  '1'       ;
              sig_ftch_sm_ld_dm_cmd_ns   <=  '1'       ;
              sig_ftch_sm_push_updt_ns   <=  '1'       ;
            
            else
            
              sig_ftch_sm_state_ns    <=  CHK_SG_DM_RDY ;
            
            end if;
          
          
          ---------------------------------
          when LOAD_DESC =>
          
              sig_ftch_sm_set_getdesc_ns <=  '0'       ;

            if (sig_halt_fetch = '1') then
            
              sig_ftch_sm_state_ns       <=  XFER_DONE ;
            
            else --if (sig_fetch_done  = '1') then
            
              sig_ftch_sm_state_ns       <=  XFER_DONE ;
           --   sig_ftch_sm_ld_dm_cmd_ns   <=  '1'       ;
           --   sig_ftch_sm_push_updt_ns   <=  '1'       ;
            
        --    else
            
        --      sig_ftch_sm_state_ns    <=  LOAD_DESC ;
            
            end if;
          
          
          
          ---------------------------------
          when XFER_DONE =>
          
            
              sig_ftch_sm_state_ns       <=  FTCH_IDLE ;
              sig_ftch_sm_done_ns        <= '1'        ;
          
          
          
          ---------------------------------
          when others =>
            
            sig_ftch_sm_state_ns   <=  FTCH_IDLE ;
        
        end case;
        

   
   
      end process IMP_FETCH_SM_COMB; 
   
  
  
   
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_FETCH_SM_REG
   --
   -- Process Description:
   --  Implements the registered portion of the descriptor Fetch
   -- State Machine.
   --
   -------------------------------------------------------------
   IMP_FETCH_SM_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset  = '1') then
   
            sig_ftch_sm_state         <=  FTCH_IDLE ;
            sig_ftch_sm_set_getdesc   <=  '0'       ;
            sig_ftch_sm_ld_dm_cmd     <=  '0'       ;
            sig_ftch_sm_push_updt     <=  '0'       ;
            sig_ftch_sm_done          <=  '0'       ;
         --   sig_fetch_go               <=  '0'       ;
            sig_fetch_done               <=  '0'       ;
          
          else
   
            sig_ftch_sm_state         <=  sig_ftch_sm_state_ns        ;
            sig_ftch_sm_set_getdesc   <=  sig_ftch_sm_set_getdesc_ns  ;
         --   sig_fetch_go   <=  sig_ftch_sm_set_getdesc_ns  ;
            sig_fetch_done <= sig_fetch_go;
            sig_ftch_sm_ld_dm_cmd     <=  sig_ftch_sm_ld_dm_cmd_ns    ;
            sig_ftch_sm_push_updt     <=  sig_ftch_sm_push_updt_ns    ;
            sig_ftch_sm_done          <=  sig_ftch_sm_done_ns         ;
          
          end if; 
       end if;       
     end process IMP_FETCH_SM_REG; 
 
 
            sig_fetch_go   <=  sig_ftch_sm_set_getdesc_ns  ;
 
 
 
 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- Status Update State Machine
-------------------------------------------------------------------------------
 
   
   
   
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: IMP_STATUS_SM_COMB
   --
   -- Process Description:
   --  Implements the combinatorial portion of the Status Update
   -- State Machine.
   --
   -------------------------------------------------------------
   IMP_STATUS_SM_COMB : process (sig_sts_sm_state       ,
                                 sig_halt_status        ,
                                 sig_sg_active          ,
                                 sig_dm_cmd_pend_eq0    ,
                                 sig_mm2s_sts_tvalid    ,
                                 sig_s2mm_sts_tvalid    ,
                                 sig_dm_status_empty
                                )
      begin

        -- assign the default values
         sig_sts_sm_state_ns         <=  STS_IDLE ;
         sig_sts_sm_pop_mm2s_sts_ns  <=  '0'      ;
         sig_sts_sm_pop_s2mm_sts_ns  <=  '0'      ;
         sig_sts_sm_push_updt_ns     <=  '0'      ;
        

        case sig_sts_sm_state is
          
          ---------------------------------
          when STS_IDLE =>
          
            If (sig_sg_active   = '1' and
                sig_halt_status = '0') Then  -- Start operations
                 
              sig_sts_sm_state_ns    <=  GET_MM2S_STATUS ;
            
            Else                        -- wait here

              sig_sts_sm_state_ns    <=  STS_IDLE ;
              
            End if;
      
          
          ---------------------------------
          when GET_MM2S_STATUS =>
          
            if (sig_halt_status = '1') then

              sig_sts_sm_state_ns        <=  STS_IDLE ;
            
            elsif (sig_mm2s_sts_tvalid = '1') then
            
              sig_sts_sm_state_ns        <=  GET_S2MM_STATUS ;
              sig_sts_sm_pop_mm2s_sts_ns <=  '1'             ;
            
            else
            
              sig_sts_sm_state_ns    <=  GET_MM2S_STATUS ;
            
            end if;
          
          
          ---------------------------------
          when GET_S2MM_STATUS =>
          
            if (sig_halt_status = '1') then

              sig_sts_sm_state_ns        <=  STS_IDLE ;
            
            elsif (sig_s2mm_sts_tvalid = '1') then
            
              sig_sts_sm_state_ns        <=  DO_UPDATE ;
              sig_sts_sm_pop_s2mm_sts_ns <=  '1'       ;
            
            else
            
              sig_sts_sm_state_ns    <=  GET_S2MM_STATUS ;
            
            end if;
          
          
          
          ---------------------------------
          when DO_UPDATE    =>
          
            If (sig_dm_status_empty = '1') Then
    
              sig_sts_sm_state_ns     <=  STS_IDLE ;
              sig_sts_sm_push_updt_ns <=  '1'      ;
            
            Else 
              
              sig_sts_sm_state_ns     <=  DO_UPDATE ;

            End if;
            
          
          
          
          ---------------------------------
          when others =>                   -- shouldn't ever get here
            
            sig_sts_sm_state_ns   <=  STS_IDLE ;
        
        end case;
        

   
   
      end process IMP_STATUS_SM_COMB; 
   
  
  
   
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_STATUS_SM_REG
   --
   -- Process Description:
   --  Implements the registered portion of the Status Update
   -- State Machine.
   --
   -------------------------------------------------------------
   IMP_STATUS_SM_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset          = '1') then
   
            sig_sts_sm_state         <= STS_IDLE  ;
            sig_sts_sm_pop_mm2s_sts  <= '0'       ;
            sig_sts_sm_pop_s2mm_sts  <= '0'       ;
            sig_sts_sm_push_updt     <= '0'       ;
          
          else
   
            sig_sts_sm_state         <= sig_sts_sm_state_ns        ;
            sig_sts_sm_pop_mm2s_sts  <= sig_sts_sm_pop_mm2s_sts_ns ;
            sig_sts_sm_pop_s2mm_sts  <= sig_sts_sm_pop_s2mm_sts_ns ;
            sig_sts_sm_push_updt     <= sig_sts_sm_push_updt_ns    ;
          
          end if; 
       end if;       
     end process IMP_STATUS_SM_REG; 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- controlled Shutdown State Machine and related logic
-------------------------------------------------------------------------------
 
    
   -- Reset Module HALT request and complete reply
   sig_halt_request       <= rst2sgcntl_halt   ;
   sgcntl2rst_halt_cmplt  <= sig_halt_cmplt_reg;
   
  
   -- SG Descriptor Queue flush request
   sgcntlr2sg_desc_flush  <= sig_flush_sg  ;
 
   
   -- DataMover Halt requests
   sgcntl2mm2s_halt       <= sig_halt_dm   ;
   sgcntl2s2mm_halt       <= sig_halt_dm   ;
   
   -- Composite DataMover halt complete flag
   sig_dmhalt_cmplt <= mm2s2sgcntl_halt_cmplt and
                       s2mm2sgcntl_halt_cmplt ;

   
   -- Fetch State Machine Idle flag
   sig_ftchsm_idle  <= '1'
     when (sig_ftch_sm_state = FTCH_IDLE)
     Else '0';

   -- Status State Machine Idle flag
   sig_stssm_idle  <= '1'
     when (sig_sts_sm_state = STS_IDLE)
     Else '0';

   
   -- Composite error flag indicating that an error occured 
   -- during a descriptor fetch or update operation
   sig_sg_error     <=  sg2sgcntlr_ftch_error or
                        sg2sgcntlr_updt_error ;
 
   -- Formulate the shutdown request decision logic
   sig_do_shutdown        <= sig_halt_request           or
                             sig_sg_error               or
                             sg2sgcntlr_ftch_stale_desc or
                             sg2sgcntlr_dma_interr_set  or
                             sg2sgcntlr_dma_slverr_set  or
                             sg2sgcntlr_dma_decerr_set ;
   

   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_HALT_CMPLT_REG
   --
   -- Process Description:
   --  Implements the Halt Complete register.  
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_HALT_CMPLT_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset       = '1') then
   
            sig_halt_cmplt_reg <= '0';
   
          elsif (sig_shtdwn_sm_set_cmplt_ns  = '1') then
   
            sig_halt_cmplt_reg <= '1';
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_HALT_CMPLT_REG; 
 
 
 
 
 
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_DM_HALT_FLOP
   --
   -- Process Description:
   --   Implements the sticky flag that requests a DataMover
   -- HALT.
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_DM_HALT_FLOP : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset = '1') then
   
            sig_halt_dm <= '0';
               
          elsif (sig_shtdwn_sm_set_dm_halt_ns = '1') then
   
            sig_halt_dm <= '1';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_DM_HALT_FLOP; 
 
 
 
 
 
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_FTCH_HALT_FLOP
   --
   -- Process Description:
   --   Implements the sticky flag that requests a DataMover
   -- HALT.
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_FTCH_HALT_FLOP : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset = '1') then
   
            sig_halt_fetch <= '0';
               
          elsif (sig_shtdwn_sm_set_ftch_halt_ns = '1') then
   
            sig_halt_fetch <= '1';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_FTCH_HALT_FLOP; 
 
 
 
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_DM_SG_FLUSH
   --
   -- Process Description:
   --   Implements the sticky flag that requests a SG
   -- Queue flush. The Shutdown state Machine controls
   -- when it is set.
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_DM_SG_FLUSH : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset = '1') then
   
            sig_flush_sg <= '0';
               
          elsif (sig_shtdwn_sm_flush_sg_ns = '1') then
   
            sig_flush_sg <= '1';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_DM_SG_FLUSH; 
 
 
 
 
 
 
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_STS_HALT_FLOP
   --
   -- Process Description:
   --   Implements the sticky flag that requests a Status State
   -- Machine halt.
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_STS_HALT_FLOP : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset = '1') then
   
            sig_halt_status <= '0';
               
          elsif (sig_shtdwn_sm_set_sts_halt_ns = '1') then
   
            sig_halt_status <= '1';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_STS_HALT_FLOP; 
 
 
 
 
 
 
 
 
 
 
 
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: IMP_SHTDWN_SM_COMB
   --
   -- Process Description:
   --  Implements the combinatorial portion of the Shutdown
   -- State Machine. The shutdown sequence is activated by
   -- either a soft reset request from the reset module or
   -- by a detected error condition.
   --
   -------------------------------------------------------------
   IMP_SHTDWN_SM_COMB : process (sig_shtdwn_sm_state    ,
                                 sig_do_shutdown        ,
                                 sg2sgcntlr_ftch_idle   ,
                                 sg2sgcntlr_updt_idle   ,
                                 sig_ftchsm_idle        ,
                                 sig_stssm_idle         ,
                                 sig_dm_status_empty    ,
                                 sig_fetch_update_empty ,
                                 sig_dmhalt_cmplt       ,
                                 sig_sg_error
                                )
      begin

        -- assign the default values
         sig_shtdwn_sm_state_ns          <= SHTDWN_IDLE ;
         sig_shtdwn_sm_flush_sg_ns       <= '0';
         sig_shtdwn_sm_set_ftch_halt_ns  <= '0';
         sig_shtdwn_sm_set_dm_halt_ns    <= '0';
         sig_shtdwn_sm_set_sts_halt_ns   <= '0';
         sig_shtdwn_sm_set_cmplt_ns      <= '0';
        

        case sig_shtdwn_sm_state is
          
          ---------------------------------
          when SHTDWN_IDLE =>
          
            if (sig_do_shutdown = '1') then -- start shutdown sequence
            
               sig_shtdwn_sm_state_ns         <= HALT_FTCH_DM;
               sig_shtdwn_sm_set_ftch_halt_ns <= '1';
               sig_shtdwn_sm_set_dm_halt_ns   <= '1';
            
            else                            -- Stay here
            
              sig_shtdwn_sm_state_ns <=  SHTDWN_IDLE ;
            
            end if;
            
          
           
          ---------------------------------
          when HALT_FTCH_DM =>
          
              sig_shtdwn_sm_state_ns    <=  WAIT_FTCH_IDLE ;
              sig_shtdwn_sm_flush_sg_ns <=  '1'   ;
         
          
          ---------------------------------
          when WAIT_FTCH_IDLE =>
            
            if (sig_ftchsm_idle = '1') then
            
              sig_shtdwn_sm_state_ns <=  WAIT_FTCH_UPDATE ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_FTCH_IDLE ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_FTCH_UPDATE    =>
          
            if (sg2sgcntlr_ftch_idle = '1' and
                sig_ftchsm_idle      = '1') then
            
              sig_shtdwn_sm_state_ns <=  WAIT_DM_HALT_CMPLT ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_FTCH_UPDATE ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_DM_HALT_CMPLT    =>
          
            if (sig_dmhalt_cmplt = '1') then
            
              sig_shtdwn_sm_state_ns        <=  WAIT_STS_IDLE ;
              sig_shtdwn_sm_set_sts_halt_ns <= '1' ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_DM_HALT_CMPLT ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_STS_IDLE    =>
          
            if (sig_stssm_idle = '1') then
            
              sig_shtdwn_sm_state_ns <=  WAIT_STS_UPDATE ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_STS_IDLE ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_STS_UPDATE    =>
          
            if (sig_dm_status_empty = '1') then
            
              sig_shtdwn_sm_state_ns <=  WAIT_SG_UPDATE ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_STS_UPDATE ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_SG_UPDATE    =>
          
            if (sg2sgcntlr_updt_idle = '1') then
            
              sig_shtdwn_sm_state_ns      <=  SHTDWN_CMPLT ;
              sig_shtdwn_sm_set_cmplt_ns  <= '1';
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_SG_UPDATE ;
            
            end if;
            
          
          
          ---------------------------------
          when SHTDWN_CMPLT    =>
          
           sig_shtdwn_sm_state_ns      <=  SHTDWN_CMPLT ;
           sig_shtdwn_sm_set_cmplt_ns  <= '1';
            

          
          
          ---------------------------------
          when others =>                   -- shouldn't ever get here
            
            sig_shtdwn_sm_state_ns   <=  SHTDWN_IDLE ;
        
        end case;
        

   
   
      end process IMP_SHTDWN_SM_COMB; 
   
  
  
   
   
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_SHTDWN_SM_REG
   --
   -- Process Description:
   --  Implements the registered portion of the shutdown
   -- State Machine.
   --
   -------------------------------------------------------------
   IMP_SHTDWN_SM_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset          = '1') then
   
            sig_shtdwn_sm_state         <= SHTDWN_IDLE  ;
            sig_shtdwn_sm_flush_sg      <= '0'          ;
            sig_shtdwn_sm_set_ftch_halt <= '0'          ;
            sig_shtdwn_sm_set_dm_halt   <= '0'          ;
            sig_shtdwn_sm_set_sts_halt  <= '0'          ;
            sig_shtdwn_sm_set_cmplt     <= '0'          ;
          
          else
   
            sig_shtdwn_sm_state         <= sig_shtdwn_sm_state_ns         ;
            sig_shtdwn_sm_flush_sg      <= sig_shtdwn_sm_flush_sg_ns      ;
            sig_shtdwn_sm_set_ftch_halt <= sig_shtdwn_sm_set_ftch_halt_ns ;
            sig_shtdwn_sm_set_dm_halt   <= sig_shtdwn_sm_set_dm_halt_ns   ;
            sig_shtdwn_sm_set_sts_halt  <= sig_shtdwn_sm_set_sts_halt_ns  ;
            sig_shtdwn_sm_set_cmplt     <= sig_shtdwn_sm_set_cmplt_ns     ;
          
          end if; 
       end if;       
     end process IMP_SHTDWN_SM_REG; 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
end implementation;

