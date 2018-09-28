// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Wed Jan 31 21:30:27 2018
// Host        : DESKTOP-G14T14M running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               J:/CDMA_BRAM/CDMA_DBRAM_DRAM_1/CDMA_BRAM.srcs/sources_1/ip/DIS_0_MEMORY/DIS_0_MEMORY_stub.v
// Design      : DIS_0_MEMORY
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *)
module DIS_0_MEMORY(a, d, dpra, clk, we, dpo)
/* synthesis syn_black_box black_box_pad_pin="a[11:0],d[31:0],dpra[11:0],clk,we,dpo[31:0]" */;
  input [11:0]a;
  input [31:0]d;
  input [11:0]dpra;
  input clk;
  input we;
  output [31:0]dpo;
endmodule
