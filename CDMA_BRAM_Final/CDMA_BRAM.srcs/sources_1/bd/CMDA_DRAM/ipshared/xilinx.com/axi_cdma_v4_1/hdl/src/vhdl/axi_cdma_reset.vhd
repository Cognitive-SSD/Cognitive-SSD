-------------------------------------------------------------------------------
-- axi_cdma_reset
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
-- Filename:          axi_cdma_reset.vhd
-- Description: This entity is reset module entity for the AXI DMA core.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;


library axi_cdma_v4_1_9;
use axi_cdma_v4_1_9.axi_cdma_pulse_gen;
use axi_cdma_v4_1_9.axi_cdma_pkg.all;

library lib_cdc_v1_0_2;

-------------------------------------------------------------------------------
entity  axi_cdma_reset is
  Generic (
  
    C_AXI_LITE_IS_ASYNC        : Integer range  0 to 1 := 0;
       -- Specifies if the AXI Lite Register interface needs to
       -- be asynchronous to the CDMA data transport path clocking
       -- 0 = Use same clocking as data path (Primary)
       -- 1 = Use special AXI Lite clock for the axi lite interface
     
    C_SOFT_RST_TIME_CLKS      : integer range 1 to 64  := 8
       -- Specifies the time of the soft reset assertion in 
       -- axi_aclk clock periods.
    
   
   );
  port (
    
    -- Primary Clock and Reset Sources
    axi_aclk                   : in  std_logic  ;--
    axi_resetn                 : in  std_logic  ;--


    -- AXI Lite Clock and Reset Sources
    axi_lite_aclk              : in  std_logic  ;-- 
    axi_lite_resetn            : in  std_logic  ;-- 

   
   
    -- HW Reset out to the axi4-lite bus side interface logic
    rst2lite_bside_reset       : Out std_logic  ;
    
    -- HW Reset out to the axi4-lite core side interface logic
    rst2lite_cside_reset       : Out std_logic  ;
    
    
    -- HW Reset out to the register module logic
    rst2reg_reset              : Out std_logic  ;
    
    -- HW Reset out to the simple controller module logic
    rst2cntlr_reset            : Out std_logic  ;
    
    -- HW Reset out to the SG controller module logic
    rst2sgcntlr_reset          : Out std_logic  ;
    
    -- HW Reset out to the SG module 
    rst2sg_resetn              : Out std_logic  ;
    
    -- HW Reset out to the datamover module 
    rst2dm_resetn              : Out std_logic  ; 
  
    
    -- Soft Reset Request from Register module
    reg2rst_soft_reset_in      : in  std_logic  ;
    
    -- Soft Reset clear to the Register module    
    rst2reg_soft_reset_clr     : Out std_logic  ;
    
    
    -- Halt request to the Simple Controller    
    rst2cntlr_halt             : Out std_logic  ;
    
    -- Halt complete from the Simple Controller    
    cntlr2rst_halt_cmplt       : in  std_logic  ;
    
    -- Halt request to the SG Controller    
    rst2sg_halt                : Out std_logic  ;
    
    -- Halt complete from the SG Controller    
    sg2rst_halt_cmplt          : in  std_logic  ;
    
    -- Halt request to the DataMover MM2S function    
    rst2dm_mm2s_halt           : Out std_logic  ;
    
    -- Halt complete from the DataMover MM2S function    
    dm2rst_mm2s_halt_cmplt     : in  std_logic  ;

    -- Halt request to the DataMover S2MM function    
    rst2dm_s2mm_halt           : Out std_logic  ;
    
    -- Halt complete from the DataMover S2MM function    
    dm2rst_s2mm_halt_cmplt     : in  std_logic
  );

end axi_cdma_reset;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_reset is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

  Constant INCLUDE_SYNCHRONIZERS : integer   :=  1 ;
  Constant NO_SYNCHRONIZERS      : integer   :=  0 ;
  Constant POSITIVE_EDGE_TRIGGER : integer   :=  1 ;
  Constant NEGATIVE_EDGE_TRIGGER : integer   :=  0 ;
  Constant TWO_CLKS              : integer   :=  2 ;
  Constant ONE_CLK               : integer   :=  1 ;
  Constant LOGIC_LOW             : std_logic := '0';
  Constant LOGIC_HIGH            : std_logic := '1';
  Constant POR_WIDTH             : integer   :=  8 ;
  
  
  
  


-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------

  signal sig_local_hw_reset_reg      : std_logic := '0';
  signal sig_lite_bside_hw_reset_reg : std_logic := '0';
  signal sig_lite_cside_hw_reset_reg : std_logic := '0';
  signal sig_composite_reg_reset     : std_logic := '0';
  signal sig_composite_cntlr_reset   : std_logic := '0';
  signal sig_composite_sgcntlr_reset : std_logic := '0';
  signal sig_composite_sg_reset_n    : std_logic := '0';
  signal sig_composite_dm_reset_n    : std_logic := '0';
  signal sig_dm_soft_reset_n         : std_logic := '0';
  signal sig_rst2reg_soft_reset      : std_logic := '0';
  signal sig_rst2reg_soft_reset_trig : std_logic := '0';
  signal sig_rst2reg_soft_reset_clr  : std_logic := '0';
  signal sig_soft_reset              : std_logic := '0';
  signal sig_soft_reset_reg          : std_logic := '0';
  signal sig_trig_soft_reset         : std_logic := '0';
  signal sig_halt_request            : std_logic := '0';
  signal sig_halt_cmplt              : std_logic := '0';
  

  
  signal sig_axi_por_reg1            : std_logic := '0';
  signal sig_axi_por_reg2            : std_logic := '0';
  signal sig_axi_por_reg3            : std_logic := '0';
  signal sig_axi_por_reg4            : std_logic := '0';
  signal sig_axi_por_reg5            : std_logic := '0';
  signal sig_axi_por_reg6            : std_logic := '0';
  signal sig_axi_por_reg7            : std_logic := '0';
  signal sig_axi_por_reg8            : std_logic := '0';
  signal sig_axi_por2rst             : std_logic := '0';
  signal sig_axi_por2rst_out         : std_logic := '0';
  
  signal sig_axilite_por_reg1        : std_logic := '0';
  signal sig_axilite_por_reg2        : std_logic := '0';
  signal sig_axilite_por_reg3        : std_logic := '0';
  signal sig_axilite_por_reg4        : std_logic := '0';
  signal sig_axilite_por_reg5        : std_logic := '0';
  signal sig_axilite_por_reg6        : std_logic := '0';
  signal sig_axilite_por_reg7        : std_logic := '0';
  signal sig_axilite_por_reg8        : std_logic := '0';
  signal sig_axilite_por2rst         : std_logic := '0';
  signal sig_axilite_por2rst_out     : std_logic := '0';
  
  
  
  

-- Register duplication attribute assignments to control fanout
-- on reset signals

 Attribute KEEP : string; -- declaration
 Attribute EQUIVALENT_REGISTER_REMOVAL : string; -- declaration
 
 Attribute KEEP of sig_lite_bside_hw_reset_reg    : signal is "TRUE";
 Attribute KEEP of sig_lite_cside_hw_reset_reg    : signal is "TRUE";
 Attribute KEEP of sig_composite_reg_reset        : signal is "TRUE";
 Attribute KEEP of sig_composite_cntlr_reset      : signal is "TRUE";
 Attribute KEEP of sig_composite_sgcntlr_reset    : signal is "TRUE";
 Attribute KEEP of sig_composite_sg_reset_n       : signal is "TRUE";
 
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_lite_bside_hw_reset_reg : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_lite_cside_hw_reset_reg : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_composite_reg_reset     : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_composite_cntlr_reset   : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_composite_sgcntlr_reset : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_composite_sg_reset_n    : signal is "no";



-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

  

  -- Assign Reset Output Ports
  rst2lite_bside_reset   <= sig_lite_bside_hw_reset_reg ;
  rst2lite_cside_reset   <= sig_lite_cside_hw_reset_reg ;
  
  rst2reg_reset          <= sig_composite_reg_reset     ;
  rst2cntlr_reset        <= sig_composite_cntlr_reset   ;
  rst2sgcntlr_reset      <= sig_composite_sgcntlr_reset ;
  rst2sg_resetn          <= sig_composite_sg_reset_n    ;
  rst2dm_resetn          <= sig_composite_dm_reset_n    ;



  -- Assign the soft Reset Request and Clear Ports
  sig_rst2reg_soft_reset <= reg2rst_soft_reset_in      ;
  rst2reg_soft_reset_clr <= sig_rst2reg_soft_reset_clr ;
 
  
  
  -- Assign the Halt and Halt Cmplt Ports
  
  rst2cntlr_halt    <= sig_halt_request; 
  rst2sg_halt       <= sig_halt_request;
  rst2dm_mm2s_halt  <= sig_halt_request;
  rst2dm_s2mm_halt  <= sig_halt_request;
  
  





------------------------------------------------------------
-- Start Power On Reset (POR) Logic
------------------------------------------------------------
  
  
                      
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: AXI_POR_REG1
  --
  -- Process Description:
  --    This process generates an 4-clock wide pulse that 
  --  only occurs immediately after FPGA initialization. This  
  --  pulse is used to initialize reset logic synchronous to
  -- the Main axi_aclk Clock until the Bus Reset occurs.
  --
  -------------------------------------------------------------
  AXI_POR_REG1 : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
            sig_axi_por_reg1    <= '1';
            sig_axi_por_reg2    <= sig_axi_por_reg1;
            sig_axi_por_reg3    <= sig_axi_por_reg2;
            sig_axi_por_reg4    <= sig_axi_por_reg3;
            sig_axi_por_reg5    <= sig_axi_por_reg4;
            sig_axi_por_reg6    <= sig_axi_por_reg5;
            sig_axi_por_reg7    <= sig_axi_por_reg6;
            sig_axi_por_reg8    <= sig_axi_por_reg7;

            sig_axi_por2rst_out <= sig_axi_por2rst ;
            
       end if;       
     end process AXI_POR_REG1; 
                      
                       
  
                      
  sig_axi_por2rst <=   not(sig_axi_por_reg1 and                  
                           sig_axi_por_reg2 and
                           sig_axi_por_reg3 and
                           sig_axi_por_reg4 and
                           sig_axi_por_reg5 and
                           sig_axi_por_reg6 and
                           sig_axi_por_reg7 and
                           sig_axi_por_reg8 );
                      
 
 
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: AXILITE_POR_REG1
  --
  -- Process Description:
  --    This process generates an 8-clock wide pulse that 
  --  only occurs immediately after FPGA initialization. This  
  --  pulse is used to initialize reset logic synchronous to
  -- the axi_lite_aclk Clock until the Bus Reset occurs.
  --
  -------------------------------------------------------------
  AXILITE_POR_REG1 : process (axi_lite_aclk)
     begin
       if (axi_lite_aclk'event and axi_lite_aclk = '1') then
            sig_axilite_por_reg1    <= '1';
            sig_axilite_por_reg2    <= sig_axilite_por_reg1;
            sig_axilite_por_reg3    <= sig_axilite_por_reg2;
            sig_axilite_por_reg4    <= sig_axilite_por_reg3;
            sig_axilite_por_reg5    <= sig_axilite_por_reg4;
            sig_axilite_por_reg6    <= sig_axilite_por_reg5;
            sig_axilite_por_reg7    <= sig_axilite_por_reg6;
            sig_axilite_por_reg8    <= sig_axilite_por_reg7;
            
            sig_axilite_por2rst_out <= sig_axilite_por2rst ;
            
       end if;       
     end process AXILITE_POR_REG1; 
                      
                       
  
                      
  sig_axilite_por2rst <=   not(sig_axilite_por_reg1 and                  
                               sig_axilite_por_reg2 and
                               sig_axilite_por_reg3 and
                               sig_axilite_por_reg4 and
                               sig_axilite_por_reg5 and
                               sig_axilite_por_reg6 and
                               sig_axilite_por_reg7 and
                               sig_axilite_por_reg8);
                      
 
 
------------------------------------------------------------
-- End of Power On Reset (POR) Logic
------------------------------------------------------------
  
 
  
   





 
-------------------------------------------------------------------------------
-- Reset Logic Distribution
-------------------------------------------------------------------------------

  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_AXI_LITE_SYNC2AXI
  --
  -- If Generate Description:
  --  Generate resets based on AXI Lite clock being the same
  --  as the main axi4 clock (synchronous).
  --
  --
  ------------------------------------------------------------
  GEN_AXI_LITE_SYNC2AXI : if (C_AXI_LITE_IS_ASYNC = 0) generate
  
  
     begin
 
 
       sig_composite_dm_reset_n <=  axi_resetn and axi_lite_resetn and sig_dm_soft_reset_n;
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_SYNC_SOFT_RST_FLOP
       --
       -- Process Description:
       --   FLOP for registering the input axi_resetn (inverted).
       --
       -------------------------------------------------------------
       IMP_SYNC_SOFT_RST_FLOP : process (axi_aclk)
         begin
           if (axi_aclk'event and axi_aclk = '1') then
             If (sig_axi_por2rst_out = '1') Then
                
                sig_local_hw_reset_reg       <= '1';
                sig_composite_reg_reset      <= '1';
                sig_composite_cntlr_reset    <= '1';
                sig_composite_sgcntlr_reset  <= '1';
                sig_composite_sg_reset_n     <= '0';
                sig_dm_soft_reset_n          <= '0';
              
              else
                
                sig_local_hw_reset_reg       <= not(axi_resetn) or  not(axi_lite_resetn);
                sig_composite_reg_reset      <= not(axi_resetn) or  not(axi_lite_resetn) or  sig_soft_reset;
                sig_composite_cntlr_reset    <= not(axi_resetn) or  not(axi_lite_resetn) or  sig_soft_reset;
                sig_composite_sgcntlr_reset  <= not(axi_resetn) or  not(axi_lite_resetn) or  sig_soft_reset;
                sig_composite_sg_reset_n     <= axi_resetn      and axi_lite_resetn      and not(sig_soft_reset);
                sig_dm_soft_reset_n          <= not(sig_soft_reset);
              
              End if;
                
           end if;       
         end process IMP_SYNC_SOFT_RST_FLOP; 
      

       
           
 
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_SYNC_AXI_LITE_HW_RST_FLOP
       --
       -- Process Description:
       --   FLOP for registering the reset for the AXi Lite Interface.
       -- Since the axi_lite_aclk is the same as the axi_aclk,
       -- the Bus side and Core side resets can be the same.
       -- Note that soft reset is excluded from the AXI Lite reset
       -- generation logic.
       --
       -------------------------------------------------------------
       IMP_SYNC_AXI_LITE_HW_RST_FLOP : process (axi_lite_aclk)
         begin
           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
             
             if (sig_axilite_por2rst = '1') then
             
               sig_lite_bside_hw_reset_reg   <= '1';
               sig_lite_cside_hw_reset_reg   <= '1';
             
             else
               
               sig_lite_bside_hw_reset_reg   <= not(axi_lite_resetn) or
                                                not(axi_resetn);
               
               sig_lite_cside_hw_reset_reg   <= not(axi_lite_resetn) or  
                                                not(axi_resetn);
                
             end if;
                
           end if;       
         end process IMP_SYNC_AXI_LITE_HW_RST_FLOP; 
      

 
  
     end generate GEN_AXI_LITE_SYNC2AXI;
  
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_AXI_LITE_ASYNC2AXI
  --
  -- If Generate Description:
  --  Generate resets based on AXI Lite clock being different
  --  from the main axi4 clock (asynchronous).
  --
  --
  ------------------------------------------------------------
  GEN_AXI_LITE_ASYNC2AXI : if (C_AXI_LITE_IS_ASYNC = 1) generate
       ATTRIBUTE async_reg                      : STRING;
  
     signal sig_axi_lite_rst_rsync_min_pulse : std_logic := '0';
     signal sig_axi_lite_rst_reg             : std_logic := '0';
     signal sig_axi_lite_rst_rsync           : std_logic := '0';
     signal sig_axi_lite_rst_rsync_d1_cdc_tig        : std_logic := '0';
     signal sig_axi_lite_rst_rsync_d2        : std_logic := '0';
     
     signal sig_axi_rst_rsync_min_pulse      : std_logic := '0';
     signal sig_axi_rst_reg                  : std_logic := '0';
     signal sig_axi_rst_rsync                : std_logic := '0';
     signal sig_axi_rst_rsync_d1_cdc_tig             : std_logic := '0';
     signal sig_axi_rst_rsync_d2             : std_logic := '0';
     
     signal sig_cside2bside_rsync_d1_cdc_tig        : std_logic := '0';
     signal sig_cside2bside_rsync_d2        : std_logic := '0';

       --ATTRIBUTE async_reg OF sig_axi_lite_rst_rsync_d1_cdc_tig  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_axi_lite_rst_rsync_d2  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_axi_rst_rsync_d1_cdc_tig  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_axi_rst_rsync_d2  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_cside2bside_rsync_d1_cdc_tig  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_cside2bside_rsync_d2  : SIGNAL IS "true";

     
     begin
 
    
       
       ----------------------------------------------------------------                                
       -- AXI Lite RESET to AXI Clock synchronizers                                
       ----------------------------------------------------------------                                

       -- Assign a composite reset derived from the AXI Lite Resetn
       -- that consistes of a minimum pulse width reset or the resync'd
       -- AXI Lite Reset, whichever is asserted longer.
       sig_axi_lite_rst_rsync <= sig_axi_lite_rst_rsync_d2 or
                                 sig_axi_lite_rst_rsync_min_pulse;
       
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_LITE2AXI_RSYNC
       --
       -- Process Description:
       --   First stage Synchronizer for the AXI_LITE RESETN to AXI 
       -- clock domain.
       --
       -------------------------------------------------------------
       IMP_LITE2AXI_RSYNC : process (axi_lite_aclk)
         begin
           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
             if (sig_axilite_por2rst = '1') then
             
               sig_axi_lite_rst_reg <= '1';
             
             else
            
               sig_axi_lite_rst_reg  <= not(axi_lite_resetn);
               
             end if;
   
           end if;       
         end process IMP_LITE2AXI_RSYNC; 
       
       
       
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_ALITE_RST_RESYNC
       --
       -- Process Description:
       --  Second stage synchronizers for the axi lite resetn to
       -- AXi clock domain.
       --
       -------------------------------------------------------------
IMP_ALITE_RST_RESYNC : entity  lib_cdc_v1_0_2.cdc_sync
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
        prmry_in                   => sig_axi_lite_rst_reg,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => axi_aclk,
        scndry_resetn              => '0',
        scndry_out                 => sig_axi_lite_rst_rsync_d2,
        scndry_vect_out            => open
    );


--       IMP_ALITE_RST_RESYNC : process (axi_aclk)
--         begin
--           if (axi_aclk'event and axi_aclk = '1') then
--              if (sig_axi_por2rst = '1') then
--       
--                sig_axi_lite_rst_rsync_d1_cdc_tig <= '1';
--                sig_axi_lite_rst_rsync_d2 <= '1';
--       
--              else
--       
--                sig_axi_lite_rst_rsync_d1_cdc_tig <= sig_axi_lite_rst_reg;
--                sig_axi_lite_rst_rsync_d2 <= sig_axi_lite_rst_rsync_d1_cdc_tig;
--       
--              end if; 
--           end if;       
--         end process IMP_ALITE_RST_RESYNC; 
  
  
  
  
      
      
            
                                       
       ----------------------------------------------------------------                                
       -- AXI RESET to AXI Lite Clock synchronizers                                
       ----------------------------------------------------------------                                

                                       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_AXI_RST_REG
       --
       -- Process Description:
       --  First stage register for synchronizer for AXI_RESETN  to
       -- AXI Lite Clock Domain.
       --
       -------------------------------------------------------------
       IMP_AXI_RST_REG : process (axi_aclk)
         begin
           if (axi_aclk'event and axi_aclk = '1') then
              if (sig_axi_por2rst = '1') then
       
                sig_axi_rst_reg <= '1';
       
              else
       
                sig_axi_rst_reg <= not(axi_resetn);
       
              end if; 
           end if;       
         end process IMP_AXI_RST_REG; 
            
        
                                       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_AXI2LITE_RSYNC
       --
       -- Process Description:
       --   Second stage Synchronizers for the AXI_RESETN to AXI 
       -- Lite clock domain.
       --
       -------------------------------------------------------------

IMP_AXI2LITE_RSYNC : entity  lib_cdc_v1_0_2.cdc_sync
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
        prmry_in                   => sig_axi_rst_reg,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => axi_lite_aclk,
        scndry_resetn              => '0',
        scndry_out                 => sig_axi_rst_rsync_d2,
        scndry_vect_out            => open
    );

--       IMP_AXI2LITE_RSYNC : process (axi_lite_aclk)
--         begin
--           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
--             if (sig_axilite_por2rst = '1') then
--             
--               sig_axi_rst_rsync_d1_cdc_tig  <= '1';
--               sig_axi_rst_rsync_d2  <= '1';
--             
--             else
--            
--               sig_axi_rst_rsync_d1_cdc_tig  <= sig_axi_rst_reg;
--               sig_axi_rst_rsync_d2  <= sig_axi_rst_rsync_d1_cdc_tig;
--               
--             end if;
--   
--           end if;       
--         end process IMP_AXI2LITE_RSYNC; 
      

   
   
   
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_AXI_LITE_DELAY
       --
       -- Process Description:
       --   Special Synchronizers for ensuring the Bus side always
       -- comes out of reset after the C_side does.
       --
       -------------------------------------------------------------

IMP_AXI_LITE_DELAY : entity  lib_cdc_v1_0_2.cdc_sync
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
        prmry_in                   => sig_lite_cside_hw_reset_reg,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => axi_lite_aclk,
        scndry_resetn              => '0',
        scndry_out                 => sig_cside2bside_rsync_d2,
        scndry_vect_out            => open
    );

--       IMP_AXI_LITE_DELAY : process (axi_lite_aclk)
--         begin
--           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
--             if (sig_axilite_por2rst = '1') then
--             
--               sig_cside2bside_rsync_d1_cdc_tig  <= '1';
--               sig_cside2bside_rsync_d2  <= '1';
--             
--             else
--            
--               sig_cside2bside_rsync_d1_cdc_tig  <= sig_lite_cside_hw_reset_reg;
--               sig_cside2bside_rsync_d2  <= sig_cside2bside_rsync_d1_cdc_tig;
--               
--             end if;
--   
--           end if;       
--         end process IMP_AXI_LITE_DELAY; 
      



 
       sig_axi_rst_rsync <= sig_axi_rst_rsync_d2 or
                            sig_cside2bside_rsync_d2;                               
                                       
                                       
                                       
                                       
                                       
                                       
       ------------------------------------------------------------
       -- Instance: I_AXI_LITE_RST_RSYNC 
       --
       -- Description:
       -- This PulsGen synchronizes the AXI Lite Reset to the Main
       -- AXI Clock and assures a minimum reset pulse width.    
       --
       ------------------------------------------------------------
       I_AXI_LITE_RST_RSYNC : entity axi_cdma_v4_1_9.axi_cdma_pulse_gen
       generic map (

         C_INCLUDE_SYNCHRO  =>  INCLUDE_SYNCHRONIZERS ,  
         C_POS_EDGE_TRIG    =>  NEGATIVE_EDGE_TRIGGER ,  
         C_PULSE_WIDTH_CLKS =>  C_SOFT_RST_TIME_CLKS  

         )
       port map (

         Clk_In    =>  axi_aclk               ,  
         --Rst_In    =>  LOGIC_LOW              ,  
         Rst_In    =>  sig_axi_por2rst        ,  
         Sig_in    =>  axi_lite_resetn        ,  
         --Pulse_Out =>  sig_axi_lite_rst_rsync           
         Pulse_Out =>  sig_axi_lite_rst_rsync_min_pulse           

         );
      
      
        
            
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
            
            
       ------------------------------------------------------------
       -- Instance: I_AXI_RST_RSYNC 
       --
       -- Description:
       -- This PulsGen synchronizes the AXI Reset to the AXI Lite 
       -- Clock    
       --
       ------------------------------------------------------------
       I_AXI_RST_RSYNC : entity axi_cdma_v4_1_9.axi_cdma_pulse_gen
       generic map (

         C_INCLUDE_SYNCHRO  =>  INCLUDE_SYNCHRONIZERS ,  
         C_POS_EDGE_TRIG    =>  NEGATIVE_EDGE_TRIGGER ,  
         C_PULSE_WIDTH_CLKS =>  C_SOFT_RST_TIME_CLKS  

         )
       port map (

         Clk_In    =>  axi_lite_aclk          ,  
         -- Rst_In    =>  LOGIC_LOW              ,  
         Rst_In    =>  sig_axilite_por2rst    ,  
         Sig_in    =>  axi_resetn             ,  
         Pulse_Out =>  sig_axi_rst_rsync_min_pulse           

         );
      
      
       
       
       
       sig_composite_dm_reset_n <=  axi_resetn                  and 
                                    not(sig_axi_lite_rst_rsync) and 
                                    sig_dm_soft_reset_n;
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_ASYNC_SOFT_RST_FLOP
       --
       -- Process Description:
       --   FLOP for registering the input axi_resetn (inverted).
       --
       -------------------------------------------------------------
       IMP_ASYNC_SOFT_RST_FLOP : process (axi_aclk)
         begin
           if (axi_aclk'event and axi_aclk = '1') then
              if (sig_axi_por2rst = '1') then
              
                sig_local_hw_reset_reg       <= '1';
                sig_composite_reg_reset      <= '1';
                sig_composite_cntlr_reset    <= '1';
                sig_composite_sgcntlr_reset  <= '1';
                sig_composite_sg_reset_n     <= '0';
                sig_dm_soft_reset_n          <= '0';
              
              else
              
                
                sig_local_hw_reset_reg       <= not(axi_resetn) or  
                                                --not(sig_axi_lite_rst_rsync);
                                                sig_axi_lite_rst_rsync;
                                                
                sig_composite_reg_reset      <= not(axi_resetn)        or 
                                                sig_axi_lite_rst_rsync or
                                                sig_soft_reset;
                                                
                sig_composite_cntlr_reset    <= not(axi_resetn)        or 
                                                sig_axi_lite_rst_rsync or
                                                sig_soft_reset;
                                                
                sig_composite_sgcntlr_reset  <= not(axi_resetn)        or
                                                sig_axi_lite_rst_rsync or
                                                sig_soft_reset;
                                                
                sig_composite_sg_reset_n     <= axi_resetn                  and 
                                                not(sig_axi_lite_rst_rsync) and
                                                not(sig_soft_reset);
                                                
                sig_dm_soft_reset_n          <= not(sig_soft_reset);
                
              
              end if;
              
                
           end if;       
         end process IMP_ASYNC_SOFT_RST_FLOP; 
      

       
           
 
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_ASYNC_ALITE_BSIDE_RST
       --
       -- Process Description:
       --   FLOP for registering the reset for the AXi Lite 
       -- Bus side Interface.
       -- Note that soft reset is excluded from the AXI Lite reset
       -- generation logic.
       --
       -------------------------------------------------------------
       IMP_ASYNC_ALITE_BSIDE_RST : process (axi_lite_aclk)
         begin
           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
             if (sig_axilite_por2rst = '1') then
             
               sig_lite_bside_hw_reset_reg  <= '1';
             
             else
            
               sig_lite_bside_hw_reset_reg  <= not(axi_lite_resetn) or
                                               sig_axi_rst_rsync_min_pulse or
                                               sig_axi_rst_rsync;
               
             end if;
   
           end if;       
         end process IMP_ASYNC_ALITE_BSIDE_RST; 
      

 
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_ASYNC_ALITE_CSIDE_RST
       --
       -- Process Description:
       --   FLOP for registering the reset for the AXi Lite 
       -- Core side Interface.
       -- Note that soft reset is excluded from the AXI Lite reset
       -- generation logic.
       --
       -- Note that the Core side of the AXI Lite interface is
       -- clocked with axi_aclk which is async to axi_lite_aclk in
       -- this IfGen case.
       --
       -------------------------------------------------------------
       IMP_ASYNC_ALITE_CSIDE_RST : process (axi_aclk)
         begin
           if (axi_aclk'event and axi_aclk = '1') then
             If (sig_axi_por2rst_out = '1') Then
                
                sig_lite_cside_hw_reset_reg   <= '1';
              
              else
                
                sig_lite_cside_hw_reset_reg   <= not(axi_resetn) or
                                                 sig_axi_lite_rst_rsync;
              
              End if;
                
           end if;       
         end process IMP_ASYNC_ALITE_CSIDE_RST; 
      

       
           
  
     end generate GEN_AXI_LITE_ASYNC2AXI;
  
  
  
  
  
  
  
  
  
  

-------------------------------------------------------------------------------
-- Pulse Generator Logic for Soft Reset
-------------------------------------------------------------------------------
    
    
  sig_trig_soft_reset <= sig_halt_cmplt;

    

  ------------------------------------------------------------
  -- Instance: I_SOFT_RST_PULSEGEN 
  --
  -- Description:
  -- Generates a active high pulse for the specified number
  -- of clock periods    
  --
  ------------------------------------------------------------
  I_SOFT_RST_PULSEGEN : entity axi_cdma_v4_1_9.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,  
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,  
    C_PULSE_WIDTH_CLKS =>  C_SOFT_RST_TIME_CLKS  

    )
  port map (

    Clk_In    =>  axi_aclk               ,  
    Rst_In    =>  sig_local_hw_reset_reg ,  
    Sig_in    =>  sig_trig_soft_reset    ,  
    Pulse_Out =>  sig_soft_reset           

    );
 
 
   
  ------------------------------------------------------------
  -- Instance: I_SOFT_RST_CLR_PULSE 
  --
  -- Description:
  -- Generates a active high pulse for 2 clocks when soft reset
  -- is deasserted.    
  --
  ------------------------------------------------------------
  I_SOFT_RST_CLR_PULSE : entity axi_cdma_v4_1_9.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,  
    C_POS_EDGE_TRIG    =>  NEGATIVE_EDGE_TRIGGER ,  
    C_PULSE_WIDTH_CLKS =>  TWO_CLKS  

    )
  port map (

    Clk_In    =>  axi_aclk                    ,  
    Rst_In    =>  sig_local_hw_reset_reg      ,  
    Sig_in    =>  sig_soft_reset              ,  
    Pulse_Out =>  sig_rst2reg_soft_reset_clr    

    );
 
 
 
   
   
   
   
   
   
   
   
-------------------------------------------------------------------------------
-- Halt Request and Complete Logic
-------------------------------------------------------------------------------

 
   
   
  ------------------------------------------------------------
  -- Instance: I_SOFT_RST_POS_EDGE_DTCT 
  --
  -- Description:
  -- Generates a active high pulse for 1 clocks when soft reset
  -- request from the register module is asserted.    
  --
  ------------------------------------------------------------
  I_SOFT_RST_POS_EDGE_DTCT : entity axi_cdma_v4_1_9.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,  
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,  
    C_PULSE_WIDTH_CLKS =>  ONE_CLK  

    )
  port map (

    Clk_In    =>  axi_aclk                    ,  
    Rst_In    =>  sig_local_hw_reset_reg      ,  
    Sig_in    =>  sig_rst2reg_soft_reset      ,  
    Pulse_Out =>  sig_rst2reg_soft_reset_trig    

    );
 
 
 
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_HALT_REQ_FLOP
  --
  -- Process Description:
  --  Implements the flop for the Halt Request that is a 
  --  precurser to a soft reset.
  --
  -------------------------------------------------------------
  IMP_HALT_REQ_FLOP : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (sig_local_hw_reset_reg = '1' or
             sig_soft_reset         = '1') then
  
           sig_halt_request <= '0';
  
         elsif (sig_rst2reg_soft_reset_trig = '1') then
  
           sig_halt_request <= '1';
  
         else
  
           null; -- hold state
  
         end if; 
      end if;       
    end process IMP_HALT_REQ_FLOP; 
 
 
   
   
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_HALT_CMPLT_FLOP
    --
    -- Process Description:
    --  Implements the flop for the Halt Completion from all 
    --  modules.
    --
    -------------------------------------------------------------
    IMP_HALT_CMPLT_FLOP : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
           if (sig_local_hw_reset_reg = '1' or
               sig_soft_reset         = '1' or
               sig_halt_request       = '0') then
    
             sig_halt_cmplt <= '0';
    
           else
    
             sig_halt_cmplt <= cntlr2rst_halt_cmplt   and
                               sg2rst_halt_cmplt      and
                               dm2rst_mm2s_halt_cmplt and
                               dm2rst_s2mm_halt_cmplt;
    
           end if; 
        end if;       
      end process IMP_HALT_CMPLT_FLOP; 
   
   
   
 
 
end implementation;

