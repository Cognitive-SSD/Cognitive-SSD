-------------------------------------------------------------------------------
-- axi_cdma_pkg
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
-- Filename:          axi_cdma_pkg.vhd
-- Description: This package contains various constants and functions for
--              AXI DMA operations.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.clog2;

package axi_cdma_pkg is

-------------------------------------------------------------------------------
-- Function declarations
-------------------------------------------------------------------------------
-- Find minimum required btt width
function required_btt_width1 (dwidth,
                             burst_size,
                             btt_width : integer)
            return  integer;

-------------------------------------------------------------------------------
-- Constant Declarations
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- AXI Responce Values
-------------------------------------------------------------------------------
constant OKAY_RESP                  : std_logic_vector(1 downto 0)  := "00";
constant EXOKAY_RESP                : std_logic_vector(1 downto 0)  := "01";
constant SLVERR_RESP                : std_logic_vector(1 downto 0)  := "10";
constant DECERR_RESP                : std_logic_vector(1 downto 0)  := "11";

-------------------------------------------------------------------------------
-- Misc Constants
-------------------------------------------------------------------------------
constant NUM_REG_TOTAL              : integer := 18;
constant NUM_REG_PER_CHANNEL        : integer := 6;
constant REG_MSB_ADDR_BIT           : integer := clog2(NUM_REG_TOTAL)-1;
--constant CMD_BASE_WIDTH             : integer := 40;
constant CMD_BASE_WIDTH             : integer := 104;
constant BUFFER_LENGTH_WIDTH        : integer := 23;

-- Constants Used in Desc Updates
constant DESC_STS_TYPE              : std_logic := '1';
constant DESC_DATA_TYPE             : std_logic := '0';
constant DESC_LAST                  : std_logic := '1';
constant DESC_NOT_LAST              : std_logic := '0';

-- Interrupt Coalescing
constant ZERO_THRESHOLD             : std_logic_vector(7 downto 0) := (others => '0');
constant ONE_THRESHOLD              : std_logic_vector(7 downto 0) := "00000001";
constant ZERO_DELAY                 : std_logic_vector(7 downto 0) := (others => '0');

constant MTBF_STAGES                : integer := 4;


-------------------------------------------------------------------------------
-- Register Bit Constants
-------------------------------------------------------------------------------
-- DMACR
constant DMACR_RESERVED0_BIT        : integer := 0;
constant DMACR_TAILPEN_BIT          : integer := 1;
constant DMACR_RESET_BIT            : integer := 2;
constant DMACR_SGMODE_BIT           : integer := 3;
constant DMACR_KHREAD_BIT           : integer := 4;
constant DMACR_KHWRITE_BIT           : integer := 5;
--constant DMACR_RESERVED4_BIT        : integer := 4;
--constant DMACR_RESERVED5_BIT        : integer := 5;
constant DMACR_CYCLIC_BIT        : integer := 6;
constant DMACR_RESERVED7_BIT        : integer := 7;
constant DMACR_RESERVED8_BIT        : integer := 8;
constant DMACR_RESERVED9_BIT        : integer := 9;
constant DMACR_RESERVED10_BIT       : integer := 10;
constant DMACR_RESERVED11_BIT       : integer := 11;
constant DMACR_IOC_IRQEN_BIT        : integer := 12;
constant DMACR_DLY_IRQEN_BIT        : integer := 13;
constant DMACR_ERR_IRQEN_BIT        : integer := 14;
constant DMACR_RESERVED15_BIT       : integer := 15;
constant DMACR_IRQTHRESH_LSB_BIT    : integer := 16;
constant DMACR_IRQTHRESH_MSB_BIT    : integer := 23;
constant DMACR_IRQDELAY_LSB_BIT     : integer := 24;
constant DMACR_IRQDELAY_MSB_BIT     : integer := 31;

-- DMASR
constant DMASR_HALTED_BIT           : integer := 0;
constant DMASR_IDLE_BIT             : integer := 1;
constant DMASR_CMPLT_BIT            : integer := 2;
constant DMASR_ERROR_BIT            : integer := 3;
constant DMASR_DMAINTERR_BIT        : integer := 4;
constant DMASR_DMASLVERR_BIT        : integer := 5;
constant DMASR_DMADECERR_BIT        : integer := 6;
constant DMASR_RESERVED7_BIT        : integer := 7;
constant DMASR_SGINTERR_BIT         : integer := 8;
constant DMASR_SGSLVERR_BIT         : integer := 9;
constant DMASR_SGDECERR_BIT         : integer := 10;
constant DMASR_RESERVED11_BIT       : integer := 11;
constant DMASR_IOCIRQ_BIT           : integer := 12;
constant DMASR_DLYIRQ_BIT           : integer := 13;
constant DMASR_ERRIRQ_BIT           : integer := 14;
constant DMASR_RESERVED15_BIT       : integer := 15;
constant DMASR_IRQTHRESH_LSB_BIT    : integer := 16;
constant DMASR_IRQTHRESH_MSB_BIT    : integer := 23;
constant DMASR_IRQDELAY_LSB_BIT     : integer := 24;
constant DMASR_IRQDELAY_MSB_BIT     : integer := 31;

-- CURDESC
constant CURDESC_LOWER_MSB_BIT      : integer := 31;
constant CURDESC_LOWER_LSB_BIT      : integer := 6;
constant CURDESC_RESERVED_BIT5      : integer := 5;
constant CURDESC_RESERVED_BIT4      : integer := 4;
constant CURDESC_RESERVED_BIT3      : integer := 3;
constant CURDESC_RESERVED_BIT2      : integer := 2;
constant CURDESC_RESERVED_BIT1      : integer := 1;
constant CURDESC_RESERVED_BIT0      : integer := 0;

-- TAILDESC
constant TAILDESC_LOWER_MSB_BIT     : integer := 31;
constant TAILDESC_LOWER_LSB_BIT     : integer := 6;
constant TAILDESC_RESERVED_BIT5     : integer := 5;
constant TAILDESC_RESERVED_BIT4     : integer := 4;
constant TAILDESC_RESERVED_BIT3     : integer := 3;
constant TAILDESC_RESERVED_BIT2     : integer := 2;
constant TAILDESC_RESERVED_BIT1     : integer := 1;
constant TAILDESC_RESERVED_BIT0     : integer := 0;

 
-- BTT
constant BTT_MSB_BIT                : integer := 22;
 
 
 
 
 
-- DataMover Command / Status Constants
constant DATAMOVER_CMDDONE_BIT      : integer := 7;
constant DATAMOVER_SLVERR_BIT       : integer := 6;
constant DATAMOVER_DECERR_BIT       : integer := 5;
constant DATAMOVER_INTERR_BIT       : integer := 4;
constant DATAMOVER_TAGMSB_BIT       : integer := 3;
constant DATAMOVER_TAGLSB_BIT       : integer := 0;

-- Descriptor Control Bits
constant DESC_BLENGTH_LSB_BIT       : integer := 0;
constant DESC_BLENGTH_MSB_BIT       : integer := 22;
constant DESC_RSVD23_BIT            : integer := 23;
constant DESC_RSVD24_BIT            : integer := 24;
constant DESC_RSVD25_BIT            : integer := 25;
constant DESC_EOF_BIT               : integer := 26;
constant DESC_SOF_BIT               : integer := 27;
constant DESC_RSVD28_BIT            : integer := 28;
constant DESC_RSVD29_BIT            : integer := 29;
constant DESC_RSVD30_BIT            : integer := 30;
constant DESC_IOC_BIT               : integer := 31;

-- Descriptor Status Bits
constant DESC_STS_CMPLTD_BIT        : integer := 31;
constant DESC_STS_DECERR_BIT        : integer := 30;
constant DESC_STS_SLVERR_BIT        : integer := 29;
constant DESC_STS_INTERR_BIT        : integer := 28;
constant DESC_STS_RXSOF_BIT         : integer := 27;
constant DESC_STS_RXEOF_BIT         : integer := 26;
constant DESC_STS_RSVD25_BIT        : integer := 25;
constant DESC_STS_RSVD24_BIT        : integer := 24;
constant DESC_STS_RSVD23_BIT        : integer := 23;
constant DESC_STS_XFRDBYTS_MSB_BIT  : integer := 22;
constant DESC_STS_XFRDBYTS_LSB_BIT  : integer := 0;


-- DataMover Command / Status Constants
constant DATAMOVER_STS_CMDDONE_BIT  : integer := 7;
constant DATAMOVER_STS_SLVERR_BIT   : integer := 6;
constant DATAMOVER_STS_DECERR_BIT   : integer := 5;
constant DATAMOVER_STS_INTERR_BIT   : integer := 4;
constant DATAMOVER_STS_TAGMSB_BIT   : integer := 3;
constant DATAMOVER_STS_TAGLSB_BIT   : integer := 0;

constant DATAMOVER_STS_TAGEOF_BIT   : integer := 1;
constant DATAMOVER_STS_TLAST_BIT    : integer := 31;

constant DATAMOVER_CMD_BTTLSB_BIT   : integer := 0;
constant DATAMOVER_CMD_BTTMSB_BIT   : integer := 22;
constant DATAMOVER_CMD_TYPE_BIT     : integer := 23;
constant DATAMOVER_CMD_DSALSB_BIT   : integer := 24;
constant DATAMOVER_CMD_DSAMSB_BIT   : integer := 29;
constant DATAMOVER_CMD_EOF_BIT      : integer := 30;
constant DATAMOVER_CMD_DRR_BIT      : integer := 31;
constant DATAMOVER_CMD_ADDRLSB_BIT  : integer := 32;

-- Note: Bit offset require adding ADDR WIDTH to get to actual bit index
constant DATAMOVER_CMD_ADDRMSB_BOFST: integer := 31;
constant DATAMOVER_CMD_TAGLSB_BOFST : integer := 32;
constant DATAMOVER_CMD_TAGMSB_BOFST : integer := 35;
constant DATAMOVER_CMD_RSVLSB_BOFST : integer := 36;
constant DATAMOVER_CMD_RSVMSB_BOFST : integer := 39;


end axi_cdma_pkg;

-------------------------------------------------------------------------------
-- PACKAGE BODY
-------------------------------------------------------------------------------
package body axi_cdma_pkg is



-------------------------------------------------------------------------------
-- Function to determine minimum bits required for BTT_SIZE field
-------------------------------------------------------------------------------
function required_btt_width1 ( dwidth,
                              burst_size,
                              btt_width : integer)
    return integer  is
variable min_width : integer;

begin
    min_width := clog2((dwidth/8)*burst_size)+1;
    if(min_width > btt_width)then
        return min_width;
    else
        return btt_width;
    end if;
end function required_btt_width1;



end package body axi_cdma_pkg;
