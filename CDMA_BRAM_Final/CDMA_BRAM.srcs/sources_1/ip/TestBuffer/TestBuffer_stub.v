// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Wed Jan 24 13:54:06 2018
// Host        : DESKTOP-G14T14M running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               j:/Papers3/CDMA_BRAM/CDMA_BRAM.srcs/sources_1/ip/TestBuffer/TestBuffer_stub.v
// Design      : TestBuffer
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_3,Vivado 2016.2" *)
module TestBuffer(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[63:0],addra[8:0],dina[511:0],douta[511:0],clkb,enb,web[63:0],addrb[8:0],dinb[511:0],doutb[511:0]" */;
  input clka;
  input ena;
  input [63:0]wea;
  input [8:0]addra;
  input [511:0]dina;
  output [511:0]douta;
  input clkb;
  input enb;
  input [63:0]web;
  input [8:0]addrb;
  input [511:0]dinb;
  output [511:0]doutb;
endmodule
