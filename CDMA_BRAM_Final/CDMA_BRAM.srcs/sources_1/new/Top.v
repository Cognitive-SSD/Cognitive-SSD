`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/23 14:49:04
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    /*Sys_Clk,
    Sys_Rst_n,
    iQuery_Code,
    iQuery_Enable*/
    );
 
    inout [14:0]DDR_addr;
    inout [2:0]DDR_ba;
    inout DDR_cas_n;
    inout DDR_ck_n;
    inout DDR_ck_p;
    inout DDR_cke;
    inout DDR_cs_n;
    inout [3:0]DDR_dm;
    inout [31:0]DDR_dq;
    inout [3:0]DDR_dqs_n;
    inout [3:0]DDR_dqs_p;
    inout DDR_odt;
    inout DDR_ras_n;
    inout DDR_reset_n;
    inout DDR_we_n;
    inout FIXED_IO_ddr_vrn;
    inout FIXED_IO_ddr_vrp;
    inout [53:0]FIXED_IO_mio;
    inout FIXED_IO_ps_clk;
    inout FIXED_IO_ps_porb;
    inout FIXED_IO_ps_srstb;
  
    /*input wire Sys_Clk;
    input wire Sys_Rst_n;  
    input wire [47:0] iQuery_Code;
    input wire        iQuery_Enable;*/
    wire [14:0]DDR_addr;
    wire [2:0]DDR_ba;
    wire DDR_cas_n;
    wire DDR_ck_n;
    wire DDR_ck_p;
    wire DDR_cke;
    wire DDR_cs_n;
    wire [3:0]DDR_dm;
    wire [31:0]DDR_dq;
    wire [3:0]DDR_dqs_n;
    wire [3:0]DDR_dqs_p;
    wire DDR_odt;
    wire DDR_ras_n;
    wire DDR_reset_n;
    wire DDR_we_n;
    wire FIXED_IO_ddr_vrn;
    wire FIXED_IO_ddr_vrp;
    wire [53:0]FIXED_IO_mio;
    wire FIXED_IO_ps_clk;
    wire FIXED_IO_ps_porb;
    wire FIXED_IO_ps_srstb;
    
    wire [5:0]S_AXI_LITE_araddr;
    wire S_AXI_LITE_arready;
    wire S_AXI_LITE_arvalid;
    wire [5:0]S_AXI_LITE_awaddr;
    wire S_AXI_LITE_awready;
    wire S_AXI_LITE_awvalid;
    wire S_AXI_LITE_bready;
    wire [1:0]S_AXI_LITE_bresp;
    wire S_AXI_LITE_bvalid;
    wire [31:0]S_AXI_LITE_rdata;
    wire S_AXI_LITE_rready;
    wire [1:0]S_AXI_LITE_rresp;
    wire S_AXI_LITE_rvalid;
    wire [31:0]S_AXI_LITE_wdata;
    wire S_AXI_LITE_wready;
    wire S_AXI_LITE_wvalid;
    
    wire Sys_Clk;
    wire Sys_Rst_n;
    
    /*(* mark_debug = "true" *)*/ wire [13:0]Generate_ID_addr;
    wire Generate_ID_clk;
    wire [31:0]Generate_ID_din;
    /*(* mark_debug = "true" *)*/ wire [31:0]Generate_ID_dout;
    wire Generate_ID_en;
    wire Generate_ID_rst;
    wire [3:0]Generate_ID_we;
    
    /*(* mark_debug = "true" *)*/ wire [16:0]TestBuffer_addr;
    wire TestBuffer_clk;
    wire [511:0]TestBuffer_din;
    /*(* mark_debug = "true" *)*/ reg [511:0]TestBuffer_dout;
    /*(* mark_debug = "true" *)*/ wire TestBuffer_en;
    wire TestBuffer_rst;
    wire [63:0]TestBuffer_we;
    
    /*(* mark_debug = "true" *)*/ wire [16:0]WeightBuffer_addr;
    wire WeightBuffer_clk;
    /*(* mark_debug = "true" *)*/ wire [511:0]WeightBuffer_din;
    wire [511:0]WeightBuffer_dout;
    /*(* mark_debug = "true" *)*/ wire WeightBuffer_en;
    wire WeightBuffer_rst;
    wire [63:0]WeightBuffer_we;
    (* mark_debug = "true" *) wire cdma_introut;
    (* mark_debug = "true" *) wire [31:0]in_reg0;
    (* mark_debug = "true" *) wire [31:0]out_reg0;
    
    //-------------------DMA SIGNAL-----------------------------------
    /*(* mark_debug="true" *)*/  wire  [1:0]        wCdma_ctl_2_AXI_Master_Cmd;
    /*(* mark_debug="true" *)*/  wire               wCdma_ctl_2_AXI_Master_INIT_AXI_TXN;
    wire                                            wAXI_Master_2_Cdma_ctl_ERROR;
    /*(* mark_debug="true" *)*/  wire               wAXI_Master_2_Cdma_ctl_TXN_DONE;
    /*(* mark_debug="true" *)*/  wire [31:0]        wCdma_ctl_2_AXI_Master_Awaddr;
    /*(* mark_debug="true" *)*/  wire [31:0]        wCdma_ctl_2_AXI_Master_Wdata;
    /*(* mark_debug="true" *)*/  wire [31:0]        wCdma_ctl_2_AXI_Master_Araddr;
    /*(* mark_debug="true" *)*/  wire [31:0]        wAXI_Master_2_Cdma_ctl_Rdata;
    
    (* mark_debug = "true" *) wire                wCDMA_Finish;
    (* mark_debug = "true" *) reg                 rCDMA_Clear=1'b0;
    (* mark_debug = "true" *) wire                wCDMA_Clear_pluse;
    (* mark_debug = "true" *) reg [31:0]          rCDMA_Source_Address;
    (* mark_debug = "true" *) reg [31:0]          rCDMA_Destion_Address;
    (* mark_debug = "true" *) reg [31:0]          rCDMA_Transfer_Bytes;
    
    wire                                           wCDMA_C_2_SGID_C_CDMA_Valid;
    wire [31:0]                                    wSGID_C_2_CDMA_C_Source_Addr;
    wire [31:0]                                    wSGID_C_2_CDMA_C_Dest_Addr;
    wire                                           wSGID_C_2_CDMA_C_CDMA_Enable;
    
    
    
    // Instantiate the CDMA_DRAM_wrapper module
    CMDA_DRAM_wrapper CDMA_DRAM
       (.DDR_addr(DDR_addr[14:0]),
        .DDR_ba(DDR_ba[2:0]),
        .DDR_cas_n(DDR_cas_n), 
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm[3:0]),
        .DDR_dq(DDR_dq[31:0]),
        .DDR_dqs_n(DDR_dqs_n[3:0]),
        .DDR_dqs_p(DDR_dqs_p[3:0]),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio[53:0]),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        
        .S_AXI_LITE_araddr(S_AXI_LITE_araddr),
        .S_AXI_LITE_arready(S_AXI_LITE_arready),
        .S_AXI_LITE_arvalid(S_AXI_LITE_arvalid),
        .S_AXI_LITE_awaddr(S_AXI_LITE_awaddr),
        .S_AXI_LITE_awready(S_AXI_LITE_awready),
        .S_AXI_LITE_awvalid(S_AXI_LITE_awvalid),
        .S_AXI_LITE_bready(S_AXI_LITE_bready),
        .S_AXI_LITE_bresp(S_AXI_LITE_bresp),
        .S_AXI_LITE_bvalid(S_AXI_LITE_bvalid),
        .S_AXI_LITE_rdata(S_AXI_LITE_rdata),
        .S_AXI_LITE_rready(S_AXI_LITE_rready),
        .S_AXI_LITE_rresp(S_AXI_LITE_rresp),
        .S_AXI_LITE_rvalid(S_AXI_LITE_rvalid),
        .S_AXI_LITE_wdata(S_AXI_LITE_wdata),
        .S_AXI_LITE_wready(S_AXI_LITE_wready),
        .S_AXI_LITE_wvalid(S_AXI_LITE_wvalid),
        
        .Sys_Clk(Sys_Clk),
        .Sys_Rst_n(Sys_Rst_n),
        
        .Generate_ID_addr(Generate_ID_addr),
        .Generate_ID_clk(Generate_ID_clk),
        .Generate_ID_din(Generate_ID_din),
        .Generate_ID_dout(Generate_ID_dout),
        .Generate_ID_en(Generate_ID_en),
        .Generate_ID_rst(Generate_ID_rst),
        .Generate_ID_we(Generate_ID_we),
        
        .TestBuffer_addr(TestBuffer_addr[16:0]),
        .TestBuffer_clk(TestBuffer_clk),
        .TestBuffer_din(TestBuffer_din[511:0]),
        .TestBuffer_dout(TestBuffer_dout[511:0]),
        .TestBuffer_en(TestBuffer_en),
        .TestBuffer_rst(TestBuffer_rst),
        .TestBuffer_we(TestBuffer_we[63:0]),
        
        .WeightBuffer_addr(WeightBuffer_addr[16:0]),
        .WeightBuffer_clk(WeightBuffer_clk),
        .WeightBuffer_din(WeightBuffer_din[511:0]),
        .WeightBuffer_dout(WeightBuffer_dout[511:0]),
        .WeightBuffer_en(WeightBuffer_en),
        .WeightBuffer_rst(WeightBuffer_rst),
        .WeightBuffer_we(WeightBuffer_we[63:0]),
        .cdma_introut(cdma_introut),
        .in_reg0(in_reg0),
        .out_reg0(out_reg0));
        
    (* mark_debug = "true" *) wire wBuffer_ready;    
    Communciate comm(
            .iSys_Clk(Sys_Clk),
            .iSys_Rst_n(Sys_Rst_n),
            .iInfo_rev(out_reg0),
            .oInfo_send(in_reg0),
            .oBuffer_ready(wBuffer_ready)
            );
        
    CDMA_Control cdma_ctl(
            .iSys_Clk(Sys_Clk),
            .iSys_Rst_n(Sys_Rst_n),
            .iClr(wCDMA_Clear_pluse),                              // user control
            .iCdma_Introut(cdma_introut),
            .iSA(rCDMA_Source_Address),           //user source address
            .iDA(rCDMA_Destion_Address),           //user destion address
            .iBTT(rCDMA_Transfer_Bytes),          //user transfer bytes
            .iM_AXI_RVALID(S_AXI_LITE_rvalid), //
            .oCDMA_Valid(wCDMA_C_2_SGID_C_CDMA_Valid),                         // to reflect the cdma state;
            .oCmd(wCdma_ctl_2_AXI_Master_Cmd),
            .oAwaddr(wCdma_ctl_2_AXI_Master_Awaddr),
            .oWdata(wCdma_ctl_2_AXI_Master_Wdata),
            .oAraddr(wCdma_ctl_2_AXI_Master_Araddr),
            .iRdata(wAXI_Master_2_Cdma_ctl_Rdata),
            .oINIT_AXI_TXN(wCdma_ctl_2_AXI_Master_INIT_AXI_TXN),
            .oFinish(wCDMA_Finish),      //user dma finish task
            .iERROR(wAXI_Master_2_Cdma_ctl_ERROR),
            .iTXN_DONE(wAXI_Master_2_Cdma_ctl_TXN_DONE)
            ); 
                        
            
    always @(posedge Sys_Clk or negedge Sys_Rst_n) begin
        if(!Sys_Rst_n) begin
            rCDMA_Clear             <= 0;
            rCDMA_Source_Address    <= 0;
            rCDMA_Destion_Address   <= 0;
            rCDMA_Transfer_Bytes    <= 0;
        end else if(wSGID_C_2_CDMA_C_CDMA_Enable) begin
            rCDMA_Clear             <= 1;
            rCDMA_Source_Address    <= wSGID_C_2_CDMA_C_Source_Addr;
            rCDMA_Destion_Address   <= wSGID_C_2_CDMA_C_Dest_Addr;
            rCDMA_Transfer_Bytes    <= 32'h0000_0100;
        end else begin
            rCDMA_Clear             <= 0;
            rCDMA_Source_Address    <= rCDMA_Source_Address;
            rCDMA_Destion_Address   <= rCDMA_Destion_Address;
            rCDMA_Transfer_Bytes    <= rCDMA_Transfer_Bytes;
            end
    end   
            
    One_Clock oclk(
            .iSys_Clk(Sys_Clk),
            .iSys_Rst_n(Sys_Rst_n),
            .iEnable(rCDMA_Clear),
            .oWave(wCDMA_Clear_pluse)
            );      
                        
    axi_master_lite_v1_0_M00_AXI master(
            .iCmd(wCdma_ctl_2_AXI_Master_Cmd),
            .iAwaddr(wCdma_ctl_2_AXI_Master_Awaddr),
            .iWdata(wCdma_ctl_2_AXI_Master_Wdata),
            .iAraddr(wCdma_ctl_2_AXI_Master_Araddr),
            .oRdata(wAXI_Master_2_Cdma_ctl_Rdata),
            .INIT_AXI_TXN(wCdma_ctl_2_AXI_Master_INIT_AXI_TXN),        //inpuput
            .ERROR(wAXI_Master_2_Cdma_ctl_ERROR),                     //output
            .TXN_DONE(wAXI_Master_2_Cdma_ctl_TXN_DONE),              //output
            .M_AXI_ACLK(Sys_Clk),
            .M_AXI_ARESETN(Sys_Rst_n),
            .M_AXI_AWADDR(S_AXI_LITE_awaddr),
            .M_AXI_AWPROT(),
            .M_AXI_AWVALID(S_AXI_LITE_awvalid),
            .M_AXI_AWREADY(S_AXI_LITE_awready),
            .M_AXI_WDATA(S_AXI_LITE_wdata),
            .M_AXI_WSTRB(),
            .M_AXI_WVALID(S_AXI_LITE_wvalid),
            .M_AXI_WREADY(S_AXI_LITE_wready),
            .M_AXI_BRESP(S_AXI_LITE_bresp),
            .M_AXI_BVALID(S_AXI_LITE_bvalid),
            .M_AXI_BREADY(S_AXI_LITE_bready),
            .M_AXI_ARADDR(S_AXI_LITE_araddr),
            .M_AXI_ARPROT(),
            .M_AXI_ARVALID(S_AXI_LITE_arvalid),
            .M_AXI_ARREADY(S_AXI_LITE_arready),
            .M_AXI_RDATA(S_AXI_LITE_rdata),
            .M_AXI_RRESP(S_AXI_LITE_rresp),
            .M_AXI_RVALID(S_AXI_LITE_rvalid),
            .M_AXI_RREADY(S_AXI_LITE_rready)
            );       
            
        
        
        
//weight buffer 0
    localparam WeightBuffer_wea_width     = 64;
    localparam WeightBuffer_addr_width    = 9;
    localparam WeightBuffer_din_width     = 512;
    localparam WeightBuffer_dout_width    = 512;
    localparam DISABLE                    = 1'b0;
    localparam ENABLE                     = 1'b1;
    
    /*(* mark_debug = "true" *)*/ reg                                 rWeightBuffer0_ena , rWeightBuffer1_ena , rWeightBuffer2_ena , rWeightBuffer3_ena;
    reg[WeightBuffer_wea_width-1 : 0]   rWeightBuffer0_wea , rWeightBuffer1_wea , rWeightBuffer2_wea , rWeightBuffer3_wea;
    reg[WeightBuffer_addr_width-1 : 0]  rWeightBuffer0_addra , rWeightBuffer1_addra , rWeightBuffer2_addra , rWeightBuffer3_addra;
    reg[WeightBuffer_din_width-1 : 0]   rWeightBuffer0_dina , rWeightBuffer1_dina , rWeightBuffer2_dina , rWeightBuffer3_dina;
    wire [WeightBuffer_dout_width-1 : 0]  rWeightBuffer0_douta , rWeightBuffer1_douta , rWeightBuffer2_douta , rWeightBuffer3_douta;

    /*(* mark_debug = "true" *)*/ reg                                 rWeightBuffer0_enb , rWeightBuffer1_enb , rWeightBuffer2_enb , rWeightBuffer3_enb;
    reg[WeightBuffer_wea_width-1 : 0]   rWeightBuffer0_web , rWeightBuffer1_web , rWeightBuffer2_web , rWeightBuffer3_web;
    /*(* mark_debug = "true" *)*/ reg[WeightBuffer_addr_width-1 : 0]  rWeightBuffer0_addrb , rWeightBuffer1_addrb , rWeightBuffer2_addrb , rWeightBuffer3_addrb;
    reg[WeightBuffer_din_width-1 : 0]   rWeightBuffer0_dinb , rWeightBuffer1_dinb , rWeightBuffer2_dinb , rWeightBuffer3_dinb;
    (* mark_debug = "true" *) wire [WeightBuffer_dout_width-1 : 0]  rWeightBuffer0_doutb;    
    (* mark_debug = "true" *) wire [WeightBuffer_dout_width-1 : 0]  rWeightBuffer1_doutb , rWeightBuffer2_doutb , rWeightBuffer3_doutb;  
    /*(* mark_debug = "true" *)*/ reg[7:0] rWeight_Count;
    /*(* mark_debug = "true" *)*/ reg[7:0] rTest_Count;
    /*(* mark_debug = "true" *)*/ reg[7:0] rCount;
    
    /*TestBuffer testbuffer(
        .clka(Sys_Clk),    // input wire clka
        .ena(WeightBuffer_en),      // input wire ena
        .wea(WeightBuffer_we[63:0]),      // input wire [0 : 0] wea
        .addra(WeightBuffer_addr[16:0]),  // input wire [7 : 0] addra
        .dina(WeightBuffer_din[511:0]),    // input wire [2047 : 0] dina
        .douta(WeightBuffer_dout[511:0]),  // output wire [2047 : 0] douta
    
        .clkb(Sys_Clk),    // input wire clka
        .enb(TestBuffer_en),      // input wire ena
        .web(TestBuffer_we[63:0]),      // input wire [0 : 0] wea
        .addrb(TestBuffer_addr[8:0]),  // input wire [7 : 0] addra
        .dinb(TestBuffer_din[511:0]),    // input wire [2047 : 0] dina
        .doutb(TestBuffer_dout[511:0])  // output wire [2047 : 0] douta        
    );*/
        WeightBuffer0 weightbuffer0 (
          .clka(Sys_Clk),    // input wire clka
          .ena(rWeightBuffer0_ena),      // input wire ena
          .wea(rWeightBuffer0_wea[63:0]),      // input wire [0 : 0] wea
          .addra(rWeightBuffer0_addra[8:0]),  // input wire [7 : 0] addra
          .dina(rWeightBuffer0_dina[511:0]),    // input wire [2047 : 0] dina
          .douta(rWeightBuffer0_douta[511:0]),  // output wire [2047 : 0] douta
          
          /*.clkb(Sys_Clk),    // input wire clka
          .enb(TestBuffer_en),      // input wire ena
          .web(TestBuffer_we[63:0]),      // input wire [0 : 0] wea
          .addrb(TestBuffer_addr[14:6]),  // input wire [7 : 0] addra
          .dinb(TestBuffer_din[511:0]),    // input wire [2047 : 0] dina
          .doutb(TestBuffer_dout[511:0])  // output wire [2047 : 0] douta  */  
          
          .clkb(Sys_Clk),    // input wire clka
          .enb(rWeightBuffer0_enb),      // input wire ena
          .web(rWeightBuffer0_web[63:0]),      // input wire [0 : 0] wea
          .addrb(rWeightBuffer0_addrb[8:0]),  // input wire [7 : 0] addra
          .dinb(rWeightBuffer0_dinb[511:0]),    // input wire [2047 : 0] dina
          .doutb(rWeightBuffer0_doutb[511:0])  // output wire [2047 : 0] douta 
        );
        WeightBuffer1 weightbuffer1 (
          .clka(Sys_Clk),    // input wire clka
          .ena(rWeightBuffer1_ena),      // input wire ena
          .wea(rWeightBuffer1_wea[63:0]),      // input wire [0 : 0] wea
          .addra(rWeightBuffer1_addra[7:0]),  // input wire [7 : 0] addra
          .dina(rWeightBuffer1_dina[511:0]),    // input wire [2047 : 0] dina
          .douta(rWeightBuffer1_douta[511:0]),  // output wire [2047 : 0] douta
          
          .clkb(Sys_Clk),    // input wire clka
          .enb(rWeightBuffer1_enb),      // input wire ena
          .web(rWeightBuffer1_web[63:0]),      // input wire [0 : 0] wea
          .addrb(rWeightBuffer1_addrb[8:0]),  // input wire [7 : 0] addra
          .dinb(rWeightBuffer1_dinb[511:0]),    // input wire [2047 : 0] dina
          .doutb(rWeightBuffer1_doutb[511:0])  // output wire [2047 : 0] douta          
        );
        WeightBuffer2 weightbuffer2 (
          .clka(Sys_Clk),    // input wire clka
          .ena(rWeightBuffer2_ena),      // input wire ena
          .wea(rWeightBuffer2_wea[63:0]),      // input wire [0 : 0] wea
          .addra(rWeightBuffer2_addra[8:0]),  // input wire [7 : 0] addra
          .dina(rWeightBuffer2_dina[511:0]),    // input wire [2047 : 0] dina
          .douta(rWeightBuffer2_douta[511:0]),  // output wire [2047 : 0] douta
          
          .clkb(Sys_Clk),    // input wire clka
          .enb(rWeightBuffer2_enb),      // input wire ena
          .web(rWeightBuffer2_web[63:0]),      // input wire [0 : 0] wea
          .addrb(rWeightBuffer2_addrb[8:0]),  // input wire [7 : 0] addra
          .dinb(rWeightBuffer2_dinb[511:0]),    // input wire [2047 : 0] dina
          .doutb(rWeightBuffer2_doutb[511:0])  // output wire [2047 : 0] douta
        );
        WeightBuffer3 weightbuffer3 (
          .clka(Sys_Clk),    // input wire clka
          .ena(rWeightBuffer3_ena),      // input wire ena
          .wea(rWeightBuffer3_wea[63:0]),      // input wire [0 : 0] wea
          .addra(rWeightBuffer3_addra[8:0]),  // input wire [7 : 0] addra
          .dina(rWeightBuffer3_dina[511:0]),    // input wire [2047 : 0] dina
          .douta(rWeightBuffer3_douta[511:0]),  // output wire [2047 : 0] douta
          
          .clkb(Sys_Clk),    // input wire clka
          .enb(rWeightBuffer3_enb),      // input wire ena
          .web(rWeightBuffer3_web[63:0]),      // input wire [0 : 0] wea
          .addrb(rWeightBuffer3_addrb[8:0]),  // input wire [7 : 0] addra
          .dinb(rWeightBuffer3_dinb[511:0]),    // input wire [2047 : 0] dina
          .doutb(rWeightBuffer3_doutb[511:0])  // output wire [2047 : 0] douta
        );                
 //weightbuffer wea(mask) ,addr and data 
        always @(posedge Sys_Clk or negedge Sys_Rst_n)begin
          if(!Sys_Rst_n) begin
            rWeightBuffer0_ena<=DISABLE;
            rWeightBuffer0_wea<=64'b0;
            rWeightBuffer0_addra<=0;
            rWeightBuffer0_dina<=0;
            rWeightBuffer1_ena<=DISABLE;
            rWeightBuffer1_wea<=64'b0;
            rWeightBuffer1_addra<=0;
            rWeightBuffer1_dina<=0;
            rWeightBuffer2_ena<=DISABLE;
            rWeightBuffer2_wea<=64'b0;
            rWeightBuffer2_addra<=0;
            rWeightBuffer2_dina<=0;
            rWeightBuffer3_ena<=DISABLE;
            rWeightBuffer3_wea<=64'b0;
            rWeightBuffer3_addra<=0;
            rWeightBuffer3_dina<=0;
          end
          else if(wBuffer_ready) begin 
            rWeightBuffer0_wea   <= WeightBuffer_we;
            rWeightBuffer0_addra <= WeightBuffer_addr[16:8];
            rWeightBuffer0_dina  <= WeightBuffer_din;
              
            rWeightBuffer1_wea   <= WeightBuffer_we;
            rWeightBuffer1_addra <= WeightBuffer_addr[16:8];
            rWeightBuffer1_dina  <= WeightBuffer_din;
            
            rWeightBuffer2_wea   <= WeightBuffer_we;
            rWeightBuffer2_addra <= WeightBuffer_addr[16:8];
            rWeightBuffer2_dina  <= WeightBuffer_din;
              
            rWeightBuffer3_wea   <= WeightBuffer_we;
            rWeightBuffer3_addra <= WeightBuffer_addr[16:8];
            rWeightBuffer3_dina  <= WeightBuffer_din;                 
            case(rWeight_Count)
                0:begin
                    rWeightBuffer0_ena <= WeightBuffer_en;
                    rWeightBuffer1_ena <= DISABLE;
                    rWeightBuffer2_ena <= DISABLE;
                    rWeightBuffer3_ena <= DISABLE;
                  end
                  1:begin
                    rWeightBuffer1_ena <= WeightBuffer_en;
                    rWeightBuffer0_ena <= DISABLE;
                    rWeightBuffer2_ena <= DISABLE;
                    rWeightBuffer3_ena <= DISABLE;
                  end
                  2:begin
                    rWeightBuffer2_ena <= WeightBuffer_en;
                    rWeightBuffer0_ena <= DISABLE;
                    rWeightBuffer1_ena <= DISABLE;
                    rWeightBuffer3_ena <= DISABLE;
                  end
                  3:begin
                    rWeightBuffer3_ena <= WeightBuffer_en;
                    rWeightBuffer0_ena <= DISABLE;
                    rWeightBuffer1_ena <= DISABLE;
                    rWeightBuffer2_ena <= DISABLE;
                  end                              
              endcase
          end
        end       
        
    /*always @(posedge Sys_Clk or negedge Sys_Rst_n)begin
          if(!Sys_Rst_n) begin           
            rWeightBuffer0_enb<=DISABLE;
            rWeightBuffer0_web<=64'b0;
            rWeightBuffer0_addrb<=0;
            rWeightBuffer0_dinb<=0;
            rWeightBuffer1_enb<=DISABLE;
            rWeightBuffer1_web<=64'b0;
            rWeightBuffer1_addrb<=0;
            rWeightBuffer1_dinb<=0;
            rWeightBuffer2_enb<=DISABLE;
            rWeightBuffer2_web<=64'b0;
            rWeightBuffer2_addrb<=0;
            rWeightBuffer2_dinb<=0;
            rWeightBuffer3_enb<=DISABLE;
            rWeightBuffer3_web<=64'b0;
            rWeightBuffer3_addrb<=0;
            rWeightBuffer3_dinb<=0;
            
            TestBuffer_dout <= 0;
          end else if(wBuffer_ready)begin
            rWeightBuffer0_web   <= TestBuffer_we;
            rWeightBuffer0_addrb <= TestBuffer_addr[16:8];
            rWeightBuffer0_dinb  <= TestBuffer_din;
            
            rWeightBuffer1_web   <= TestBuffer_we;
            rWeightBuffer1_addrb <= TestBuffer_addr[16:8];
            rWeightBuffer1_dinb  <= TestBuffer_din;
          
            rWeightBuffer2_web   <= TestBuffer_we;
            rWeightBuffer2_addrb <= TestBuffer_addr[16:8];
            rWeightBuffer2_dinb  <= TestBuffer_din;
            
            rWeightBuffer3_web   <= TestBuffer_we;
            rWeightBuffer3_addrb <= TestBuffer_addr[16:8];
            rWeightBuffer3_dinb  <= TestBuffer_din;                 
            case(rCount[5:4])
                0:begin
                    rWeightBuffer0_enb <= TestBuffer_en;
                    TestBuffer_dout    <= rWeightBuffer0_doutb;
                    rWeightBuffer1_enb <= DISABLE;
                    rWeightBuffer2_enb <= DISABLE;
                    rWeightBuffer3_enb <= DISABLE;
                end
                1:begin
                    rWeightBuffer1_enb <= TestBuffer_en;
                    TestBuffer_dout    <= rWeightBuffer1_doutb;
                    rWeightBuffer0_enb <= DISABLE;
                    rWeightBuffer2_enb <= DISABLE;
                    rWeightBuffer3_enb <= DISABLE;
                end
                2:begin
                    rWeightBuffer2_enb <= TestBuffer_en;
                    TestBuffer_dout    <= rWeightBuffer2_doutb;
                    rWeightBuffer0_enb <= DISABLE;
                    rWeightBuffer1_enb <= DISABLE;
                    rWeightBuffer3_enb <= DISABLE;
                end
                3:begin
                    rWeightBuffer3_enb <= TestBuffer_en;
                    TestBuffer_dout    <= rWeightBuffer3_doutb;
                    rWeightBuffer0_enb <= DISABLE;
                    rWeightBuffer1_enb <= DISABLE;
                    rWeightBuffer2_enb <= DISABLE; 
                end                              
            endcase            
        end
    end */ 
    
        /*always @(rWeightBuffer0_doutb , rWeightBuffer1_doutb , rWeightBuffer2_doutb , rWeightBuffer3_doutb, Sys_Rst_n)begin
          if(!Sys_Rst_n) begin           
            //rWeightBuffer0_enb   = DISABLE;
            rWeightBuffer0_web   = 64'b0;
            rWeightBuffer0_addrb = 0;
            rWeightBuffer0_dinb  = 0;
            //rWeightBuffer1_enb   =DISABLE;
            rWeightBuffer1_web   =64'b0;
            rWeightBuffer1_addrb =0;
            rWeightBuffer1_dinb  =0;
            //rWeightBuffer2_enb   =DISABLE;
            rWeightBuffer2_web   =64'b0;
            rWeightBuffer2_addrb =0;
            rWeightBuffer2_dinb  =0;
            //rWeightBuffer3_enb   =DISABLE;
            rWeightBuffer3_web   =64'b0;
            rWeightBuffer3_addrb =0;
            rWeightBuffer3_dinb  =0;
            
            TestBuffer_dout = 0;
          end else if(wBuffer_ready)begin
            rWeightBuffer0_web   = TestBuffer_we;
            rWeightBuffer0_addrb = TestBuffer_addr[16:8];
            rWeightBuffer0_dinb  = TestBuffer_din;
            
            rWeightBuffer1_web   = TestBuffer_we;
            rWeightBuffer1_addrb = TestBuffer_addr[16:8];
            rWeightBuffer1_dinb  = TestBuffer_din;
          
            rWeightBuffer2_web   = TestBuffer_we;
            rWeightBuffer2_addrb = TestBuffer_addr[16:8];
            rWeightBuffer2_dinb  = TestBuffer_din;
            
            rWeightBuffer3_web   = TestBuffer_we;
            rWeightBuffer3_addrb = TestBuffer_addr[16:8];
            rWeightBuffer3_dinb  = TestBuffer_din;                 
            case(rCount[5:4])
                0:begin
                   // rWeightBuffer0_enb = ENABLE;
                    TestBuffer_dout    = rWeightBuffer0_doutb;
                    //rWeightBuffer1_enb = DISABLE;
                    //rWeightBuffer2_enb = DISABLE;
                    //rWeightBuffer3_enb = DISABLE;
                end
                1:begin
                   // rWeightBuffer1_enb = ENABLE;
                    TestBuffer_dout    = rWeightBuffer1_doutb;
                    //rWeightBuffer0_enb = DISABLE;
                    //rWeightBuffer2_enb = DISABLE;
                    //rWeightBuffer3_enb = DISABLE;
                end
                2:begin
                    //rWeightBuffer2_enb = ENABLE;
                    TestBuffer_dout    = rWeightBuffer2_doutb;
                    //rWeightBuffer0_enb = DISABLE;
                    //rWeightBuffer1_enb = DISABLE;
                    //rWeightBuffer3_enb = DISABLE;
                end
                3:begin
                    //rWeightBuffer3_enb = ENABLE;
                    TestBuffer_dout    = rWeightBuffer3_doutb;
                    //rWeightBuffer0_enb = DISABLE;
                    //rWeightBuffer1_enb = DISABLE;
                    //rWeightBuffer2_enb = DISABLE; 
                end                              
            endcase            
        end
    end  
    always @(posedge Sys_Clk or negedge Sys_Rst_n)begin
              if(!Sys_Rst_n) begin           
                rWeightBuffer0_enb<=DISABLE;
                rWeightBuffer1_enb<=DISABLE;
                rWeightBuffer2_enb<=DISABLE;
                rWeightBuffer3_enb<=DISABLE;
              end else if(wBuffer_ready)begin             
                case(rTest_Count[5:4])
                    0:begin
                        rWeightBuffer0_enb <= ENABLE;
                        rWeightBuffer1_enb <= DISABLE;
                        rWeightBuffer2_enb <= DISABLE;
                        rWeightBuffer3_enb <= DISABLE;
                    end
                    1:begin
                        rWeightBuffer1_enb <= ENABLE;
                        rWeightBuffer0_enb <= DISABLE;
                        rWeightBuffer2_enb <= DISABLE;
                        rWeightBuffer3_enb <= DISABLE;
                    end
                    2:begin
                        rWeightBuffer2_enb <= ENABLE;
                        rWeightBuffer0_enb <= DISABLE;
                        rWeightBuffer1_enb <= DISABLE;
                        rWeightBuffer3_enb <= DISABLE;
                    end
                    3:begin 
                        rWeightBuffer3_enb <= ENABLE;
                        rWeightBuffer0_enb <= DISABLE;
                        rWeightBuffer1_enb <= DISABLE;
                        rWeightBuffer2_enb <= DISABLE; 
                    end                              
                endcase            
            end
        end  */
// weight_count 
        always @(posedge Sys_Clk or negedge Sys_Rst_n)begin
          if(!Sys_Rst_n) begin
              rWeight_Count <= 0;
          end
          else if(!wBuffer_ready) begin
            rWeight_Count <= 0;
          end
          else if(WeightBuffer_en & wBuffer_ready)begin   
            rWeight_Count <= (rWeight_Count == 3) ? 0 : rWeight_Count+1'b1;
          end
        end
        
        always @(posedge Sys_Clk or negedge Sys_Rst_n)begin
          if(!Sys_Rst_n) begin
              rTest_Count <= 0;
              //rCount      <= 0;
          end
          else if(!wBuffer_ready) begin
            rTest_Count <= 0;
            //rCount      <= 0;
          end
          else if(TestBuffer_en & wBuffer_ready)begin   
            rTest_Count <= rTest_Count+1'b1;
            //rCount <= (rTest_Count == 15) ? ((rCount==3)? 0 : rCount+1'b1) : rCount;
          end
        end  
        
        /*always @(posedge TestBuffer_en) begin
            if(!wBuffer_ready)begin
                rCount = 0;
            end else if(TestBuffer_en & wBuffer_ready) begin
                rCount = rTest_Count + 1'b1;
            end
        end */  
        
        always @(posedge Sys_Clk or negedge Sys_Rst_n) begin
            if(!Sys_Rst_n) begin
                rCount <= 0;
            end else if(!wBuffer_ready) begin
                rCount <= 0;
            end else begin
                rCount <= rTest_Count;
            end
        end     
        
        
    (* mark_debug = "true" *) reg clock; 
        always @(posedge Sys_Clk or negedge Sys_Rst_n)begin
          if(!Sys_Rst_n) begin
            clock <= 0;
          end
          else begin
            clock <= ~clock;
          end
        end
        
 //**************read graph id and neighborhood code *******************************
 
    localparam WEIGHT_DATA_WIDTH = 512; 
    always @(posedge Sys_Clk or negedge Sys_Rst_n) begin
        if(!Sys_Rst_n) begin
            rWeightBuffer0_enb      <= DISABLE;
            rWeightBuffer0_web      <= 64'b0;
            rWeightBuffer0_dinb     <= 0;
        
            rWeightBuffer1_enb      <= DISABLE;
            rWeightBuffer1_web      <= 64'b0;
            rWeightBuffer1_dinb     <= 0;
        
            rWeightBuffer2_enb      <= DISABLE;
            rWeightBuffer2_web      <= 64'b0;
            rWeightBuffer2_dinb     <= 0;
        
            rWeightBuffer3_enb      <= DISABLE;
            rWeightBuffer3_web      <= 64'b0;
            rWeightBuffer3_dinb     <= 0;
        end else begin
            rWeightBuffer0_enb      <= ENABLE;
            rWeightBuffer0_web      <= 64'b0;
            rWeightBuffer0_dinb     <= 0;
            
            rWeightBuffer1_enb      <= ENABLE;
            rWeightBuffer1_web      <= 64'b0;
            rWeightBuffer1_dinb     <= 0;
            
            rWeightBuffer2_enb      <= ENABLE;
            rWeightBuffer2_web      <= 64'b0;
            rWeightBuffer2_dinb     <= 0;
            
            rWeightBuffer3_enb      <= ENABLE;
            rWeightBuffer3_web      <= 64'b0;
            rWeightBuffer3_dinb     <= 0;
        end
    end 
    
    reg [WEIGHT_DATA_WIDTH*4-1:0] rWeightBuffer_2_SGID_C;            // this is id + code data width = 2048 and only get the 2000 bit data
    
    always @(posedge Sys_Clk or negedge Sys_Rst_n) begin
        if(!Sys_Rst_n) begin
            rWeightBuffer_2_SGID_C <= 0; 
        end else begin
            rWeightBuffer_2_SGID_C <= {rWeightBuffer0_doutb,rWeightBuffer1_doutb,rWeightBuffer2_doutb,rWeightBuffer3_doutb};
        end
    end
    
    //*********************generate weight buffer address and cyclic 00 01 10 11 00 ;
    reg  [8:0]               rWeightBuffer_Addrb;
    
    always @(*) begin
        if(!Sys_Rst_n) begin
            rWeightBuffer0_addrb    = 9'b000000000;
            rWeightBuffer1_addrb    = 9'b000000000;
            rWeightBuffer2_addrb    = 9'b000000000;
            rWeightBuffer3_addrb    = 9'b000000000;
        end else begin
            rWeightBuffer0_addrb    = rWeightBuffer_Addrb;
            rWeightBuffer1_addrb    = rWeightBuffer_Addrb;
            rWeightBuffer2_addrb    = rWeightBuffer_Addrb;                                                  
            rWeightBuffer3_addrb    = rWeightBuffer_Addrb;
        end
    end 
    
    always @(posedge Sys_Clk or negedge Sys_Rst_n) begin
        if(!Sys_Rst_n) begin
            rWeightBuffer_Addrb <= 9'b000000000;
        end else if(wSGID_C_Buffer_Ready) begin
            rWeightBuffer_Addrb <= (rWeightBuffer_Addrb == 9'b000000110)?9'b000000000: rWeightBuffer_Addrb + 1'b1;
        end
    end
    
 
       reg [HASHCODE_WIDTH-1:0]    iQuery_Code   = 48'hc7d8d8306c11;
        (* mark_debug = "true" *) reg                         iQuery_Enable;
        
        always @(posedge Sys_Clk or negedge Sys_Rst_n) begin
            if(!Sys_Rst_n) begin
                iQuery_Enable <= 0;
            end else if(wBuffer_ready) begin
                iQuery_Enable <= 1;
            end else begin
                iQuery_Enable <= 0;
            end
        end
 //**************The module is kgraph processing core ******************************       
        parameter ID_WIDTH       = 32;
        parameter HASHCODE_WIDTH = 48;
        parameter DISTANCE_WIDTH = 6;
        parameter RAM_COUNTER    = 10;
        parameter USER_K         = 300;        //user configuration K 
        
        
        wire [ID_WIDTH-1:0]          wSGID_C_2_SGID_TOP_ID_Number;
        wire [HASHCODE_WIDTH-1:0]    wSGID_C_2_SGID_TOP_Query_Code;
        wire [HASHCODE_WIDTH-1:0]    wSGID_C_2_SGID_TOP_Hash_Code;
        wire                         wSGID_C_2_SGID_TOP_Generate_ID_Enable;
        wire                         wSGID_TOP_2_SGID_C_Generate_ID_Enable;
        
        (* mark_debug = "true" *) wire [ID_WIDTH-1:0]          wGenerate_ID;  //this port to dma control
        wire                         wSGID_C_Buffer_Ready;
        
        (* mark_debug = "true" *) wire  wSGID_TOP_2_SGID_C_Finish_Enable;
        
        (* mark_debug = "true" *) reg [31:0]                   rCycle_Counter;
        always @(posedge Sys_Clk or negedge Sys_Rst_n) begin
            if(!Sys_Rst_n) begin
                rCycle_Counter <= 0;
            end else if(iQuery_Enable && !wSGID_TOP_2_SGID_C_Finish_Enable)begin
                rCycle_Counter <= rCycle_Counter + 1'b1;
            end else begin
                rCycle_Counter <= rCycle_Counter; 
            end
        end
        
    SGID_Control
            #(
            .WEIGHT_DATA_WIDTH(512),
            .ID_WIDTH         (32),
            .HASHCODE_WIDTH   (48)
            )
        SGID_C(
            .iSys_Clk(Sys_Clk),
            .iSys_Rst_n(Sys_Rst_n),
            .iWeight_Data(rWeightBuffer_2_SGID_C),
            .iQuery_Enable(iQuery_Enable),
            .iCDMA_Valid(wCDMA_C_2_SGID_C_CDMA_Valid),
            .iCDMA_Finish(wCDMA_Finish),
            .iGenerate_ID(wGenerate_ID),
            .iFinish_Enable(wSGID_TOP_2_SGID_C_Finish_Enable),
            .iGenerate_Enable(wSGID_TOP_2_SGID_C_Generate_ID_Enable),
        
            .oId_Number(wSGID_C_2_SGID_TOP_ID_Number),
            .oHash_Code(wSGID_C_2_SGID_TOP_Hash_Code),
            .oBuffer_Ready(wSGID_C_Buffer_Ready),
            .oGenerate_ID_Enable(wSGID_C_2_SGID_TOP_Generate_ID_Enable),
            
            .oSource_Addr(wSGID_C_2_CDMA_C_Source_Addr),
            .oDest_Addr(wSGID_C_2_CDMA_C_Dest_Addr),
            .oCDMA_Enable(wSGID_C_2_CDMA_C_CDMA_Enable)
        );
                 
    Store_Gen_ID_Top
        #(
            .ID_WIDTH(32),
            .HASHCODE_WIDTH(48),
            .DISTANCE_WIDTH(6),
            .RAM_COUNTER(10),
            .USER_K(USER_K)
        )
    SGID_TOP(
            .iSys_Clk(Sys_Clk),
            .iSys_Rst_n(Sys_Rst_n),
            .iId_Number(wSGID_C_2_SGID_TOP_ID_Number),
            .iQuery_Code(iQuery_Code),
            .iHash_Code(wSGID_C_2_SGID_TOP_Hash_Code),
            
            .iOut_Addr(Generate_ID_addr[13:2]),
            
            .iGenerate_ID_Enable(wSGID_C_2_SGID_TOP_Generate_ID_Enable),
            .oGenerate_Enable(wSGID_TOP_2_SGID_C_Generate_ID_Enable),
            .oGenerate_ID(wGenerate_ID),
            .oFinish_Enable(wSGID_TOP_2_SGID_C_Finish_Enable),
            .oFinish_ID(Generate_ID_dout)
        );
  
    
endmodule
