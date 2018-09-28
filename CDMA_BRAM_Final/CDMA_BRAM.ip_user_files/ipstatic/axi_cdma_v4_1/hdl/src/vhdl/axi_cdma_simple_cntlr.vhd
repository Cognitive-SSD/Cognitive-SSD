-------------------------------------------------------------------------------
-- axi_cdma_simple_cntlr
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
-- Filename:          axi_cdma_simple_cntlr.vhd
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



-------------------------------------------------------------------------------
entity  axi_cdma_simple_cntlr is
  Generic (
  
    C_DM_CMD_WIDTH          : integer  := 72;
    C_DM_DATA_WIDTH         : integer  := 32;
    C_DM_MM2S_STATUS_WIDTH  : integer  := 8; 
    C_DM_S2MM_STATUS_WIDTH  : integer  := 8; 
    C_ADDR_WIDTH            : integer  := 32; 
    C_BTT_WIDTH             : integer  := 23; 
    C_FAMILY                : String   := "virtex7"
   
   );
  port (
    -- Clock Input
    axi_aclk                  : in  std_logic  ;
    
    -- Reset Input (active high)
    axi_reset                 : in  std_logic  ;


    -- Halt request from the Reset module
    rst2cntlr_halt            : in  std_logic  ;  

    -- Halt complete status to the Reset module
    cntlr2rst_halt_cmplt      : out std_logic  ;  
    
    
    
    -- Register Module transfer Start Control
    reg2cntlr_go              : in  std_logic  ;  
    
    -- Register Module SG Mode Control
    reg2cntlr_sg_mode         : in  std_logic  ;  
   
    -- MM2S Type of Burst, 1 is increment, 0 is fixed
    burst_type_read                : in std_logic;   
  
    -- S2MM Type of Burst, 1 is increment, 0 is fixed
    burst_type_write                : in std_logic;   
    
    -- Transfer Source address from the Register Module 
    reg2cntlr_src_addr        : in std_logic_vector(C_ADDR_WIDTH-1 downto 0);  
    
    -- Transfer Destination address from the Register Module 
    reg2cntlr_dest_addr       : in std_logic_vector(C_ADDR_WIDTH-1 downto 0);  
    
    -- Transfer BTT from the Register Module 
    reg2cntlr_btt             : in std_logic_vector(C_BTT_WIDTH-1 downto 0);  
    
    
      
    -- Register Module Status Register Idle Bit set control
    cntlr2reg_idle_set        : out std_logic  ;  
      
    -- Register Module Status Register Idle Bit clear control
    cntlr2reg_idle_clr        : out std_logic  ;  
      
    -- Register Module Status Register Interrupt on Complete Bit set control
    cntlr2reg_iocirpt_set     : out std_logic  ;   
    
    
    -- Register Module DataMover decode Error Status bit set control
    cntlr2reg_decerr_set      : out std_logic  ;   
    
    -- Register Module DataMover slave Error Status bit set control
    cntlr2reg_slverr_set      : out std_logic  ;   
    
    -- Register Module DataMover internal Error Status bit set control
    cntlr2reg_interr_set      : out std_logic  ;   
    
    
    
    -- DataMover MM2S Command ready (AXI Stream)
    mm2s2cntl_cmd_tready      : in  std_logic  ;  
    
    -- DataMover MM2S Command tvalid (AXI Stream)
    cntl2mm2s_cmd_tvalid      : out std_logic  ;  
    
    -- DataMover MM2S Command Data (AXI Stream)
    cntl2mm2s_cmd_tdata       : out std_logic_vector(C_DM_CMD_WIDTH-1 downto 0);  

      
      
    -- DataMover MM2S Status ready (AXI Stream)
    cntl2mm2s_sts_tready      : out std_logic  ;  
      
    -- DataMover MM2S Status valid (AXI Stream)
    mm2s2cntl_sts_tvalid      : in  std_logic  ;  
      
    -- DataMover MM2S Status Data (AXI Stream)
    mm2s2cntl_sts_tdata       : in  std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);  
      
    -- DataMover MM2S Status strb (AXI Stream)
    mm2s2cntl_sts_tstrb       : in  std_logic_vector((C_DM_MM2S_STATUS_WIDTH/8)-1 downto 0);  
    
    -- DataMover MM2S error discrete
    mm2s2cntl_err             : in  std_logic  ;  
    
    
    
    -- DataMover S2MM Command ready (AXI Stream)
    s2mm2cntl_cmd_tready      : in  std_logic  ;                                  
    
    -- DataMover S2MM Command tvalid (AXI Stream)
    cntl2s2mm_cmd_tvalid      : out std_logic  ;                                  
    
    -- DataMover S2MM Command Data (AXI Stream)
    cntl2s2mm_cmd_tdata       : out std_logic_vector(C_DM_CMD_WIDTH-1 downto 0);  
    
    -- DataMover S2MM Status ready (AXI Stream)
    cntl2s2mm_sts_tready      : out std_logic  ;                                               
    
    -- DataMover S2MM Status valid (AXI Stream)
    s2mm2cntl_sts_tvalid      : in  std_logic  ;                                               
    
    -- DataMover S2MM Status Data (AXI Stream)
    s2mm2cntl_sts_tdata       : in  std_logic_vector(C_DM_S2MM_STATUS_WIDTH-1 downto 0);       
    
    -- DataMover S2MM error discrete
    s2mm2cntl_sts_tstrb       : in  std_logic_vector((C_DM_S2MM_STATUS_WIDTH/8)-1 downto 0);   
    
    -- DataMover S2MM error discrete
    s2mm2cntl_err             : in  std_logic                 
    
 
  );

end axi_cdma_simple_cntlr;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_simple_cntlr is
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
  
  Constant BTT_ZERO              : std_logic_vector(C_BTT_WIDTH-1 downto 0)   := (others => '0');
  
  Constant STS_INTERR_INDEX      : integer := 4;
  Constant STS_DECERR_INDEX      : integer := 5;
  Constant STS_SLVERR_INDEX      : integer := 6;
  Constant STS_OK_INDEX          : integer := 7;
  
  
  

-------------------------------------------------------------------------------
-- Type Declarations
-------------------------------------------------------------------------------


  type cdma_sm_type is ( INIT           ,
                         WAIT_FOR_GO    ,
                         LD_DM_CMD      ,
                         GET_MM2S_STATUS,
                         GET_S2MM_STATUS,
                         SCORE_STATUS   ,
                         XFER_DONE      ,
                         ERROR_TRAP
                        );
 
 
   
   
-------------------------------------------------------------------------------
-- Signal Declarations
-------------------------------------------------------------------------------

  signal sig_sm_state           : cdma_sm_type := INIT;
  signal sig_sm_state_ns        : cdma_sm_type := INIT;
  
  signal sig_sm_ld_cmd          : std_logic := '0';
  signal sig_sm_ld_cmd_ns       : std_logic := '0';
  signal sig_sm_set_idle        : std_logic := '0';
  signal sig_sm_set_idle_ns     : std_logic := '0';
  signal sig_sm_clr_idle        : std_logic := '0';
  signal sig_sm_clr_idle_ns     : std_logic := '0';
  signal sig_sm_set_ioc         : std_logic := '0';
  signal sig_sm_set_ioc_ns      : std_logic := '0';
  signal sig_sm_set_err         : std_logic := '0';
  signal sig_sm_set_err_ns      : std_logic := '0';
  signal sig_sm_pop_mm2s_sts    : std_logic := '0';
  signal sig_sm_pop_mm2s_sts_ns : std_logic := '0';
  signal sig_sm_pop_s2mm_sts    : std_logic := '0';
  signal sig_sm_pop_s2mm_sts_ns : std_logic := '0';
  
  
  
  signal sig_mm2s_s2mm_cmd_rdy   : std_logic := '0';
  
  signal sig_cdma_xfer_go        : std_logic := '0';
  
  signal sig_mm2s_cmd            : std_logic_vector(C_DM_CMD_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_cmd_valid      : std_logic := '0';
  signal sig_mm2s_cmd_ready      : std_logic := '0';
  
  signal sig_mm2s_sts_tready     : std_logic  ;                                             
  signal sig_mm2s_sts_tvalid     : std_logic  ;                                             
  signal sig_mm2s_sts_tdata      : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     
  signal sig_mm2s_sts_tstrb      : std_logic_vector((C_DM_MM2S_STATUS_WIDTH/8)-1 downto 0); 
  
  
  signal sig_s2mm_cmd            : std_logic_vector(C_DM_CMD_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_cmd_valid      : std_logic := '0';
  signal sig_s2mm_cmd_ready      : std_logic := '0';
  
  signal sig_s2mm_sts_tready     : std_logic  ;                                             
  signal sig_s2mm_sts_tvalid     : std_logic  ;                                             
  signal sig_s2mm_sts_tdata      : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     
  signal sig_s2mm_sts_tstrb      : std_logic_vector((C_DM_MM2S_STATUS_WIDTH/8)-1 downto 0); 
  
  signal sig_cmd_tag             : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_cmd_cntr            : unsigned(CMD_TAG_WIDTH-1 downto 0) := (others => '0');

  signal sig_mm2s_dsa_offset     : std_logic_vector(DSA_ADDR_OFFSET_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_dsa_field      : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');

  signal sig_mm2s_status_reg     : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_status_reg     : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
  
  signal sig_mm2s_slverr         : std_logic := '0';
  signal sig_mm2s_decerr         : std_logic := '0';
  signal sig_mm2s_interr         : std_logic := '0';
  signal sig_mm2s_ok             : std_logic := '0';
 
  signal sig_s2mm_slverr         : std_logic := '0';
  signal sig_s2mm_decerr         : std_logic := '0';
  signal sig_s2mm_interr         : std_logic := '0';
  signal sig_s2mm_ok             : std_logic := '0';
 
  signal sig_mm2s2cntl_err       : std_logic := '0';
  signal sig_s2mm2cntl_err       : std_logic := '0';
 
  signal sig_halt_request        : std_logic := '0';
  signal sig_halt_cmplt_reg      : std_logic := '0';
 
  signal sig_composite_error     : std_logic := '0';

  signal type_of_burst           : std_logic;
  signal type_of_burst_wr        : std_logic;

  signal ZERO_WORD               : std_logic_vector (31 downto 0) := (others => '0');
                                                       
-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

 
 
 
-------------------------------------------------------------------------------
-- Misc logic
-------------------------------------------------------------------------------

  
  -- GO signal to start the transfer from the Register Module
  sig_cdma_xfer_go      <= reg2cntlr_go;
  
  
  
  -- See if DataMover is ready for next command
  sig_mm2s_s2mm_cmd_rdy <= sig_mm2s_cmd_ready and
                           sig_s2mm_cmd_ready;
 
 
  -- Since only 1 parent command per CDMA transfer is allowed, a revolving
  -- TAG count is not needed for debug support.
  sig_cmd_tag           <= (others => '0');
 



-------------------------------------------------------------------------------
-- MM2S Command Generation
-------------------------------------------------------------------------------
 
 
  cntl2mm2s_cmd_tdata    <= sig_mm2s_cmd         ;
  cntl2mm2s_cmd_tvalid   <= sig_mm2s_cmd_valid   ;
  sig_mm2s_cmd_ready     <= mm2s2cntl_cmd_tready ;

  sig_mm2s_cmd_valid     <= sig_sm_ld_cmd        ;
 
  type_of_burst <= '1' and (not burst_type_read);
 
  -- Formulate the MM2S Command
  sig_mm2s_cmd <=  CMD_RSVD            &  -- reserved
                   sig_cmd_tag         &  -- Tag
                   reg2cntlr_src_addr  &  -- Address
                   '1'                 &  -- DRR bit
                   '1'                 &  -- EOF bit
                   sig_mm2s_dsa_field  &  -- DSA Field Assignment
                   type_of_burst       &
              --     '1'                 &  -- Incrementing burst type
                   reg2cntlr_btt ;        -- BTT
    
 
 
   -- Rip the Destnation address offset bits
   sig_mm2s_dsa_offset <= reg2cntlr_dest_addr(DSA_ADDR_OFFSET_WIDTH-1 downto 0);
 
   -- Size the dest addr offset to the DSA field width
   sig_mm2s_dsa_field  <=  STD_LOGIC_VECTOR(RESIZE(UNSIGNED(sig_mm2s_dsa_offset), CMD_DSA_WIDTH));
 
 
 
 
-------------------------------------------------------------------------------
-- MM2S Status Reg and logic
-------------------------------------------------------------------------------
 
   cntl2mm2s_sts_tready   <=  sig_sm_pop_mm2s_sts  ;  
   sig_mm2s_sts_tvalid    <=  mm2s2cntl_sts_tvalid ;    
   sig_mm2s_sts_tdata     <=  mm2s2cntl_sts_tdata  ;    
   sig_mm2s_sts_tstrb     <=  mm2s2cntl_sts_tstrb  ;    

 
 
   
   -- DataMover MM2S Error discrete
   sig_mm2s2cntl_err      <= mm2s2cntl_err                        ;
   
   -- Rip the status bits from the status register
   sig_mm2s_interr        <= sig_mm2s_status_reg(STS_INTERR_INDEX);
   sig_mm2s_decerr        <= sig_mm2s_status_reg(STS_DECERR_INDEX);
   sig_mm2s_slverr        <= sig_mm2s_status_reg(STS_SLVERR_INDEX);
   sig_mm2s_ok            <= sig_mm2s_status_reg(STS_OK_INDEX)    ;
   
   
   
   
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
              sig_sm_set_idle = '1') then
   
            sig_mm2s_status_reg <= (others => '0');
   
          elsif (sig_sm_pop_mm2s_sts = '1') then
   
            sig_mm2s_status_reg <= sig_mm2s_sts_tdata;
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_MM2S_STATUS_REG; 
 
 
 
 
 
 
 
 
 
 
 
  
-------------------------------------------------------------------------------
-- S2MM Command Generation
-------------------------------------------------------------------------------

 
  cntl2s2mm_cmd_tdata   <= sig_s2mm_cmd         ;
  cntl2s2mm_cmd_tvalid  <= sig_s2mm_cmd_valid   ;
  sig_s2mm_cmd_ready    <= s2mm2cntl_cmd_tready ; 

  sig_s2mm_cmd_valid    <= sig_sm_ld_cmd        ;
 
  type_of_burst_wr <= '1' and (not burst_type_write);

  
  -- Formulate the S2MM Command
  sig_s2mm_cmd <=  CMD_RSVD            &  -- reserved
                   sig_cmd_tag         &  -- Tag
                   reg2cntlr_dest_addr &  -- Address
                   '1'                 &  -- DRR bit
                   '1'                 &  -- EOF bit
                   CMD_DSA_ZEROED      &  -- DSA Field Assignment
                   type_of_burst_wr    &  -- 1 is increment, 0 is fixed
--                   '1'                 &  -- Incrementing burst type
                   reg2cntlr_btt ;        -- BTT
    
    
   
   
   
-------------------------------------------------------------------------------
-- S2MM Status Reg and logic
-------------------------------------------------------------------------------
 
   cntl2s2mm_sts_tready   <=  sig_sm_pop_s2mm_sts  ;  
   sig_s2mm_sts_tvalid    <=  s2mm2cntl_sts_tvalid ;    
   sig_s2mm_sts_tdata     <=  s2mm2cntl_sts_tdata  ;    
   sig_s2mm_sts_tstrb     <=  s2mm2cntl_sts_tstrb  ;    

 
   -- DataMover S2MM Error discrete
   sig_s2mm2cntl_err      <= s2mm2cntl_err                        ;
   
   -- Rip the status bits from the status register
   sig_s2mm_interr        <= sig_s2mm_status_reg(STS_INTERR_INDEX);
   sig_s2mm_decerr        <= sig_s2mm_status_reg(STS_DECERR_INDEX);
   sig_s2mm_slverr        <= sig_s2mm_status_reg(STS_SLVERR_INDEX);
   sig_s2mm_ok            <= sig_s2mm_status_reg(STS_OK_INDEX)    ;
   
   
   
   
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
          if (axi_reset       = '1' or
              sig_sm_set_idle = '1') then
   
            sig_s2mm_status_reg <= (others => '0');
   
          elsif (sig_sm_pop_s2mm_sts = '1') then
   
            sig_s2mm_status_reg <= sig_s2mm_sts_tdata;
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_S2MM_STATUS_REG; 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- Bit Set logic to Register Module
-------------------------------------------------------------------------------
 
   -- Idle bit set and clear
   cntlr2reg_idle_set    <= sig_sm_set_idle;
   cntlr2reg_idle_clr    <= sig_sm_clr_idle;
   
   
   
   
   
   -- Set the interrupt on Complete
   cntlr2reg_iocirpt_set <= sig_sm_set_ioc;
   
   
   
   -- Decode error set logic
   cntlr2reg_decerr_set  <= sig_sm_set_err and
                            (sig_s2mm_decerr or
                             sig_mm2s_decerr);
 
   
   -- Slave error set logic
   cntlr2reg_slverr_set  <= sig_sm_set_err and
                            (sig_s2mm_slverr or
                             sig_mm2s_slverr);
 
   -- Slave error set logic
   cntlr2reg_interr_set  <= sig_sm_set_err     and
                            (sig_s2mm_interr   or
                             sig_s2mm2cntl_err or
                             sig_mm2s_interr   or
                             sig_mm2s2cntl_err);
 
   -- Composite error flag used by the state machine
   sig_composite_error   <=  sig_s2mm_decerr   or
                             sig_mm2s_decerr   or
                             sig_s2mm_slverr   or
                             sig_mm2s_slverr   or
                             sig_s2mm_interr   or
                             sig_s2mm2cntl_err or
                             sig_mm2s_interr   or
                             sig_mm2s2cntl_err;
   
   
-------------------------------------------------------------------------------
-- HALT Logic (Soft Reset)
-------------------------------------------------------------------------------
 
   
  -- HALT logic
  cntlr2rst_halt_cmplt  <= sig_halt_cmplt_reg;
 
  sig_halt_request      <= rst2cntlr_halt;
  
  
  
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_HALT_CMPLT_REG
   --
   -- Process Description:
   --  Implements the MM2S status reply holding register.
   --
   -------------------------------------------------------------
   IMP_HALT_CMPLT_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset       = '1') then
   
            sig_halt_cmplt_reg <= '0';
   
          elsif (sig_sm_set_idle  = '1' and
                 sig_halt_request = '1') then
   
            sig_halt_cmplt_reg <= '1';
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_HALT_CMPLT_REG; 
 
 
 
 
   
   
   
   
   
-------------------------------------------------------------------------------
-- Simple DMA State Machine
-------------------------------------------------------------------------------
 
   
   
   
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: IMP_CDMA_SM_COMB
   --
   -- Process Description:
   --  Implements the combinatorial portion of the CDMA simple
   -- DMA state machine.
   --
   -------------------------------------------------------------
   IMP_CDMA_SM_COMB : process (sig_sm_state         ,
                               sig_cdma_xfer_go     ,
                               sig_mm2s_s2mm_cmd_rdy,
                               sig_mm2s_sts_tvalid  ,
                               sig_s2mm_sts_tvalid  ,
                               sig_composite_error
                              )
      begin

        -- assign the default values
        sig_sm_state_ns         <=  INIT ;
        sig_sm_ld_cmd_ns        <=  '0'  ;
        sig_sm_set_idle_ns      <=  '0'  ;
        sig_sm_clr_idle_ns      <=  '0'  ;
        sig_sm_set_ioc_ns       <=  '0'  ;
        sig_sm_set_err_ns       <=  '0'  ;
        sig_sm_pop_mm2s_sts_ns  <=  '0'  ;
        sig_sm_pop_s2mm_sts_ns  <=  '0'  ;


        case sig_sm_state is
          
          ---------------------------------
          when INIT =>
          
            sig_sm_state_ns    <=  WAIT_FOR_GO ;
            sig_sm_set_idle_ns <=  '1'         ;
          
          
          ---------------------------------
          when WAIT_FOR_GO =>
          
            if (sig_cdma_xfer_go      = '1' and
                sig_mm2s_s2mm_cmd_rdy = '1') then
            
              sig_sm_state_ns    <=  LD_DM_CMD ;
              sig_sm_clr_idle_ns <=  '1'       ;
            
            else
            
              sig_sm_state_ns    <=  WAIT_FOR_GO ;
            
            end if;
          
          
          ---------------------------------
          when LD_DM_CMD   =>
 
            sig_sm_state_ns    <=  GET_MM2S_STATUS ;
            sig_sm_ld_cmd_ns   <=  '1'             ;
          
          
          ---------------------------------
          when GET_MM2S_STATUS =>
          
            if (sig_mm2s_sts_tvalid = '1') then
            
              sig_sm_state_ns        <=  GET_S2MM_STATUS ;
              sig_sm_pop_mm2s_sts_ns <=  '1'             ;
            
            else
            
              sig_sm_state_ns    <=  GET_MM2S_STATUS ;
            
            end if;
          
          
          ---------------------------------
          when GET_S2MM_STATUS =>
          
            if (sig_s2mm_sts_tvalid = '1') then
            
              sig_sm_state_ns        <=  SCORE_STATUS ;
              sig_sm_pop_s2mm_sts_ns <=  '1'          ;
            
            else
            
              sig_sm_state_ns    <=  GET_S2MM_STATUS ;
            
            end if;
          
          
          ---------------------------------
          when SCORE_STATUS    =>
          
            sig_sm_state_ns    <=  XFER_DONE ;
            sig_sm_set_err_ns  <=  '1'       ;
          
          
          ---------------------------------
          when XFER_DONE       =>
          
            sig_sm_set_ioc_ns    <=  '1'  ;
            sig_sm_set_idle_ns   <=  '1'  ;
            
            if (sig_composite_error = '1') then
            
              sig_sm_state_ns    <=  ERROR_TRAP ;
            
            else
            
              sig_sm_state_ns    <=  WAIT_FOR_GO ;
            
            end if;
          
          
          ---------------------------------
          when ERROR_TRAP      =>
          
            sig_sm_state_ns   <=  ERROR_TRAP ;
          
          
          ---------------------------------
          when others =>
            
            sig_sm_state_ns   <=  INIT ;
        
        end case;
        

   
   
      end process IMP_CDMA_SM_COMB; 
   
  
  
   
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_CDMA_SM_REG
   --
   -- Process Description:
   --  Implements the registered portion of the CDMA simple
   -- DMA state machine.
   --
   -------------------------------------------------------------
   IMP_CDMA_SM_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset        = '1' or
              sig_halt_request = '1') then
   
            sig_sm_state         <= INIT ;
            sig_sm_ld_cmd        <= '0'  ;
            sig_sm_set_idle      <= '1'  ;
            sig_sm_clr_idle      <= '0'  ;
            sig_sm_set_ioc       <= '0'  ;
            sig_sm_set_err       <= '0'  ;
            sig_sm_pop_mm2s_sts  <= '0'  ;
            sig_sm_pop_s2mm_sts  <= '0'  ;
          
          else
   
            sig_sm_state         <= sig_sm_state_ns        ;
            sig_sm_ld_cmd        <= sig_sm_ld_cmd_ns       ;
            sig_sm_set_idle      <= sig_sm_set_idle_ns     ;
            sig_sm_clr_idle      <= sig_sm_clr_idle_ns     ;
            sig_sm_set_ioc       <= sig_sm_set_ioc_ns      ;
            sig_sm_set_err       <= sig_sm_set_err_ns      ;
            sig_sm_pop_mm2s_sts  <= sig_sm_pop_mm2s_sts_ns ;
            sig_sm_pop_s2mm_sts  <= sig_sm_pop_s2mm_sts_ns ;
          
          end if; 
       end if;       
     end process IMP_CDMA_SM_REG; 
 
 
end implementation;

