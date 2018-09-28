-------------------------------------------------------------------------------
-- axi_cdma_register
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
-- Filename:        axi_cdma_register.vhd
--
-- Description:     This entity encompasses the channel register set.
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

-------------------------------------------------------------------------------
entity  axi_cdma_register is
    generic(
        C_CDMA_BUILD_MODE           : integer range  0 to  1    := 0        ;
        C_NUM_REGISTERS             : integer range  0 to 16    := 6        ;
        C_S_AXI_LITE_DATA_WIDTH     : integer range 32 to 32    := 32       ;
        C_M_AXI_SG_ADDR_WIDTH       : integer range 32 to 64    := 32
    );
    port (
        
        -- Input Clock  
        axi_aclk                    : in  std_logic                         ;
    
        -- Input Reset (active high)
        axi_reset                   : in  std_logic                         ;

        -- AXI Interface Control
        axi2ip_wrce                 : in  std_logic_vector
                                        (C_NUM_REGISTERS-1 downto 0)        ;
        
        -- AXI Interface Write Data
        axi2ip_wrdata               : in  std_logic_vector
                                        (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);

        -- Composite Interrupt Output
        introut                     : out std_logic                         ;

        -- Composite error Output
        error_out                   : out std_logic                         ;


        -- Soft Reset Set Control
        soft_reset_request          : out std_logic                         ;
    
        -- Soft Reset Clear
        soft_reset_clr              : in  std_logic                         ;

        -- DMA Go Control
        dma_go                      : Out  std_logic                        ;

        -- SG Mode control
        dma_sg_mode                 : Out  std_logic                        ;

        -- Key Hole Read 
        dma_keyhole_read            : Out std_logic                         ;

        -- Key Hole Write 
        dma_keyhole_write           : Out std_logic                         ;
        
        -- Key Hole Write 
        dma_cyclic                  : Out std_logic                         ;
        
        -- CDMASR Idle bit set
        idle_set                    : in  std_logic                         ;
    
        -- CDMASR Idle bit clear
        idle_clr                    : in  std_logic                         ;
        
        -- CDMASR Idle bit clear
        ioc_irq_set                 : in  std_logic                         ;
        
        -- CDMASR Delay Interrupt set
        dly_irq_set                 : in  std_logic                         ;
    
        -- CDMASR Delay Interrupt Counter value   
        irqdelay_status             : in  std_logic_vector(7 downto 0)      ;
     
        -- CDMASR Threshold Interrupt Counter value   
        irqthresh_status            : in  std_logic_vector(7 downto 0)      ;
    
        -- CDMASR Threshold Interrupt Counter value write enable   
        irqthresh_wren              : out std_logic                         ;
    
        -- CDMASR Delay Interrupt Counter value write enable   
        irqdelay_wren               : out std_logic                         ;

     
     
     
        -- Composite DataMover Internal Error flag
        dma_interr_set              : in  std_logic                         ;
    
        -- Composite DataMover Slave Error flag
        dma_slverr_set              : in  std_logic                         ;
    
        -- Composite DataMover Decode Error flag
        dma_decerr_set              : in  std_logic                         ;

  
  
  
        -- SG Descriptor Fetch internal error flag
        ftch_interr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch slave error flag
        ftch_slverr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch decode error flag
        ftch_decerr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch error address
        ftch_error_addr             : in  std_logic_vector
                                        
                                        
                                        (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;
        
        -- SG Descriptor Update internal error flag
        updt_interr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch slave error flag
        updt_slverr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch decode error flag
        updt_decerr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch error address
        updt_error_addr             : in  std_logic_vector
                                        (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;
        
        -- SG CURDESC Update (in from SG)
        update_curdesc              : in  std_logic                         ;
        
        
        -- SG CURDESC Update address value
        new_curdesc                 : in  std_logic_vector
                                        (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;

        -- Tailpointer Register Updated flag
        tailpntr_updated            : out std_logic                         ;
    
        -- Current Descriptor Register Updated flag
        currdesc_updated            : out std_logic                         ;

        
        
        -- CDMA Control Register value
        dmacr                       : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Status Register value
        dmasr                       : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Current Descriptor Register LS value
        curdesc_lsb                 : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Current Descriptor Register MS value
        curdesc_msb                 : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Tailpointer Register LS value
        taildesc_lsb                : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Tailpointer Register MS value
        taildesc_msb                : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
        
        -- CDMA Source Address Register LS value
        src_addr_lsb                : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
        
        -- CDMA Source Address Register MS value
        src_addr_msb                : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
        
        -- CDMA destination Register LS value
        dest_addr_lsb               : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
        
        -- CDMA destination Register MS value
        dest_addr_msb               : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA BTT Register value
        btt                         : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0)
    );
end axi_cdma_register;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_register is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------
constant DMACR_INDEX          : integer := 0;           -- DMACR Register index
constant DMASR_INDEX          : integer := 1;           -- DMASR Register index
constant CURDESC_LSB_INDEX    : integer := 2;           -- CURDESC LSB Reg index
constant CURDESC_MSB_INDEX    : integer := 3;           -- CURDESC MSB Reg index
constant TAILDESC_LSB_INDEX   : integer := 4;           -- TAILDESC LSB Reg index
constant TAILDESC_MSB_INDEX   : integer := 5;           -- TAILDESC MSB Reg index
constant SA_LSB_INDEX         : integer := 6;           -- SA LSB Reg index
constant SA_MSB_INDEX         : integer := 7;           -- SA MSB Reg index
constant DA_LSB_INDEX         : integer := 8;           -- DA LSB Reg index
constant DA_MSB_INDEX         : integer := 9;           -- DA MSB Reg index
constant BTT_INDEX            : integer := 10;          -- BTT Reg index
constant BTT_WIDTH            : integer := 23;          -- BTT Field width
constant BTT_RSVD_WIDTH       : integer := C_S_AXI_LITE_DATA_WIDTH -
                                           BTT_WIDTH;   -- BTT Reserved field width

constant BTT_RESERVED_BITS    : std_logic_vector(BTT_RSVD_WIDTH-1 downto 0) :=
                                (others => '0');        -- Set the reserved value

constant ZERO_VALUE           : std_logic_vector(31 downto 0) := (others => '0');

Constant SIMPLE_DISABLE       : boolean := (C_CDMA_BUILD_MODE = 0);
                                                        -- 0 = Simple mode only
                                                        -- Used to reset registers not
                                                        -- used in Simple DMA only mode

Constant ALWAYS_DISABLE       : boolean := TRUE;        -- Used to disable

Constant DMACR_THRESH_WIDTH : integer := 8;

Constant THRESH_DEFAULT : std_logic_vector(DMACR_IRQTHRESH_MSB_BIT downto
                                           DMACR_IRQTHRESH_LSB_BIT) :=
                                           STD_LOGIC_VECTOR(
                                           TO_UNSIGNED(C_CDMA_BUILD_MODE,
                                                       DMACR_THRESH_WIDTH));







-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------
signal dmacr_i              : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal dmasr_i              : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal curdesc_lsb_i        : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal curdesc_msb_i        : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal taildesc_lsb_i       : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal taildesc_msb_i       : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');

-- DMASR Signals
signal idle                 : std_logic := '0';
signal sig_composite_error  : std_logic := '0';
signal dma_interr           : std_logic := '0';
signal dma_slverr           : std_logic := '0';
signal dma_decerr           : std_logic := '0';
signal sg_interr            : std_logic := '0';
signal sg_slverr            : std_logic := '0';
signal sg_decerr            : std_logic := '0';
signal ioc_irq              : std_logic := '0';
signal dly_irq              : std_logic := '0';
signal error_d1             : std_logic := '0';
signal error_re             : std_logic := '0';
signal err_irq              : std_logic := '0';

signal tailpntr_updated_d1, tailpntr_updated_d2 : std_logic; 

signal sig_sg_included      : std_logic := '0';
signal sg_ftch_error        : std_logic := '0';
signal sg_updt_error        : std_logic := '0';
signal error_pointer_set    : std_logic := '0';
signal different_delay      : std_logic := '0';
signal different_thresh     : std_logic := '0';
signal threshold_is_zero    : std_logic := '0';
signal sig_irqdelay_status  : std_logic_vector(7 downto 0) := (others => '0');
signal sig_irqthresh_status : std_logic_vector(7 downto 0) := (others => '0');

signal sig_sa_register_lsb  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_sa_register_msb  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_da_register_lsb  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_da_register_msb  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_btt_register     : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_dma_go           : std_logic := '0';
signal sig_dma_go_set       : std_logic := '0';
signal sig_dma_go_clr       : std_logic := '0';
signal sig_dma_sg_mode      : std_logic := '0';
signal sig_dly_irqen_masked : std_logic := '0';
signal sig_dly_irqen_reg    : std_logic := '0';
signal sig_ioc_irqen_reg    : std_logic := '0';
signal sig_err_irqen_reg    : std_logic := '0';

signal sig_dma_khwrite_mode : std_logic;
signal sig_dma_khread_mode : std_logic;
signal sig_dma_cyclic_mode : std_logic;

signal sig_btt_register_del : std_logic;

-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

dmacr                   <= dmacr_i          ;
dmasr                   <= dmasr_i          ;
curdesc_lsb             <= curdesc_lsb_i    ;
curdesc_msb             <= curdesc_msb_i    ;
taildesc_lsb            <= taildesc_lsb_i   ;
taildesc_msb            <= taildesc_msb_i   ;

dma_sg_mode             <= sig_dma_sg_mode  ;
dma_keyhole_write       <= sig_dma_khwrite_mode;
dma_keyhole_read        <= sig_dma_khread_mode;
dma_cyclic        <= sig_dma_cyclic_mode;



---------------------------------------------------------------------------
-- DMA Control Register
---------------------------------------------------------------------------
-- DMACR - Interrupt Delay Value
-------------------------------------------------------------------------------
DMACR_DELAY : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                dmacr_i(DMACR_IRQDELAY_MSB_BIT
                 downto DMACR_IRQDELAY_LSB_BIT) <= (others => '0');
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_IRQDELAY_MSB_BIT
                 downto DMACR_IRQDELAY_LSB_BIT) <= axi2ip_wrdata(DMACR_IRQDELAY_MSB_BIT
                                                          downto DMACR_IRQDELAY_LSB_BIT);
            end if;
        end if;
    end process DMACR_DELAY;

-- If written delay is different than previous value then assert write enable
different_delay <= '1' when dmacr_i(DMACR_IRQDELAY_MSB_BIT downto DMACR_IRQDELAY_LSB_BIT)
                   /= axi2ip_wrdata(DMACR_IRQDELAY_MSB_BIT downto DMACR_IRQDELAY_LSB_BIT)
              else '0';

-- delay value different, drive write of delay value to interrupt controller
NEW_DELAY_WRITE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                irqdelay_wren <= '0';
            -- If AXI Lite write to DMACR and delay different than current
            -- setting then update delay value
            elsif(axi2ip_wrce(DMACR_INDEX) = '1' and different_delay = '1')then
                irqdelay_wren <= '1';
            else
                irqdelay_wren <= '0';
            end if;
        end if;
    end process NEW_DELAY_WRITE;

-------------------------------------------------------------------------------
-- DMACR - Interrupt Threshold Value
-------------------------------------------------------------------------------
threshold_is_zero <= '1' when axi2ip_wrdata(DMACR_IRQTHRESH_MSB_BIT
                                     downto DMACR_IRQTHRESH_LSB_BIT) = ZERO_THRESHOLD
                else '0';

DMACR_THRESH : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                dmacr_i(DMACR_IRQTHRESH_MSB_BIT
                        downto DMACR_IRQTHRESH_LSB_BIT) <= THRESH_DEFAULT;
            -- On AXI Lite write
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then

                -- If value is 0 then set threshold to 1
                if(threshold_is_zero='1')then
                    dmacr_i(DMACR_IRQTHRESH_MSB_BIT
                     downto DMACR_IRQTHRESH_LSB_BIT)    <= ONE_THRESHOLD;

                -- else set threshold to axi lite wrdata value
                else
                    dmacr_i(DMACR_IRQTHRESH_MSB_BIT
                     downto DMACR_IRQTHRESH_LSB_BIT)    <= axi2ip_wrdata(DMACR_IRQTHRESH_MSB_BIT
                                                                  downto DMACR_IRQTHRESH_LSB_BIT);
                end if;
            end if;
        end if;
    end process DMACR_THRESH;

-- If written threshold is different than previous value then assert write enable
different_thresh <= '1' when dmacr_i(DMACR_IRQTHRESH_MSB_BIT downto DMACR_IRQTHRESH_LSB_BIT)
                    /= axi2ip_wrdata(DMACR_IRQTHRESH_MSB_BIT downto DMACR_IRQTHRESH_LSB_BIT)
              else '0';

-- new treshold written therefore drive write of threshold out
NEW_THRESH_WRITE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                irqthresh_wren <= '0';
            -- If AXI Lite write to DMACR and threshold different than current
            -- setting then update threshold value
            elsif(axi2ip_wrce(DMACR_INDEX) = '1' and different_thresh = '1')then
                irqthresh_wren <= '1';
            else
                irqthresh_wren <= '0';
            end if;
        end if;
    end process NEW_THRESH_WRITE;


-------------------------------------------------------------------------------
-- DMACR - Key Hole READ Mode Bit   (Bit 4)
-------------------------------------------------------------------------------
DMAKHR_MODE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1') then 
                dmacr_i(DMACR_KHREAD_BIT)  <= '0';
                dmacr_i(DMACR_CYCLIC_BIT)  <= '0';

            -- If DMACR Write then pass axi lite write bus to DMARC reset bit
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_KHREAD_BIT)  <= axi2ip_wrdata(DMACR_KHREAD_BIT);
                dmacr_i(DMACR_CYCLIC_BIT)  <= axi2ip_wrdata(DMACR_CYCLIC_BIT);
            end if;
        end if;
    end process DMAKHR_MODE;

 
 sig_dma_cyclic_mode <= dmacr_i(DMACR_CYCLIC_BIT);
 sig_dma_khread_mode <= dmacr_i(DMACR_KHREAD_BIT);

-------------------------------------------------------------------------------
-- DMACR - Key Hole WRITE Mode Bit   (Bit 5)
-------------------------------------------------------------------------------
DMAKHW_MODE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1') then 
                dmacr_i(DMACR_KHWRITE_BIT)  <= '0';

            -- If DMACR Write then pass axi lite write bus to DMARC reset bit
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_KHWRITE_BIT)  <= axi2ip_wrdata(DMACR_KHWRITE_BIT);
            end if;
        end if;
    end process DMAKHW_MODE;

 
 sig_dma_khwrite_mode <= dmacr_i(DMACR_KHWRITE_BIT);
   








------------------------------------------------------------
-- If Generate
--
-- Label: GEN_DMACR_SIMPLE
--
-- If Generate Description:
--   Implement the DMA Control Register discrete bits
-- for Simple DMA only build case. The Delay interrupt
-- enable bit is unused and always '0'.
--
------------------------------------------------------------
GEN_DMACR_SIMPLE : if (C_CDMA_BUILD_MODE = 0) generate

  begin

    -------------------------------------------------------------------------------
    -- DMACR - Remainder of DMA Control Register
    -------------------------------------------------------------------------------
    DMACR_REGISTER_SIMPLE : process(axi_aclk)
      begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
          if(axi_reset = '1')then
            dmacr_i(DMACR_IRQTHRESH_LSB_BIT-1
                    downto DMACR_RESERVED7_BIT)   <= (others => '0');

          elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
            dmacr_i(DMACR_IRQTHRESH_LSB_BIT-1
                    downto DMACR_RESERVED7_BIT)   <= 
                    
                    ZERO_VALUE(DMACR_RESERVED15_BIT)   -- bit 15
                  & axi2ip_wrdata(DMACR_ERR_IRQEN_BIT) -- bit 14
                  & '0'                                -- bit 13 (always 0 in Simple only)
                  & axi2ip_wrdata(DMACR_IOC_IRQEN_BIT) -- bit 12
                  & ZERO_VALUE(DMACR_RESERVED11_BIT downto 
                               DMACR_RESERVED7_BIT);-- bits 11 downto 4
          end if;
        end if;
      end process DMACR_REGISTER_SIMPLE;

  end generate GEN_DMACR_SIMPLE;





------------------------------------------------------------
-- If Generate
--
-- Label: GEN_DMACR_SG
--
-- If Generate Description:
--   Implement the DMA Control Register discrete bits
-- for SG Enabled build case. The Delay interrupt
-- enable bit is active when not in Simple Mode.
--
------------------------------------------------------------
GEN_DMACR_SG : if (C_CDMA_BUILD_MODE = 1) generate

  begin

    
    
    dmacr_i(DMACR_RESERVED15_BIT)   <= '0'              ;
    dmacr_i(DMACR_ERR_IRQEN_BIT)    <= sig_err_irqen_reg;                
    dmacr_i(DMACR_DLY_IRQEN_BIT)    <= sig_dly_irqen_reg;                
    dmacr_i(DMACR_IOC_IRQEN_BIT)    <= sig_ioc_irqen_reg;                
     
    dmacr_i(DMACR_RESERVED11_BIT downto 
            DMACR_RESERVED7_BIT )   <= (others => '0')  ;
            
            
    
    -------------------------------------------------------------------------------
    -- DMACR - Delay Interrupt Enable Register bit
    -------------------------------------------------------------------------------
    IMP_DMACR_DLY_IRQEN : process(axi_aclk)
      begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
          if(axi_reset = '1' or
             SIMPLE_DISABLE)then
             
            sig_dly_irqen_reg <= '0';

          elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
          
            sig_dly_irqen_reg <= axi2ip_wrdata(DMACR_DLY_IRQEN_BIT);
            
          end if;
        end if;
      end process IMP_DMACR_DLY_IRQEN;


  
    -------------------------------------------------------------------------------
    -- DMACR - IOC Interrupt Enable Register bit
    -------------------------------------------------------------------------------
    IMP_DMACR_IOC_IRQEN : process(axi_aclk)
      begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
          if(axi_reset = '1') then     
             
            sig_ioc_irqen_reg <= '0';

          elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
          
            sig_ioc_irqen_reg <= axi2ip_wrdata(DMACR_IOC_IRQEN_BIT);
            
          end if;
        end if;
      end process IMP_DMACR_IOC_IRQEN;


  
  
    -------------------------------------------------------------------------------
    -- DMACR - Error Interrupt Enable Register bit
    -------------------------------------------------------------------------------
    IMP_DMACR_ERR_IRQEN : process(axi_aclk)
      begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
          if(axi_reset = '1') then     
             
            sig_err_irqen_reg <= '0';

          elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
          
            sig_err_irqen_reg <= axi2ip_wrdata(DMACR_ERR_IRQEN_BIT);
            
          end if;
        end if;
      end process IMP_DMACR_ERR_IRQEN;


  
  
  
  
  
  
   
  end generate GEN_DMACR_SG;







-------------------------------------------------------------------------------
-- DMACR - Tail Pointer Enable Bit  (Bit 1)
-- Fixed at 0 for simple dma only
-- Fixed at 1 (when SG included) for this release of
-- axi cdma.
-------------------------------------------------------------------------------
dmacr_i(DMACR_TAILPEN_BIT) <= '1'
  when C_CDMA_BUILD_MODE = 1
  else '0';






-------------------------------------------------------------------------------
-- DMACR - Reset Bit  (Bit 2)
-------------------------------------------------------------------------------
DMACR_RESET : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset      = '1' or
               soft_reset_clr = '1')then

                dmacr_i(DMACR_RESET_BIT)  <= '0';

            Elsif (dmacr_i(DMACR_RESET_BIT) = '1') Then

              dmacr_i(DMACR_RESET_BIT)  <= '1'; -- can't clear by write once set


            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_RESET_BIT)  <= axi2ip_wrdata(DMACR_RESET_BIT);

            end if;
        end if;
    end process DMACR_RESET;

soft_reset_request <= dmacr_i(DMACR_RESET_BIT);




-------------------------------------------------------------------------------
-- DMACR - SG Mode Bit   (Bit 3)
-------------------------------------------------------------------------------
DMASG_MODE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                dmacr_i(DMACR_SGMODE_BIT)  <= '0';

            -- If DMACR Write then pass axi lite write bus to DMARC reset bit
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_SGMODE_BIT)  <= axi2ip_wrdata(DMACR_SGMODE_BIT);

            end if;
        end if;
    end process DMASG_MODE;

 
 sig_dma_sg_mode <= dmacr_i(DMACR_SGMODE_BIT);
 


-------------------------------------------------------------------------------
-- DMACR - Run/Stop Bit
-------------------------------------------------------------------------------
-- Run/Stop removed from CDMA
dmacr_i(DMACR_RESERVED0_BIT) <= '0';






---------------------------------------------------------------------------
-- DMA Status Idle bit (BIT 1)
--
-- Set by cdma controller indicating DMA is active (= 0)
-- or stopped (= 1).
---------------------------------------------------------------------------
DMASR_IDLE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1'or
               idle_clr = '1')then
                idle   <= '0';

            elsif(idle_set = '1')then
                idle   <= '1';
            end if;
        end if;
    end process DMASR_IDLE;




---------------------------------------------------------------------------
-- DMA Status SG Included (BIT 3)
---------------------------------------------------------------------------

 -- Set the DMASR.SGIncld bit
sig_sg_included <= '1'
   when C_CDMA_BUILD_MODE = 1
   else '0';





---------------------------------------------------------------------------
-- DMA Status Error bit (BIT 3)
-- Note: any error will cause entire engine to halt
---------------------------------------------------------------------------
sig_composite_error  <=     dma_interr
                         or dma_slverr
                         or dma_decerr
                         or sg_interr
                         or sg_slverr
                         or sg_decerr;

-- Scatter Gather Error
--sg_ftch_error <= ftch_interr_set or ftch_slverr_set or ftch_decerr_set;

-- SG Update Errors or DMA errors assert flag on descriptor update
-- Used to latch current descriptor pointer
--sg_updt_error <= updt_interr_set or updt_slverr_set or updt_decerr_set
--              or dma_interr or dma_slverr or dma_decerr;

-- Map out to halt opposing channel
error_out   <= sig_composite_error;


ERROR_DEL : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
               sg_ftch_error <= '0';
               sg_updt_error <= '0';
            else
               sg_ftch_error <= ftch_interr_set or ftch_slverr_set or ftch_decerr_set;
               sg_updt_error <= updt_interr_set or updt_slverr_set or updt_decerr_set
                                 or dma_interr or dma_slverr or dma_decerr;
            end if;
        end if;
    end process ERROR_DEL;

---------------------------------------------------------------------------
-- DMA Status DMA Internal Error bit (BIT 4)
---------------------------------------------------------------------------
DMASR_DMAINTERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                dma_interr <= '0';
            elsif(dma_interr_set = '1' )then
                dma_interr <= '1';
            end if;
        end if;
    end process DMASR_DMAINTERR;

---------------------------------------------------------------------------
-- DMA Status DMA Slave Error bit (BIT 5)
---------------------------------------------------------------------------
DMASR_DMASLVERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                dma_slverr <= '0';

            elsif(dma_slverr_set = '1' )then
                dma_slverr <= '1';

            end if;
        end if;
    end process DMASR_DMASLVERR;

---------------------------------------------------------------------------
-- DMA Status DMA Decode Error bit (BIT 6)
---------------------------------------------------------------------------
DMASR_DMADECERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                dma_decerr <= '0';

            elsif(dma_decerr_set = '1' )then
                dma_decerr <= '1';

            end if;
        end if;
    end process DMASR_DMADECERR;

---------------------------------------------------------------------------
-- DMA Status SG Internal Error bit (BIT 8)
---------------------------------------------------------------------------
DMASR_SGINTERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                sg_interr <= '0';

            elsif(ftch_interr_set = '1' or updt_interr_set = '1')then
                sg_interr <= '1';


            end if;
        end if;
    end process DMASR_SGINTERR;

---------------------------------------------------------------------------
-- DMA Status SG Slave Error bit (BIT 9)
---------------------------------------------------------------------------
DMASR_SGSLVERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                sg_slverr <= '0';

            elsif(ftch_slverr_set = '1' or updt_slverr_set = '1')then
                sg_slverr <= '1';

            end if;
        end if;
    end process DMASR_SGSLVERR;

---------------------------------------------------------------------------
-- DMA Status SG Decode Error bit (BIT 10)
---------------------------------------------------------------------------
DMASR_SGDECERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                sg_decerr <= '0';

            elsif(ftch_decerr_set = '1' or updt_decerr_set = '1')then
                sg_decerr <= '1';

            end if;
        end if;
    end process DMASR_SGDECERR;

---------------------------------------------------------------------------
-- DMA Status IOC Interrupt status bit (BIT 12)
---------------------------------------------------------------------------
DMASR_IOCIRQ : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                ioc_irq <= '0';

            -- CPU Writing a '1' to clear - OR'ed with setting to prevent
            -- missing a 'set' during the write.
            elsif(axi2ip_wrce(DMASR_INDEX) = '1' )then

                ioc_irq <= (ioc_irq and not(axi2ip_wrdata(DMASR_IOCIRQ_BIT)))
                             or ioc_irq_set;

            elsif(ioc_irq_set = '1')then
                ioc_irq <= '1';

            end if;
        end if;
    end process DMASR_IOCIRQ;

---------------------------------------------------------------------------
-- DMA Status Delay Interrupt status bit (BIT 13)
---------------------------------------------------------------------------
DMASR_DLYIRQ : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset       = '1' or
               sig_dma_sg_mode = '0' or -- clear if in Simple Mode
               SIMPLE_DISABLE)then
                
              dly_irq <= '0';

            -- CPU Writing a '1' to clear - OR'ed with setting to prevent
            -- missing a 'set' during the write.
            elsif(axi2ip_wrce(DMASR_INDEX) = '1' )then

                dly_irq <= (dly_irq and not(axi2ip_wrdata(DMASR_DLYIRQ_BIT)))
                             or dly_irq_set;

            elsif(dly_irq_set = '1')then
                dly_irq <= '1';

            end if;
        end if;
    end process DMASR_DLYIRQ;

---------------------------------------------------------------------------
-- DMA Status Error Interrupt status bit (BIT 14)
---------------------------------------------------------------------------
-- Delay error setting for generation of error strobe
GEN_ERROR_RE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                error_d1 <= '0';
            else
                error_d1 <= sig_composite_error;
            end if;
        end if;
    end process GEN_ERROR_RE;

-- Generate rising edge pulse on error
error_re   <= sig_composite_error and not error_d1;


DMASR_ERRIRQ : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                err_irq <= '0';

            -- CPU Writing a '1' to clear - OR'ed with setting to prevent
            -- missing a 'set' during the write.
            elsif(axi2ip_wrce(DMASR_INDEX) = '1' )then

                err_irq <= (err_irq and not(axi2ip_wrdata(DMASR_ERRIRQ_BIT)))
                             or error_re;

            elsif(error_re = '1')then
                err_irq <= '1';

            end if;
        end if;
    end process DMASR_ERRIRQ;




---------------------------------------------------------------------------
-- DMA Status IRQ Threshold (BIT 23 - 16)
---------------------------------------------------------------------------
sig_irqthresh_status <= (others => '0')
  when SIMPLE_DISABLE
  Else irqthresh_status;



---------------------------------------------------------------------------
-- DMA Status IRQ Delay (BIT 31 - 24)
---------------------------------------------------------------------------
sig_irqdelay_status <= (others => '0')
  when SIMPLE_DISABLE
  Else irqdelay_status;



---------------------------------------------------------------------------
-- DMA Interrupt OUT
---------------------------------------------------------------------------
REG_INTR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                introut <= '0';
            else
                introut <= (dly_irq and dmacr_i(DMACR_DLY_IRQEN_BIT))
                        or (ioc_irq and dmacr_i(DMACR_IOC_IRQEN_BIT))
                        or (err_irq and dmacr_i(DMACR_ERR_IRQEN_BIT));
            end if;
        end if;
    end process;


---------------------------------------------------------------------------
-- DMA Status Register
---------------------------------------------------------------------------
dmasr_i           <=  sig_irqdelay_status  -- Bits 31 downto 24
                    & sig_irqthresh_status -- Bits 23 downto 16
                    & '0'                  -- Bit  15
                    & err_irq              -- Bit  14
                    & dly_irq              -- Bit  13
                    & ioc_irq              -- Bit  12
                    & '0'                  -- Bit  11
                    & sg_decerr            -- Bit  10
                    & sg_slverr            -- Bit  9
                    & sg_interr            -- Bit  8
                    & '0'                  -- Bit  7
                    & dma_decerr           -- Bit  6
                    & dma_slverr           -- Bit  5
                    & dma_interr           -- Bit  4
                    & sig_sg_included      -- Bit  3
                    & '0'                  -- Bit  2
                    & idle                 -- Bit  1
                    & '0';                 -- Bit  0

---------------------------------------------------------------------------
-- Current Descriptor LSB Register
---------------------------------------------------------------------------
CURDESC_LSB_REGISTER : process(axi_aclk)
    begin
      if(axi_aclk'EVENT and axi_aclk = '1')then
        if(axi_reset       = '1' or
           sig_dma_sg_mode = '0' or
           SIMPLE_DISABLE)then
            
            curdesc_lsb_i      <= (others => '0');
            error_pointer_set  <= '0';
            currdesc_updated   <= '0';

        -- Detected error has NOT register a desc pointer
        elsif(error_pointer_set = '0')then

          -- Scatter Gather Fetch Error
          if(sg_ftch_error = '1' or sg_updt_error = '1')then
              
              curdesc_lsb_i       <= ftch_error_addr(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
              error_pointer_set   <= '1';
              currdesc_updated    <= '0';

          -- Scatter Gather Update Error
     --     elsif(sg_updt_error = '1')then
              
     --         curdesc_lsb_i       <= updt_error_addr(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
     --         error_pointer_set   <= '1';
     --         currdesc_updated    <= '0';

          -- Commanded to update descriptor value - used for indicating
          -- current descriptor begin processed by dma controller
          elsif(update_curdesc = '1')then
              
              curdesc_lsb_i       <= new_curdesc(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
              error_pointer_set   <= '0';
              currdesc_updated    <= '0';

          -- CPU update of current descriptor pointer.  CPU
          -- only allowed to update when engine is halted.
          elsif(axi2ip_wrce(CURDESC_LSB_INDEX) = '1' and dmasr_i(DMASR_IDLE_BIT) = '1')then
              curdesc_lsb_i       <= axi2ip_wrdata(CURDESC_LOWER_MSB_BIT
                                            downto CURDESC_LOWER_LSB_BIT)
                                    & ZERO_VALUE(CURDESC_RESERVED_BIT5
                                            downto CURDESC_RESERVED_BIT0);
              error_pointer_set   <= '0';
              currdesc_updated    <= '1';

          else
              
              currdesc_updated    <= '0';
          
          end if;
        end if;
      end if;
    end process CURDESC_LSB_REGISTER;

---------------------------------------------------------------------------
-- Tail Descriptor LSB Register
---------------------------------------------------------------------------
TAILDESC_LSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset       = '1' or
               sig_dma_sg_mode = '0' or
               SIMPLE_DISABLE)then
                taildesc_lsb_i  <= (others => '0');
            elsif(axi2ip_wrce(TAILDESC_LSB_INDEX) = '1')then
                taildesc_lsb_i  <= axi2ip_wrdata(TAILDESC_LOWER_MSB_BIT
                                          downto TAILDESC_LOWER_LSB_BIT)
                                   & ZERO_VALUE(TAILDESC_RESERVED_BIT5
                                          downto TAILDESC_RESERVED_BIT0);

            end if;
        end if;
    end process TAILDESC_LSB_REGISTER;

---------------------------------------------------------------------------
-- Current Descriptor MSB Register
---------------------------------------------------------------------------
-- Scatter Gather Interface configured for 64-Bit SG Addresses
GEN_SG_ADDR_EQL64 :if C_M_AXI_SG_ADDR_WIDTH = 64 generate
begin

SA_MSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                sig_sa_register_msb  <= (others => '0');
            elsif(axi2ip_wrce(SA_MSB_INDEX) = '1')then
                sig_sa_register_msb  <= axi2ip_wrdata;
            end if;
        end if;
    end process SA_MSB_REGISTER;

src_addr_msb  <= sig_sa_register_msb;


DA_MSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                sig_da_register_msb  <= (others => '0');
            elsif(axi2ip_wrce(DA_MSB_INDEX) = '1')then
                sig_da_register_msb  <= axi2ip_wrdata;
            end if;
        end if;
    end process DA_MSB_REGISTER;

dest_addr_msb <= sig_da_register_msb;


    CURDESC_MSB_REGISTER : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset       = '1' or
                   sig_dma_sg_mode = '0' or
                   SIMPLE_DISABLE)then
                    curdesc_msb_i  <= (others => '0');

                elsif(error_pointer_set = '0')then
                    -- Scatter Gather Fetch Error
                    if(sg_ftch_error = '1' or sg_updt_error = '1')then
                        curdesc_msb_i   <= ftch_error_addr(C_M_AXI_SG_ADDR_WIDTH-1 downto C_S_AXI_LITE_DATA_WIDTH);

                    -- Scatter Gather Update Error
             --       elsif(sg_updt_error = '1')then
             --           curdesc_msb_i   <= updt_error_addr((C_M_AXI_SG_ADDR_WIDTH
             --                               - C_S_AXI_LITE_DATA_WIDTH)-1
             --                               downto 0);

                    -- Commanded to update descriptor value - used for indicating
                    -- current descriptor begin processed by dma controller
                    elsif(update_curdesc = '1')then
                        curdesc_msb_i <= new_curdesc (C_M_AXI_SG_ADDR_WIDTH-1 downto C_S_AXI_LITE_DATA_WIDTH);

                    -- CPU update of current descriptor pointer.  CPU
                    -- only allowed to update when engine is halted.
                    elsif(axi2ip_wrce(CURDESC_MSB_INDEX) = '1' and dmasr_i(DMASR_IDLE_BIT) = '1')then
                        curdesc_msb_i  <= axi2ip_wrdata;

                    end if;
                end if;
            end if;
        end process CURDESC_MSB_REGISTER;

    ---------------------------------------------------------------------------
    -- Tail Descriptor MSB Register
    ---------------------------------------------------------------------------
    TAILDESC_MSB_REGISTER : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset       = '1' or
                   sig_dma_sg_mode = '0' or
                   SIMPLE_DISABLE)then
                    taildesc_msb_i  <= (others => '0');
                elsif(axi2ip_wrce(TAILDESC_MSB_INDEX) = '1')then
                    taildesc_msb_i  <= axi2ip_wrdata;
                end if;
            end if;
        end process TAILDESC_MSB_REGISTER;

    end generate GEN_SG_ADDR_EQL64;

-- Scatter Gather Interface configured for 32-Bit SG Addresses
GEN_SG_ADDR_EQL32 : if C_M_AXI_SG_ADDR_WIDTH = 32 generate
begin
    curdesc_msb_i  <= (others => '0');
    taildesc_msb_i <= (others => '0');
sig_sa_register_msb <= (others => '0');
src_addr_msb        <= sig_sa_register_msb;
sig_da_register_msb <= (others => '0');
dest_addr_msb       <= sig_da_register_msb;
end generate GEN_SG_ADDR_EQL32;


-- Scatter Gather Interface configured for 32-Bit SG Addresses
GEN_TAILUPDATE_EQL32 : if C_M_AXI_SG_ADDR_WIDTH = 32 generate
begin
    TAILPNTR_UPDT_PROCESS : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset = '1' or
                   SIMPLE_DISABLE)then
                    tailpntr_updated_d1    <= '0';
                elsif(axi2ip_wrce(TAILDESC_LSB_INDEX) = '1')then
                    tailpntr_updated_d1    <= '1';
                else
                    tailpntr_updated_d1    <= '0';
                end if;
            end if;
        end process TAILPNTR_UPDT_PROCESS;


end generate GEN_TAILUPDATE_EQL32;

-- Scatter Gather Interface configured for 64-Bit SG Addresses
GEN_TAILUPDATE_EQL64 : if C_M_AXI_SG_ADDR_WIDTH = 64 generate
begin
    TAILPNTR_UPDT_PROCESS : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset = '1' or
                   SIMPLE_DISABLE)then
                    tailpntr_updated_d1    <= '0';
                elsif(axi2ip_wrce(TAILDESC_MSB_INDEX) = '1')then
                    tailpntr_updated_d1    <= '1';
                else
                    tailpntr_updated_d1    <= '0';
                end if;
            end if;
        end process TAILPNTR_UPDT_PROCESS;

end generate GEN_TAILUPDATE_EQL64;



    TAILPNTR_UPDT_PROCESS11 : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset = '1' or
                   SIMPLE_DISABLE)then
                    tailpntr_updated_d2    <= '0';
                else
                    tailpntr_updated_d2    <= tailpntr_updated_d1;
                end if;
            end if;
        end process TAILPNTR_UPDT_PROCESS11;



tailpntr_updated <= tailpntr_updated_d1 and (not tailpntr_updated_d2);



---------------------------------------------------------------------------
-- Simple DMA Source Address (SA) LSB Register
---------------------------------------------------------------------------
SA_LSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                sig_sa_register_lsb  <= (others => '0');
            elsif(axi2ip_wrce(SA_LSB_INDEX) = '1')then
                sig_sa_register_lsb  <= axi2ip_wrdata;
            end if;
        end if;
    end process SA_LSB_REGISTER;

src_addr_lsb  <= sig_sa_register_lsb;


---------------------------------------------------------------------------
-- Simple DMA Source Address (SA) MSB Register
---------------------------------------------------------------------------




---------------------------------------------------------------------------
-- Simple DMA Destination Address (DA) LSB Register
---------------------------------------------------------------------------
DA_LSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                sig_da_register_lsb  <= (others => '0');
            elsif(axi2ip_wrce(DA_LSB_INDEX) = '1')then
                sig_da_register_lsb  <= axi2ip_wrdata;
            end if;
        end if;
    end process DA_LSB_REGISTER;

dest_addr_lsb <= sig_da_register_lsb;


---------------------------------------------------------------------------
-- Simple DMA Destination Address (DA) MSB Register
---------------------------------------------------------------------------



---------------------------------------------------------------------------
-- Simple DMA Bytes to Transfer (BTT) Register
---------------------------------------------------------------------------
BTT_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then

                sig_btt_register  <= (others => '0');


            elsif(axi2ip_wrce(BTT_INDEX) = '1')then

                sig_btt_register(BTT_WIDTH-1 downto 0)  <=
                axi2ip_wrdata(BTT_WIDTH-1 downto 0);


            end if;
        end if;
    end process BTT_REGISTER;


PULSE_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then

                sig_btt_register_del  <= '0';

            else

                sig_btt_register_del  <= axi2ip_wrce(BTT_INDEX);

            end if;
        end if;
    end process PULSE_REGISTER;


--sig_dma_go_set  <= axi2ip_wrce(BTT_INDEX);
sig_dma_go_set  <= axi2ip_wrce(BTT_INDEX) and (not sig_btt_register_del);

btt <= BTT_RESERVED_BITS &
       sig_btt_register(BTT_WIDTH-1 downto 0);








---------------------------------------------------------------------------
-- Simple DMA GO Control
---------------------------------------------------------------------------
IMP_DMA_GO_REG : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset      = '1' or
               sig_dma_go_clr = '1')then

                sig_dma_go <= '0';

            elsif(sig_dma_go_set = '1')then

                sig_dma_go <= '1';

            end if;
        end if;
    end process IMP_DMA_GO_REG;


sig_dma_go_clr  <= idle_clr   ; -- Clear the GO when IDLE is cleared

dma_go          <=  sig_dma_go; -- assign the dma_go output










end implementation;
