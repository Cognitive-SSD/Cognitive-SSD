  -------------------------------------------------------------------------------
  -- axi_cdma_sf.vhd
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
  -- Filename:        axi_cdma_sf.vhd
  --
  -- Description:     
  --    This file implements the AXI CDMA store and Forward module. 
  --  The design utilizes the AXI DataMover's new address pipelining
  --  control interfaces. The design is such that predictive address  
  --  pipelining can be supported on the AXI Read Bus without over-commiting 
  --  the internal Data FIFO and potentially throttling the Read Data Channel 
  --  if the Data FIFO goes full. On the AXI Write side, the Write Master is
  --  only allowed to post AXI WRite Requests if the associated write data needed
  --  to complete the Write Data transfer is present in the Data FIFO. In 
  --  addition, the Write side logic is such that Write transfer requests can 
  --  be pipelined to the AXI bus based on the Data FIFO contents but ahead of
  --  the actual Write Data transfers.
  -- 
  --                  
  -- VHDL-Standard:   VHDL'93
  -------------------------------------------------------------------------------
  -------------------------------------------------------------------------------
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;
  
  library lib_pkg_v1_0_2;
  use lib_pkg_v1_0_2.lib_pkg.all;
  use lib_pkg_v1_0_2.lib_pkg.clog2;
  library lib_srl_fifo_v1_0_2;
  use lib_srl_fifo_v1_0_2.srl_fifo_f;
  
 

  library axi_cdma_v4_1_9;
  use axi_cdma_v4_1_9.axi_cdma_sfifo_autord;

  
  -------------------------------------------------------------------------------
  
  entity axi_cdma_sf is
    generic (
      
      C_WR_ADDR_PIPE_DEPTH   : Integer range 1 to 30 := 4;
        -- This parameter indicates the depth of the DataMover
        -- write address pipelining queues for the Main data transport
        -- channels. The effective address pipelining on the AXI4 
        -- Write Address Channel will be the value assigned plus 2. 
      
      C_SF_FIFO_DEPTH        : Integer range 128 to 8192 := 512;
        -- Sets the desired depth of the internal Data FIFO.
      
      C_MAX_BURST_LEN        : Integer range  2 to  256 :=  16;
        -- Indicates the max burst length being used by the external
        -- AXI4 Master for each AXI4 transfer request.
        
      C_DRE_IS_USED          : Integer range   0 to    1 :=   0;
        -- Indicates if the external Master is utilizing a DRE on
        -- the stream input to this module.
         
      C_STREAM_DWIDTH        : Integer range   8 to  1024 :=  32;
        -- Sets the Stream Data Width for the Input and Output
        -- Data streams.
        
      C_FAMILY               : String  := "virtex7"
        -- Indicates the target FPGA Family.
      
      );
    port (
      
      -- Clock input
      aclk                    : in  std_logic;
         -- Primary synchronization clock for the Master side
         -- interface and internal logic. It is also used 
         -- for the User interface synchronization when 
         -- C_STSCMD_IS_ASYNC = 0.
  
      -- Reset input
      reset                   : in  std_logic;
         -- Reset used for the internal syncronization logic
      
    
    
     -- DataMover Read Side Address Pipelining Control Interface ---------------
     
      ok_to_post_rd_addr      : Out  Std_logic;
        -- Indicates that the transfer token pool has at least
        -- one token available to borrow
                               
      rd_addr_posted          : In std_logic;
        -- Indication that a read address has been posted to AXI4
                            
      rd_xfer_cmplt           : In std_logic;
        -- Indicates that the Datamover has completed a Read Data
        -- transfer on the AXI4   
      
      
       
        
     -- Read Side Stream In from DataMover MM2S -----------------------------------
     
      sf2sin_tready           : Out  Std_logic;
        -- DRE  Stream READY input
                               
      sin2sf_tvalid           : In  std_logic;
        -- DRE Stream VALID Output
               
      sin2sf_tdata            : In  std_logic_vector(C_STREAM_DWIDTH-1 downto 0);         
        -- DRE  Stream DATA input
               
      sin2sf_tkeep            : In std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);         
        -- DRE  Stream STRB input
               
      sin2sf_tlast            : In std_logic;     
        -- DRE  Xfer LAST input


               
                
     -- DataMover Write Side Address Pipelining Control Interface --------------
      
      ok_to_post_wr_addr      : Out  Std_logic;
        -- Indicates that the internal FIFO has enough data 
        -- physically present to supply one more max length 
        -- burst transfer or a completion burst 
        -- (tlast asserted)
 
      wr_addr_posted          : In std_logic;
        -- Indication that a write address has been posted to AXI4
                            
      
      wr_xfer_cmplt           : In  Std_logic;
        -- Indicates that the Datamover has completed a Write Data
        -- transfer on the AXI4   


      wr_ld_nxt_len           : in  std_logic;
        -- Active high pulse indicating a new transfer LEN qualifier
        -- has been queued to the DataMover Write Data Controller 

      wr_len                  : in  std_logic_vector(7 downto 0);
        -- The actual LEN qualifier value that has been queued to the
        -- DataMover Write Data Controller 


         
      
     -- Write Side Stream Out to DataMover S2MM -------------------------------
     
      sout2sf_tready          : In  std_logic;
        -- Write READY input from the Stream Master
     
      sf2sout_tvalid          : Out  std_logic;
        -- Write VALID output to the Stream Master
     
      sf2sout_tdata           : Out  std_logic_vector(C_STREAM_DWIDTH-1 downto 0);
        -- Write DATA output to the Stream Master
     
      sf2sout_tkeep           : Out  std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
        -- Write DATA output to the Stream Master
     
      sf2sout_tlast           : Out  std_logic
        -- Write LAST output to the Stream Master
     
 
      );
  
  end entity axi_cdma_sf;
  
  
  architecture implementation of axi_cdma_sf is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

  
    
    
    -- Functions ---------------------------------------------------------------------------
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_dbcntr_width
    --
    -- Function Description:
    --   simple function to set the width of the burst counter
    -- based on the parameterized max burst length.
    --
    -------------------------------------------------------------------
    function funct_get_dbcntr_width (max_burst_length : integer) 
             return integer is
    
      Variable temp_width : integer := 0;
    
    begin
    
      case max_burst_length is
        
        when 2 =>
          temp_width := 1;
        
        when 4 =>
          temp_width := 2;
        
        when 8 =>
          temp_width := 3;
        
        when 16 =>
          temp_width := 4;
        
        when 32 =>
          temp_width := 5;
        
        when 64 =>
          temp_width := 6;
        
        when 128 =>
          temp_width := 7;
        
        when others => -- 256 beats
          temp_width := 8;
      
      end case;
      
      
      Return (temp_width);
     
    end function funct_get_dbcntr_width;
    
    
      
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_pwr2_depth
    --
    -- Function Description:
    --  Rounds up to the next power of 2 depth value in an input
    --  range of 1 to 8192
    --
    -------------------------------------------------------------------
    function funct_get_pwr2_depth (min_depth : integer) return integer is
     
      Variable var_temp_depth : Integer := 16;
     
    begin
       
      
      if (min_depth = 1) then
      
         var_temp_depth := 1;
      
      elsif (min_depth  = 2) then
      
         var_temp_depth := 2;
      
      elsif (min_depth  <= 4) then
      
         var_temp_depth := 4;
      
      elsif (min_depth  <= 8) then
      
         var_temp_depth := 8;
      
      elsif (min_depth  <= 16) then
      
         var_temp_depth := 16;
      
      elsif (min_depth  <= 32) then
      
         var_temp_depth := 32;
      
      elsif (min_depth  <= 64) then
      
         var_temp_depth := 64;
      
      elsif (min_depth  <= 128) then
      
         var_temp_depth := 128;
      
      elsif (min_depth  <= 256) then
      
         var_temp_depth := 256;
      
      elsif (min_depth  <= 512) then
      
         var_temp_depth := 512;
      
      elsif (min_depth  <= 1024) then
      
         var_temp_depth := 1024;
      
      elsif (min_depth  <= 2048) then
      
         var_temp_depth := 2048;
      
      elsif (min_depth  <= 4096) then
      
         var_temp_depth := 4096;
      
      else -- assume 8192 depth
      
         var_temp_depth := 8192;
      
      end if;
      
       
       
      Return (var_temp_depth);
       
       
    end function funct_get_pwr2_depth;
    
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_fifo_cnt_width
    --
    -- Function Description:
    --   simple function to set the width of the data fifo read 
    -- and write count outputs. 
    -------------------------------------------------------------------
    function funct_get_fifo_cnt_width (fifo_depth : integer) 
             return integer is
    
      Variable temp_width : integer := 8;
    
    begin
    
      if (fifo_depth = 1) then
      
         temp_width := 1;
      
      elsif (fifo_depth  = 2) then
      
         temp_width := 2;
      
      elsif (fifo_depth  <= 4) then
      
         temp_width := 3;
      
      elsif (fifo_depth  <= 8) then
      
         temp_width := 4;
      
      elsif (fifo_depth  <= 16) then
      
         temp_width := 5;
      
      elsif (fifo_depth  <= 32) then
      
         temp_width := 6;
      
      elsif (fifo_depth  <= 64) then
      
         temp_width := 7;
      
      elsif (fifo_depth  <= 128) then
      
         temp_width := 8;
      
      elsif (fifo_depth  <= 256) then
      
         temp_width := 9;
      
      elsif (fifo_depth  <= 512) then
      
         temp_width := 10;
      
      elsif (fifo_depth  <= 1024) then
      
         temp_width := 11;
      
      elsif (fifo_depth  <= 2048) then
      
         temp_width := 12;
      
      elsif (fifo_depth  <= 4096) then
      
         temp_width := 13;
      
      else -- assume 8192 depth
      
         temp_width := 14;
      
      end if;
      
      
      Return (temp_width);
     
    
    end function funct_get_fifo_cnt_width;
    
    
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_wrcnt_lsrip
    --
    -- Function Description:
    --   Calculates the ls index of the upper slice of the data fifo
    -- write count needed to repesent one max burst worth of data
    -- present in the fifo.
    --
    -------------------------------------------------------------------
    function funct_get_wrcnt_lsrip (max_burst_dbeats : integer) return integer is
    
      Variable temp_ls_index : Integer := 0;
    
    begin
      
      if (max_burst_dbeats <= 2) then
      
        temp_ls_index := 1;

      elsif (max_burst_dbeats <= 4) then
      
        temp_ls_index := 2;

      elsif (max_burst_dbeats <= 8) then
      
        temp_ls_index := 3;

      elsif (max_burst_dbeats <= 16) then
      
        temp_ls_index := 4;
      
      elsif (max_burst_dbeats <= 32) then
      
        temp_ls_index := 5;
      
      elsif (max_burst_dbeats <= 64) then
      
        temp_ls_index := 6;
      
      elsif (max_burst_dbeats <= 128) then
      
        temp_ls_index := 7;
      
      else
      
        temp_ls_index := 8;
      
      end if;
      
      Return (temp_ls_index);
      
      
    end function funct_get_wrcnt_lsrip;
    
     
     
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_stall_thresh
    --
    -- Function Description:
    -- Calculates the Stall threshold for the input side of the Data
    -- FIFO. If DRE is being used by the DataMover, then the threshold
    -- must be reduced to account for the potential of an extra write
    -- databeat per request (DRE alignment dependent).
    --
    -------------------------------------------------------------------
    function funct_get_stall_thresh (dre_is_used         : integer;
                                     max_xfer_length     : integer;
                                     data_fifo_depth     : integer;
                                     pipeline_delay_clks : integer;
                                     fifo_settling_clks  : integer) return integer is
    
      Constant DRE_PIPE_DELAY             : integer := 2; -- clks
      
      Variable var_num_max_xfers_allowed  : Integer := 0;
      Variable var_dre_dbeat_overhead     : Integer := 0;
      Variable var_delay_fudge_factor     : Integer := 0;    
      Variable var_thresh_headroom        : Integer := 0;
      Variable var_stall_thresh           : Integer := 0;
      
    begin
    
      var_num_max_xfers_allowed := data_fifo_depth/max_xfer_length;
      
      var_dre_dbeat_overhead    := var_num_max_xfers_allowed * dre_is_used;
      
      
      var_delay_fudge_factor    := (dre_is_used * DRE_PIPE_DELAY) + 
                                   pipeline_delay_clks            + 
                                   fifo_settling_clks;
      
      var_thresh_headroom       := max_xfer_length        + 
                                   var_dre_dbeat_overhead + 
                                   var_delay_fudge_factor;
      
      -- Scale the result to be in max transfer length increments
      var_stall_thresh          := (data_fifo_depth - var_thresh_headroom)/max_xfer_length;
      
      Return (var_stall_thresh);
      
      
    end function funct_get_stall_thresh;
    
    
    
    
    
    
    
    
    
    -- Constants ---------------------------------------------------------------------------
    
    Constant LOGIC_LOW                 : std_logic := '0';
    Constant LOGIC_HIGH                : std_logic := '1';
    
    Constant BLK_MEM_FIFO              : integer := 1;
    Constant SRL_FIFO                  : integer := 0;
    Constant NOT_NEEDED                : integer := 0;
    
    
    Constant WSTB_WIDTH                : integer := C_STREAM_DWIDTH/8; -- bits
    Constant TLAST_WIDTH               : integer := 1;                 -- bits
    
    
    Constant DATA_FIFO_DEPTH           : integer := C_SF_FIFO_DEPTH;
    Constant DATA_FIFO_CNT_WIDTH       : integer := funct_get_fifo_cnt_width(DATA_FIFO_DEPTH);
    Constant DF_WRCNT_RIP_LS_INDEX     : integer := funct_get_wrcnt_lsrip(C_MAX_BURST_LEN);
    Constant DATA_FIFO_WIDTH           : integer := C_STREAM_DWIDTH+
                                                    WSTB_WIDTH     +
                                                    TLAST_WIDTH;
    
    Constant DATA_OUT_MSB_INDEX        : integer := C_STREAM_DWIDTH-1;
    Constant DATA_OUT_LSB_INDEX        : integer := 0;
    
    Constant TSTRB_OUT_LSB_INDEX       : integer := DATA_OUT_MSB_INDEX+1;
    Constant TSTRB_OUT_MSB_INDEX       : integer := (TSTRB_OUT_LSB_INDEX+WSTB_WIDTH)-1;
    
    Constant TLAST_OUT_INDEX           : integer := TSTRB_OUT_MSB_INDEX+1;
    
    
    
    Constant DBEAT_CNTR_WIDTH          : integer := funct_get_dbcntr_width(C_MAX_BURST_LEN);
    
    Constant MAX_BURST_DBEATS          : Unsigned(DBEAT_CNTR_WIDTH-1 downto 0) :=  
                                         TO_UNSIGNED(C_MAX_BURST_LEN-1, DBEAT_CNTR_WIDTH);
    
    Constant DBC_ONE                   : Unsigned(DBEAT_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, DBEAT_CNTR_WIDTH);
  
  
    Constant TOKEN_POOL_SIZE           : integer := C_SF_FIFO_DEPTH / C_MAX_BURST_LEN;
    
    Constant TOKEN_CNTR_WIDTH          : integer := clog2(TOKEN_POOL_SIZE)+1;
    
    Constant TOKEN_CNT_ZERO            : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(0, TOKEN_CNTR_WIDTH);
    
    Constant TOKEN_CNT_ONE             : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, TOKEN_CNTR_WIDTH);
    
    Constant TOKEN_CNT_MAX             : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) :=  
                                         TO_UNSIGNED(TOKEN_POOL_SIZE, TOKEN_CNTR_WIDTH);
    
    Constant THRESH_COMPARE_WIDTH      : integer := TOKEN_CNTR_WIDTH+2;
    
              
    Constant RD_PATH_PIPE_DEPTH        : integer := 2; -- clocks excluding DRE
    
    Constant WRCNT_SETTLING_TIME       : integer := 2; -- data fifo push or pop settling clocks
    
    Constant RD_ADDR_POST_STALL_THRESH : integer := 
                                         funct_get_stall_thresh(C_DRE_IS_USED      ,
                                                                C_MAX_BURST_LEN    ,
                                                                C_SF_FIFO_DEPTH    ,
                                                                RD_PATH_PIPE_DEPTH ,
                                                                WRCNT_SETTLING_TIME);
    
    Constant RD_ADDR_POST_STALL_THRESH_US : Unsigned(THRESH_COMPARE_WIDTH-1 downto 0) := 
                                            TO_UNSIGNED(RD_ADDR_POST_STALL_THRESH , 
                                                        THRESH_COMPARE_WIDTH);
    
    Constant WR_LEN_FIFO_DWIDTH        : integer := 8;
    Constant WR_LEN_FIFO_DEPTH         : integer := funct_get_pwr2_depth(C_WR_ADDR_PIPE_DEPTH + 2);
    
    Constant LEN_CNTR_WIDTH            : integer := 8;
    Constant LEN_CNT_ZERO              : Unsigned(LEN_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(0, LEN_CNTR_WIDTH);
    Constant LEN_CNT_ONE               : Unsigned(LEN_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, LEN_CNTR_WIDTH);
    
    Constant WR_XFER_CNTR_WIDTH        : integer := 8;
    Constant WR_XFER_CNT_ZERO          : Unsigned(WR_XFER_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(0, WR_XFER_CNTR_WIDTH);
    Constant WR_XFER_CNT_ONE           : Unsigned(WR_XFER_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, WR_XFER_CNTR_WIDTH);
    
    Constant UNCOM_WRCNT_1             : Unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, DATA_FIFO_CNT_WIDTH);
    
    Constant UNCOM_WRCNT_0             : Unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(0, DATA_FIFO_CNT_WIDTH);
    
    
    
    
    
    
    
    -- Signals ---------------------------------------------------------------------------
    
    signal sig_good_sin_strm_dbeat    : std_logic := '0';
    signal sig_strm_sin_ready         : std_logic := '0';
    
    signal sig_sout2sf_tready         : std_logic := '0';
    signal sig_sf2sout_tvalid         : std_logic := '0';
    signal sig_sf2sout_tdata          : std_logic_vector(C_STREAM_DWIDTH-1 downto 0) := (others => '0');
    signal sig_sf2sout_tkeep          : std_logic_vector(WSTB_WIDTH-1 downto 0) := (others => '0');
    signal sig_sf2sout_tlast          : std_logic := '0';
    
    signal sig_push_data_fifo         : std_logic := '0';
    signal sig_pop_data_fifo          : std_logic := '0';
    signal sig_data_fifo_full         : std_logic := '0';
    signal sig_data_fifo_data_in      : std_logic_vector(DATA_FIFO_WIDTH-1 downto 0) := (others => '0');
    signal sig_data_fifo_dvalid       : std_logic := '0';
    signal sig_data_fifo_data_out     : std_logic_vector(DATA_FIFO_WIDTH-1 downto 0) := (others => '0');
    signal sig_data_fifo_wr_cnt       : std_logic_vector(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    signal sig_fifo_wr_cnt_unsgnd     : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    
    signal sig_wrcnt_mblen_slice      : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 
                                                 DF_WRCNT_RIP_LS_INDEX) := (others => '0');
    
    signal sig_ok_to_post_rd_addr     : std_logic := '0';
    signal sig_rd_addr_posted         : std_logic := '0';
    signal sig_rd_xfer_cmplt          : std_logic := '0';
    signal sig_taking_last_token      : std_logic := '0';
    signal sig_stall_rd_addr_posts    : std_logic := '0';
    
    signal sig_incr_token_cntr        : std_logic := '0';
    signal sig_decr_token_cntr        : std_logic := '0';
    signal sig_token_eq_max           : std_logic := '0';
    signal sig_token_eq_zero          : std_logic := '0';
    signal sig_token_eq_one           : std_logic := '0';
    signal sig_token_cntr             : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) := (others => '0');
    
    signal sig_tokens_commited        : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) := (others => '0');
    signal sig_commit_plus_actual     : unsigned(THRESH_COMPARE_WIDTH-1 downto 0) := (others => '0');
    
    signal sig_ok_to_post_wr_addr     : std_logic := '0';
    signal sig_wr_addr_posted         : std_logic := '0';
    signal sig_wr_xfer_cmplt          : std_logic := '0';
    
    signal sig_wr_ld_nxt_len          : std_logic := '0';
    signal sig_push_len_fifo          : std_logic := '0';
    signal sig_pop_len_fifo           : std_logic := '0';
    signal sig_len_fifo_full          : std_logic := '0';
    signal sig_len_fifo_empty         : std_logic := '0';
    signal sig_len_fifo_data_in       : std_logic_vector(WR_LEN_FIFO_DWIDTH-1 downto 0) := (others => '0');
    signal sig_len_fifo_data_out      : std_logic_vector(WR_LEN_FIFO_DWIDTH-1 downto 0) := (others => '0');
    signal sig_len_fifo_len_out_un    : unsigned(WR_LEN_FIFO_DWIDTH-1 downto 0) := (others => '0');
  
    signal sig_uncom_wrcnt            : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    signal sig_sub_len_uncom_wrcnt    : std_logic := '0';
    signal sig_incr_uncom_wrcnt       : std_logic := '0';
    signal sig_resized_fifo_len       : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    signal sig_num_wr_dbeats_needed   : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    signal sig_enough_dbeats_rcvd     : std_logic := '0';
                    
                    
  
  begin --(architecture implementation)
  
   
   
    -- Read Side (MM2S) Control Flags port connections
    ok_to_post_rd_addr       <= sig_ok_to_post_rd_addr ;
    sig_rd_addr_posted       <= rd_addr_posted         ;
    sig_rd_xfer_cmplt        <= rd_xfer_cmplt          ;
    
    -- Write Side (S2MM) Control Flags port connections
    ok_to_post_wr_addr       <= sig_ok_to_post_wr_addr ;
    sig_wr_addr_posted       <= wr_addr_posted         ;
    sig_wr_xfer_cmplt        <= wr_xfer_cmplt          ;
  
    sig_wr_ld_nxt_len        <= wr_ld_nxt_len          ;
    sig_len_fifo_data_in     <= wr_len                 ;
  
    
    
    --  Output Stream Port connections
    sig_sout2sf_tready       <= sout2sf_tready        ;
    sf2sout_tvalid           <= sig_sf2sout_tvalid    ;
    sf2sout_tdata            <= sig_sf2sout_tdata     ; 
    sf2sout_tkeep            <= sig_sf2sout_tkeep     ;
    sf2sout_tlast            <= sig_sf2sout_tlast and
                                sig_sf2sout_tvalid    ;
    
    
    -- Input Stream port connections 
    sf2sin_tready            <= sig_strm_sin_ready;
    
    sig_strm_sin_ready       <= not(sig_data_fifo_full); -- Throttle if Read Side Data fifo goes full.
                                                         -- This should never happen if read address 
                                                         -- posting control is working properly.
    
    sig_good_sin_strm_dbeat  <= sin2sf_tvalid and
                                sig_strm_sin_ready;
                               
 
 
 ---------------------------------------------------------------- 
 -- Token Counter Logic  
 -- Predicting fifo space availability at some point in the  
 -- future is based on managing a virtual pool of transfer tokens.
 -- A token represents 1 max length burst worth of space in the
 -- Data FIFO. 
 ---------------------------------------------------------------- 
    
    
    -- calculate how many tokens are commited to pending transfers
    sig_tokens_commited <= TOKEN_CNT_MAX - sig_token_cntr;
    
    
    
    -- Decrement the token counter when a token is
    -- borrowed
    sig_decr_token_cntr <= '1'
      when (sig_rd_addr_posted = '1' and 
            sig_token_eq_zero  = '0')
      else '0';
    
    
    -- Increment the token counter when a  
    -- token is returned.
    sig_incr_token_cntr <= '1'
      when (sig_rd_xfer_cmplt = '1' and 
            sig_token_eq_max  = '0')
      else '0';
  
    
    
    -- Detect when the xfer token count is at max value
    sig_token_eq_max <= '1' 
     when (sig_token_cntr = TOKEN_CNT_MAX)
     Else '0';
  
    -- Detect when the xfer token count is at one
    sig_token_eq_one <= '1' 
     when (sig_token_cntr = TOKEN_CNT_ONE)
     Else '0';
  
    -- Detect when the xfer token count is at zero
    sig_token_eq_zero <= '1' 
     when (sig_token_cntr = TOKEN_CNT_ZERO)
     Else '0';
  
    -- Look ahead to see if the xfer token pool is going empty
    sig_taking_last_token <= '1'
      When (sig_token_eq_one   = '1' and
            sig_rd_addr_posted = '1')
      Else '0';
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_TOKEN_CMTR
    --
    -- Process Description:
    -- Implements the Token counter
    --
    -------------------------------------------------------------
    IMP_TOKEN_CMTR : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
          if (reset  = '1' ) then 

            sig_token_cntr <= TOKEN_CNT_MAX;
            
          elsif (sig_incr_token_cntr = '1' and
                 sig_decr_token_cntr = '0') then

            sig_token_cntr <= sig_token_cntr + TOKEN_CNT_ONE;
            
          elsif (sig_incr_token_cntr = '0' and
                 sig_decr_token_cntr = '1') then

            sig_token_cntr <= sig_token_cntr - TOKEN_CNT_ONE;
            
          else
            null;  -- hold current value
          end if; 
        end if;       
      end process IMP_TOKEN_CMTR; 

 
     
     
 
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_TOKEN_AVAIL_FLAG
    --
    -- Process Description:
    --   Implements the flag indicating that the AXI Read Master
    -- can post a read address request on the AXI4 bus.
    --
    -- Read address posting can occur if:
    --
    --  - The write side LEN fifo is not empty.                   
    --  - The commited plus actual Data FIFO space is less than 
    --    the stall threshold (a max length read burst can fit 
    --    in the data FIFO without overflow).   
    --  - The max allowed commited read count has not been reached.      
    --
    -- The flag is cleared after each address has been posted to
    -- ensure a second unauthotized post occurs.
    -------------------------------------------------------------
    IMP_TOKEN_AVAIL_FLAG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (reset              = '1' or
               sig_rd_addr_posted = '1') then
    
             sig_ok_to_post_rd_addr <= '0';
    
           else
    
             sig_ok_to_post_rd_addr <= not(sig_stall_rd_addr_posts) and -- the commited Data FIFO space is approaching full 
                                       not(sig_token_eq_zero)       and -- max allowed pending reads has not been reached
                                       not(sig_taking_last_token);      -- the max allowed pending reads is about to be reached
    
           
           end if; 
        end if;       
      end process IMP_TOKEN_AVAIL_FLAG; 
 
 
 
  
  
    
    
 
 
  
  
    
    
 ---------------------------------------------------------------- 
 -- Data FIFO Logic ------------------------------------------
 ---------------------------------------------------------------- 
 
     
     -- FIFO Output to output stream attachments
     sig_sf2sout_tvalid  <=  sig_data_fifo_dvalid ;
     
     sig_sf2sout_tdata   <=  sig_data_fifo_data_out(DATA_OUT_MSB_INDEX downto
                                                    DATA_OUT_LSB_INDEX);
     
     sig_sf2sout_tkeep   <=  sig_data_fifo_data_out(TSTRB_OUT_MSB_INDEX downto
                                                    TSTRB_OUT_LSB_INDEX);
     
     sig_sf2sout_tlast   <=  sig_data_fifo_data_out(TLAST_OUT_INDEX) ;
     
     
     -- Stall Threshold calculations
     sig_fifo_wr_cnt_unsgnd   <= UNSIGNED(sig_data_fifo_wr_cnt);
  
     sig_wrcnt_mblen_slice    <= sig_fifo_wr_cnt_unsgnd(DATA_FIFO_CNT_WIDTH-1 downto 
                                                        DF_WRCNT_RIP_LS_INDEX);
     
     sig_commit_plus_actual   <= RESIZE(sig_tokens_commited, THRESH_COMPARE_WIDTH) +
                                 RESIZE(sig_wrcnt_mblen_slice, THRESH_COMPARE_WIDTH);
     
     
     -- Compare the commited read space plus the actual used space against the
     -- stall threshold. Assert the read address posting stall flag if the
     -- threshold is met or exceeded.
     sig_stall_rd_addr_posts  <= '1'
       when (sig_commit_plus_actual > RD_ADDR_POST_STALL_THRESH_US)
       Else '0';
     
     
     
     
     
     -- FIFO Rd/WR Controls
     
     sig_push_data_fifo <= sig_good_sin_strm_dbeat;
     
     sig_pop_data_fifo  <= sig_sout2sf_tready and 
                           sig_data_fifo_dvalid;
     
     
     
     -- Concatonate the Stream inputs into the single FIFO data in value 
     sig_data_fifo_data_in <= sin2sf_tlast &
                              sin2sf_tkeep & 
                              sin2sf_tdata;
 
    
    
                                                     
    ------------------------------------------------------------
    -- Instance: I_DATA_FIFO 
    --
    -- Description:
    --  Implements the Store and Forward data FIFO (synchronous)   
    --
    ------------------------------------------------------------
    I_DATA_FIFO : entity axi_cdma_v4_1_9.axi_cdma_sfifo_autord
    generic map (

      C_DWIDTH                =>  DATA_FIFO_WIDTH       ,  
      C_DEPTH                 =>  DATA_FIFO_DEPTH       ,  
      C_DATA_CNT_WIDTH        =>  DATA_FIFO_CNT_WIDTH   ,  
      C_NEED_ALMOST_EMPTY     =>  NOT_NEEDED            ,  
      C_NEED_ALMOST_FULL      =>  NOT_NEEDED            ,  
      C_USE_BLKMEM            =>  BLK_MEM_FIFO          ,  
      C_FAMILY                =>  C_FAMILY                 

      )
    port map (

     -- Inputs 
      SFIFO_Sinit             =>  reset                  , 
      SFIFO_Clk               =>  aclk                   , 
      SFIFO_Wr_en             =>  sig_push_data_fifo     , 
      SFIFO_Din               =>  sig_data_fifo_data_in  , 
      SFIFO_Rd_en             =>  sig_pop_data_fifo      , 
      SFIFO_Clr_Rd_Data_Valid =>  LOGIC_LOW              , 
      
     -- Outputs
      SFIFO_DValid            =>  sig_data_fifo_dvalid   , 
      SFIFO_Dout              =>  sig_data_fifo_data_out , 
      SFIFO_Full              =>  sig_data_fifo_full     , 
      SFIFO_Empty             =>  open                   , 
      SFIFO_Almost_full       =>  open                   , 
      SFIFO_Almost_empty      =>  open                   , 
      SFIFO_Rd_count          =>  open                   ,  
      SFIFO_Rd_count_minus1   =>  open                   ,  
      SFIFO_Wr_count          =>  sig_data_fifo_wr_cnt   ,  
      SFIFO_Rd_ack            =>  open                     

    );



 
 
 
 
 
 
 
 
 
 
 
-------------------------------------------------------------------- 
-- Write Side Control Logic  
--------------------------------------------------------------------

    -- Convert the LEN fifo data output to unsigned
    sig_len_fifo_len_out_un <= unsigned(sig_len_fifo_data_out);
   
    -- Resize the unsigned LEN output to the Data FIFO writecount width
    sig_resized_fifo_len    <= RESIZE(sig_len_fifo_len_out_un , DATA_FIFO_CNT_WIDTH);
   
    
    -- The actual number of databeats needed for the queued write transfer
    -- is the current LEN fifo output plus 1.
    sig_num_wr_dbeats_needed <= sig_resized_fifo_len + UNCOM_WRCNT_1;
   
   
    -- Compare the uncommited receved data beat count to that needed
    -- for the next queued write request.
    sig_enough_dbeats_rcvd <= '1'
      When (sig_num_wr_dbeats_needed <= sig_uncom_wrcnt)
      else '0';
    
    
    
    
    -- Increment the uncommited databeat counter on a good input
    -- stream databeat (Read Side of SF)
    sig_incr_uncom_wrcnt    <=  sig_good_sin_strm_dbeat;
   

    -- Subtract the current number of databeats needed from the
    -- uncommited databeat counter when the associated transfer
    -- address/qualifiers have been posted to the AXI Write 
    -- Address Channel
    sig_sub_len_uncom_wrcnt <= sig_wr_addr_posted;
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_UNCOM_DBEAT_CNTR
    --
    -- Process Description:
    -- Implements the counter that keeps track of the received read
    -- data beat count that has not been commited to a transfer on  
    -- the write side with a Write Address posting.
    --
    -------------------------------------------------------------
    IMP_UNCOM_DBEAT_CNTR : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
          if (reset            = '1') then 

            sig_uncom_wrcnt <= UNCOM_WRCNT_0;
            
          elsif (sig_incr_uncom_wrcnt    = '1' and
                 sig_sub_len_uncom_wrcnt = '1') then

            sig_uncom_wrcnt <= sig_uncom_wrcnt - sig_resized_fifo_len;
            
          elsif (sig_incr_uncom_wrcnt    = '1' and
                 sig_sub_len_uncom_wrcnt = '0') then

            sig_uncom_wrcnt <= sig_uncom_wrcnt + UNCOM_WRCNT_1;
            
          elsif (sig_incr_uncom_wrcnt    = '0' and
                 sig_sub_len_uncom_wrcnt = '1') then

            sig_uncom_wrcnt <= sig_uncom_wrcnt - sig_num_wr_dbeats_needed;
            
          else
            null;  -- hold current value
          end if; 
        end if;       
      end process IMP_UNCOM_DBEAT_CNTR; 
    
    
    





  
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_WR_ADDR_POST_FLAG
   --
   -- Process Description:
   --   Implements the flag indicating that the pending write
   -- transfer's data beat count has been received on the input
   -- side of the Data FIFO. This means the Write side can post
   -- the associated write address to the AXI4 bus and the 
   -- associated write data transfer can complete without CDMA
   -- throttling the Write Data Channel.     
   --
   -- The flag is cleared immediately after an address is posted
   -- to prohibit a second unauthorized posting while the control
   -- logic stabilizes to the next LEN FIFO value
   --.
   -------------------------------------------------------------
   IMP_WR_ADDR_POST_FLAG : process (aclk)
     begin
       if (aclk'event and aclk = '1') then
          if (reset              = '1' or
              sig_wr_addr_posted = '1') then
   
            sig_ok_to_post_wr_addr <= '0';
   
          else
   
            sig_ok_to_post_wr_addr <= not(sig_len_fifo_empty) and
                                      sig_enough_dbeats_rcvd; 
   
          end if; 
       end if;       
     end process IMP_WR_ADDR_POST_FLAG; 


 
   
   
   
   
   
   -------------------------------------------------------------
   -- LEN FIFO logic 
     
    
   sig_push_len_fifo    <= sig_wr_ld_nxt_len and
                           not(sig_len_fifo_full);


   sig_pop_len_fifo     <= wr_addr_posted and
                           not(sig_len_fifo_empty);
  
 
 


   ------------------------------------------------------------
   -- Instance: I_WR_LEN_FIFO 
   --
   -- Description:
   -- Implement the LEN FIFO using SRL FIFO elements    
   --
   ------------------------------------------------------------
   I_WR_LEN_FIFO : entity lib_srl_fifo_v1_0_2.srl_fifo_f
   generic map (

     C_DWIDTH      =>  WR_LEN_FIFO_DWIDTH   ,  
     C_DEPTH       =>  WR_LEN_FIFO_DEPTH    ,  
     C_FAMILY      =>  C_FAMILY      

     )
   port map (

     Clk           =>  aclk                  ,  
     Reset         =>  reset                 ,  
     FIFO_Write    =>  sig_push_len_fifo     ,  
     Data_In       =>  sig_len_fifo_data_in  ,  
     FIFO_Read     =>  sig_pop_len_fifo      ,  
     Data_Out      =>  sig_len_fifo_data_out ,  
     FIFO_Empty    =>  sig_len_fifo_empty    ,  
     FIFO_Full     =>  sig_len_fifo_full     ,  
     Addr          =>  open                
 
     );

    

   
     
 
 
 
  
  
  end implementation;
