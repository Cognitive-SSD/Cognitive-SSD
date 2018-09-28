// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Wed Jan 31 21:27:14 2018
// Host        : DESKTOP-G14T14M running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               J:/CDMA_BRAM/CDMA_DBRAM_DRAM_1/CDMA_BRAM.srcs/sources_1/bd/CMDA_DRAM/ip/CMDA_DRAM_myreg_0_0/CMDA_DRAM_myreg_0_0_stub.v
// Design      : CMDA_DRAM_myreg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "myreg_v1_0,Vivado 2016.2" *)
module CMDA_DRAM_myreg_0_0(in_reg0, out_reg0, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="in_reg0[31:0],out_reg0[31:0],s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  input [31:0]in_reg0;
  output [31:0]out_reg0;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
