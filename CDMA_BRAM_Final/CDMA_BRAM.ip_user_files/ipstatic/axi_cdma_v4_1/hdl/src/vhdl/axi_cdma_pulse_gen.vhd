 -------------------------------------------------------------------------------
 -- axi_cdma_pulse_gen.vhd
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
-- Filename:        axi_cdma_pulse_gen.vhd
--
-- Description:     
--     This file is the design for a parameterizable pulse width generator.           
--     The input Sig_In is either Positive Edge or Negative detected 
--     which triggers a pulse generator. Allowed pulse widths are 1 to
--     64 input clock periods.
--     
--             
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Library declarations
 
 library IEEE;
 use IEEE.std_logic_1164.all;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 use ieee.std_logic_misc.all;
 
library lib_cdc_v1_0_2;

library axi_cdma_v4_1_9;
use axi_cdma_v4_1_9.axi_cdma_pkg.all;
                                                     
 
 ------------------------------------------------------------------------------
 

entity axi_cdma_pulse_gen is
  generic (
    C_INCLUDE_SYNCHRO  : Integer range 0 to 1  := 0;
      -- 0 = Do not include synchronizer registers
      -- 1 = Include synchronizer registers
      
    C_POS_EDGE_TRIG    : Integer range 0 to 1  := 1;
      -- 0 = Negative Edge Triggered Pulse
      -- 1 = Positive Edge Triggered Pulse
      
    C_PULSE_WIDTH_CLKS : integer range 1 to 64 := 4
      -- Desired Output Pulse width (in Clk_In periods)
      
  );
  port (
   
    -- Input synchronization clock
    Clk_In    : In  std_logic;
    
    -- Module reset (active high)
    Rst_In    : In  std_logic;
    
    -- Input trigger signal
    Sig_in    : In  std_logic;
    
    -- Output pulse
    Pulse_Out : Out std_logic

    );


    
end entity axi_cdma_pulse_gen;



-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_pulse_gen is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


  ATTRIBUTE async_reg                      : STRING;
 
 
-------------------------------------------------------------------------------
-- Functions  Declarations
-------------------------------------------------------------------------------
 
   -- none
 
    
-------------------------------------------------------------------------------
-- Constant Declarations
-------------------------------------------------------------------------------
  
  Constant ADJUSTED_CLKs : integer := C_PULSE_WIDTH_CLKS+1;
  
  


   
     
                     
-------------------------------------------------------------------------------  
-- Internal Signal Declaration  
-------------------------------------------------------------------------------
  
  
  -- System module reset interconnect signals

   signal sig_pulse_out          : std_logic;
   signal sig_to_edge_detect_reg : std_logic;
   signal sig_pulse_trigger      : std_logic;
   signal sig_shift_reg          : std_logic_vector(0 to ADJUSTED_CLKs-1);
   
 -- Addition of synchronizer front-end  
   signal sig_synchro_reg1_cdc_tig       : std_logic;
   signal sig_synchro_reg2       : std_logic;
   signal sig_to_edge_detect     : std_logic;
--    ATTRIBUTE async_reg OF sig_synchro_reg1_cdc_tig  : SIGNAL IS "true";
--    ATTRIBUTE async_reg OF sig_synchro_reg2  : SIGNAL IS "true"; 
   
   
   
-------------------------------------------------------------------------------   
   
begin -- architecture body
    
  -- Output Port assignments
   Pulse_Out    <=  sig_pulse_out  ;
                                                  

  
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: OMIT_SYNCHRO_REGS
  --
  -- If Generate Description:
  -- This IfGen omits the implementation of a double register
  -- synchronizer on the input signal.
  --
  ------------------------------------------------------------
  OMIT_SYNCHRO_REGS : if (C_INCLUDE_SYNCHRO = 0) generate
  
     begin
  
       sig_to_edge_detect <= Sig_In;   
          
          
     end generate OMIT_SYNCHRO_REGS;
  
 
 
 
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: INCLUDE_SYNCHRO_REGS
  --
  -- If Generate Description:
  -- This IfGen includes the implementation of a double 
  -- register synchronizer on the input signal.
  --
  ------------------------------------------------------------
  INCLUDE_SYNCHRO_REGS : if (C_INCLUDE_SYNCHRO = 1) generate
  
     begin
  
       sig_to_edge_detect <= sig_synchro_reg2; 
       
       
        
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: DO_SYNCHRO_REGS
       --
       -- Process Description:
       --
       --
       -------------------------------------------------------------
DO_SYNCHRO_REGS : entity  lib_cdc_v1_0_2.cdc_sync
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
        prmry_in                   => Sig_In,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => Clk_In,
        scndry_resetn              => '0',
        scndry_out                 => sig_synchro_reg2,
        scndry_vect_out            => open
    );



--       DO_SYNCHRO_REGS : process (Clk_In)
--          begin
--            if (Clk_In'event and Clk_In = '1') then
--               if (Rst_In = '1') then
                 
--                 sig_synchro_reg1_cdc_tig <= '0';
--                 sig_synchro_reg2 <= '0';
                 
--               else
                 
--                 sig_synchro_reg1_cdc_tig <= Sig_In;
--                 sig_synchro_reg2 <= sig_synchro_reg1_cdc_tig;
                 
--               end if; 
--            end if;       
--          end process DO_SYNCHRO_REGS; 
        
        
        
     end generate INCLUDE_SYNCHRO_REGS;
  
  
  
  
  
  
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: POSITIVE_EDGE_TRIGGER
  --
  -- If Generate Description:
  --  Generate Pulse trigger from Positive edge detection on
  --  the input signal
  --
  --
  ------------------------------------------------------------
  POSITIVE_EDGE_TRIGGER : if (C_POS_EDGE_TRIG = 1) generate
     
     begin
  
       -- Do positive edge detection on input signal, This becomes
       -- the trigger for generating the output pulse.
       sig_pulse_trigger  <= sig_to_edge_detect and not(sig_to_edge_detect_reg);
       
   
     end generate POSITIVE_EDGE_TRIGGER;
  
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: NEGATIVE_EDGE_TRIGGER
  --
  -- If Generate Description:
  --  Generate Pulse trigger from negative edge detection on
  --  the input signal
  --
  --
  ------------------------------------------------------------
  NEGATIVE_EDGE_TRIGGER : if (C_POS_EDGE_TRIG = 0) generate
     
     begin
  
       -- Do negative edge detection on input signal, This becomes
       -- the trigger for generating the output pulse.
       sig_pulse_trigger  <= not(sig_to_edge_detect) and sig_to_edge_detect_reg;
       
   
     end generate NEGATIVE_EDGE_TRIGGER;
  
  
  
  
  
  
  
  
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: REG_SIG_IN
   --
   -- Process Description:
   -- This process registers the input signal for use in the
   -- edge detection logic.
   --
   -------------------------------------------------------------
   REG_SIG_IN : process (Clk_In)
      begin
        if (Clk_In'event and Clk_In = '1') then
           if (Rst_In = '1') then
             sig_to_edge_detect_reg <= '0';
           else
             sig_to_edge_detect_reg <= sig_to_edge_detect;
           end if; 
        end if;       
      end process REG_SIG_IN; 
  




  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: DO_SINGLE_CLK_PULSE
  --
  -- If Generate Description:
  --
  -- Handles single clock pulse width case
  --
  ------------------------------------------------------------
  DO_SINGLE_CLK_PULSE : if (C_PULSE_WIDTH_CLKS = 1) generate
  
  
     begin
  
       
       
       
       sig_shift_reg <= (others => '0'); -- house keeping
       
     
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: REG_SINGLE_PULSE
       --
       -- Process Description:
       -- This process registers a single pulse case.
       --
       -------------------------------------------------------------
       REG_SINGLE_PULSE : process (Clk_In)
          begin
            if (Clk_In'event and Clk_In = '1') then
               if (Rst_In    = '1') then
                 sig_pulse_out <= '0';
               else
                 sig_pulse_out <= sig_pulse_trigger;
               end if; 
            end if;       
          end process REG_SINGLE_PULSE; 
      

     
     
     
     end generate DO_SINGLE_CLK_PULSE;
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: DO_MULTI_CLK_PULSE
  --
  -- If Generate Description:
  --
  -- Handles Multi clock pulse width case
  --
  ------------------------------------------------------------
  DO_MULTI_CLK_PULSE : if (C_PULSE_WIDTH_CLKS >= 2) generate
  
  
     begin
  
     
     
       -----------------------------------------------------------------------------
       -- Implement the Shift register logic 
       -----------------------------------------------------------------------------
       
       -- The output pulse is ripped from the final stage of the shift register  
         sig_pulse_out <= sig_shift_reg(ADJUSTED_CLKs-1);
       
       
       -- Tie the shift register input stage to 0
         sig_shift_reg(0) <= '0';
       
         
        
         ------------------------------------------------------------
         -- For Generate
         --
         -- Label: DO_SHIF_REG
         --
         -- For Generate Description:
         --  This For Gen implements a parameterizable shift 
         --  register for the pulse generator. The trigger presets
         --  all of the register segments and then zeros are shifted
         --  into the pipe until all stages are cleared. The resulting
         --  pulse out is equal to the number of stages in the shift
         --  register.
         --  
         --
         --
         ------------------------------------------------------------
         DO_SHIF_REG : for reg_index in 1 to ADJUSTED_CLKs-1 generate
         
         begin
      
           -------------------------------------------------------------
           -- Synchronous Process with Sync Reset
           --
           -- Label: DO_SHIFT_REG_SEGMENT
           --
           -- Process Description:
           --   This process implements a single register segment of
           -- of the pulse generator shift register.
           --
           -------------------------------------------------------------
           DO_SHIFT_REG_SEGMENT : process (Clk_In)
              begin
                if (Clk_In'event and Clk_In = '1') then
                   if (Rst_In = '1') then                -- Clear the reg
                     sig_shift_reg(reg_index) <= '0';
                   elsif (sig_pulse_trigger = '1') then  -- preset the reg
                     sig_shift_reg(reg_index) <= '1';
                   else                                  -- shift stuff through
                     sig_shift_reg(reg_index) <= sig_shift_reg(reg_index-1); 
                   end if; 
                end if;       
              end process DO_SHIFT_REG_SEGMENT; 
              
         end generate DO_SHIF_REG;
        
        
       -----------------------------------------------------------------------------
       -- End of Shift register logic 
       -----------------------------------------------------------------------------
   
     
     
     end generate DO_MULTI_CLK_PULSE;
  
  
  
  
  
  
  
  
  
  
  
  
   
 
end architecture implementation;











