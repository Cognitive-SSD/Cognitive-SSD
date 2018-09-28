//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Tue Feb 06 21:27:22 2018
//Host        : DESKTOP-G14T14M running 64-bit major release  (build 9200)
//Command     : generate_target CMDA_DRAM_wrapper.bd
//Design      : CMDA_DRAM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CMDA_DRAM_wrapper
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
    Generate_ID_addr,
    Generate_ID_clk,
    Generate_ID_din,
    Generate_ID_dout,
    Generate_ID_en,
    Generate_ID_rst,
    Generate_ID_we,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wvalid,
    Sys_Clk,
    Sys_Rst_n,
    TestBuffer_addr,
    TestBuffer_clk,
    TestBuffer_din,
    TestBuffer_dout,
    TestBuffer_en,
    TestBuffer_rst,
    TestBuffer_we,
    WeightBuffer_addr,
    WeightBuffer_clk,
    WeightBuffer_din,
    WeightBuffer_dout,
    WeightBuffer_en,
    WeightBuffer_rst,
    WeightBuffer_we,
    cdma_introut,
    in_reg0,
    out_reg0);
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
  output [13:0]Generate_ID_addr;
  output Generate_ID_clk;
  output [31:0]Generate_ID_din;
  input [31:0]Generate_ID_dout;
  output Generate_ID_en;
  output Generate_ID_rst;
  output [3:0]Generate_ID_we;
  input [5:0]S_AXI_LITE_araddr;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [5:0]S_AXI_LITE_awaddr;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input S_AXI_LITE_wvalid;
  output Sys_Clk;
  output Sys_Rst_n;
  output [15:0]TestBuffer_addr;
  output TestBuffer_clk;
  output [511:0]TestBuffer_din;
  input [511:0]TestBuffer_dout;
  output TestBuffer_en;
  output TestBuffer_rst;
  output [63:0]TestBuffer_we;
  output [16:0]WeightBuffer_addr;
  output WeightBuffer_clk;
  output [511:0]WeightBuffer_din;
  input [511:0]WeightBuffer_dout;
  output WeightBuffer_en;
  output WeightBuffer_rst;
  output [63:0]WeightBuffer_we;
  output cdma_introut;
  input [31:0]in_reg0;
  output [31:0]out_reg0;

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
  wire [13:0]Generate_ID_addr;
  wire Generate_ID_clk;
  wire [31:0]Generate_ID_din;
  wire [31:0]Generate_ID_dout;
  wire Generate_ID_en;
  wire Generate_ID_rst;
  wire [3:0]Generate_ID_we;
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
  wire [15:0]TestBuffer_addr;
  wire TestBuffer_clk;
  wire [511:0]TestBuffer_din;
  wire [511:0]TestBuffer_dout;
  wire TestBuffer_en;
  wire TestBuffer_rst;
  wire [63:0]TestBuffer_we;
  wire [16:0]WeightBuffer_addr;
  wire WeightBuffer_clk;
  wire [511:0]WeightBuffer_din;
  wire [511:0]WeightBuffer_dout;
  wire WeightBuffer_en;
  wire WeightBuffer_rst;
  wire [63:0]WeightBuffer_we;
  wire cdma_introut;
  wire [31:0]in_reg0;
  wire [31:0]out_reg0;

  CMDA_DRAM CMDA_DRAM_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .Generate_ID_addr(Generate_ID_addr),
        .Generate_ID_clk(Generate_ID_clk),
        .Generate_ID_din(Generate_ID_din),
        .Generate_ID_dout(Generate_ID_dout),
        .Generate_ID_en(Generate_ID_en),
        .Generate_ID_rst(Generate_ID_rst),
        .Generate_ID_we(Generate_ID_we),
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
        .TestBuffer_addr(TestBuffer_addr),
        .TestBuffer_clk(TestBuffer_clk),
        .TestBuffer_din(TestBuffer_din),
        .TestBuffer_dout(TestBuffer_dout),
        .TestBuffer_en(TestBuffer_en),
        .TestBuffer_rst(TestBuffer_rst),
        .TestBuffer_we(TestBuffer_we),
        .WeightBuffer_addr(WeightBuffer_addr),
        .WeightBuffer_clk(WeightBuffer_clk),
        .WeightBuffer_din(WeightBuffer_din),
        .WeightBuffer_dout(WeightBuffer_dout),
        .WeightBuffer_en(WeightBuffer_en),
        .WeightBuffer_rst(WeightBuffer_rst),
        .WeightBuffer_we(WeightBuffer_we),
        .cdma_introut(cdma_introut),
        .in_reg0(in_reg0),
        .out_reg0(out_reg0));
endmodule
