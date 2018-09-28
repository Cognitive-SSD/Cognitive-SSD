// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Thu Feb 01 22:07:07 2018
// Host        : DESKTOP-G14T14M running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               J:/CDMA_BRAM/GENERATE_ID/GENERATE_ID.srcs/sources_1/ip/BitMap/BitMap_stub.v
// Design      : BitMap
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_3,Vivado 2016.2" *)
module BitMap(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[15:0],dina[0:0],clkb,addrb[15:0],doutb[0:0]" */;
  input clka;
  input [0:0]wea;
  input [15:0]addra;
  input [0:0]dina;
  input clkb;
  input [15:0]addrb;
  output [0:0]doutb;
endmodule
