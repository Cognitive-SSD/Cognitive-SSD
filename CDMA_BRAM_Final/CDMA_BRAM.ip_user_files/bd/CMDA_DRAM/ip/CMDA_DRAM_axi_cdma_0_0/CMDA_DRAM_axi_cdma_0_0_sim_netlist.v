// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Tue Feb 06 19:39:47 2018
// Host        : DESKTOP-G14T14M running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               J:/CDMA_BRAM/CDMA_DBRAM_DRAM_1/CDMA_BRAM.srcs/sources_1/bd/CMDA_DRAM/ip/CMDA_DRAM_axi_cdma_0_0/CMDA_DRAM_axi_cdma_0_0_sim_netlist.v
// Design      : CMDA_DRAM_axi_cdma_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CMDA_DRAM_axi_cdma_0_0,axi_cdma,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_cdma,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module CMDA_DRAM_axi_cdma_0_0
   (m_axi_aclk,
    s_axi_lite_aclk,
    s_axi_lite_aresetn,
    cdma_introut,
    s_axi_lite_awready,
    s_axi_lite_awvalid,
    s_axi_lite_awaddr,
    s_axi_lite_wready,
    s_axi_lite_wvalid,
    s_axi_lite_wdata,
    s_axi_lite_bready,
    s_axi_lite_bvalid,
    s_axi_lite_bresp,
    s_axi_lite_arready,
    s_axi_lite_arvalid,
    s_axi_lite_araddr,
    s_axi_lite_rready,
    s_axi_lite_rvalid,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    m_axi_arready,
    m_axi_arvalid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arprot,
    m_axi_arcache,
    m_axi_rready,
    m_axi_rvalid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_awready,
    m_axi_awvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awprot,
    m_axi_awcache,
    m_axi_wready,
    m_axi_wvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_bresp,
    cdma_tvect_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) input m_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_LITE_ACLK CLK" *) input s_axi_lite_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_RESETN RST" *) input s_axi_lite_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 CDMA_INTERRUPT INTERRUPT" *) output cdma_introut;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input s_axi_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [5:0]s_axi_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_lite_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_lite_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [5:0]s_axi_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_lite_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output m_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  output [31:0]cdma_tvect_out;

  wire cdma_introut;
  wire [31:0]cdma_tvect_out;
  wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_lite_aclk;
  wire [5:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [5:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire [1:0]s_axi_lite_bresp;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire [1:0]s_axi_lite_rresp;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire s_axi_lite_wvalid;
  wire NLW_U0_m_axi_sg_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_sg_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_sg_bready_UNCONNECTED;
  wire NLW_U0_m_axi_sg_rready_UNCONNECTED;
  wire NLW_U0_m_axi_sg_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_sg_wvalid_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_sg_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_sg_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_arcache_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_sg_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_arprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_sg_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_sg_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_awcache_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_sg_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_awprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_awsize_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_sg_wdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_wstrb_UNCONNECTED;

  (* C_AXI_LITE_IS_ASYNC = "0" *) 
  (* C_DLYTMR_RESOLUTION = "256" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_INCLUDE_DRE = "1" *) 
  (* C_INCLUDE_SF = "0" *) 
  (* C_INCLUDE_SG = "0" *) 
  (* C_INSTANCE = "axi_cdma" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_DATA_WIDTH = "32" *) 
  (* C_M_AXI_MAX_BURST_LEN = "16" *) 
  (* C_M_AXI_SG_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_SG_DATA_WIDTH = "32" *) 
  (* C_READ_ADDR_PIPE_DEPTH = "4" *) 
  (* C_S_AXI_LITE_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_LITE_DATA_WIDTH = "32" *) 
  (* C_USE_DATAMOVER_LITE = "0" *) 
  (* C_WRITE_ADDR_PIPE_DEPTH = "4" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  CMDA_DRAM_axi_cdma_0_0_axi_cdma U0
       (.cdma_introut(cdma_introut),
        .cdma_tvect_out(cdma_tvect_out),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_sg_araddr(NLW_U0_m_axi_sg_araddr_UNCONNECTED[31:0]),
        .m_axi_sg_arburst(NLW_U0_m_axi_sg_arburst_UNCONNECTED[1:0]),
        .m_axi_sg_arcache(NLW_U0_m_axi_sg_arcache_UNCONNECTED[3:0]),
        .m_axi_sg_arlen(NLW_U0_m_axi_sg_arlen_UNCONNECTED[7:0]),
        .m_axi_sg_arprot(NLW_U0_m_axi_sg_arprot_UNCONNECTED[2:0]),
        .m_axi_sg_arready(1'b0),
        .m_axi_sg_arsize(NLW_U0_m_axi_sg_arsize_UNCONNECTED[2:0]),
        .m_axi_sg_arvalid(NLW_U0_m_axi_sg_arvalid_UNCONNECTED),
        .m_axi_sg_awaddr(NLW_U0_m_axi_sg_awaddr_UNCONNECTED[31:0]),
        .m_axi_sg_awburst(NLW_U0_m_axi_sg_awburst_UNCONNECTED[1:0]),
        .m_axi_sg_awcache(NLW_U0_m_axi_sg_awcache_UNCONNECTED[3:0]),
        .m_axi_sg_awlen(NLW_U0_m_axi_sg_awlen_UNCONNECTED[7:0]),
        .m_axi_sg_awprot(NLW_U0_m_axi_sg_awprot_UNCONNECTED[2:0]),
        .m_axi_sg_awready(1'b0),
        .m_axi_sg_awsize(NLW_U0_m_axi_sg_awsize_UNCONNECTED[2:0]),
        .m_axi_sg_awvalid(NLW_U0_m_axi_sg_awvalid_UNCONNECTED),
        .m_axi_sg_bready(NLW_U0_m_axi_sg_bready_UNCONNECTED),
        .m_axi_sg_bresp({1'b0,1'b0}),
        .m_axi_sg_bvalid(1'b0),
        .m_axi_sg_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_sg_rlast(1'b0),
        .m_axi_sg_rready(NLW_U0_m_axi_sg_rready_UNCONNECTED),
        .m_axi_sg_rresp({1'b0,1'b0}),
        .m_axi_sg_rvalid(1'b0),
        .m_axi_sg_wdata(NLW_U0_m_axi_sg_wdata_UNCONNECTED[31:0]),
        .m_axi_sg_wlast(NLW_U0_m_axi_sg_wlast_UNCONNECTED),
        .m_axi_sg_wready(1'b0),
        .m_axi_sg_wstrb(NLW_U0_m_axi_sg_wstrb_UNCONNECTED[3:0]),
        .m_axi_sg_wvalid(NLW_U0_m_axi_sg_wvalid_UNCONNECTED),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bresp(s_axi_lite_bresp),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rresp(s_axi_lite_rresp),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wvalid(s_axi_lite_wvalid));
endmodule

(* C_AXI_LITE_IS_ASYNC = "0" *) (* C_DLYTMR_RESOLUTION = "256" *) (* C_FAMILY = "zynq" *) 
(* C_INCLUDE_DRE = "1" *) (* C_INCLUDE_SF = "0" *) (* C_INCLUDE_SG = "0" *) 
(* C_INSTANCE = "axi_cdma" *) (* C_M_AXI_ADDR_WIDTH = "32" *) (* C_M_AXI_DATA_WIDTH = "32" *) 
(* C_M_AXI_MAX_BURST_LEN = "16" *) (* C_M_AXI_SG_ADDR_WIDTH = "32" *) (* C_M_AXI_SG_DATA_WIDTH = "32" *) 
(* C_READ_ADDR_PIPE_DEPTH = "4" *) (* C_S_AXI_LITE_ADDR_WIDTH = "6" *) (* C_S_AXI_LITE_DATA_WIDTH = "32" *) 
(* C_USE_DATAMOVER_LITE = "0" *) (* C_WRITE_ADDR_PIPE_DEPTH = "4" *) (* ORIG_REF_NAME = "axi_cdma" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma
   (m_axi_aclk,
    s_axi_lite_aclk,
    s_axi_lite_aresetn,
    cdma_introut,
    s_axi_lite_awready,
    s_axi_lite_awvalid,
    s_axi_lite_awaddr,
    s_axi_lite_wready,
    s_axi_lite_wvalid,
    s_axi_lite_wdata,
    s_axi_lite_bready,
    s_axi_lite_bvalid,
    s_axi_lite_bresp,
    s_axi_lite_arready,
    s_axi_lite_arvalid,
    s_axi_lite_araddr,
    s_axi_lite_rready,
    s_axi_lite_rvalid,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    m_axi_arready,
    m_axi_arvalid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arprot,
    m_axi_arcache,
    m_axi_rready,
    m_axi_rvalid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_awready,
    m_axi_awvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awprot,
    m_axi_awcache,
    m_axi_wready,
    m_axi_wvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_bresp,
    m_axi_sg_awready,
    m_axi_sg_awvalid,
    m_axi_sg_awaddr,
    m_axi_sg_awlen,
    m_axi_sg_awsize,
    m_axi_sg_awburst,
    m_axi_sg_awprot,
    m_axi_sg_awcache,
    m_axi_sg_wready,
    m_axi_sg_wvalid,
    m_axi_sg_wdata,
    m_axi_sg_wstrb,
    m_axi_sg_wlast,
    m_axi_sg_bready,
    m_axi_sg_bvalid,
    m_axi_sg_bresp,
    m_axi_sg_arready,
    m_axi_sg_arvalid,
    m_axi_sg_araddr,
    m_axi_sg_arlen,
    m_axi_sg_arsize,
    m_axi_sg_arburst,
    m_axi_sg_arprot,
    m_axi_sg_arcache,
    m_axi_sg_rready,
    m_axi_sg_rvalid,
    m_axi_sg_rdata,
    m_axi_sg_rresp,
    m_axi_sg_rlast,
    cdma_tvect_out);
  input m_axi_aclk;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  output cdma_introut;
  output s_axi_lite_awready;
  input s_axi_lite_awvalid;
  input [5:0]s_axi_lite_awaddr;
  output s_axi_lite_wready;
  input s_axi_lite_wvalid;
  input [31:0]s_axi_lite_wdata;
  input s_axi_lite_bready;
  output s_axi_lite_bvalid;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_arready;
  input s_axi_lite_arvalid;
  input [5:0]s_axi_lite_araddr;
  input s_axi_lite_rready;
  output s_axi_lite_rvalid;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  input m_axi_arready;
  output m_axi_arvalid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arcache;
  output m_axi_rready;
  input m_axi_rvalid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_awready;
  output m_axi_awvalid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awcache;
  input m_axi_wready;
  output m_axi_wvalid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_bready;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;
  input m_axi_sg_awready;
  output m_axi_sg_awvalid;
  output [31:0]m_axi_sg_awaddr;
  output [7:0]m_axi_sg_awlen;
  output [2:0]m_axi_sg_awsize;
  output [1:0]m_axi_sg_awburst;
  output [2:0]m_axi_sg_awprot;
  output [3:0]m_axi_sg_awcache;
  input m_axi_sg_wready;
  output m_axi_sg_wvalid;
  output [31:0]m_axi_sg_wdata;
  output [3:0]m_axi_sg_wstrb;
  output m_axi_sg_wlast;
  output m_axi_sg_bready;
  input m_axi_sg_bvalid;
  input [1:0]m_axi_sg_bresp;
  input m_axi_sg_arready;
  output m_axi_sg_arvalid;
  output [31:0]m_axi_sg_araddr;
  output [7:0]m_axi_sg_arlen;
  output [2:0]m_axi_sg_arsize;
  output [1:0]m_axi_sg_arburst;
  output [2:0]m_axi_sg_arprot;
  output [3:0]m_axi_sg_arcache;
  output m_axi_sg_rready;
  input m_axi_sg_rvalid;
  input [31:0]m_axi_sg_rdata;
  input [1:0]m_axi_sg_rresp;
  input m_axi_sg_rlast;
  output [31:0]cdma_tvect_out;

  wire \<const0> ;
  wire \<const1> ;
  wire cdma_introut;
  wire [6:0]\^cdma_tvect_out ;
  wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [7:0]m_axi_awlen;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_lite_aclk;
  wire [5:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [5:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wvalid;

  assign cdma_tvect_out[31] = \<const0> ;
  assign cdma_tvect_out[30] = \<const0> ;
  assign cdma_tvect_out[29] = \<const0> ;
  assign cdma_tvect_out[28] = \<const0> ;
  assign cdma_tvect_out[27] = \<const0> ;
  assign cdma_tvect_out[26] = \<const0> ;
  assign cdma_tvect_out[25] = \<const0> ;
  assign cdma_tvect_out[24] = \<const0> ;
  assign cdma_tvect_out[23] = \<const0> ;
  assign cdma_tvect_out[22] = \<const0> ;
  assign cdma_tvect_out[21] = \<const0> ;
  assign cdma_tvect_out[20] = \<const0> ;
  assign cdma_tvect_out[19] = \<const0> ;
  assign cdma_tvect_out[18] = \<const0> ;
  assign cdma_tvect_out[17] = \<const0> ;
  assign cdma_tvect_out[16] = \<const0> ;
  assign cdma_tvect_out[15] = \<const0> ;
  assign cdma_tvect_out[14] = \<const0> ;
  assign cdma_tvect_out[13] = \<const0> ;
  assign cdma_tvect_out[12] = \<const0> ;
  assign cdma_tvect_out[11] = \<const0> ;
  assign cdma_tvect_out[10] = \<const0> ;
  assign cdma_tvect_out[9] = \<const0> ;
  assign cdma_tvect_out[8] = \<const0> ;
  assign cdma_tvect_out[7] = \<const0> ;
  assign cdma_tvect_out[6:0] = \^cdma_tvect_out [6:0];
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const1> ;
  assign m_axi_arcache[0] = \<const1> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const1> ;
  assign m_axi_awcache[0] = \<const1> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_sg_araddr[31] = \<const0> ;
  assign m_axi_sg_araddr[30] = \<const0> ;
  assign m_axi_sg_araddr[29] = \<const0> ;
  assign m_axi_sg_araddr[28] = \<const0> ;
  assign m_axi_sg_araddr[27] = \<const0> ;
  assign m_axi_sg_araddr[26] = \<const0> ;
  assign m_axi_sg_araddr[25] = \<const0> ;
  assign m_axi_sg_araddr[24] = \<const0> ;
  assign m_axi_sg_araddr[23] = \<const0> ;
  assign m_axi_sg_araddr[22] = \<const0> ;
  assign m_axi_sg_araddr[21] = \<const0> ;
  assign m_axi_sg_araddr[20] = \<const0> ;
  assign m_axi_sg_araddr[19] = \<const0> ;
  assign m_axi_sg_araddr[18] = \<const0> ;
  assign m_axi_sg_araddr[17] = \<const0> ;
  assign m_axi_sg_araddr[16] = \<const0> ;
  assign m_axi_sg_araddr[15] = \<const0> ;
  assign m_axi_sg_araddr[14] = \<const0> ;
  assign m_axi_sg_araddr[13] = \<const0> ;
  assign m_axi_sg_araddr[12] = \<const0> ;
  assign m_axi_sg_araddr[11] = \<const0> ;
  assign m_axi_sg_araddr[10] = \<const0> ;
  assign m_axi_sg_araddr[9] = \<const0> ;
  assign m_axi_sg_araddr[8] = \<const0> ;
  assign m_axi_sg_araddr[7] = \<const0> ;
  assign m_axi_sg_araddr[6] = \<const0> ;
  assign m_axi_sg_araddr[5] = \<const0> ;
  assign m_axi_sg_araddr[4] = \<const0> ;
  assign m_axi_sg_araddr[3] = \<const0> ;
  assign m_axi_sg_araddr[2] = \<const0> ;
  assign m_axi_sg_araddr[1] = \<const0> ;
  assign m_axi_sg_araddr[0] = \<const0> ;
  assign m_axi_sg_arburst[1] = \<const0> ;
  assign m_axi_sg_arburst[0] = \<const0> ;
  assign m_axi_sg_arcache[3] = \<const0> ;
  assign m_axi_sg_arcache[2] = \<const0> ;
  assign m_axi_sg_arcache[1] = \<const0> ;
  assign m_axi_sg_arcache[0] = \<const0> ;
  assign m_axi_sg_arlen[7] = \<const0> ;
  assign m_axi_sg_arlen[6] = \<const0> ;
  assign m_axi_sg_arlen[5] = \<const0> ;
  assign m_axi_sg_arlen[4] = \<const0> ;
  assign m_axi_sg_arlen[3] = \<const0> ;
  assign m_axi_sg_arlen[2] = \<const0> ;
  assign m_axi_sg_arlen[1] = \<const0> ;
  assign m_axi_sg_arlen[0] = \<const0> ;
  assign m_axi_sg_arprot[2] = \<const0> ;
  assign m_axi_sg_arprot[1] = \<const0> ;
  assign m_axi_sg_arprot[0] = \<const0> ;
  assign m_axi_sg_arsize[2] = \<const0> ;
  assign m_axi_sg_arsize[1] = \<const0> ;
  assign m_axi_sg_arsize[0] = \<const0> ;
  assign m_axi_sg_arvalid = \<const0> ;
  assign m_axi_sg_awaddr[31] = \<const0> ;
  assign m_axi_sg_awaddr[30] = \<const0> ;
  assign m_axi_sg_awaddr[29] = \<const0> ;
  assign m_axi_sg_awaddr[28] = \<const0> ;
  assign m_axi_sg_awaddr[27] = \<const0> ;
  assign m_axi_sg_awaddr[26] = \<const0> ;
  assign m_axi_sg_awaddr[25] = \<const0> ;
  assign m_axi_sg_awaddr[24] = \<const0> ;
  assign m_axi_sg_awaddr[23] = \<const0> ;
  assign m_axi_sg_awaddr[22] = \<const0> ;
  assign m_axi_sg_awaddr[21] = \<const0> ;
  assign m_axi_sg_awaddr[20] = \<const0> ;
  assign m_axi_sg_awaddr[19] = \<const0> ;
  assign m_axi_sg_awaddr[18] = \<const0> ;
  assign m_axi_sg_awaddr[17] = \<const0> ;
  assign m_axi_sg_awaddr[16] = \<const0> ;
  assign m_axi_sg_awaddr[15] = \<const0> ;
  assign m_axi_sg_awaddr[14] = \<const0> ;
  assign m_axi_sg_awaddr[13] = \<const0> ;
  assign m_axi_sg_awaddr[12] = \<const0> ;
  assign m_axi_sg_awaddr[11] = \<const0> ;
  assign m_axi_sg_awaddr[10] = \<const0> ;
  assign m_axi_sg_awaddr[9] = \<const0> ;
  assign m_axi_sg_awaddr[8] = \<const0> ;
  assign m_axi_sg_awaddr[7] = \<const0> ;
  assign m_axi_sg_awaddr[6] = \<const0> ;
  assign m_axi_sg_awaddr[5] = \<const0> ;
  assign m_axi_sg_awaddr[4] = \<const0> ;
  assign m_axi_sg_awaddr[3] = \<const0> ;
  assign m_axi_sg_awaddr[2] = \<const0> ;
  assign m_axi_sg_awaddr[1] = \<const0> ;
  assign m_axi_sg_awaddr[0] = \<const0> ;
  assign m_axi_sg_awburst[1] = \<const0> ;
  assign m_axi_sg_awburst[0] = \<const0> ;
  assign m_axi_sg_awcache[3] = \<const0> ;
  assign m_axi_sg_awcache[2] = \<const0> ;
  assign m_axi_sg_awcache[1] = \<const0> ;
  assign m_axi_sg_awcache[0] = \<const0> ;
  assign m_axi_sg_awlen[7] = \<const0> ;
  assign m_axi_sg_awlen[6] = \<const0> ;
  assign m_axi_sg_awlen[5] = \<const0> ;
  assign m_axi_sg_awlen[4] = \<const0> ;
  assign m_axi_sg_awlen[3] = \<const0> ;
  assign m_axi_sg_awlen[2] = \<const0> ;
  assign m_axi_sg_awlen[1] = \<const0> ;
  assign m_axi_sg_awlen[0] = \<const0> ;
  assign m_axi_sg_awprot[2] = \<const0> ;
  assign m_axi_sg_awprot[1] = \<const0> ;
  assign m_axi_sg_awprot[0] = \<const0> ;
  assign m_axi_sg_awsize[2] = \<const0> ;
  assign m_axi_sg_awsize[1] = \<const0> ;
  assign m_axi_sg_awsize[0] = \<const0> ;
  assign m_axi_sg_awvalid = \<const0> ;
  assign m_axi_sg_bready = \<const0> ;
  assign m_axi_sg_rready = \<const0> ;
  assign m_axi_sg_wdata[31] = \<const0> ;
  assign m_axi_sg_wdata[30] = \<const0> ;
  assign m_axi_sg_wdata[29] = \<const0> ;
  assign m_axi_sg_wdata[28] = \<const0> ;
  assign m_axi_sg_wdata[27] = \<const0> ;
  assign m_axi_sg_wdata[26] = \<const0> ;
  assign m_axi_sg_wdata[25] = \<const0> ;
  assign m_axi_sg_wdata[24] = \<const0> ;
  assign m_axi_sg_wdata[23] = \<const0> ;
  assign m_axi_sg_wdata[22] = \<const0> ;
  assign m_axi_sg_wdata[21] = \<const0> ;
  assign m_axi_sg_wdata[20] = \<const0> ;
  assign m_axi_sg_wdata[19] = \<const0> ;
  assign m_axi_sg_wdata[18] = \<const0> ;
  assign m_axi_sg_wdata[17] = \<const0> ;
  assign m_axi_sg_wdata[16] = \<const0> ;
  assign m_axi_sg_wdata[15] = \<const0> ;
  assign m_axi_sg_wdata[14] = \<const0> ;
  assign m_axi_sg_wdata[13] = \<const0> ;
  assign m_axi_sg_wdata[12] = \<const0> ;
  assign m_axi_sg_wdata[11] = \<const0> ;
  assign m_axi_sg_wdata[10] = \<const0> ;
  assign m_axi_sg_wdata[9] = \<const0> ;
  assign m_axi_sg_wdata[8] = \<const0> ;
  assign m_axi_sg_wdata[7] = \<const0> ;
  assign m_axi_sg_wdata[6] = \<const0> ;
  assign m_axi_sg_wdata[5] = \<const0> ;
  assign m_axi_sg_wdata[4] = \<const0> ;
  assign m_axi_sg_wdata[3] = \<const0> ;
  assign m_axi_sg_wdata[2] = \<const0> ;
  assign m_axi_sg_wdata[1] = \<const0> ;
  assign m_axi_sg_wdata[0] = \<const0> ;
  assign m_axi_sg_wlast = \<const0> ;
  assign m_axi_sg_wstrb[3] = \<const0> ;
  assign m_axi_sg_wstrb[2] = \<const0> ;
  assign m_axi_sg_wstrb[1] = \<const0> ;
  assign m_axi_sg_wstrb[0] = \<const0> ;
  assign m_axi_sg_wvalid = \<const0> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  assign s_axi_lite_wready = s_axi_lite_awready;
  CMDA_DRAM_axi_cdma_0_0_axi_cdma_simple_wrap \GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP 
       (.axi_cdma_tstvec(\^cdma_tvect_out [3:1]),
        .cdma_introut(cdma_introut),
        .cdma_tvect_out({\^cdma_tvect_out [6:4],\^cdma_tvect_out [0]}),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr[5:2]),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[5:2]),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wvalid(s_axi_lite_wvalid));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "axi_cdma_lite_if" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma_lite_if
   (s_axi_lite_awready,
    \GEN_SYNC_WRITE.wready_i_reg_0 ,
    s_axi_lite_arready,
    s_axi_lite_bvalid,
    s_axi_lite_rvalid,
    \GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 ,
    E,
    \sig_da_register_lsb_reg[0] ,
    \sig_sa_register_lsb_reg[0] ,
    ioc_irq_reg,
    \dmacr_i_reg[4] ,
    s_axi_lite_rdata,
    s_axi_lite_aclk,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ,
    s_axi_lite_awvalid,
    s_axi_lite_wvalid,
    s_axi_lite_arvalid,
    p_1_out,
    p_0_out,
    \sig_sa_register_lsb_reg[1] ,
    \sig_sa_register_lsb_reg[31] ,
    \sig_sa_register_lsb_reg[2] ,
    \sig_da_register_lsb_reg[31] ,
    \GEN_SYNC_READ.axi2ip_rdce_reg[0]_0 ,
    Q,
    err_irq_reg,
    ioc_irq_reg_0,
    \dmacr_i_reg[6] ,
    dma_decerr_reg,
    dma_keyhole_write,
    dma_slverr_reg,
    dma_interr_reg,
    s_axi_lite_bready,
    s_axi_lite_rready,
    s_axi_lite_araddr,
    arvalid_d10,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 ,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 ,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 ,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 ,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 ,
    SR);
  output s_axi_lite_awready;
  output \GEN_SYNC_WRITE.wready_i_reg_0 ;
  output s_axi_lite_arready;
  output s_axi_lite_bvalid;
  output s_axi_lite_rvalid;
  output [10:0]\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 ;
  output [0:0]E;
  output [0:0]\sig_da_register_lsb_reg[0] ;
  output [0:0]\sig_sa_register_lsb_reg[0] ;
  output ioc_irq_reg;
  output [0:0]\dmacr_i_reg[4] ;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_aclk;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ;
  input s_axi_lite_awvalid;
  input s_axi_lite_wvalid;
  input s_axi_lite_arvalid;
  input p_1_out;
  input p_0_out;
  input \sig_sa_register_lsb_reg[1] ;
  input [54:0]\sig_sa_register_lsb_reg[31] ;
  input \sig_sa_register_lsb_reg[2] ;
  input [29:0]\sig_da_register_lsb_reg[31] ;
  input \GEN_SYNC_READ.axi2ip_rdce_reg[0]_0 ;
  input [1:0]Q;
  input err_irq_reg;
  input ioc_irq_reg_0;
  input [1:0]\dmacr_i_reg[6] ;
  input dma_decerr_reg;
  input dma_keyhole_write;
  input dma_slverr_reg;
  input dma_interr_reg;
  input s_axi_lite_bready;
  input s_axi_lite_rready;
  input [3:0]s_axi_lite_araddr;
  input arvalid_d10;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 ;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 ;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 ;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 ;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 ;
  input [0:0]SR;

  wire [0:0]E;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[0]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[10]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[10]_i_2_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[11]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[12]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[12]_i_2_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[13]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[13]_i_2_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[14]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[14]_i_2_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[15]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[15]_i_2_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[1]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[2]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[3]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[3]_i_2_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[4]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[5]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[5]_i_2_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[6]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[6]_i_2_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[7]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[8]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[9]_i_1_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce[9]_i_2_n_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdce_reg[0]_0 ;
  wire [10:0]\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[0]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[10]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[11]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[16]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[17]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[18]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[19]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[20]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[21]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[22]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[3]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[4]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[5]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[6]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[7]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[8]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[9]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.awvalid_d1_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.bvalid_i_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.rdy_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.wr_addr_cap_i_2_n_0 ;
  wire \GEN_SYNC_WRITE.wr_data_cap_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.wr_in_progress_i_2_n_0 ;
  wire \GEN_SYNC_WRITE.wready_i_reg_0 ;
  wire \GEN_SYNC_WRITE.wvalid_d1_i_1_n_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [5:2]araddr;
  wire arvalid;
  wire arvalid_d1;
  wire arvalid_d10;
  wire arvalid_d1_i_1_n_0;
  wire arvalid_re;
  wire awvalid;
  wire awvalid_d1;
  wire [15:11]axi2ip_rdce;
  wire dma_decerr_reg;
  wire dma_interr_reg;
  wire dma_keyhole_write;
  wire dma_slverr_reg;
  wire [0:0]\dmacr_i_reg[4] ;
  wire [1:0]\dmacr_i_reg[6] ;
  wire err_irq_reg;
  wire ioc_irq_reg;
  wire ioc_irq_reg_0;
  wire [3:0]p_0_in;
  wire p_0_out;
  wire p_1_out;
  wire rvalid;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire s_axi_lite_wvalid;
  wire [0:0]\sig_da_register_lsb_reg[0] ;
  wire [29:0]\sig_da_register_lsb_reg[31] ;
  wire [31:0]sig_ip2axi_rddata1_out;
  wire [0:0]\sig_sa_register_lsb_reg[0] ;
  wire \sig_sa_register_lsb_reg[1] ;
  wire \sig_sa_register_lsb_reg[2] ;
  wire [54:0]\sig_sa_register_lsb_reg[31] ;
  wire wr_addr_cap;
  wire wr_data_cap;
  wire wr_in_progress;
  wire wvalid;
  wire wvalid_d1;

  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[2]),
        .Q(p_0_in[0]),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[3]),
        .Q(p_0_in[1]),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[4]),
        .Q(p_0_in[2]),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[5]),
        .Q(p_0_in[3]),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  LUT6 #(
    .INIT(64'h00000000222222E2)) 
    \GEN_SYNC_READ.axi2ip_rdce[0]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [0]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[3]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222222E)) 
    \GEN_SYNC_READ.axi2ip_rdce[10]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .I1(s_axi_lite_arready),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce[10]_i_2_n_0 ),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_SYNC_READ.axi2ip_rdce[10]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .O(\GEN_SYNC_READ.axi2ip_rdce[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222222E2)) 
    \GEN_SYNC_READ.axi2ip_rdce[11]_i_1 
       (.I0(axi2ip_rdce[11]),
        .I1(s_axi_lite_arready),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce[15]_i_2_n_0 ),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    \GEN_SYNC_READ.axi2ip_rdce[12]_i_1 
       (.I0(axi2ip_rdce[12]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[12]_i_2_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_SYNC_READ.axi2ip_rdce[12]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(\GEN_SYNC_READ.axi2ip_rdce[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222222E2)) 
    \GEN_SYNC_READ.axi2ip_rdce[13]_i_1 
       (.I0(axi2ip_rdce[13]),
        .I1(s_axi_lite_arready),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce[13]_i_2_n_0 ),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_SYNC_READ.axi2ip_rdce[13]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[3]),
        .O(\GEN_SYNC_READ.axi2ip_rdce[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    \GEN_SYNC_READ.axi2ip_rdce[14]_i_1 
       (.I0(axi2ip_rdce[14]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[14]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_SYNC_READ.axi2ip_rdce[14]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .O(\GEN_SYNC_READ.axi2ip_rdce[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222E222)) 
    \GEN_SYNC_READ.axi2ip_rdce[15]_i_1 
       (.I0(axi2ip_rdce[15]),
        .I1(s_axi_lite_arready),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce[15]_i_2_n_0 ),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_SYNC_READ.axi2ip_rdce[15]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(\GEN_SYNC_READ.axi2ip_rdce[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222E222)) 
    \GEN_SYNC_READ.axi2ip_rdce[1]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [1]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[3]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222E222)) 
    \GEN_SYNC_READ.axi2ip_rdce[2]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [2]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[3]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    \GEN_SYNC_READ.axi2ip_rdce[3]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [3]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[3]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_SYNC_READ.axi2ip_rdce[3]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .O(\GEN_SYNC_READ.axi2ip_rdce[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222E222)) 
    \GEN_SYNC_READ.axi2ip_rdce[4]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [4]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[5]_i_2_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    \GEN_SYNC_READ.axi2ip_rdce[5]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [5]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[5]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_SYNC_READ.axi2ip_rdce[5]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .O(\GEN_SYNC_READ.axi2ip_rdce[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \GEN_SYNC_READ.axi2ip_rdce[6]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[6]_i_2_n_0 ),
        .I3(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ),
        .I4(s_axi_lite_rvalid),
        .O(\GEN_SYNC_READ.axi2ip_rdce[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'h57555555)) 
    \GEN_SYNC_READ.axi2ip_rdce[6]_i_2 
       (.I0(s_axi_lite_arready),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .O(\GEN_SYNC_READ.axi2ip_rdce[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222222E2)) 
    \GEN_SYNC_READ.axi2ip_rdce[7]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [7]),
        .I1(s_axi_lite_arready),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce[15]_i_2_n_0 ),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222E222)) 
    \GEN_SYNC_READ.axi2ip_rdce[8]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[9]_i_2_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[0]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    \GEN_SYNC_READ.axi2ip_rdce[9]_i_1 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [9]),
        .I1(s_axi_lite_arready),
        .I2(\GEN_SYNC_READ.axi2ip_rdce[9]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[3]),
        .I5(arvalid_d10),
        .O(\GEN_SYNC_READ.axi2ip_rdce[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_SYNC_READ.axi2ip_rdce[9]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .O(\GEN_SYNC_READ.axi2ip_rdce[9]_i_2_n_0 ));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[0]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [0]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[10]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[11]_i_1_n_0 ),
        .Q(axi2ip_rdce[11]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[12]_i_1_n_0 ),
        .Q(axi2ip_rdce[12]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[13]_i_1_n_0 ),
        .Q(axi2ip_rdce[13]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[14]_i_1_n_0 ),
        .Q(axi2ip_rdce[14]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[15]_i_1_n_0 ),
        .Q(axi2ip_rdce[15]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[1]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [1]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[2]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [2]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[3]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [3]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[4]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [4]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[5]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [5]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[6]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[7]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [7]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[8]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .R(1'b0));
  FDRE \GEN_SYNC_READ.axi2ip_rdce_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.axi2ip_rdce[9]_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.rvalid_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_arready),
        .Q(rvalid),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[0]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[0]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[0]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [25]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_sa_register_lsb_reg[31] [23]),
        .I4(\sig_sa_register_lsb_reg[31] [0]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[10]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[10]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[10]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [33]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [8]),
        .I4(\sig_sa_register_lsb_reg[31] [10]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[11]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[11]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[11]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [34]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [9]),
        .I4(\sig_sa_register_lsb_reg[31] [11]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\sig_da_register_lsb_reg[31] [10]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_sa_register_lsb_reg[31] [35]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata[12]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [0]),
        .I1(Q[0]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [1]),
        .I3(ioc_irq_reg_0),
        .I4(\sig_sa_register_lsb_reg[31] [12]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [36]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [11]),
        .I4(\sig_sa_register_lsb_reg[31] [13]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[14]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\sig_da_register_lsb_reg[31] [12]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_sa_register_lsb_reg[31] [37]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [0]),
        .I1(Q[1]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [1]),
        .I3(err_irq_reg),
        .I4(\sig_sa_register_lsb_reg[31] [14]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[15]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [38]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [13]),
        .I4(\sig_sa_register_lsb_reg[31] [15]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[16]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[16]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[16]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [39]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [14]),
        .I4(\sig_sa_register_lsb_reg[31] [16]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[17]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[17]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[17]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [40]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [15]),
        .I4(\sig_sa_register_lsb_reg[31] [17]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[18]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[18]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[18]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [41]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [16]),
        .I4(\sig_sa_register_lsb_reg[31] [18]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[19]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[19]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[19]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [42]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [17]),
        .I4(\sig_sa_register_lsb_reg[31] [19]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[1]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\sig_sa_register_lsb_reg[1] ),
        .I2(\sig_sa_register_lsb_reg[31] [1]),
        .I3(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .I4(\sig_sa_register_lsb_reg[31] [24]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .O(sig_ip2axi_rddata1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[20]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[20]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[20]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [43]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [18]),
        .I4(\sig_sa_register_lsb_reg[31] [20]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[21]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[21]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[21]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [44]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [19]),
        .I4(\sig_sa_register_lsb_reg[31] [21]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[22]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[22]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[22]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [45]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [20]),
        .I4(\sig_sa_register_lsb_reg[31] [22]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[23]_i_1 
       (.I0(\sig_da_register_lsb_reg[31] [21]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I2(\sig_sa_register_lsb_reg[31] [46]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .O(sig_ip2axi_rddata1_out[23]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[24]_i_1 
       (.I0(\sig_da_register_lsb_reg[31] [22]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I2(\sig_sa_register_lsb_reg[31] [47]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .O(sig_ip2axi_rddata1_out[24]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[25]_i_1 
       (.I0(\sig_da_register_lsb_reg[31] [23]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I2(\sig_sa_register_lsb_reg[31] [48]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .O(sig_ip2axi_rddata1_out[25]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[26]_i_1 
       (.I0(\sig_da_register_lsb_reg[31] [24]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I2(\sig_sa_register_lsb_reg[31] [49]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .O(sig_ip2axi_rddata1_out[26]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[27]_i_1 
       (.I0(\sig_da_register_lsb_reg[31] [25]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I2(\sig_sa_register_lsb_reg[31] [50]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .O(sig_ip2axi_rddata1_out[27]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[28]_i_1 
       (.I0(\sig_da_register_lsb_reg[31] [26]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I2(\sig_sa_register_lsb_reg[31] [51]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .O(sig_ip2axi_rddata1_out[28]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[29]_i_1 
       (.I0(\sig_da_register_lsb_reg[31] [27]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I2(\sig_sa_register_lsb_reg[31] [52]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .O(sig_ip2axi_rddata1_out[29]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[2]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\sig_sa_register_lsb_reg[2] ),
        .I2(\sig_sa_register_lsb_reg[31] [2]),
        .I3(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .I4(\sig_da_register_lsb_reg[31] [0]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .O(sig_ip2axi_rddata1_out[2]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[30]_i_1 
       (.I0(\sig_da_register_lsb_reg[31] [28]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I2(\sig_sa_register_lsb_reg[31] [53]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .O(sig_ip2axi_rddata1_out[30]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_2 
       (.I0(\sig_da_register_lsb_reg[31] [29]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I2(\sig_sa_register_lsb_reg[31] [54]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .O(sig_ip2axi_rddata1_out[31]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[0]_0 ),
        .I1(axi2ip_rdce[12]),
        .I2(axi2ip_rdce[13]),
        .I3(axi2ip_rdce[14]),
        .I4(axi2ip_rdce[15]),
        .I5(axi2ip_rdce[11]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[3]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[3]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[3]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [26]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [1]),
        .I4(\sig_sa_register_lsb_reg[31] [3]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[4]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\sig_da_register_lsb_reg[31] [2]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_sa_register_lsb_reg[31] [27]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata[4]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[4]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [0]),
        .I1(\dmacr_i_reg[6] [0]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [1]),
        .I3(dma_interr_reg),
        .I4(\sig_sa_register_lsb_reg[31] [4]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[5]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\sig_da_register_lsb_reg[31] [3]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_sa_register_lsb_reg[31] [28]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata[5]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[5]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [0]),
        .I1(dma_keyhole_write),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [1]),
        .I3(dma_slverr_reg),
        .I4(\sig_sa_register_lsb_reg[31] [5]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[6]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\sig_da_register_lsb_reg[31] [4]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_sa_register_lsb_reg[31] [29]),
        .I4(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata[6]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[6]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [0]),
        .I1(\dmacr_i_reg[6] [1]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [1]),
        .I3(dma_decerr_reg),
        .I4(\sig_sa_register_lsb_reg[31] [6]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[7]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[7]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[7]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [30]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [5]),
        .I4(\sig_sa_register_lsb_reg[31] [7]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[8]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[8]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[8]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [31]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [6]),
        .I4(\sig_sa_register_lsb_reg[31] [8]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[9]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[9]_i_2_n_0 ),
        .O(sig_ip2axi_rddata1_out[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[9]_i_2 
       (.I0(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [6]),
        .I1(\sig_sa_register_lsb_reg[31] [32]),
        .I2(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [8]),
        .I3(\sig_da_register_lsb_reg[31] [7]),
        .I4(\sig_sa_register_lsb_reg[31] [9]),
        .I5(\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 [10]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[9]_i_2_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[0]),
        .Q(s_axi_lite_rdata[0]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[10]),
        .Q(s_axi_lite_rdata[10]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[11]),
        .Q(s_axi_lite_rdata[11]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[12]),
        .Q(s_axi_lite_rdata[12]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[13]),
        .Q(s_axi_lite_rdata[13]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[14]),
        .Q(s_axi_lite_rdata[14]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[15]),
        .Q(s_axi_lite_rdata[15]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[16]),
        .Q(s_axi_lite_rdata[16]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[17]),
        .Q(s_axi_lite_rdata[17]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[18]),
        .Q(s_axi_lite_rdata[18]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[19]),
        .Q(s_axi_lite_rdata[19]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[1]),
        .Q(s_axi_lite_rdata[1]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[20]),
        .Q(s_axi_lite_rdata[20]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[21]),
        .Q(s_axi_lite_rdata[21]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[22]),
        .Q(s_axi_lite_rdata[22]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[23]),
        .Q(s_axi_lite_rdata[23]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[24]),
        .Q(s_axi_lite_rdata[24]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[25]),
        .Q(s_axi_lite_rdata[25]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[26]),
        .Q(s_axi_lite_rdata[26]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[27]),
        .Q(s_axi_lite_rdata[27]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[28]),
        .Q(s_axi_lite_rdata[28]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[29]),
        .Q(s_axi_lite_rdata[29]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[2]),
        .Q(s_axi_lite_rdata[2]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[30]),
        .Q(s_axi_lite_rdata[30]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[31]),
        .Q(s_axi_lite_rdata[31]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[3]),
        .Q(s_axi_lite_rdata[3]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[4]),
        .Q(s_axi_lite_rdata[4]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[5]),
        .Q(s_axi_lite_rdata[5]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[6]),
        .Q(s_axi_lite_rdata[6]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[7]),
        .Q(s_axi_lite_rdata[7]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[8]),
        .Q(s_axi_lite_rdata[8]),
        .R(SR));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(sig_ip2axi_rddata1_out[9]),
        .Q(s_axi_lite_rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h002E)) 
    \GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1 
       (.I0(rvalid),
        .I1(s_axi_lite_rvalid),
        .I2(s_axi_lite_rready),
        .I3(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ),
        .O(\GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1_n_0 ),
        .Q(s_axi_lite_rvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_SYNC_WRITE.awvalid_d1_i_1 
       (.I0(awvalid),
        .I1(s_axi_lite_bvalid),
        .I2(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ),
        .O(\GEN_SYNC_WRITE.awvalid_d1_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.awvalid_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.awvalid_d1_i_1_n_0 ),
        .Q(awvalid_d1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1 
       (.I0(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1_n_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 ),
        .Q(\dmacr_i_reg[4] ),
        .R(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1_n_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 ),
        .Q(E),
        .R(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1_n_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 ),
        .Q(ioc_irq_reg),
        .R(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1_n_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 ),
        .Q(\sig_sa_register_lsb_reg[0] ),
        .R(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1_n_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 ),
        .Q(\sig_da_register_lsb_reg[0] ),
        .R(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'h002E)) 
    \GEN_SYNC_WRITE.bvalid_i_i_1 
       (.I0(s_axi_lite_awready),
        .I1(s_axi_lite_bvalid),
        .I2(s_axi_lite_bready),
        .I3(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ),
        .O(\GEN_SYNC_WRITE.bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.bvalid_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.bvalid_i_i_1_n_0 ),
        .Q(s_axi_lite_bvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \GEN_SYNC_WRITE.rdy_i_1 
       (.I0(wr_data_cap),
        .I1(wr_addr_cap),
        .I2(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .I3(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ),
        .O(\GEN_SYNC_WRITE.rdy_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.rdy_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.rdy_i_1_n_0 ),
        .Q(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF10)) 
    \GEN_SYNC_WRITE.wr_addr_cap_i_2 
       (.I0(wr_in_progress),
        .I1(awvalid_d1),
        .I2(awvalid),
        .I3(wr_addr_cap),
        .O(\GEN_SYNC_WRITE.wr_addr_cap_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wr_addr_cap_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wr_addr_cap_i_2_n_0 ),
        .Q(wr_addr_cap),
        .R(p_0_out));
  LUT5 #(
    .INIT(32'h000000AE)) 
    \GEN_SYNC_WRITE.wr_data_cap_i_1 
       (.I0(wr_data_cap),
        .I1(wvalid),
        .I2(wvalid_d1),
        .I3(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .I4(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ),
        .O(\GEN_SYNC_WRITE.wr_data_cap_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wr_data_cap_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wr_data_cap_i_1_n_0 ),
        .Q(wr_data_cap),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \GEN_SYNC_WRITE.wr_in_progress_i_2 
       (.I0(awvalid_d1),
        .I1(awvalid),
        .I2(wr_in_progress),
        .O(\GEN_SYNC_WRITE.wr_in_progress_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wr_in_progress_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wr_in_progress_i_2_n_0 ),
        .Q(wr_in_progress),
        .R(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wready_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .Q(s_axi_lite_awready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_SYNC_WRITE.wvalid_d1_i_1 
       (.I0(wvalid),
        .I1(s_axi_lite_bvalid),
        .I2(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ),
        .O(\GEN_SYNC_WRITE.wvalid_d1_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wvalid_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wvalid_d1_i_1_n_0 ),
        .Q(wvalid_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[0]),
        .Q(araddr[2]),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[1]),
        .Q(araddr[3]),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[2]),
        .Q(araddr[4]),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[3]),
        .Q(araddr[5]),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  LUT3 #(
    .INIT(8'h02)) 
    arready_i_i_1
       (.I0(arvalid),
        .I1(arvalid_d1),
        .I2(s_axi_lite_rvalid),
        .O(arvalid_re));
  FDRE #(
    .INIT(1'b0)) 
    arready_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(arvalid_re),
        .Q(s_axi_lite_arready),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h02)) 
    arvalid_d1_i_1
       (.I0(arvalid),
        .I1(s_axi_lite_rvalid),
        .I2(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ),
        .O(arvalid_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(arvalid_d1_i_1_n_0),
        .Q(arvalid_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_arvalid),
        .Q(arvalid),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_awvalid),
        .Q(awvalid),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    wvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_wvalid),
        .Q(wvalid),
        .R(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ));
endmodule

(* ORIG_REF_NAME = "axi_cdma_pulse_gen" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma_pulse_gen
   (\GEN_AXI_LITE_SYNC2AXI.sig_composite_sg_reset_n_reg ,
    Q,
    \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ,
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg_reg[1]_0 ,
    sig_halt_cmplt_reg,
    p_0_in,
    sig_local_hw_reset_reg,
    m_axi_aclk,
    sig_halt_cmplt,
    s_axi_lite_aresetn,
    sig_to_edge_detect_reg,
    p_18_out,
    sig_cntlr2rst_halt_cmplt,
    p_36_out,
    sig_halt_request_reg);
  output \GEN_AXI_LITE_SYNC2AXI.sig_composite_sg_reset_n_reg ;
  output [0:0]Q;
  output \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ;
  output \DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg_reg[1]_0 ;
  output sig_halt_cmplt_reg;
  output p_0_in;
  input sig_local_hw_reset_reg;
  input m_axi_aclk;
  input sig_halt_cmplt;
  input s_axi_lite_aresetn;
  input sig_to_edge_detect_reg;
  input p_18_out;
  input sig_cntlr2rst_halt_cmplt;
  input p_36_out;
  input sig_halt_request_reg;

  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg[1]_i_1__0_n_0 ;
  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg_reg[1]_0 ;
  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg[2]_i_1_n_0 ;
  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[3].sig_shift_reg[3]_i_1_n_0 ;
  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[4].sig_shift_reg[4]_i_1_n_0 ;
  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[5].sig_shift_reg[5]_i_1_n_0 ;
  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[6].sig_shift_reg[6]_i_1_n_0 ;
  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[7].sig_shift_reg[7]_i_1_n_0 ;
  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg[8]_i_1_n_0 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_composite_sg_reset_n_reg ;
  wire [0:0]Q;
  wire m_axi_aclk;
  wire p_0_in;
  wire p_18_out;
  wire p_36_out;
  wire s_axi_lite_aresetn;
  wire sig_cntlr2rst_halt_cmplt;
  wire sig_halt_cmplt;
  wire sig_halt_cmplt_reg;
  wire sig_halt_request_reg;
  wire sig_local_hw_reset_reg;
  wire [1:7]sig_shift_reg;
  wire sig_to_edge_detect_reg;
  wire sig_to_edge_detect_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg[1]_i_1 
       (.I0(Q),
        .I1(sig_to_edge_detect_reg),
        .I2(sig_local_hw_reset_reg),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg[1]_i_1__0 
       (.I0(sig_to_edge_detect_reg_0),
        .I1(sig_halt_cmplt),
        .I2(sig_local_hw_reset_reg),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg[1]_i_1__0_n_0 ));
  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg[1]_i_1__0_n_0 ),
        .Q(sig_shift_reg[1]),
        .R(sig_local_hw_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg[2]_i_1 
       (.I0(sig_shift_reg[1]),
        .I1(sig_local_hw_reset_reg),
        .I2(sig_halt_cmplt),
        .I3(sig_to_edge_detect_reg_0),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg[2]_i_1_n_0 ));
  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg[2]_i_1_n_0 ),
        .Q(sig_shift_reg[2]),
        .R(sig_local_hw_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[3].sig_shift_reg[3]_i_1 
       (.I0(sig_shift_reg[2]),
        .I1(sig_local_hw_reset_reg),
        .I2(sig_halt_cmplt),
        .I3(sig_to_edge_detect_reg_0),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[3].sig_shift_reg[3]_i_1_n_0 ));
  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[3].sig_shift_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[3].sig_shift_reg[3]_i_1_n_0 ),
        .Q(sig_shift_reg[3]),
        .R(sig_local_hw_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[4].sig_shift_reg[4]_i_1 
       (.I0(sig_shift_reg[3]),
        .I1(sig_local_hw_reset_reg),
        .I2(sig_halt_cmplt),
        .I3(sig_to_edge_detect_reg_0),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[4].sig_shift_reg[4]_i_1_n_0 ));
  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[4].sig_shift_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[4].sig_shift_reg[4]_i_1_n_0 ),
        .Q(sig_shift_reg[4]),
        .R(sig_local_hw_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[5].sig_shift_reg[5]_i_1 
       (.I0(sig_shift_reg[4]),
        .I1(sig_local_hw_reset_reg),
        .I2(sig_halt_cmplt),
        .I3(sig_to_edge_detect_reg_0),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[5].sig_shift_reg[5]_i_1_n_0 ));
  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[5].sig_shift_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[5].sig_shift_reg[5]_i_1_n_0 ),
        .Q(sig_shift_reg[5]),
        .R(sig_local_hw_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[6].sig_shift_reg[6]_i_1 
       (.I0(sig_shift_reg[5]),
        .I1(sig_local_hw_reset_reg),
        .I2(sig_halt_cmplt),
        .I3(sig_to_edge_detect_reg_0),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[6].sig_shift_reg[6]_i_1_n_0 ));
  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[6].sig_shift_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[6].sig_shift_reg[6]_i_1_n_0 ),
        .Q(sig_shift_reg[6]),
        .R(sig_local_hw_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[7].sig_shift_reg[7]_i_1 
       (.I0(sig_shift_reg[6]),
        .I1(sig_local_hw_reset_reg),
        .I2(sig_halt_cmplt),
        .I3(sig_to_edge_detect_reg_0),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[7].sig_shift_reg[7]_i_1_n_0 ));
  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[7].sig_shift_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[7].sig_shift_reg[7]_i_1_n_0 ),
        .Q(sig_shift_reg[7]),
        .R(sig_local_hw_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg[8]_i_1 
       (.I0(sig_shift_reg[7]),
        .I1(sig_to_edge_detect_reg_0),
        .I2(sig_halt_cmplt),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg[8]_i_1_n_0 ));
  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg[8]_i_1_n_0 ),
        .Q(Q),
        .R(sig_local_hw_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_i_1 
       (.I0(Q),
        .I1(s_axi_lite_aresetn),
        .O(\GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_composite_sg_reset_n_i_1 
       (.I0(s_axi_lite_aresetn),
        .I1(Q),
        .O(\GEN_AXI_LITE_SYNC2AXI.sig_composite_sg_reset_n_reg ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_dm_soft_reset_n_i_1 
       (.I0(Q),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    sig_halt_cmplt_i_1
       (.I0(p_18_out),
        .I1(sig_cntlr2rst_halt_cmplt),
        .I2(p_36_out),
        .I3(sig_halt_request_reg),
        .I4(sig_local_hw_reset_reg),
        .I5(Q),
        .O(sig_halt_cmplt_reg));
  FDRE sig_to_edge_detect_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_halt_cmplt),
        .Q(sig_to_edge_detect_reg_0),
        .R(sig_local_hw_reset_reg));
endmodule

(* ORIG_REF_NAME = "axi_cdma_pulse_gen" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma_pulse_gen__parameterized0
   (sig_to_edge_detect_reg,
    dmacr_i,
    sig_local_hw_reset_reg,
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg_reg[8] ,
    m_axi_aclk,
    Q,
    \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ,
    sig_reg2rst_soft_reset,
    E,
    s_axi_lite_wdata);
  output sig_to_edge_detect_reg;
  output [0:0]dmacr_i;
  input sig_local_hw_reset_reg;
  input \DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg_reg[8] ;
  input m_axi_aclk;
  input [0:0]Q;
  input \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ;
  input sig_reg2rst_soft_reset;
  input [0:0]E;
  input [0:0]s_axi_lite_wdata;

  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg[2]_i_1__0_n_0 ;
  wire \DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg_reg[8] ;
  wire [0:0]E;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ;
  wire [0:0]Q;
  wire [0:0]dmacr_i;
  wire m_axi_aclk;
  wire [0:0]s_axi_lite_wdata;
  wire sig_local_hw_reset_reg;
  wire sig_reg2rst_soft_reset;
  wire sig_rst2reg_soft_reset_clr;
  wire [1:1]sig_shift_reg;
  wire sig_to_edge_detect_reg;

  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg_reg[8] ),
        .Q(sig_shift_reg),
        .R(sig_local_hw_reset_reg));
  LUT3 #(
    .INIT(8'hBA)) 
    \DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg[2]_i_1__0 
       (.I0(sig_shift_reg),
        .I1(Q),
        .I2(sig_to_edge_detect_reg),
        .O(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg[2]_i_1__0_n_0 ));
  FDRE \DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\DO_MULTI_CLK_PULSE.DO_SHIF_REG[2].sig_shift_reg[2]_i_1__0_n_0 ),
        .Q(sig_rst2reg_soft_reset_clr),
        .R(sig_local_hw_reset_reg));
  LUT5 #(
    .INIT(32'h11101010)) 
    \dmacr_i[2]_i_1 
       (.I0(\GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ),
        .I1(sig_rst2reg_soft_reset_clr),
        .I2(sig_reg2rst_soft_reset),
        .I3(E),
        .I4(s_axi_lite_wdata),
        .O(dmacr_i));
  FDRE sig_to_edge_detect_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(sig_to_edge_detect_reg),
        .R(sig_local_hw_reset_reg));
endmodule

(* ORIG_REF_NAME = "axi_cdma_pulse_gen" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma_pulse_gen__parameterized1
   (sig_to_edge_detect_reg,
    sig_halt_request_reg,
    sig_local_hw_reset_reg,
    sig_reg2rst_soft_reset,
    m_axi_aclk,
    sig_pulse_trigger,
    sig_halt_request_reg_0,
    Q);
  output sig_to_edge_detect_reg;
  output sig_halt_request_reg;
  input sig_local_hw_reset_reg;
  input sig_reg2rst_soft_reset;
  input m_axi_aclk;
  input sig_pulse_trigger;
  input sig_halt_request_reg_0;
  input [0:0]Q;

  wire [0:0]Q;
  wire m_axi_aclk;
  wire sig_halt_request_reg;
  wire sig_halt_request_reg_0;
  wire sig_local_hw_reset_reg;
  wire sig_pulse_out;
  wire sig_pulse_trigger;
  wire sig_reg2rst_soft_reset;
  wire sig_to_edge_detect_reg;

  FDRE \DO_SINGLE_CLK_PULSE.sig_pulse_out_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pulse_trigger),
        .Q(sig_pulse_out),
        .R(sig_local_hw_reset_reg));
  LUT4 #(
    .INIT(16'h000E)) 
    sig_halt_request_i_1
       (.I0(sig_halt_request_reg_0),
        .I1(sig_pulse_out),
        .I2(Q),
        .I3(sig_local_hw_reset_reg),
        .O(sig_halt_request_reg));
  FDRE sig_to_edge_detect_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_reg2rst_soft_reset),
        .Q(sig_to_edge_detect_reg),
        .R(sig_local_hw_reset_reg));
endmodule

(* ORIG_REF_NAME = "axi_cdma_reg_module" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma_reg_module
   (sig_reg2rst_soft_reset,
    E,
    s_axi_lite_awready,
    rdy,
    s_axi_lite_arready,
    cdma_introut,
    s_axi_lite_bvalid,
    idle,
    error_d1_reg,
    error_d1_reg_0,
    error_d1_reg_1,
    \cdma_tvect_out[0] ,
    s_axi_lite_rvalid,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ,
    sig_pulse_trigger,
    s_axi_lite_rdata,
    dmacr_i,
    m_axi_aclk,
    out,
    s_axi_lite_wdata,
    s_axi_lite_aclk,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ,
    s_axi_lite_awvalid,
    s_axi_lite_wvalid,
    s_axi_lite_arvalid,
    p_1_out,
    p_0_out,
    idle_reg,
    dma_interr_reg,
    \sig_s2mm_status_reg_reg[6] ,
    \sig_s2mm_status_reg_reg[5] ,
    sig_to_edge_detect_reg,
    s_axi_lite_bready,
    axi_cdma_tstvec,
    s_axi_lite_rready,
    s_axi_lite_araddr,
    arvalid_d10,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 ,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 ,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 ,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 ,
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 ,
    SR);
  output sig_reg2rst_soft_reset;
  output [0:0]E;
  output s_axi_lite_awready;
  output rdy;
  output s_axi_lite_arready;
  output cdma_introut;
  output s_axi_lite_bvalid;
  output idle;
  output error_d1_reg;
  output error_d1_reg_0;
  output error_d1_reg_1;
  output \cdma_tvect_out[0] ;
  output s_axi_lite_rvalid;
  output [57:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  output [30:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ;
  output sig_pulse_trigger;
  output [31:0]s_axi_lite_rdata;
  input [0:0]dmacr_i;
  input m_axi_aclk;
  input out;
  input [31:0]s_axi_lite_wdata;
  input s_axi_lite_aclk;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ;
  input s_axi_lite_awvalid;
  input s_axi_lite_wvalid;
  input s_axi_lite_arvalid;
  input p_1_out;
  input p_0_out;
  input idle_reg;
  input dma_interr_reg;
  input \sig_s2mm_status_reg_reg[6] ;
  input \sig_s2mm_status_reg_reg[5] ;
  input sig_to_edge_detect_reg;
  input s_axi_lite_bready;
  input [1:0]axi_cdma_tstvec;
  input s_axi_lite_rready;
  input [3:0]s_axi_lite_araddr;
  input arvalid_d10;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 ;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 ;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 ;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 ;
  input \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 ;
  input [0:0]SR;

  wire [0:0]E;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 ;
  wire I_AXI_LITE_n_17;
  wire I_AXI_LITE_n_18;
  wire I_AXI_LITE_n_19;
  wire I_REGISTER_BLOCK_n_100;
  wire I_REGISTER_BLOCK_n_101;
  wire I_REGISTER_BLOCK_n_102;
  wire I_REGISTER_BLOCK_n_103;
  wire I_REGISTER_BLOCK_n_104;
  wire I_REGISTER_BLOCK_n_105;
  wire I_REGISTER_BLOCK_n_66;
  wire [0:0]SR;
  wire [57:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  wire [30:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ;
  wire arvalid_d10;
  wire [10:0]axi2ip_rdce;
  wire [1:0]axi_cdma_tstvec;
  wire cdma_introut;
  wire \cdma_tvect_out[0] ;
  wire dma_interr_reg;
  wire dma_keyhole_read;
  wire dma_keyhole_write;
  wire [0:0]dmacr_i;
  wire error_d1_reg;
  wire error_d1_reg_0;
  wire error_d1_reg_1;
  wire idle;
  wire idle_reg;
  wire m_axi_aclk;
  wire out;
  wire p_0_out;
  wire p_1_out;
  wire rdy;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wvalid;
  wire [10:10]sig_axi2ip_wrce;
  wire sig_ip2axi_rddata__0_n_0;
  wire sig_ip2axi_rddata__1_n_0;
  wire sig_ip2axi_rddata__2_n_0;
  wire sig_ip2axi_rddata__3_n_0;
  wire sig_ip2axi_rddata_n_0;
  wire sig_pulse_trigger;
  wire sig_reg2rst_soft_reset;
  wire \sig_s2mm_status_reg_reg[5] ;
  wire \sig_s2mm_status_reg_reg[6] ;
  wire sig_to_edge_detect_reg;

  CMDA_DRAM_axi_cdma_0_0_axi_cdma_lite_if I_AXI_LITE
       (.E(sig_axi2ip_wrce),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg (\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg ),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 (\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 ),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 (\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 ),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 (\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 ),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 (\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 ),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 (\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 ),
        .\GEN_SYNC_READ.axi2ip_rdce_reg[0]_0 (sig_ip2axi_rddata__3_n_0),
        .\GEN_SYNC_READ.axi2ip_rdce_reg[10]_0 (axi2ip_rdce),
        .\GEN_SYNC_WRITE.wready_i_reg_0 (rdy),
        .Q({I_REGISTER_BLOCK_n_100,I_REGISTER_BLOCK_n_101}),
        .SR(SR),
        .arvalid_d10(arvalid_d10),
        .dma_decerr_reg(error_d1_reg_1),
        .dma_interr_reg(error_d1_reg),
        .dma_keyhole_write(dma_keyhole_write),
        .dma_slverr_reg(error_d1_reg_0),
        .\dmacr_i_reg[4] (E),
        .\dmacr_i_reg[6] ({I_REGISTER_BLOCK_n_66,dma_keyhole_read}),
        .err_irq_reg(I_REGISTER_BLOCK_n_103),
        .ioc_irq_reg(I_AXI_LITE_n_19),
        .ioc_irq_reg_0(I_REGISTER_BLOCK_n_102),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .\sig_da_register_lsb_reg[0] (I_AXI_LITE_n_17),
        .\sig_da_register_lsb_reg[31] (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [30:1]),
        .\sig_sa_register_lsb_reg[0] (I_AXI_LITE_n_18),
        .\sig_sa_register_lsb_reg[1] (I_REGISTER_BLOCK_n_105),
        .\sig_sa_register_lsb_reg[2] (I_REGISTER_BLOCK_n_104),
        .\sig_sa_register_lsb_reg[31] ({\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [57:29],\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [26:24],\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [22:0]}));
  CMDA_DRAM_axi_cdma_0_0_axi_cdma_register I_REGISTER_BLOCK
       (.E(E),
        .\GEN_SYNC_READ.axi2ip_rdce_reg[6] ({axi2ip_rdce[6],axi2ip_rdce[1:0]}),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[1] (I_REGISTER_BLOCK_n_105),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[2] (I_REGISTER_BLOCK_n_104),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] (sig_axi2ip_wrce),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[1] (I_AXI_LITE_n_19),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] (I_AXI_LITE_n_18),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] (I_AXI_LITE_n_17),
        .Q({I_REGISTER_BLOCK_n_66,dma_keyhole_read}),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ),
        .axi_cdma_tstvec(axi_cdma_tstvec),
        .cdma_introut(cdma_introut),
        .\cdma_tvect_out[0] (\cdma_tvect_out[0] ),
        .dma_interr_reg_0(dma_interr_reg),
        .dma_keyhole_write(dma_keyhole_write),
        .dmacr_i(dmacr_i),
        .err_irq_reg_0(I_REGISTER_BLOCK_n_103),
        .error_d1_reg_0(error_d1_reg),
        .error_d1_reg_1(error_d1_reg_0),
        .error_d1_reg_2(error_d1_reg_1),
        .idle(idle),
        .idle_reg_0(idle_reg),
        .introut_reg_0({I_REGISTER_BLOCK_n_100,I_REGISTER_BLOCK_n_101}),
        .ioc_irq_reg_0(I_REGISTER_BLOCK_n_102),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .sig_pulse_trigger(sig_pulse_trigger),
        .sig_reg2rst_soft_reset(sig_reg2rst_soft_reset),
        .\sig_s2mm_status_reg_reg[5] (\sig_s2mm_status_reg_reg[5] ),
        .\sig_s2mm_status_reg_reg[6] (\sig_s2mm_status_reg_reg[6] ),
        .sig_to_edge_detect_reg(sig_to_edge_detect_reg));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    sig_ip2axi_rddata
       (.I0(axi2ip_rdce[0]),
        .I1(axi2ip_rdce[1]),
        .I2(axi2ip_rdce[2]),
        .I3(axi2ip_rdce[3]),
        .I4(axi2ip_rdce[4]),
        .O(sig_ip2axi_rddata_n_0));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE8)) 
    sig_ip2axi_rddata__0
       (.I0(axi2ip_rdce[0]),
        .I1(axi2ip_rdce[1]),
        .I2(axi2ip_rdce[2]),
        .I3(axi2ip_rdce[3]),
        .I4(axi2ip_rdce[4]),
        .O(sig_ip2axi_rddata__0_n_0));
  LUT6 #(
    .INIT(64'h0000000100010116)) 
    sig_ip2axi_rddata__1
       (.I0(axi2ip_rdce[5]),
        .I1(axi2ip_rdce[6]),
        .I2(axi2ip_rdce[7]),
        .I3(axi2ip_rdce[8]),
        .I4(axi2ip_rdce[9]),
        .I5(axi2ip_rdce[10]),
        .O(sig_ip2axi_rddata__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
    sig_ip2axi_rddata__2
       (.I0(axi2ip_rdce[5]),
        .I1(axi2ip_rdce[6]),
        .I2(axi2ip_rdce[7]),
        .I3(axi2ip_rdce[8]),
        .I4(axi2ip_rdce[9]),
        .I5(axi2ip_rdce[10]),
        .O(sig_ip2axi_rddata__2_n_0));
  LUT4 #(
    .INIT(16'h0012)) 
    sig_ip2axi_rddata__3
       (.I0(sig_ip2axi_rddata_n_0),
        .I1(sig_ip2axi_rddata__0_n_0),
        .I2(sig_ip2axi_rddata__1_n_0),
        .I3(sig_ip2axi_rddata__2_n_0),
        .O(sig_ip2axi_rddata__3_n_0));
endmodule

(* ORIG_REF_NAME = "axi_cdma_register" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma_register
   (sig_reg2rst_soft_reset,
    dma_keyhole_write,
    cdma_introut,
    idle,
    error_d1_reg_0,
    error_d1_reg_1,
    error_d1_reg_2,
    \cdma_tvect_out[0] ,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ,
    Q,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ,
    sig_pulse_trigger,
    introut_reg_0,
    ioc_irq_reg_0,
    err_irq_reg_0,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[2] ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[1] ,
    dmacr_i,
    m_axi_aclk,
    out,
    E,
    s_axi_lite_wdata,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ,
    idle_reg_0,
    dma_interr_reg_0,
    \sig_s2mm_status_reg_reg[6] ,
    \sig_s2mm_status_reg_reg[5] ,
    sig_to_edge_detect_reg,
    \GEN_SYNC_READ.axi2ip_rdce_reg[6] ,
    axi_cdma_tstvec,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[1] ,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[8] );
  output sig_reg2rst_soft_reset;
  output dma_keyhole_write;
  output cdma_introut;
  output idle;
  output error_d1_reg_0;
  output error_d1_reg_1;
  output error_d1_reg_2;
  output \cdma_tvect_out[0] ;
  output [57:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  output [1:0]Q;
  output [30:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ;
  output sig_pulse_trigger;
  output [1:0]introut_reg_0;
  output ioc_irq_reg_0;
  output err_irq_reg_0;
  output \GEN_SYNC_READ.s_axi_lite_rdata_reg[2] ;
  output \GEN_SYNC_READ.s_axi_lite_rdata_reg[1] ;
  input [0:0]dmacr_i;
  input m_axi_aclk;
  input out;
  input [0:0]E;
  input [31:0]s_axi_lite_wdata;
  input [0:0]\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ;
  input idle_reg_0;
  input dma_interr_reg_0;
  input \sig_s2mm_status_reg_reg[6] ;
  input \sig_s2mm_status_reg_reg[5] ;
  input sig_to_edge_detect_reg;
  input [2:0]\GEN_SYNC_READ.axi2ip_rdce_reg[6] ;
  input [1:0]axi_cdma_tstvec;
  input \GEN_SYNC_WRITE.axi2ip_wrce_reg[1] ;
  input [0:0]\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ;
  input [0:0]\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ;

  wire [0:0]E;
  wire [2:0]\GEN_SYNC_READ.axi2ip_rdce_reg[6] ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[1] ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[2] ;
  wire [0:0]\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce_reg[1] ;
  wire [0:0]\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ;
  wire [0:0]\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ;
  wire [1:0]Q;
  wire [57:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  wire [30:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ;
  wire [1:0]axi_cdma_tstvec;
  wire cdma_introut;
  wire \cdma_tvect_out[0] ;
  wire dma_interr_reg_0;
  wire dma_keyhole_write;
  wire [0:0]dmacr_i;
  wire err_irq_i_1_n_0;
  wire err_irq_reg_0;
  wire error_d1;
  wire error_d1_i_1_n_0;
  wire error_d1_reg_0;
  wire error_d1_reg_1;
  wire error_d1_reg_2;
  wire idle;
  wire idle_reg_0;
  wire introut0;
  wire [1:0]introut_reg_0;
  wire ioc_irq_i_1_n_0;
  wire ioc_irq_reg_0;
  wire m_axi_aclk;
  wire out;
  wire [31:0]s_axi_lite_wdata;
  wire sig_btt_register_del;
  wire sig_dma_go_i_1_n_0;
  wire sig_pulse_trigger;
  wire sig_reg2rst_soft_reset;
  wire \sig_s2mm_status_reg_reg[5] ;
  wire \sig_s2mm_status_reg_reg[6] ;
  wire sig_to_edge_detect_reg;

  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DO_SINGLE_CLK_PULSE.sig_pulse_out_i_1 
       (.I0(sig_reg2rst_soft_reset),
        .I1(sig_to_edge_detect_reg),
        .O(sig_pulse_trigger));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DMACR_SIMPLE.dmacr_i_reg[12] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[12]),
        .Q(introut_reg_0[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DMACR_SIMPLE.dmacr_i_reg[14] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[14]),
        .Q(introut_reg_0[1]),
        .R(out));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[1]_i_2 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [27]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[6] [2]),
        .I2(idle),
        .I3(\GEN_SYNC_READ.axi2ip_rdce_reg[6] [1]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[2]_i_2 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [28]),
        .I1(\GEN_SYNC_READ.axi2ip_rdce_reg[6] [2]),
        .I2(sig_reg2rst_soft_reset),
        .I3(\GEN_SYNC_READ.axi2ip_rdce_reg[6] [0]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[23]_i_1 
       (.I0(Q[0]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [23]));
  LUT1 #(
    .INIT(2'h1)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[23]_i_1__0 
       (.I0(dma_keyhole_write),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [0]));
  FDRE #(
    .INIT(1'b0)) 
    dma_decerr_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_s2mm_status_reg_reg[5] ),
        .Q(error_d1_reg_2),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    dma_interr_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(dma_interr_reg_0),
        .Q(error_d1_reg_0),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    dma_slverr_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_s2mm_status_reg_reg[6] ),
        .Q(error_d1_reg_1),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(dmacr_i),
        .Q(sig_reg2rst_soft_reset),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[4] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[4]),
        .Q(Q[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[5] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[5]),
        .Q(dma_keyhole_write),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[6] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[6]),
        .Q(Q[1]),
        .R(out));
  LUT5 #(
    .INIT(32'h5DFF0C0C)) 
    err_irq_i_1
       (.I0(s_axi_lite_wdata[14]),
        .I1(error_d1_i_1_n_0),
        .I2(error_d1),
        .I3(\GEN_SYNC_WRITE.axi2ip_wrce_reg[1] ),
        .I4(err_irq_reg_0),
        .O(err_irq_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    err_irq_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(err_irq_i_1_n_0),
        .Q(err_irq_reg_0),
        .R(out));
  LUT3 #(
    .INIT(8'hFE)) 
    error_d1_i_1
       (.I0(error_d1_reg_1),
        .I1(error_d1_reg_2),
        .I2(error_d1_reg_0),
        .O(error_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    error_d1_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(error_d1_i_1_n_0),
        .Q(error_d1),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    idle_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(idle_reg_0),
        .Q(idle),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    introut_i_1
       (.I0(introut_reg_0[0]),
        .I1(ioc_irq_reg_0),
        .I2(introut_reg_0[1]),
        .I3(err_irq_reg_0),
        .O(introut0));
  FDRE introut_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(introut0),
        .Q(cdma_introut),
        .R(out));
  LUT4 #(
    .INIT(16'hF7F0)) 
    ioc_irq_i_1
       (.I0(s_axi_lite_wdata[12]),
        .I1(\GEN_SYNC_WRITE.axi2ip_wrce_reg[1] ),
        .I2(axi_cdma_tstvec[1]),
        .I3(ioc_irq_reg_0),
        .O(ioc_irq_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ioc_irq_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(ioc_irq_i_1_n_0),
        .Q(ioc_irq_reg_0),
        .R(out));
  FDRE sig_btt_register_del_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .Q(sig_btt_register_del),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[0]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[10]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [10]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[11]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [11]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[12] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[12]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [12]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[13] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[13]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [13]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[14] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[14]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [14]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[15] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[15]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [15]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[16] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[16]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [16]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[17] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[17]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [17]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[18] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[18]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [18]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[19] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[19]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [19]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[1]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[20] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[20]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [20]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[21] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[21]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [21]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[22] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[22]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [22]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[2]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[3]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[4]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[5]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[6]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[7]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [7]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[8]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [8]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_register_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .D(s_axi_lite_wdata[9]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [9]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[0]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [24]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[10]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [9]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[11]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [10]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[12] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[12]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [11]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[13] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[13]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [12]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[14] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[14]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [13]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[15] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[15]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [14]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[16] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[16]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [15]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[17] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[17]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [16]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[18] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[18]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [17]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[19] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[19]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [18]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[1]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [25]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[20] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[20]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [19]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[21] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[21]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [20]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[22] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[22]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [21]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[23] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[23]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [22]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[24] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[24]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [23]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[25] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[25]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [24]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[26] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[26]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [25]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[27] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[27]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [26]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[28] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[28]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [27]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[29] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[29]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [28]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[2]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[30] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[30]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [29]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[31] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[31]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [30]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[3]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[4]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[5]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[6]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[7]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[8]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [7]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_da_register_lsb_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ),
        .D(s_axi_lite_wdata[9]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [8]),
        .R(out));
  LUT5 #(
    .INIT(32'h000000AE)) 
    sig_dma_go_i_1
       (.I0(\cdma_tvect_out[0] ),
        .I1(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .I2(sig_btt_register_del),
        .I3(axi_cdma_tstvec[0]),
        .I4(out),
        .O(sig_dma_go_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_dma_go_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_dma_go_i_1_n_0),
        .Q(\cdma_tvect_out[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[0]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [26]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[10]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [36]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[11]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [37]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[12] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[12]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [38]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[13] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[13]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [39]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[14] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[14]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [40]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[15] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[15]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [41]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[16] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[16]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [42]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[17] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[17]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [43]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[18] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[18]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [44]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[19] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[19]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [45]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[1]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [27]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[20] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[20]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [46]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[21] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[21]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [47]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[22] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[22]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [48]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[23] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[23]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [49]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[24] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[24]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [50]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[25] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[25]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [51]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[26] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[26]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [52]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[27] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[27]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [53]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[28] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[28]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [54]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[29] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[29]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [55]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[2]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [28]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[30] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[30]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [56]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[31] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[31]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [57]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[3]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [29]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[4]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [30]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[5]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [31]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[6]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [32]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[7]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [33]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[8]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [34]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sa_register_lsb_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ),
        .D(s_axi_lite_wdata[9]),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [35]),
        .R(out));
endmodule

(* ORIG_REF_NAME = "axi_cdma_reset" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma_reset
   (out,
    \GEN_DMACR_SIMPLE.dmacr_i_reg[14] ,
    sig_halt_cmplt_reg_reg,
    sig_to_edge_detect_reg,
    sig_dm_s2mm_halt,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[0] ,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[1] ,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ,
    dmacr_i,
    p_1_out,
    p_0_out,
    SR,
    arvalid_d10,
    sig_s_h_halt_reg_reg,
    sig_rst2dm_resetn,
    sig_sm_set_idle_reg,
    sig_mm2s_status_reg0,
    m_axi_aclk,
    sig_reg2rst_soft_reset,
    s_axi_lite_aclk,
    sig_pulse_trigger,
    s_axi_lite_aresetn,
    s_axi_lite_awaddr,
    E,
    s_axi_lite_wdata,
    \GEN_SYNC_WRITE.bvalid_i_reg ,
    rdy,
    s_axi_lite_rready,
    \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg ,
    p_18_out,
    sig_cntlr2rst_halt_cmplt,
    p_36_out,
    sig_rst2all_stop_request,
    axi_cdma_tstvec);
  output out;
  output \GEN_DMACR_SIMPLE.dmacr_i_reg[14] ;
  output sig_halt_cmplt_reg_reg;
  output sig_to_edge_detect_reg;
  output sig_dm_s2mm_halt;
  output \GEN_SYNC_WRITE.axi2ip_wrce_reg[0] ;
  output \GEN_SYNC_WRITE.axi2ip_wrce_reg[1] ;
  output \GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ;
  output \GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ;
  output \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ;
  output [0:0]dmacr_i;
  output p_1_out;
  output p_0_out;
  output [0:0]SR;
  output arvalid_d10;
  output sig_s_h_halt_reg_reg;
  output sig_rst2dm_resetn;
  output [0:0]sig_sm_set_idle_reg;
  output sig_mm2s_status_reg0;
  input m_axi_aclk;
  input sig_reg2rst_soft_reset;
  input s_axi_lite_aclk;
  input sig_pulse_trigger;
  input s_axi_lite_aresetn;
  input [3:0]s_axi_lite_awaddr;
  input [0:0]E;
  input [0:0]s_axi_lite_wdata;
  input \GEN_SYNC_WRITE.bvalid_i_reg ;
  input rdy;
  input s_axi_lite_rready;
  input \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg ;
  input p_18_out;
  input sig_cntlr2rst_halt_cmplt;
  input p_36_out;
  input sig_rst2all_stop_request;
  input [0:0]axi_cdma_tstvec;

  wire [0:0]E;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_i_1_n_0 ;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce_reg[0] ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce_reg[1] ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ;
  wire \GEN_SYNC_WRITE.bvalid_i_reg ;
  wire I_SOFT_RST_POS_EDGE_DTCT_n_1;
  wire I_SOFT_RST_PULSEGEN_n_0;
  wire I_SOFT_RST_PULSEGEN_n_2;
  wire I_SOFT_RST_PULSEGEN_n_3;
  wire I_SOFT_RST_PULSEGEN_n_4;
  wire [0:0]SR;
  wire arvalid_d10;
  wire [0:0]axi_cdma_tstvec;
  wire [0:0]dmacr_i;
  wire m_axi_aclk;
  wire p_0_in;
  wire p_0_out;
  wire p_18_out;
  wire p_1_out;
  wire p_36_out;
  wire p_4_out;
  wire rdy;
  wire s_axi_lite_aclk;
  wire s_axi_lite_aresetn;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_rready;
  wire [0:0]s_axi_lite_wdata;
  wire sig_axi_por2rst__0;
  wire sig_axi_por2rst_out;
  wire sig_axi_por2rst_out_i_2_n_0;
  wire sig_axi_por_reg1;
  wire sig_axi_por_reg2;
  wire sig_axi_por_reg3;
  wire sig_axi_por_reg4;
  wire sig_axi_por_reg5;
  wire sig_axi_por_reg6;
  wire sig_axi_por_reg7;
  wire sig_axi_por_reg8;
  wire sig_axilite_por_reg1;
  wire sig_axilite_por_reg2;
  wire sig_axilite_por_reg3;
  wire sig_axilite_por_reg4;
  wire sig_axilite_por_reg5;
  wire sig_axilite_por_reg6;
  wire sig_axilite_por_reg7;
  wire sig_axilite_por_reg8;
  wire sig_cntlr2rst_halt_cmplt;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_composite_cntlr_reset;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_composite_reg_reset;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_composite_sg_reset_n;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_composite_sgcntlr_reset;
  wire sig_dm_s2mm_halt;
  wire sig_dm_soft_reset_n;
  wire sig_halt_cmplt;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_lite_bside_hw_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_lite_cside_hw_reset_reg;
  wire sig_local_hw_reset_reg;
  wire sig_mm2s_status_reg0;
  wire sig_pulse_trigger;
  wire sig_reg2rst_soft_reset;
  wire sig_rst2all_stop_request;
  wire sig_rst2dm_resetn;
  wire sig_s_h_halt_reg_reg;
  wire [0:0]sig_sm_set_idle_reg;
  wire sig_soft_reset;
  wire sig_to_edge_detect_reg;
  wire sig_to_edge_detect_reg_0;

  assign \GEN_DMACR_SIMPLE.dmacr_i_reg[14]  = sig_composite_reg_reset;
  assign out = sig_lite_bside_hw_reset_reg;
  assign sig_halt_cmplt_reg_reg = sig_composite_cntlr_reset;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b0)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_composite_cntlr_reset_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(I_SOFT_RST_PULSEGEN_n_2),
        .Q(sig_composite_cntlr_reset),
        .S(sig_axi_por2rst_out));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b0)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(I_SOFT_RST_PULSEGEN_n_2),
        .Q(sig_composite_reg_reset),
        .S(sig_axi_por2rst_out));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_composite_sg_reset_n_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(I_SOFT_RST_PULSEGEN_n_0),
        .Q(sig_composite_sg_reset_n),
        .R(sig_axi_por2rst_out));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b0)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_composite_sgcntlr_reset_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(I_SOFT_RST_PULSEGEN_n_2),
        .Q(sig_composite_sgcntlr_reset),
        .S(sig_axi_por2rst_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_dm_soft_reset_n_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(sig_dm_soft_reset_n),
        .R(sig_axi_por2rst_out));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_i_1 
       (.I0(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_i_2_n_0 ),
        .I1(sig_axilite_por_reg2),
        .I2(sig_axilite_por_reg3),
        .I3(sig_axilite_por_reg5),
        .I4(sig_axilite_por_reg4),
        .I5(s_axi_lite_aresetn),
        .O(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_i_2 
       (.I0(sig_axilite_por_reg7),
        .I1(sig_axilite_por_reg6),
        .I2(sig_axilite_por_reg1),
        .I3(sig_axilite_por_reg8),
        .O(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_i_1_n_0 ),
        .Q(sig_lite_bside_hw_reset_reg),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_lite_cside_hw_reset_reg_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_i_1_n_0 ),
        .Q(sig_lite_cside_hw_reset_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_local_hw_reset_reg_i_1 
       (.I0(s_axi_lite_aresetn),
        .O(p_4_out));
  FDSE #(
    .INIT(1'b0)) 
    \GEN_AXI_LITE_SYNC2AXI.sig_local_hw_reset_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(p_4_out),
        .Q(sig_local_hw_reset_reg),
        .S(sig_axi_por2rst_out));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_SYNC_READ.axi2ip_rdce[15]_i_3 
       (.I0(sig_lite_bside_hw_reset_reg),
        .I1(\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg ),
        .O(arvalid_d10));
  LUT3 #(
    .INIT(8'hEA)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1 
       (.I0(sig_lite_bside_hw_reset_reg),
        .I1(s_axi_lite_rready),
        .I2(\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg ),
        .O(SR));
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[0]_i_1 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(sig_lite_bside_hw_reset_reg),
        .I2(s_axi_lite_awaddr[0]),
        .I3(s_axi_lite_awaddr[2]),
        .I4(s_axi_lite_awaddr[3]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce_reg[0] ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[10]_i_2 
       (.I0(sig_lite_bside_hw_reset_reg),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awaddr[3]),
        .I3(s_axi_lite_awaddr[2]),
        .I4(s_axi_lite_awaddr[0]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[1]_i_1 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(sig_lite_bside_hw_reset_reg),
        .I2(s_axi_lite_awaddr[0]),
        .I3(s_axi_lite_awaddr[2]),
        .I4(s_axi_lite_awaddr[3]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce_reg[1] ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[6]_i_1 
       (.I0(sig_lite_bside_hw_reset_reg),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awaddr[2]),
        .I3(s_axi_lite_awaddr[3]),
        .I4(s_axi_lite_awaddr[0]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[8]_i_1 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(sig_lite_bside_hw_reset_reg),
        .I2(s_axi_lite_awaddr[3]),
        .I3(s_axi_lite_awaddr[2]),
        .I4(s_axi_lite_awaddr[1]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] ));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_SYNC_WRITE.wr_addr_cap_i_1 
       (.I0(sig_lite_bside_hw_reset_reg),
        .I1(rdy),
        .O(p_0_out));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_SYNC_WRITE.wr_in_progress_i_1 
       (.I0(sig_lite_bside_hw_reset_reg),
        .I1(\GEN_SYNC_WRITE.bvalid_i_reg ),
        .O(p_1_out));
  CMDA_DRAM_axi_cdma_0_0_axi_cdma_pulse_gen__parameterized0 I_SOFT_RST_CLR_PULSE
       (.\DO_MULTI_CLK_PULSE.DO_SHIF_REG[8].sig_shift_reg_reg[8] (I_SOFT_RST_PULSEGEN_n_3),
        .E(E),
        .\GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg (sig_composite_reg_reset),
        .Q(sig_soft_reset),
        .dmacr_i(dmacr_i),
        .m_axi_aclk(m_axi_aclk),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .sig_local_hw_reset_reg(sig_local_hw_reset_reg),
        .sig_reg2rst_soft_reset(sig_reg2rst_soft_reset),
        .sig_to_edge_detect_reg(sig_to_edge_detect_reg_0));
  CMDA_DRAM_axi_cdma_0_0_axi_cdma_pulse_gen__parameterized1 I_SOFT_RST_POS_EDGE_DTCT
       (.Q(sig_soft_reset),
        .m_axi_aclk(m_axi_aclk),
        .sig_halt_request_reg(I_SOFT_RST_POS_EDGE_DTCT_n_1),
        .sig_halt_request_reg_0(sig_dm_s2mm_halt),
        .sig_local_hw_reset_reg(sig_local_hw_reset_reg),
        .sig_pulse_trigger(sig_pulse_trigger),
        .sig_reg2rst_soft_reset(sig_reg2rst_soft_reset),
        .sig_to_edge_detect_reg(sig_to_edge_detect_reg));
  CMDA_DRAM_axi_cdma_0_0_axi_cdma_pulse_gen I_SOFT_RST_PULSEGEN
       (.\DO_MULTI_CLK_PULSE.DO_SHIF_REG[1].sig_shift_reg_reg[1]_0 (I_SOFT_RST_PULSEGEN_n_3),
        .\GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg (I_SOFT_RST_PULSEGEN_n_2),
        .\GEN_AXI_LITE_SYNC2AXI.sig_composite_sg_reset_n_reg (I_SOFT_RST_PULSEGEN_n_0),
        .Q(sig_soft_reset),
        .m_axi_aclk(m_axi_aclk),
        .p_0_in(p_0_in),
        .p_18_out(p_18_out),
        .p_36_out(p_36_out),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .sig_cntlr2rst_halt_cmplt(sig_cntlr2rst_halt_cmplt),
        .sig_halt_cmplt(sig_halt_cmplt),
        .sig_halt_cmplt_reg(I_SOFT_RST_PULSEGEN_n_4),
        .sig_halt_request_reg(sig_dm_s2mm_halt),
        .sig_local_hw_reset_reg(sig_local_hw_reset_reg),
        .sig_to_edge_detect_reg(sig_to_edge_detect_reg_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    sig_axi_por2rst_out_i_1
       (.I0(sig_axi_por_reg4),
        .I1(sig_axi_por_reg5),
        .I2(sig_axi_por_reg3),
        .I3(sig_axi_por_reg2),
        .I4(sig_axi_por2rst_out_i_2_n_0),
        .O(sig_axi_por2rst__0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    sig_axi_por2rst_out_i_2
       (.I0(sig_axi_por_reg7),
        .I1(sig_axi_por_reg6),
        .I2(sig_axi_por_reg1),
        .I3(sig_axi_por_reg8),
        .O(sig_axi_por2rst_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por2rst_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por2rst__0),
        .Q(sig_axi_por2rst_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg1_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_axi_por_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg1),
        .Q(sig_axi_por_reg2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg3_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg2),
        .Q(sig_axi_por_reg3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg4_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg3),
        .Q(sig_axi_por_reg4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg5_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg4),
        .Q(sig_axi_por_reg5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg6_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg5),
        .Q(sig_axi_por_reg6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg7_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg6),
        .Q(sig_axi_por_reg7),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg8_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg7),
        .Q(sig_axi_por_reg8),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axilite_por_reg1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_axilite_por_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axilite_por_reg2_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sig_axilite_por_reg1),
        .Q(sig_axilite_por_reg2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axilite_por_reg3_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sig_axilite_por_reg2),
        .Q(sig_axilite_por_reg3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axilite_por_reg4_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sig_axilite_por_reg3),
        .Q(sig_axilite_por_reg4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axilite_por_reg5_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sig_axilite_por_reg4),
        .Q(sig_axilite_por_reg5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axilite_por_reg6_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sig_axilite_por_reg5),
        .Q(sig_axilite_por_reg6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axilite_por_reg7_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sig_axilite_por_reg6),
        .Q(sig_axilite_por_reg7),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axilite_por_reg8_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sig_axilite_por_reg7),
        .Q(sig_axilite_por_reg8),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_cmd_stat_rst_user_reg_n_cdc_from_i_1
       (.I0(s_axi_lite_aresetn),
        .I1(sig_dm_soft_reset_n),
        .O(sig_rst2dm_resetn));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_cmplt_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(I_SOFT_RST_PULSEGEN_n_4),
        .Q(sig_halt_cmplt),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_request_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(I_SOFT_RST_POS_EDGE_DTCT_n_1),
        .Q(sig_dm_s2mm_halt),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_mm2s_status_reg[6]_i_1 
       (.I0(sig_composite_cntlr_reset),
        .I1(axi_cdma_tstvec),
        .O(sig_mm2s_status_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_s_h_halt_reg_i_1
       (.I0(sig_dm_s2mm_halt),
        .I1(sig_rst2all_stop_request),
        .O(sig_s_h_halt_reg_reg));
  LUT2 #(
    .INIT(4'hE)) 
    sig_sm_set_ioc_i_1
       (.I0(sig_dm_s2mm_halt),
        .I1(sig_composite_cntlr_reset),
        .O(sig_sm_set_idle_reg));
endmodule

(* ORIG_REF_NAME = "axi_cdma_simple_cntlr" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma_simple_cntlr
   (\cdma_tvect_out_1__s_port_] ,
    axi_cdma_tstvec,
    sig_cntl2mm2s_sts_tready,
    sig_cntl2s2mm_sts_tready,
    sig_cntl2s2mm_cmd_tvalid,
    sig_cntlr2rst_halt_cmplt,
    cdma_tvect_out,
    Q,
    sig_s2mm_interr,
    sig_mm2s_interr,
    E,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ,
    idle_reg,
    dma_decerr_reg,
    dma_slverr_reg,
    dma_interr_reg,
    SR,
    m_axi_aclk,
    out,
    D,
    p_33_out,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    cntlr2reg_interr_set0__2,
    p_35_out,
    sig_data2all_tlast_error,
    p_0_out,
    p_34_out,
    p_16_out,
    sig_dma_go_reg,
    p_15_out,
    idle,
    \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ,
    sig_dm_s2mm_halt,
    dma_decerr_reg_0,
    dma_slverr_reg_0,
    dma_interr_reg_0,
    p_32_out,
    sig_mm2s_status_reg0,
    p_14_out);
  output \cdma_tvect_out_1__s_port_] ;
  output [1:0]axi_cdma_tstvec;
  output sig_cntl2mm2s_sts_tready;
  output sig_cntl2s2mm_sts_tready;
  output sig_cntl2s2mm_cmd_tvalid;
  output sig_cntlr2rst_halt_cmplt;
  output [2:0]cdma_tvect_out;
  output [2:0]Q;
  output sig_s2mm_interr;
  output sig_mm2s_interr;
  output [0:0]E;
  output [0:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ;
  output idle_reg;
  output dma_decerr_reg;
  output dma_slverr_reg;
  output dma_interr_reg;
  input [0:0]SR;
  input m_axi_aclk;
  input out;
  input [0:0]D;
  input p_33_out;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  input cntlr2reg_interr_set0__2;
  input p_35_out;
  input sig_data2all_tlast_error;
  input p_0_out;
  input p_34_out;
  input p_16_out;
  input sig_dma_go_reg;
  input p_15_out;
  input idle;
  input \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ;
  input sig_dm_s2mm_halt;
  input dma_decerr_reg_0;
  input dma_slverr_reg_0;
  input dma_interr_reg_0;
  input [2:0]p_32_out;
  input sig_mm2s_status_reg0;
  input [2:0]p_14_out;

  wire [0:0]D;
  wire [0:0]E;
  wire \GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [0:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire [1:0]axi_cdma_tstvec;
  wire [2:0]cdma_tvect_out;
  wire cdma_tvect_out_1__s_net_1;
  wire cntlr2reg_interr_set0__2;
  wire dma_decerr_reg;
  wire dma_decerr_reg_0;
  wire dma_interr_reg;
  wire dma_interr_reg_0;
  wire dma_slverr_reg;
  wire dma_slverr_reg_0;
  wire idle;
  wire idle_reg;
  wire m_axi_aclk;
  wire out;
  wire p_0_out;
  wire [2:0]p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire [2:0]p_32_out;
  wire p_33_out;
  wire p_34_out;
  wire p_35_out;
  wire sig_cntl2mm2s_sts_tready;
  wire sig_cntl2s2mm_cmd_tvalid;
  wire sig_cntl2s2mm_sts_tready;
  wire sig_cntlr2rst_halt_cmplt;
  wire sig_data2all_tlast_error;
  wire sig_dm_s2mm_halt;
  wire sig_dma_go_reg;
  wire sig_halt_cmplt_reg_i_1_n_0;
  wire sig_mm2s_decerr;
  wire sig_mm2s_interr;
  wire sig_mm2s_slverr;
  wire sig_mm2s_status_reg0;
  wire \sig_mm2s_status_reg[4]_i_1_n_0 ;
  wire \sig_mm2s_status_reg[5]_i_1_n_0 ;
  wire \sig_mm2s_status_reg[6]_i_2_n_0 ;
  wire sig_s2mm_decerr;
  wire sig_s2mm_interr;
  wire sig_s2mm_slverr;
  wire \sig_s2mm_status_reg[4]_i_1_n_0 ;
  wire \sig_s2mm_status_reg[5]_i_1_n_0 ;
  wire \sig_s2mm_status_reg[6]_i_1_n_0 ;
  wire sig_sm_clr_idle_ns;
  wire sig_sm_ld_cmd_ns;
  wire sig_sm_pop_mm2s_sts_ns;
  wire sig_sm_pop_s2mm_sts_ns;
  wire sig_sm_set_err;
  wire sig_sm_set_err_ns;
  wire sig_sm_set_idle_ns;
  wire sig_sm_set_ioc_ns;
  wire \sig_sm_state[2]_i_2_n_0 ;
  wire [2:1]sig_sm_state_ns;

  assign \cdma_tvect_out_1__s_port_]  = cdma_tvect_out_1__s_net_1;
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[63]_i_1 
       (.I0(sig_cntl2s2mm_cmd_tvalid),
        .I1(p_34_out),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[63]_i_1__0 
       (.I0(sig_cntl2s2mm_cmd_tvalid),
        .I1(p_16_out),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \cdma_tvect_out[4]_INST_0 
       (.I0(sig_sm_set_err),
        .I1(sig_mm2s_decerr),
        .I2(sig_s2mm_decerr),
        .O(cdma_tvect_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \cdma_tvect_out[5]_INST_0 
       (.I0(sig_sm_set_err),
        .I1(sig_mm2s_slverr),
        .I2(sig_s2mm_slverr),
        .O(cdma_tvect_out[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \cdma_tvect_out[6]_INST_0 
       (.I0(sig_sm_set_err),
        .I1(p_35_out),
        .I2(sig_s2mm_interr),
        .I3(sig_data2all_tlast_error),
        .I4(p_0_out),
        .I5(sig_mm2s_interr),
        .O(cdma_tvect_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    dma_decerr_i_1
       (.I0(sig_s2mm_decerr),
        .I1(sig_mm2s_decerr),
        .I2(sig_sm_set_err),
        .I3(dma_decerr_reg_0),
        .O(dma_decerr_reg));
  LUT2 #(
    .INIT(4'hE)) 
    dma_interr_i_1
       (.I0(cdma_tvect_out[2]),
        .I1(dma_interr_reg_0),
        .O(dma_interr_reg));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    dma_slverr_i_1
       (.I0(sig_s2mm_slverr),
        .I1(sig_mm2s_slverr),
        .I2(sig_sm_set_err),
        .I3(dma_slverr_reg_0),
        .O(dma_slverr_reg));
  LUT4 #(
    .INIT(16'h000E)) 
    idle_i_1
       (.I0(idle),
        .I1(cdma_tvect_out_1__s_net_1),
        .I2(axi_cdma_tstvec[0]),
        .I3(\GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg ),
        .O(idle_reg));
  LUT3 #(
    .INIT(8'hF8)) 
    sig_halt_cmplt_reg_i_1
       (.I0(sig_dm_s2mm_halt),
        .I1(cdma_tvect_out_1__s_net_1),
        .I2(sig_cntlr2rst_halt_cmplt),
        .O(sig_halt_cmplt_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_cmplt_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_halt_cmplt_reg_i_1_n_0),
        .Q(sig_cntlr2rst_halt_cmplt),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_mm2s_status_reg[4]_i_1 
       (.I0(p_32_out[0]),
        .I1(sig_cntl2mm2s_sts_tready),
        .I2(sig_mm2s_interr),
        .O(\sig_mm2s_status_reg[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_mm2s_status_reg[5]_i_1 
       (.I0(p_32_out[1]),
        .I1(sig_cntl2mm2s_sts_tready),
        .I2(sig_mm2s_decerr),
        .O(\sig_mm2s_status_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_mm2s_status_reg[6]_i_2 
       (.I0(p_32_out[2]),
        .I1(sig_cntl2mm2s_sts_tready),
        .I2(sig_mm2s_slverr),
        .O(\sig_mm2s_status_reg[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_mm2s_status_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_mm2s_status_reg[4]_i_1_n_0 ),
        .Q(sig_mm2s_interr),
        .R(sig_mm2s_status_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_mm2s_status_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_mm2s_status_reg[5]_i_1_n_0 ),
        .Q(sig_mm2s_decerr),
        .R(sig_mm2s_status_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_mm2s_status_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_mm2s_status_reg[6]_i_2_n_0 ),
        .Q(sig_mm2s_slverr),
        .R(sig_mm2s_status_reg0));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_s2mm_status_reg[4]_i_1 
       (.I0(p_14_out[0]),
        .I1(sig_cntl2s2mm_sts_tready),
        .I2(sig_s2mm_interr),
        .O(\sig_s2mm_status_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_s2mm_status_reg[5]_i_1 
       (.I0(p_14_out[1]),
        .I1(sig_cntl2s2mm_sts_tready),
        .I2(sig_s2mm_decerr),
        .O(\sig_s2mm_status_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_s2mm_status_reg[6]_i_1 
       (.I0(p_14_out[2]),
        .I1(sig_cntl2s2mm_sts_tready),
        .I2(sig_s2mm_slverr),
        .O(\sig_s2mm_status_reg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_s2mm_status_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_s2mm_status_reg[4]_i_1_n_0 ),
        .Q(sig_s2mm_interr),
        .R(sig_mm2s_status_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_s2mm_status_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_s2mm_status_reg[5]_i_1_n_0 ),
        .Q(sig_s2mm_decerr),
        .R(sig_mm2s_status_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_s2mm_status_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_s2mm_status_reg[6]_i_1_n_0 ),
        .Q(sig_s2mm_slverr),
        .R(sig_mm2s_status_reg0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    sig_sm_clr_idle_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(p_34_out),
        .I4(sig_dma_go_reg),
        .I5(p_16_out),
        .O(sig_sm_clr_idle_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_clr_idle_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_clr_idle_ns),
        .Q(axi_cdma_tstvec[0]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h02)) 
    sig_sm_ld_cmd_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(sig_sm_ld_cmd_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_cmd_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_cmd_ns),
        .Q(sig_cntl2s2mm_cmd_tvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    sig_sm_pop_mm2s_sts_i_1
       (.I0(p_33_out),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(sig_sm_pop_mm2s_sts_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_mm2s_sts_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_mm2s_sts_ns),
        .Q(sig_cntl2mm2s_sts_tready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    sig_sm_pop_s2mm_sts_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(p_15_out),
        .I3(Q[2]),
        .O(sig_sm_pop_s2mm_sts_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_s2mm_sts_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_s2mm_sts_ns),
        .Q(sig_cntl2s2mm_sts_tready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_sm_set_err_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(sig_sm_set_err_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_set_err_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_set_err_ns),
        .Q(sig_sm_set_err),
        .R(SR));
  LUT3 #(
    .INIT(8'h41)) 
    sig_sm_set_idle_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(sig_sm_set_idle_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_set_idle_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_set_idle_ns),
        .Q(cdma_tvect_out_1__s_net_1),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_sm_set_ioc_i_2
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(sig_sm_set_ioc_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_set_ioc_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_set_ioc_ns),
        .Q(axi_cdma_tstvec[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8BBBC0C08BBBF3F3)) 
    \sig_sm_state[1]_i_1 
       (.I0(\sig_sm_state[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(p_33_out),
        .I4(Q[1]),
        .I5(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ),
        .O(sig_sm_state_ns[1]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'hBC8C8C8C)) 
    \sig_sm_state[2]_i_1 
       (.I0(\sig_sm_state[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_33_out),
        .O(sig_sm_state_ns[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_sm_state[2]_i_2 
       (.I0(Q[0]),
        .I1(sig_mm2s_decerr),
        .I2(sig_s2mm_decerr),
        .I3(cntlr2reg_interr_set0__2),
        .I4(sig_s2mm_slverr),
        .I5(sig_mm2s_slverr),
        .O(\sig_sm_state[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sm_state_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sm_state_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_state_ns[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sm_state_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_state_ns[2]),
        .Q(Q[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_cdma_simple_wrap" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_cdma_simple_wrap
   (m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arvalid,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    s_axi_lite_awready,
    s_axi_lite_arready,
    s_axi_lite_rvalid,
    axi_cdma_tstvec,
    s_axi_lite_rdata,
    cdma_introut,
    s_axi_lite_bvalid,
    cdma_tvect_out,
    m_axi_rready,
    m_axi_bready,
    s_axi_lite_aresetn,
    s_axi_lite_awaddr,
    m_axi_rlast,
    m_axi_arready,
    m_axi_awready,
    m_axi_wready,
    m_axi_aclk,
    s_axi_lite_wdata,
    m_axi_rdata,
    m_axi_bresp,
    s_axi_lite_aclk,
    s_axi_lite_awvalid,
    s_axi_lite_wvalid,
    s_axi_lite_arvalid,
    s_axi_lite_araddr,
    s_axi_lite_rready,
    m_axi_rvalid,
    m_axi_rresp,
    m_axi_bvalid,
    s_axi_lite_bready);
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output m_axi_arvalid;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output m_axi_awvalid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output s_axi_lite_awready;
  output s_axi_lite_arready;
  output s_axi_lite_rvalid;
  output [2:0]axi_cdma_tstvec;
  output [31:0]s_axi_lite_rdata;
  output cdma_introut;
  output s_axi_lite_bvalid;
  output [3:0]cdma_tvect_out;
  output m_axi_rready;
  output m_axi_bready;
  input s_axi_lite_aresetn;
  input [3:0]s_axi_lite_awaddr;
  input m_axi_rlast;
  input m_axi_arready;
  input m_axi_awready;
  input m_axi_wready;
  input m_axi_aclk;
  input [31:0]s_axi_lite_wdata;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_bresp;
  input s_axi_lite_aclk;
  input s_axi_lite_awvalid;
  input s_axi_lite_wvalid;
  input s_axi_lite_arvalid;
  input [3:0]s_axi_lite_araddr;
  input s_axi_lite_rready;
  input m_axi_rvalid;
  input [1:0]m_axi_rresp;
  input m_axi_bvalid;
  input s_axi_lite_bready;

  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_0 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_1 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_2 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_3 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_4 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_5 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_6 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_7 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_0 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_1 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_2 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_3 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_4 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_5 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_6 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_7 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_1 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_2 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_3 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_4 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_5 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_6 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_7 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_0 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_1 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_2 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_3 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_4 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_5 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_6 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_7 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_14 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_15 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_16 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_17 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_19 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_20 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_21 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_22 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_23 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_24 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_25 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_26 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_27 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_28 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_29 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_30 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_31 ;
  wire \GEN_DM_FULL.I_DATAMOVER_FULL_n_35 ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/sig_rst2all_stop_request ;
  wire \GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo ;
  wire \GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/p_0_out ;
  wire \GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/sig_data2all_tlast_error ;
  wire \I_AXI_LITE/arvalid_d10 ;
  wire \I_AXI_LITE/p_0_out ;
  wire \I_AXI_LITE/p_1_out ;
  wire \I_AXI_LITE/rdy ;
  wire \I_AXI_LITE/rst_rvalid_re ;
  wire [2:2]\I_REGISTER_BLOCK/dmacr_i ;
  wire I_SIMPLE_DMA_CNTLR_n_17;
  wire I_SIMPLE_DMA_CNTLR_n_18;
  wire I_SIMPLE_DMA_CNTLR_n_19;
  wire I_SIMPLE_DMA_CNTLR_n_20;
  wire I_SIMPLE_REG_MODULE_n_10;
  wire I_SIMPLE_REG_MODULE_n_8;
  wire I_SIMPLE_REG_MODULE_n_9;
  wire I_SIMPLE_RST_MODULE_n_15;
  wire I_SIMPLE_RST_MODULE_n_5;
  wire I_SIMPLE_RST_MODULE_n_6;
  wire I_SIMPLE_RST_MODULE_n_7;
  wire I_SIMPLE_RST_MODULE_n_8;
  wire I_SIMPLE_RST_MODULE_n_9;
  wire \I_SOFT_RST_POS_EDGE_DTCT/sig_pulse_trigger ;
  wire \I_SOFT_RST_POS_EDGE_DTCT/sig_to_edge_detect_reg ;
  wire [2:0]axi_cdma_tstvec;
  wire cdma_introut;
  wire [3:0]cdma_tvect_out;
  wire cntlr2reg_interr_set0__2;
  wire idle;
  wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [7:0]m_axi_awlen;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [6:4]p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_18_out;
  wire [6:4]p_32_out;
  wire p_33_out;
  wire p_34_out;
  wire p_35_out;
  wire p_36_out;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wvalid;
  wire [0:0]sig_axi2ip_wrce;
  wire [23:23]sig_cntl2mm2s_cmd_tdata;
  wire sig_cntl2mm2s_sts_tready;
  wire [23:23]sig_cntl2s2mm_cmd_tdata;
  wire sig_cntl2s2mm_cmd_tvalid;
  wire sig_cntl2s2mm_sts_tready;
  wire sig_cntlr2rst_halt_cmplt;
  wire sig_dm_s2mm_halt;
  wire sig_mm2s_interr;
  wire sig_mm2s_status_reg0;
  wire [22:0]sig_reg2cntlr_btt;
  wire [31:0]sig_reg2cntlr_dest_addr;
  wire [31:0]sig_reg2cntlr_src_addr;
  wire sig_reg2rst_soft_reset;
  wire sig_rst2cntlr_reset;
  wire sig_rst2dm_resetn;
  wire sig_rst2lite_bside_reset;
  wire sig_rst2reg_reset;
  wire sig_s2mm_interr;
  wire [2:0]sig_sm_state;
  wire sig_sm_state0;
  wire [0:0]sig_sm_state_ns;
  wire [3:3]\NLW_GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_CO_UNCONNECTED ;

  CMDA_DRAM_axi_cdma_0_0_axi_datamover \GEN_DM_FULL.I_DATAMOVER_FULL 
       (.D(sig_sm_state_ns),
        .DI(\GEN_DM_FULL.I_DATAMOVER_FULL_n_19 ),
        .E(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo ),
        .O({\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_4 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_5 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_6 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_7 }),
        .Q(sig_sm_state),
        .S({\GEN_DM_FULL.I_DATAMOVER_FULL_n_14 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_15 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_16 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_17 }),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ({\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_4 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_5 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_6 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_7 }),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ({\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_4 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_5 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_6 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_7 }),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ({\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_4 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_5 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_6 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_7 }),
        .cntlr2reg_interr_set0__2(cntlr2reg_interr_set0__2),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .p_0_out(\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/p_0_out ),
        .p_14_out(p_14_out),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_18_out(p_18_out),
        .p_32_out(p_32_out),
        .p_33_out(p_33_out),
        .p_34_out(p_34_out),
        .p_35_out(p_35_out),
        .p_36_out(p_36_out),
        .\sig_addr_cntr_im0_msh_reg[11] ({\GEN_DM_FULL.I_DATAMOVER_FULL_n_24 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_25 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_26 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_27 }),
        .\sig_addr_cntr_im0_msh_reg[15] ({\GEN_DM_FULL.I_DATAMOVER_FULL_n_28 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_29 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_30 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_31 }),
        .\sig_addr_cntr_im0_msh_reg[7] ({\GEN_DM_FULL.I_DATAMOVER_FULL_n_20 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_21 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_22 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_23 }),
        .sig_cntl2mm2s_sts_tready(sig_cntl2mm2s_sts_tready),
        .sig_cntl2s2mm_cmd_tvalid(sig_cntl2s2mm_cmd_tvalid),
        .sig_cntl2s2mm_sts_tready(sig_cntl2s2mm_sts_tready),
        .\sig_da_register_lsb_reg[31] ({sig_reg2cntlr_dest_addr[31:2],sig_cntl2s2mm_cmd_tdata}),
        .sig_data2all_tlast_error(\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/sig_data2all_tlast_error ),
        .sig_dma_go_reg(cdma_tvect_out[0]),
        .sig_halt_request_reg(I_SIMPLE_RST_MODULE_n_15),
        .sig_mm2s_interr(sig_mm2s_interr),
        .sig_rst2all_stop_request(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/sig_rst2all_stop_request ),
        .sig_rst2dm_resetn(sig_rst2dm_resetn),
        .sig_s2mm_interr(sig_s2mm_interr),
        .\sig_sa_register_lsb_reg[31] ({sig_reg2cntlr_src_addr,sig_reg2cntlr_dest_addr[1:0],sig_cntl2mm2s_cmd_tdata,sig_reg2cntlr_btt}),
        .sig_sm_ld_cmd_reg(\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo ),
        .\sig_sm_state_reg[1] (\GEN_DM_FULL.I_DATAMOVER_FULL_n_35 ));
  CARRY4 \GEN_DM_FULL.I_DATAMOVER_FULL_carry 
       (.CI(1'b0),
        .CO({\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_0 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_1 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_2 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\GEN_DM_FULL.I_DATAMOVER_FULL_n_19 }),
        .O({\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_4 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_5 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_6 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_7 }),
        .S({\GEN_DM_FULL.I_DATAMOVER_FULL_n_14 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_15 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_16 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_17 }));
  CARRY4 \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0 
       (.CI(\GEN_DM_FULL.I_DATAMOVER_FULL_carry_n_0 ),
        .CO({\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_0 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_1 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_2 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_4 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_5 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_6 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_7 }),
        .S({\GEN_DM_FULL.I_DATAMOVER_FULL_n_20 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_21 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_22 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_23 }));
  CARRY4 \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1 
       (.CI(\GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_n_0 ),
        .CO({\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_0 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_1 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_2 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_4 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_5 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_6 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_7 }),
        .S({\GEN_DM_FULL.I_DATAMOVER_FULL_n_24 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_25 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_26 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_27 }));
  CARRY4 \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2 
       (.CI(\GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_n_0 ),
        .CO({\NLW_GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_CO_UNCONNECTED [3],\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_1 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_2 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_4 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_5 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_6 ,\GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_n_7 }),
        .S({\GEN_DM_FULL.I_DATAMOVER_FULL_n_28 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_29 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_30 ,\GEN_DM_FULL.I_DATAMOVER_FULL_n_31 }));
  CMDA_DRAM_axi_cdma_0_0_axi_cdma_simple_cntlr I_SIMPLE_DMA_CNTLR
       (.D(sig_sm_state_ns),
        .E(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo ),
        .\GEN_AXI_LITE_SYNC2AXI.sig_composite_reg_reset_reg (sig_rst2reg_reset),
        .Q(sig_sm_state),
        .SR(sig_sm_state0),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] (\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (\GEN_DM_FULL.I_DATAMOVER_FULL_n_35 ),
        .axi_cdma_tstvec(axi_cdma_tstvec[2:1]),
        .cdma_tvect_out(cdma_tvect_out[3:1]),
        .\cdma_tvect_out_1__s_port_] (axi_cdma_tstvec[0]),
        .cntlr2reg_interr_set0__2(cntlr2reg_interr_set0__2),
        .dma_decerr_reg(I_SIMPLE_DMA_CNTLR_n_18),
        .dma_decerr_reg_0(I_SIMPLE_REG_MODULE_n_10),
        .dma_interr_reg(I_SIMPLE_DMA_CNTLR_n_20),
        .dma_interr_reg_0(I_SIMPLE_REG_MODULE_n_8),
        .dma_slverr_reg(I_SIMPLE_DMA_CNTLR_n_19),
        .dma_slverr_reg_0(I_SIMPLE_REG_MODULE_n_9),
        .idle(idle),
        .idle_reg(I_SIMPLE_DMA_CNTLR_n_17),
        .m_axi_aclk(m_axi_aclk),
        .out(sig_rst2cntlr_reset),
        .p_0_out(\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/p_0_out ),
        .p_14_out(p_14_out),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_32_out(p_32_out),
        .p_33_out(p_33_out),
        .p_34_out(p_34_out),
        .p_35_out(p_35_out),
        .sig_cntl2mm2s_sts_tready(sig_cntl2mm2s_sts_tready),
        .sig_cntl2s2mm_cmd_tvalid(sig_cntl2s2mm_cmd_tvalid),
        .sig_cntl2s2mm_sts_tready(sig_cntl2s2mm_sts_tready),
        .sig_cntlr2rst_halt_cmplt(sig_cntlr2rst_halt_cmplt),
        .sig_data2all_tlast_error(\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/sig_data2all_tlast_error ),
        .sig_dm_s2mm_halt(sig_dm_s2mm_halt),
        .sig_dma_go_reg(cdma_tvect_out[0]),
        .sig_mm2s_interr(sig_mm2s_interr),
        .sig_mm2s_status_reg0(sig_mm2s_status_reg0),
        .sig_s2mm_interr(sig_s2mm_interr));
  CMDA_DRAM_axi_cdma_0_0_axi_cdma_reg_module I_SIMPLE_REG_MODULE
       (.E(sig_axi2ip_wrce),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg (sig_rst2lite_bside_reset),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_0 (I_SIMPLE_RST_MODULE_n_9),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_1 (I_SIMPLE_RST_MODULE_n_8),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_2 (I_SIMPLE_RST_MODULE_n_7),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_3 (I_SIMPLE_RST_MODULE_n_6),
        .\GEN_AXI_LITE_SYNC2AXI.sig_lite_bside_hw_reset_reg_reg_4 (I_SIMPLE_RST_MODULE_n_5),
        .SR(\I_AXI_LITE/rst_rvalid_re ),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ({sig_reg2cntlr_src_addr,sig_reg2cntlr_dest_addr[1:0],sig_cntl2mm2s_cmd_tdata,sig_reg2cntlr_btt}),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ({sig_reg2cntlr_dest_addr[31:2],sig_cntl2s2mm_cmd_tdata}),
        .arvalid_d10(\I_AXI_LITE/arvalid_d10 ),
        .axi_cdma_tstvec(axi_cdma_tstvec[2:1]),
        .cdma_introut(cdma_introut),
        .\cdma_tvect_out[0] (cdma_tvect_out[0]),
        .dma_interr_reg(I_SIMPLE_DMA_CNTLR_n_20),
        .dmacr_i(\I_REGISTER_BLOCK/dmacr_i ),
        .error_d1_reg(I_SIMPLE_REG_MODULE_n_8),
        .error_d1_reg_0(I_SIMPLE_REG_MODULE_n_9),
        .error_d1_reg_1(I_SIMPLE_REG_MODULE_n_10),
        .idle(idle),
        .idle_reg(I_SIMPLE_DMA_CNTLR_n_17),
        .m_axi_aclk(m_axi_aclk),
        .out(sig_rst2reg_reset),
        .p_0_out(\I_AXI_LITE/p_0_out ),
        .p_1_out(\I_AXI_LITE/p_1_out ),
        .rdy(\I_AXI_LITE/rdy ),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .sig_pulse_trigger(\I_SOFT_RST_POS_EDGE_DTCT/sig_pulse_trigger ),
        .sig_reg2rst_soft_reset(sig_reg2rst_soft_reset),
        .\sig_s2mm_status_reg_reg[5] (I_SIMPLE_DMA_CNTLR_n_18),
        .\sig_s2mm_status_reg_reg[6] (I_SIMPLE_DMA_CNTLR_n_19),
        .sig_to_edge_detect_reg(\I_SOFT_RST_POS_EDGE_DTCT/sig_to_edge_detect_reg ));
  CMDA_DRAM_axi_cdma_0_0_axi_cdma_reset I_SIMPLE_RST_MODULE
       (.E(sig_axi2ip_wrce),
        .\GEN_DMACR_SIMPLE.dmacr_i_reg[14] (sig_rst2reg_reset),
        .\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg (s_axi_lite_rvalid),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[0] (I_SIMPLE_RST_MODULE_n_5),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] (I_SIMPLE_RST_MODULE_n_9),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[1] (I_SIMPLE_RST_MODULE_n_6),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[6] (I_SIMPLE_RST_MODULE_n_7),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[8] (I_SIMPLE_RST_MODULE_n_8),
        .\GEN_SYNC_WRITE.bvalid_i_reg (s_axi_lite_bvalid),
        .SR(\I_AXI_LITE/rst_rvalid_re ),
        .arvalid_d10(\I_AXI_LITE/arvalid_d10 ),
        .axi_cdma_tstvec(axi_cdma_tstvec[0]),
        .dmacr_i(\I_REGISTER_BLOCK/dmacr_i ),
        .m_axi_aclk(m_axi_aclk),
        .out(sig_rst2lite_bside_reset),
        .p_0_out(\I_AXI_LITE/p_0_out ),
        .p_18_out(p_18_out),
        .p_1_out(\I_AXI_LITE/p_1_out ),
        .p_36_out(p_36_out),
        .rdy(\I_AXI_LITE/rdy ),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_awaddr(s_axi_lite_awaddr),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_wdata(s_axi_lite_wdata[2]),
        .sig_cntlr2rst_halt_cmplt(sig_cntlr2rst_halt_cmplt),
        .sig_dm_s2mm_halt(sig_dm_s2mm_halt),
        .sig_halt_cmplt_reg_reg(sig_rst2cntlr_reset),
        .sig_mm2s_status_reg0(sig_mm2s_status_reg0),
        .sig_pulse_trigger(\I_SOFT_RST_POS_EDGE_DTCT/sig_pulse_trigger ),
        .sig_reg2rst_soft_reset(sig_reg2rst_soft_reset),
        .sig_rst2all_stop_request(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/sig_rst2all_stop_request ),
        .sig_rst2dm_resetn(sig_rst2dm_resetn),
        .sig_s_h_halt_reg_reg(I_SIMPLE_RST_MODULE_n_15),
        .sig_sm_set_idle_reg(sig_sm_state0),
        .sig_to_edge_detect_reg(\I_SOFT_RST_POS_EDGE_DTCT/sig_to_edge_detect_reg ));
endmodule

(* ORIG_REF_NAME = "axi_datamover" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover
   (m_axi_arvalid,
    m_axi_wvalid,
    m_axi_awvalid,
    m_axi_wlast,
    p_36_out,
    p_34_out,
    p_33_out,
    p_35_out,
    p_18_out,
    p_16_out,
    p_15_out,
    sig_data2all_tlast_error,
    p_0_out,
    sig_rst2all_stop_request,
    S,
    m_axi_rready,
    DI,
    \sig_addr_cntr_im0_msh_reg[7] ,
    \sig_addr_cntr_im0_msh_reg[11] ,
    \sig_addr_cntr_im0_msh_reg[15] ,
    m_axi_bready,
    cntlr2reg_interr_set0__2,
    D,
    \sig_sm_state_reg[1] ,
    p_32_out,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    p_14_out,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_aclk,
    sig_rst2dm_resetn,
    O,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ,
    sig_halt_request_reg,
    m_axi_rlast,
    m_axi_arready,
    m_axi_awready,
    m_axi_wready,
    m_axi_rvalid,
    m_axi_rresp,
    m_axi_bvalid,
    sig_mm2s_interr,
    sig_s2mm_interr,
    Q,
    sig_dma_go_reg,
    E,
    sig_cntl2s2mm_cmd_tvalid,
    sig_cntl2mm2s_sts_tready,
    sig_sm_ld_cmd_reg,
    sig_cntl2s2mm_sts_tready,
    \sig_sa_register_lsb_reg[31] ,
    m_axi_rdata,
    m_axi_bresp,
    \sig_da_register_lsb_reg[31] );
  output m_axi_arvalid;
  output m_axi_wvalid;
  output m_axi_awvalid;
  output m_axi_wlast;
  output p_36_out;
  output p_34_out;
  output p_33_out;
  output p_35_out;
  output p_18_out;
  output p_16_out;
  output p_15_out;
  output sig_data2all_tlast_error;
  output p_0_out;
  output sig_rst2all_stop_request;
  output [3:0]S;
  output m_axi_rready;
  output [0:0]DI;
  output [3:0]\sig_addr_cntr_im0_msh_reg[7] ;
  output [3:0]\sig_addr_cntr_im0_msh_reg[11] ;
  output [3:0]\sig_addr_cntr_im0_msh_reg[15] ;
  output m_axi_bready;
  output cntlr2reg_interr_set0__2;
  output [0:0]D;
  output \sig_sm_state_reg[1] ;
  output [2:0]p_32_out;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]p_14_out;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  input m_axi_aclk;
  input sig_rst2dm_resetn;
  input [3:0]O;
  input [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ;
  input [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ;
  input [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  input sig_halt_request_reg;
  input m_axi_rlast;
  input m_axi_arready;
  input m_axi_awready;
  input m_axi_wready;
  input m_axi_rvalid;
  input [1:0]m_axi_rresp;
  input m_axi_bvalid;
  input sig_mm2s_interr;
  input sig_s2mm_interr;
  input [2:0]Q;
  input sig_dma_go_reg;
  input [0:0]E;
  input sig_cntl2s2mm_cmd_tvalid;
  input sig_cntl2mm2s_sts_tready;
  input [0:0]sig_sm_ld_cmd_reg;
  input sig_cntl2s2mm_sts_tready;
  input [57:0]\sig_sa_register_lsb_reg[31] ;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_bresp;
  input [30:0]\sig_da_register_lsb_reg[31] ;

  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \GEN_INCLUDE_MM2S_DRE.I_DRE_16_to_64/sig_output_xfer57_out__0 ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_31 ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_32 ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_33 ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_34 ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_35 ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_36 ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_37 ;
  wire \GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER_n_19 ;
  wire \I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ;
  wire \I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done ;
  wire \I_CMD_STATUS/I_CMD_FIFO/sig_init_done ;
  wire \I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg ;
  wire \I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ;
  wire \I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ;
  wire \I_WR_DATA_CNTL/sig_dbeat_cntr_eq_0 ;
  wire \I_WR_DATA_CNTL/sig_good_mmap_dbeat13_out__0 ;
  wire \I_WR_DATA_CNTL/sig_halt_reg_dly3 ;
  wire \I_WR_DATA_CNTL/sig_next_eof_reg ;
  wire [3:0]\I_WR_DATA_CNTL/sig_next_last_strb_reg ;
  wire \I_WR_DATA_CNTL/sig_tlast_error ;
  wire \I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done ;
  wire \I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/sig_init_done ;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ;
  wire [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ;
  wire [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  wire cntlr2reg_interr_set0__2;
  wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [7:0]m_axi_awlen;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire p_0_out;
  wire [2:0]p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_18_out;
  wire p_19_out;
  wire [31:0]p_22_out;
  wire [2:0]p_32_out;
  wire p_33_out;
  wire p_34_out;
  wire p_35_out;
  wire p_36_out;
  wire [3:0]\sig_addr_cntr_im0_msh_reg[11] ;
  wire [3:0]\sig_addr_cntr_im0_msh_reg[15] ;
  wire [3:0]\sig_addr_cntr_im0_msh_reg[7] ;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cntl2mm2s_sts_tready;
  wire sig_cntl2s2mm_cmd_tvalid;
  wire sig_cntl2s2mm_sts_tready;
  wire [30:0]\sig_da_register_lsb_reg[31] ;
  wire sig_data2addr_stop_req;
  wire sig_data2all_tlast_error;
  wire sig_dma_go_reg;
  wire sig_halt_request_reg;
  wire sig_mm2s_interr;
  wire sig_rst2all_stop_request;
  wire sig_rst2dm_resetn;
  wire sig_s2mm_interr;
  wire [57:0]\sig_sa_register_lsb_reg[31] ;
  wire [0:0]sig_sm_ld_cmd_reg;
  wire \sig_sm_state_reg[1] ;
  wire sig_stream_rst;

  CMDA_DRAM_axi_cdma_0_0_axi_datamover_mm2s_full_wrap \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER 
       (.D(D),
        .DI(DI),
        .E(E),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_37 ),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 (sig_data2all_tlast_error),
        .O(O),
        .Q(Q),
        .S(S),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (p_34_out),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (p_16_out),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg (p_15_out),
        .in(p_35_out),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .p_19_out(p_19_out),
        .p_32_out(p_32_out),
        .p_36_out(p_36_out),
        .\sig_addr_cntr_im0_msh_reg[11] (\sig_addr_cntr_im0_msh_reg[11] ),
        .\sig_addr_cntr_im0_msh_reg[15] (\sig_addr_cntr_im0_msh_reg[15] ),
        .\sig_addr_cntr_im0_msh_reg[7] (\sig_addr_cntr_im0_msh_reg[7] ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cntl2mm2s_sts_tready(sig_cntl2mm2s_sts_tready),
        .sig_cntl2s2mm_cmd_tvalid(sig_cntl2s2mm_cmd_tvalid),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .\sig_data_skid_reg_reg[31] (p_22_out),
        .sig_dbeat_cntr_eq_0(\I_WR_DATA_CNTL/sig_dbeat_cntr_eq_0 ),
        .sig_dma_go_reg(sig_dma_go_reg),
        .sig_dre_tvalid_i_reg(\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER_n_19 ),
        .sig_good_mmap_dbeat13_out__0(\I_WR_DATA_CNTL/sig_good_mmap_dbeat13_out__0 ),
        .sig_halt_reg_dly3(\I_WR_DATA_CNTL/sig_halt_reg_dly3 ),
        .sig_halt_request_reg(sig_halt_request_reg),
        .sig_init_done(\I_CMD_STATUS/I_CMD_FIFO/sig_init_done ),
        .sig_init_done_0(\I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done ),
        .sig_init_done_1(\I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/sig_init_done ),
        .sig_init_done_2(\I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done ),
        .sig_init_done_3(\I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ),
        .sig_init_done_4(\I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_done_reg(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_31 ),
        .sig_init_done_reg_0(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_32 ),
        .sig_init_done_reg_1(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_33 ),
        .sig_init_done_reg_2(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_34 ),
        .sig_init_done_reg_3(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_35 ),
        .sig_init_done_reg_4(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_36 ),
        .sig_init_reg(\I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg ),
        .sig_init_reg2(\I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ),
        .sig_next_eof_reg(\I_WR_DATA_CNTL/sig_next_eof_reg ),
        .\sig_next_last_strb_reg_reg[3] (\I_WR_DATA_CNTL/sig_next_last_strb_reg ),
        .sig_output_xfer57_out__0(\GEN_INCLUDE_MM2S_DRE.I_DRE_16_to_64/sig_output_xfer57_out__0 ),
        .sig_rst2all_stop_request(sig_rst2all_stop_request),
        .sig_rst2dm_resetn(sig_rst2dm_resetn),
        .\sig_sa_register_lsb_reg[31] (\sig_sa_register_lsb_reg[31] ),
        .\sig_sm_state_reg[0] (p_33_out),
        .sig_stream_rst(sig_stream_rst),
        .sig_tlast_error(\I_WR_DATA_CNTL/sig_tlast_error ));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_s2mm_full_wrap \GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER 
       (.D(p_22_out),
        .\GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] (\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER_n_19 ),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_37 ),
        .Q(Q[0]),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (p_16_out),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (p_15_out),
        .cntlr2reg_interr_set0__2(cntlr2reg_interr_set0__2),
        .in(p_0_out),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .p_14_out(p_14_out),
        .p_18_out(p_18_out),
        .p_19_out(p_19_out),
        .p_34_out(p_34_out),
        .p_35_out(p_35_out),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cntl2s2mm_cmd_tvalid(sig_cntl2s2mm_cmd_tvalid),
        .sig_cntl2s2mm_sts_tready(sig_cntl2s2mm_sts_tready),
        .\sig_da_register_lsb_reg[31] ({\sig_da_register_lsb_reg[31] [30:1],\sig_sa_register_lsb_reg[31] [25:24],\sig_da_register_lsb_reg[31] [0],\sig_sa_register_lsb_reg[31] [22:0]}),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_data2wsc_cmd_cmplt_reg(sig_data2all_tlast_error),
        .sig_dbeat_cntr_eq_0(\I_WR_DATA_CNTL/sig_dbeat_cntr_eq_0 ),
        .sig_dma_go_reg(sig_dma_go_reg),
        .sig_good_mmap_dbeat13_out__0(\I_WR_DATA_CNTL/sig_good_mmap_dbeat13_out__0 ),
        .sig_halt_reg_dly3(\I_WR_DATA_CNTL/sig_halt_reg_dly3 ),
        .sig_init_done(\I_CMD_STATUS/I_CMD_FIFO/sig_init_done ),
        .sig_init_done_0(\I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done ),
        .sig_init_done_1(\I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/sig_init_done ),
        .sig_init_done_2(\I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done ),
        .sig_init_done_3(\I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ),
        .sig_init_done_4(\I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_reg(\I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg ),
        .sig_init_reg2(\I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ),
        .sig_mm2s_interr(sig_mm2s_interr),
        .sig_mmap_reset_reg_reg(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_31 ),
        .sig_mmap_reset_reg_reg_0(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_32 ),
        .sig_mmap_reset_reg_reg_1(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_33 ),
        .sig_mmap_reset_reg_reg_2(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_34 ),
        .sig_mmap_reset_reg_reg_3(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_35 ),
        .sig_mmap_reset_reg_reg_4(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER_n_36 ),
        .sig_next_eof_reg(\I_WR_DATA_CNTL/sig_next_eof_reg ),
        .sig_output_xfer57_out__0(\GEN_INCLUDE_MM2S_DRE.I_DRE_16_to_64/sig_output_xfer57_out__0 ),
        .sig_s2mm_interr(sig_s2mm_interr),
        .sig_sm_ld_cmd_reg(sig_sm_ld_cmd_reg),
        .\sig_sm_state_reg[1] (\sig_sm_state_reg[1] ),
        .\sig_strb_skid_reg_reg[3] (\I_WR_DATA_CNTL/sig_next_last_strb_reg ),
        .sig_stream_rst(sig_stream_rst),
        .sig_tlast_error(\I_WR_DATA_CNTL/sig_tlast_error ));
endmodule

(* ORIG_REF_NAME = "axi_datamover_addr_cntl" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_addr_cntl
   (out,
    sig_addr_reg_empty,
    sig_addr2rsc_calc_error,
    m_axi_arvalid,
    sig_init_done,
    sig_wr_fifo,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    m_axi_arready,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_halt_reg_reg,
    sig_mstr2addr_cmd_valid,
    in);
  output out;
  output sig_addr_reg_empty;
  output sig_addr2rsc_calc_error;
  output m_axi_arvalid;
  output sig_init_done;
  output sig_wr_fifo;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input m_axi_arready;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input sig_halt_reg_reg;
  input sig_mstr2addr_cmd_valid;
  input [37:0]in;

  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_3 ;
  wire [37:0]in;
  wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [50:4]p_1_out;
  wire sig_addr2rsc_calc_error;
  wire sig_addr_reg_empty;
  wire sig_addr_reg_full;
  wire sig_addr_valid_reg_i_1_n_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_halt_reg_reg;
  wire sig_init_done;
  wire sig_mmap_reset_reg_reg;
  wire sig_mstr2addr_cmd_valid;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_wr_fifo;

  assign out = sig_posted_to_axi;
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized1 \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO 
       (.in(in),
        .m_axi_aclk(m_axi_aclk),
        .out({p_1_out[50],p_1_out[48:4]}),
        .sel(sig_wr_fifo),
        .sig_addr_reg_empty_reg(sig_addr_reg_empty),
        .sig_addr_valid_reg_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_3 ),
        .sig_calc_error_reg_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_halt_reg_reg(sig_halt_reg_reg),
        .sig_init_done(sig_init_done),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(1'b0),
        .Q(sig_addr_reg_empty),
        .S(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .Q(sig_addr_reg_full),
        .R(sig_addr_valid_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h08FF)) 
    sig_addr_valid_reg_i_1
       (.I0(m_axi_arready),
        .I1(sig_addr_reg_full),
        .I2(sig_addr2rsc_calc_error),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_valid_reg_reg
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_3 ),
        .Q(m_axi_arvalid),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[50]),
        .Q(sig_addr2rsc_calc_error),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[4]),
        .Q(m_axi_araddr[0]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[14]),
        .Q(m_axi_araddr[10]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[15]),
        .Q(m_axi_araddr[11]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[16]),
        .Q(m_axi_araddr[12]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[17]),
        .Q(m_axi_araddr[13]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[18]),
        .Q(m_axi_araddr[14]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[19]),
        .Q(m_axi_araddr[15]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[20]),
        .Q(m_axi_araddr[16]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[21]),
        .Q(m_axi_araddr[17]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[22]),
        .Q(m_axi_araddr[18]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[23]),
        .Q(m_axi_araddr[19]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[5]),
        .Q(m_axi_araddr[1]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[24]),
        .Q(m_axi_araddr[20]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[25]),
        .Q(m_axi_araddr[21]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[26]),
        .Q(m_axi_araddr[22]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[27]),
        .Q(m_axi_araddr[23]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[28]),
        .Q(m_axi_araddr[24]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[29]),
        .Q(m_axi_araddr[25]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[30]),
        .Q(m_axi_araddr[26]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[31]),
        .Q(m_axi_araddr[27]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[32]),
        .Q(m_axi_araddr[28]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[33]),
        .Q(m_axi_araddr[29]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[6]),
        .Q(m_axi_araddr[2]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[34]),
        .Q(m_axi_araddr[30]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[35]),
        .Q(m_axi_araddr[31]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[7]),
        .Q(m_axi_araddr[3]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[8]),
        .Q(m_axi_araddr[4]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[9]),
        .Q(m_axi_araddr[5]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[10]),
        .Q(m_axi_araddr[6]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[11]),
        .Q(m_axi_araddr[7]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[12]),
        .Q(m_axi_araddr[8]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[13]),
        .Q(m_axi_araddr[9]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[47]),
        .Q(m_axi_arburst[0]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[48]),
        .Q(m_axi_arburst[1]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[36]),
        .Q(m_axi_arlen[0]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[37]),
        .Q(m_axi_arlen[1]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[38]),
        .Q(m_axi_arlen[2]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[39]),
        .Q(m_axi_arlen[3]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[40]),
        .Q(m_axi_arlen[4]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[41]),
        .Q(m_axi_arlen[5]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[42]),
        .Q(m_axi_arlen[6]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[43]),
        .Q(m_axi_arlen[7]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[44]),
        .Q(m_axi_arsize[0]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[45]),
        .Q(m_axi_arsize[1]),
        .R(sig_addr_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[46]),
        .Q(m_axi_arsize[2]),
        .R(sig_addr_valid_reg_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .Q(sig_posted_to_axi_2),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .Q(sig_posted_to_axi),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
endmodule

(* ORIG_REF_NAME = "axi_datamover_addr_cntl" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_addr_cntl__parameterized0
   (out,
    sig_addr2wsc_calc_error,
    m_axi_awvalid,
    sig_init_done_3,
    sig_wr_fifo,
    sig_halt_cmplt_reg,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    sig_stream_rst,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_data2addr_stop_req,
    m_axi_awready,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    p_12_out,
    sig_wsc2rst_stop_cmplt,
    sig_data2addr_stop_req_0,
    sig_data2rst_stop_cmplt,
    p_18_out,
    in);
  output out;
  output sig_addr2wsc_calc_error;
  output m_axi_awvalid;
  output sig_init_done_3;
  output sig_wr_fifo;
  output sig_halt_cmplt_reg;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_data2addr_stop_req;
  input m_axi_awready;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input p_12_out;
  input sig_wsc2rst_stop_cmplt;
  input sig_data2addr_stop_req_0;
  input sig_data2rst_stop_cmplt;
  input p_18_out;
  input [37:0]in;

  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_3 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire [37:0]in;
  wire m_axi_aclk;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [7:0]m_axi_awlen;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire p_12_out;
  wire p_18_out;
  wire [50:4]p_1_out;
  wire sig_addr2wsc_calc_error;
  wire sig_addr_reg_empty;
  wire sig_addr_reg_full;
  wire sig_addr_valid_reg_i_1__0_n_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire sig_data2addr_stop_req_0;
  wire sig_data2rst_stop_cmplt;
  wire sig_halt_cmplt_reg;
  wire sig_init_done_3;
  wire sig_mmap_reset_reg_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_stream_rst;
  wire sig_wr_fifo;
  wire sig_wsc2rst_stop_cmplt;

  assign out = sig_posted_to_axi;
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized5 \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO 
       (.\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out({p_1_out[50],p_1_out[48:4]}),
        .p_12_out(p_12_out),
        .sel(sig_wr_fifo),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_addr_valid_reg_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_3 ),
        .sig_calc_error_reg_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_init_done_3(sig_init_done_3),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg),
        .sig_stream_rst(sig_stream_rst));
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(1'b0),
        .Q(sig_addr_reg_empty),
        .S(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .Q(sig_addr_reg_full),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h08FF)) 
    sig_addr_valid_reg_i_1__0
       (.I0(m_axi_awready),
        .I1(sig_addr_reg_full),
        .I2(sig_addr2wsc_calc_error),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_valid_reg_reg
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_3 ),
        .Q(m_axi_awvalid),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[50]),
        .Q(sig_addr2wsc_calc_error),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8000000)) 
    sig_halt_cmplt_i_1__0
       (.I0(sig_wsc2rst_stop_cmplt),
        .I1(sig_addr_reg_empty),
        .I2(sig_addr2wsc_calc_error),
        .I3(sig_data2addr_stop_req_0),
        .I4(sig_data2rst_stop_cmplt),
        .I5(p_18_out),
        .O(sig_halt_cmplt_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[4]),
        .Q(m_axi_awaddr[0]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[14]),
        .Q(m_axi_awaddr[10]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[15]),
        .Q(m_axi_awaddr[11]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[16]),
        .Q(m_axi_awaddr[12]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[17]),
        .Q(m_axi_awaddr[13]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[18]),
        .Q(m_axi_awaddr[14]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[19]),
        .Q(m_axi_awaddr[15]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[20]),
        .Q(m_axi_awaddr[16]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[21]),
        .Q(m_axi_awaddr[17]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[22]),
        .Q(m_axi_awaddr[18]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[23]),
        .Q(m_axi_awaddr[19]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[5]),
        .Q(m_axi_awaddr[1]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[24]),
        .Q(m_axi_awaddr[20]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[25]),
        .Q(m_axi_awaddr[21]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[26]),
        .Q(m_axi_awaddr[22]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[27]),
        .Q(m_axi_awaddr[23]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[28]),
        .Q(m_axi_awaddr[24]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[29]),
        .Q(m_axi_awaddr[25]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[30]),
        .Q(m_axi_awaddr[26]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[31]),
        .Q(m_axi_awaddr[27]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[32]),
        .Q(m_axi_awaddr[28]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[33]),
        .Q(m_axi_awaddr[29]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[6]),
        .Q(m_axi_awaddr[2]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[34]),
        .Q(m_axi_awaddr[30]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[35]),
        .Q(m_axi_awaddr[31]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[7]),
        .Q(m_axi_awaddr[3]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[8]),
        .Q(m_axi_awaddr[4]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[9]),
        .Q(m_axi_awaddr[5]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[10]),
        .Q(m_axi_awaddr[6]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[11]),
        .Q(m_axi_awaddr[7]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[12]),
        .Q(m_axi_awaddr[8]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[13]),
        .Q(m_axi_awaddr[9]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[47]),
        .Q(m_axi_awburst[0]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[48]),
        .Q(m_axi_awburst[1]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[36]),
        .Q(m_axi_awlen[0]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[37]),
        .Q(m_axi_awlen[1]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[38]),
        .Q(m_axi_awlen[2]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[39]),
        .Q(m_axi_awlen[3]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[40]),
        .Q(m_axi_awlen[4]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[41]),
        .Q(m_axi_awlen[5]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[42]),
        .Q(m_axi_awlen[6]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[43]),
        .Q(m_axi_awlen[7]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[44]),
        .Q(m_axi_awsize[0]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[45]),
        .Q(m_axi_awsize[1]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .D(p_1_out[46]),
        .Q(m_axi_awsize[2]),
        .R(sig_addr_valid_reg_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .Q(sig_posted_to_axi_2),
        .R(sig_stream_rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_1 ),
        .Q(sig_posted_to_axi),
        .R(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "axi_datamover_cmd_status" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_cmd_status
   (sig_init_reg2,
    sig_init_done,
    sig_cmd2mstr_cmd_valid,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    sig_init_done_0,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    sig_stat2wsc_status_ready,
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ,
    \sig_sm_state_reg[1] ,
    \sig_addr_cntr_lsh_kh_reg[31] ,
    sig_calc_error_reg_reg,
    p_14_out,
    sig_stream_rst,
    sig_init_reg,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ,
    sig_mmap_reset_reg_reg_0,
    sig_wsc2stat_status_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_dma_go_reg,
    p_34_out,
    Q,
    sig_cntl2s2mm_sts_tready,
    sig_push_input_reg11_out,
    in,
    sig_wsc2stat_status,
    sig_sm_ld_cmd_reg,
    \sig_da_register_lsb_reg[31] );
  output sig_init_reg2;
  output sig_init_done;
  output sig_cmd2mstr_cmd_valid;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  output sig_init_done_0;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  output sig_stat2wsc_status_ready;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ;
  output \sig_sm_state_reg[1] ;
  output [56:0]\sig_addr_cntr_lsh_kh_reg[31] ;
  output sig_calc_error_reg_reg;
  output [2:0]p_14_out;
  input sig_stream_rst;
  input sig_init_reg;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ;
  input sig_mmap_reset_reg_reg_0;
  input sig_wsc2stat_status_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_dma_go_reg;
  input p_34_out;
  input [0:0]Q;
  input sig_cntl2s2mm_sts_tready;
  input sig_push_input_reg11_out;
  input [0:0]in;
  input [2:0]sig_wsc2stat_status;
  input [0:0]sig_sm_ld_cmd_reg;
  input [55:0]\sig_da_register_lsb_reg[31] ;

  wire \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ;
  wire [0:0]Q;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ;
  wire [0:0]in;
  wire m_axi_aclk;
  wire [2:0]p_14_out;
  wire p_34_out;
  wire [56:0]\sig_addr_cntr_lsh_kh_reg[31] ;
  wire sig_calc_error_reg_reg;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_cntl2s2mm_sts_tready;
  wire [55:0]\sig_da_register_lsb_reg[31] ;
  wire sig_dma_go_reg;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_reg;
  wire sig_init_reg2;
  wire sig_mmap_reset_reg_reg;
  wire sig_mmap_reset_reg_reg_0;
  wire sig_push_input_reg11_out;
  wire [0:0]sig_sm_ld_cmd_reg;
  wire \sig_sm_state_reg[1] ;
  wire sig_stat2wsc_status_ready;
  wire sig_stream_rst;
  wire [2:0]sig_wsc2stat_status;
  wire sig_wsc2stat_status_valid;

  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized0 \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO 
       (.\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg (sig_stat2wsc_status_ready),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg_0 (\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .m_axi_aclk(m_axi_aclk),
        .p_14_out(p_14_out),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cntl2s2mm_sts_tready(sig_cntl2s2mm_sts_tready),
        .sig_init_done_0(sig_init_done_0),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg_0),
        .sig_stream_rst(sig_stream_rst),
        .sig_wsc2stat_status(sig_wsc2stat_status),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo I_CMD_FIFO
       (.Q(Q),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .p_34_out(p_34_out),
        .\sig_addr_cntr_lsh_kh_reg[31] (\sig_addr_cntr_lsh_kh_reg[31] ),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .\sig_da_register_lsb_reg[31] (\sig_da_register_lsb_reg[31] ),
        .sig_dma_go_reg(sig_dma_go_reg),
        .sig_init_done(sig_init_done),
        .sig_init_reg(sig_init_reg),
        .sig_init_reg2(sig_init_reg2),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg),
        .sig_push_input_reg11_out(sig_push_input_reg11_out),
        .sig_sm_ld_cmd_reg(sig_sm_ld_cmd_reg),
        .\sig_sm_state_reg[1] (\sig_sm_state_reg[1] ),
        .sig_stream_rst(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "axi_datamover_cmd_status" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_cmd_status_1
   (sig_init_done,
    sig_cmd2mstr_cmd_valid,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    sig_init_done_0,
    \sig_sm_state_reg[0] ,
    sig_stat2rsc_status_ready,
    sig_rd_sts_reg_empty_reg,
    D,
    \sig_addr_cntr_lsh_kh_reg[31] ,
    sig_calc_error_reg_reg,
    p_32_out,
    sig_mmap_reset_reg_reg,
    m_axi_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    sig_mmap_reset_reg_reg_0,
    sig_rsc2stat_status_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg ,
    Q,
    sig_dma_go_reg,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ,
    sig_cntl2mm2s_sts_tready,
    sig_push_input_reg11_out,
    in,
    sig_rsc2stat_status,
    E,
    \sig_sa_register_lsb_reg[31] );
  output sig_init_done;
  output sig_cmd2mstr_cmd_valid;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  output sig_init_done_0;
  output \sig_sm_state_reg[0] ;
  output sig_stat2rsc_status_ready;
  output sig_rd_sts_reg_empty_reg;
  output [0:0]D;
  output [58:0]\sig_addr_cntr_lsh_kh_reg[31] ;
  output sig_calc_error_reg_reg;
  output [2:0]p_32_out;
  input sig_mmap_reset_reg_reg;
  input m_axi_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  input sig_mmap_reset_reg_reg_0;
  input sig_rsc2stat_status_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  input \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  input [2:0]Q;
  input sig_dma_go_reg;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ;
  input sig_cntl2mm2s_sts_tready;
  input sig_push_input_reg11_out;
  input [0:0]in;
  input [2:0]sig_rsc2stat_status;
  input [0:0]E;
  input [57:0]\sig_sa_register_lsb_reg[31] ;

  wire [0:0]D;
  wire [0:0]E;
  wire \I_SIMPLE_DMA_CNTLR/sig_sm_state_ns1__1 ;
  wire [2:0]Q;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  wire [0:0]in;
  wire m_axi_aclk;
  wire [2:0]p_32_out;
  wire [58:0]\sig_addr_cntr_lsh_kh_reg[31] ;
  wire sig_calc_error_reg_reg;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  wire sig_cntl2mm2s_sts_tready;
  wire sig_dma_go_reg;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_mmap_reset_reg_reg;
  wire sig_mmap_reset_reg_reg_0;
  wire sig_push_input_reg11_out;
  wire sig_rd_sts_reg_empty_reg;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire [57:0]\sig_sa_register_lsb_reg[31] ;
  wire \sig_sm_state_reg[0] ;
  wire sig_stat2rsc_status_ready;

  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized0_5 \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO 
       (.D(D),
        .Q(Q),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_full_reg_reg ),
        .m_axi_aclk(m_axi_aclk),
        .p_32_out(p_32_out),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1),
        .sig_cntl2mm2s_sts_tready(sig_cntl2mm2s_sts_tready),
        .sig_init_done_0(sig_init_done_0),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg_0),
        .sig_rd_sts_reg_empty_reg(sig_stat2rsc_status_ready),
        .sig_rd_sts_reg_empty_reg_0(sig_rd_sts_reg_empty_reg),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_sm_state_ns1__1(\I_SIMPLE_DMA_CNTLR/sig_sm_state_ns1__1 ),
        .\sig_sm_state_reg[0] (\sig_sm_state_reg[0] ));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo_6 I_CMD_FIFO
       (.E(E),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_2 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .\sig_addr_cntr_lsh_kh_reg[31] (\sig_addr_cntr_lsh_kh_reg[31] ),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .sig_dma_go_reg(sig_dma_go_reg),
        .sig_init_done(sig_init_done),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg),
        .sig_push_input_reg11_out(sig_push_input_reg11_out),
        .\sig_sa_register_lsb_reg[31] (\sig_sa_register_lsb_reg[31] ),
        .sig_sm_state_ns1__1(\I_SIMPLE_DMA_CNTLR/sig_sm_state_ns1__1 ));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo
   (sig_init_reg2,
    sig_init_done,
    sig_cmd2mstr_cmd_valid,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    \sig_sm_state_reg[1] ,
    \sig_addr_cntr_lsh_kh_reg[31] ,
    sig_calc_error_reg_reg,
    sig_stream_rst,
    sig_init_reg,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ,
    sig_dma_go_reg,
    p_34_out,
    Q,
    sig_push_input_reg11_out,
    in,
    sig_sm_ld_cmd_reg,
    \sig_da_register_lsb_reg[31] );
  output sig_init_reg2;
  output sig_init_done;
  output sig_cmd2mstr_cmd_valid;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  output \sig_sm_state_reg[1] ;
  output [56:0]\sig_addr_cntr_lsh_kh_reg[31] ;
  output sig_calc_error_reg_reg;
  input sig_stream_rst;
  input sig_init_reg;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ;
  input sig_dma_go_reg;
  input p_34_out;
  input [0:0]Q;
  input sig_push_input_reg11_out;
  input [0:0]in;
  input [0:0]sig_sm_ld_cmd_reg;
  input [55:0]\sig_da_register_lsb_reg[31] ;

  wire [0:0]Q;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ;
  wire [0:0]in;
  wire m_axi_aclk;
  wire p_34_out;
  wire [56:0]\sig_addr_cntr_lsh_kh_reg[31] ;
  wire sig_calc_error_reg_i_2__0_n_0;
  wire sig_calc_error_reg_i_3__0_n_0;
  wire sig_calc_error_reg_i_4__0_n_0;
  wire sig_calc_error_reg_i_5__0_n_0;
  wire sig_calc_error_reg_i_6__0_n_0;
  wire sig_calc_error_reg_i_7__0_n_0;
  wire sig_calc_error_reg_reg;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire [55:0]\sig_da_register_lsb_reg[31] ;
  wire sig_dma_go_reg;
  wire sig_init_done;
  wire sig_init_reg;
  wire sig_init_reg2;
  wire sig_mmap_reset_reg_reg;
  wire sig_push_input_reg11_out;
  wire [0:0]sig_sm_ld_cmd_reg;
  wire \sig_sm_state_reg[1] ;
  wire sig_stream_rst;

  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [0]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [0]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [10]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [10]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [11]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [11]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [12]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [12]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [13]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [13]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [14]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [14]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [15]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [15]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [16]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [16]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [17]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [17]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [18]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [18]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [19]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [19]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [1]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [1]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [20]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [20]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [21]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [21]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [22]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [22]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [23]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [23]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [2]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [2]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[30] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(1'b1),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [24]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[32] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [24]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [25]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[33] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [25]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [26]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[34] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [26]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [27]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[35] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [27]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [28]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[36] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [28]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [29]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[37] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [29]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [30]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[38] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [30]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [31]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[39] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [31]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [32]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [3]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [3]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[40] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [32]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [33]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[41] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [33]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [34]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[42] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [34]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [35]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[43] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [35]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [36]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[44] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [36]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [37]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[45] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [37]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [38]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[46] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [38]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [39]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[47] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [39]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [40]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[48] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [40]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [41]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[49] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [41]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [42]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [4]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [4]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[50] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [42]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [43]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[51] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [43]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [44]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[52] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [44]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [45]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[53] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [45]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [46]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[54] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [46]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [47]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [47]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [48]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[56] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [48]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [49]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[57] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [49]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [50]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[58] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [50]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [51]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [51]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [52]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [5]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [5]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[60] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [52]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [53]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[61] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [53]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [54]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[62] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [54]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [55]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [55]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [56]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [6]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [6]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [7]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [7]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [8]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [8]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_cmd_reg),
        .D(\sig_da_register_lsb_reg[31] [9]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [9]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ),
        .Q(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .Q(sig_cmd2mstr_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    sig_calc_error_reg_i_1__0
       (.I0(sig_calc_error_reg_i_2__0_n_0),
        .I1(sig_calc_error_reg_i_3__0_n_0),
        .I2(sig_calc_error_reg_i_4__0_n_0),
        .I3(sig_push_input_reg11_out),
        .I4(in),
        .O(sig_calc_error_reg_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_calc_error_reg_i_2__0
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [22]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [20]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [21]),
        .I3(sig_calc_error_reg_i_5__0_n_0),
        .O(sig_calc_error_reg_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_calc_error_reg_i_3__0
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [5]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [4]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [7]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [6]),
        .I4(sig_calc_error_reg_i_6__0_n_0),
        .O(sig_calc_error_reg_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_calc_error_reg_i_4__0
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [13]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [12]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [15]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [14]),
        .I4(sig_calc_error_reg_i_7__0_n_0),
        .O(sig_calc_error_reg_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_calc_error_reg_i_5__0
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [18]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [19]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [16]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [17]),
        .O(sig_calc_error_reg_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_calc_error_reg_i_6__0
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [2]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [3]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [0]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [1]),
        .O(sig_calc_error_reg_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_calc_error_reg_i_7__0
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [10]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [11]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [8]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [9]),
        .O(sig_calc_error_reg_i_7__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg),
        .Q(sig_init_reg2),
        .S(sig_stream_rst));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sig_sm_state[1]_i_2 
       (.I0(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I1(sig_dma_go_reg),
        .I2(p_34_out),
        .I3(Q),
        .O(\sig_sm_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo_6
   (sig_init_done,
    sig_cmd2mstr_cmd_valid,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    sig_sm_state_ns1__1,
    \sig_addr_cntr_lsh_kh_reg[31] ,
    sig_calc_error_reg_reg,
    sig_mmap_reset_reg_reg,
    m_axi_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ,
    sig_dma_go_reg,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_2 ,
    sig_push_input_reg11_out,
    in,
    E,
    \sig_sa_register_lsb_reg[31] );
  output sig_init_done;
  output sig_cmd2mstr_cmd_valid;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  output sig_sm_state_ns1__1;
  output [58:0]\sig_addr_cntr_lsh_kh_reg[31] ;
  output sig_calc_error_reg_reg;
  input sig_mmap_reset_reg_reg;
  input m_axi_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ;
  input sig_dma_go_reg;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_2 ;
  input sig_push_input_reg11_out;
  input [0:0]in;
  input [0:0]E;
  input [57:0]\sig_sa_register_lsb_reg[31] ;

  wire [0:0]E;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_2 ;
  wire [0:0]in;
  wire m_axi_aclk;
  wire [58:0]\sig_addr_cntr_lsh_kh_reg[31] ;
  wire sig_calc_error_reg_i_2_n_0;
  wire sig_calc_error_reg_i_3_n_0;
  wire sig_calc_error_reg_i_4_n_0;
  wire sig_calc_error_reg_i_5_n_0;
  wire sig_calc_error_reg_i_6_n_0;
  wire sig_calc_error_reg_i_7_n_0;
  wire sig_calc_error_reg_reg;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_dma_go_reg;
  wire sig_init_done;
  wire sig_mmap_reset_reg_reg;
  wire sig_push_input_reg11_out;
  wire [57:0]\sig_sa_register_lsb_reg[31] ;
  wire sig_sm_state_ns1__1;

  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [0]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [0]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [10]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [10]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [11]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [11]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [12]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [12]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [13]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [13]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [14]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [14]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [15]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [15]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [16]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [16]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [17]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [17]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [18]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [18]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [19]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [19]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [1]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [1]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [20]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [20]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [21]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [21]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [22]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [22]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [23]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [23]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[24] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [24]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [24]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[25] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [25]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [25]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [2]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [2]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[30] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [26]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[32] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [26]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [27]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[33] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [27]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [28]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[34] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [28]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [29]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[35] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [29]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [30]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[36] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [30]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [31]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[37] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [31]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [32]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[38] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [32]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [33]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[39] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [33]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [34]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [3]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [3]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[40] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [34]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [35]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[41] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [35]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [36]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[42] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [36]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [37]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[43] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [37]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [38]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[44] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [38]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [39]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[45] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [39]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [40]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[46] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [40]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [41]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[47] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [41]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [42]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[48] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [42]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [43]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[49] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [43]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [44]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [4]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [4]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[50] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [44]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [45]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[51] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [45]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [46]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[52] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [46]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [47]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[53] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [47]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [48]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[54] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [48]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [49]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [49]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [50]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[56] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [50]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [51]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[57] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [51]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [52]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[58] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [52]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [53]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [53]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [54]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [5]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [5]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[60] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [54]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [55]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[61] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [55]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [56]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[62] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [56]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [57]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [57]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [58]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [6]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [6]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [7]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [7]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [8]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [8]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\sig_sa_register_lsb_reg[31] [9]),
        .Q(\sig_addr_cntr_lsh_kh_reg[31] [9]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 ),
        .Q(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .Q(sig_cmd2mstr_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    sig_calc_error_reg_i_1
       (.I0(sig_calc_error_reg_i_2_n_0),
        .I1(sig_calc_error_reg_i_3_n_0),
        .I2(sig_calc_error_reg_i_4_n_0),
        .I3(sig_push_input_reg11_out),
        .I4(in),
        .O(sig_calc_error_reg_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_calc_error_reg_i_2
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [22]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [20]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [21]),
        .I3(sig_calc_error_reg_i_5_n_0),
        .O(sig_calc_error_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_calc_error_reg_i_3
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [5]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [4]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [7]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [6]),
        .I4(sig_calc_error_reg_i_6_n_0),
        .O(sig_calc_error_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_calc_error_reg_i_4
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [13]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [12]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [15]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [14]),
        .I4(sig_calc_error_reg_i_7_n_0),
        .O(sig_calc_error_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_calc_error_reg_i_5
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [18]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [19]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [16]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [17]),
        .O(sig_calc_error_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_calc_error_reg_i_6
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [2]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [3]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [0]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [1]),
        .O(sig_calc_error_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_calc_error_reg_i_7
       (.I0(\sig_addr_cntr_lsh_kh_reg[31] [10]),
        .I1(\sig_addr_cntr_lsh_kh_reg[31] [11]),
        .I2(\sig_addr_cntr_lsh_kh_reg[31] [8]),
        .I3(\sig_addr_cntr_lsh_kh_reg[31] [9]),
        .O(sig_calc_error_reg_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \sig_sm_state[0]_i_2 
       (.I0(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I1(sig_dma_go_reg),
        .I2(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_2 ),
        .O(sig_sm_state_ns1__1));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized0
   (sig_init_done_0,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg_0 ,
    p_14_out,
    sig_mmap_reset_reg_reg,
    m_axi_aclk,
    sig_stream_rst,
    sig_wsc2stat_status_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_cntl2s2mm_sts_tready,
    sig_wsc2stat_status);
  output sig_init_done_0;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg_0 ;
  output [2:0]p_14_out;
  input sig_mmap_reset_reg_reg;
  input m_axi_aclk;
  input sig_stream_rst;
  input sig_wsc2stat_status_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_cntl2s2mm_sts_tready;
  input [2:0]sig_wsc2stat_status;

  wire \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__2_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__2_n_0 ;
  wire m_axi_aclk;
  wire [2:0]p_14_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cntl2s2mm_sts_tready;
  wire sig_init_done_0;
  wire sig_mmap_reset_reg_reg;
  wire sig_stream_rst;
  wire [2:0]sig_wsc2stat_status;
  wire sig_wsc2stat_status_valid;

  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_i_1 
       (.I0(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ),
        .I1(sig_wsc2stat_status_valid),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1__0 
       (.I0(sig_wsc2stat_status[0]),
        .I1(sig_wsc2stat_status_valid),
        .I2(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ),
        .I3(p_14_out[0]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1__0 
       (.I0(sig_wsc2stat_status[1]),
        .I1(sig_wsc2stat_status_valid),
        .I2(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ),
        .I3(p_14_out[1]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1__0 
       (.I0(sig_wsc2stat_status[2]),
        .I1(sig_wsc2stat_status_valid),
        .I2(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ),
        .I3(p_14_out[2]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1__0_n_0 ),
        .Q(p_14_out[0]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1__0_n_0 ),
        .Q(p_14_out[1]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1__0_n_0 ),
        .Q(p_14_out[2]),
        .R(sig_stream_rst));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__2 
       (.I0(sig_init_done_0),
        .I1(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I2(sig_cntl2s2mm_sts_tready),
        .I3(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ),
        .I4(sig_wsc2stat_status_valid),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__2_n_0 ),
        .Q(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ),
        .R(sig_stream_rst));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h0080F080)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__2 
       (.I0(sig_wsc2stat_status_valid),
        .I1(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg ),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I3(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I4(sig_cntl2s2mm_sts_tready),
        .O(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__2_n_0 ),
        .Q(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized0_5
   (sig_init_done_0,
    \sig_sm_state_reg[0] ,
    sig_rd_sts_reg_empty_reg,
    sig_rd_sts_reg_empty_reg_0,
    D,
    p_32_out,
    sig_mmap_reset_reg_reg,
    m_axi_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_rsc2stat_status_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ,
    Q,
    sig_sm_state_ns1__1,
    sig_cntl2mm2s_sts_tready,
    sig_rsc2stat_status);
  output sig_init_done_0;
  output \sig_sm_state_reg[0] ;
  output sig_rd_sts_reg_empty_reg;
  output sig_rd_sts_reg_empty_reg_0;
  output [0:0]D;
  output [2:0]p_32_out;
  input sig_mmap_reset_reg_reg;
  input m_axi_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_rsc2stat_status_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  input [2:0]Q;
  input sig_sm_state_ns1__1;
  input sig_cntl2mm2s_sts_tready;
  input [2:0]sig_rsc2stat_status;

  wire [0:0]D;
  wire [2:0]Q;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  wire m_axi_aclk;
  wire [2:0]p_32_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_cntl2mm2s_sts_tready;
  wire sig_init_done_0;
  wire sig_mmap_reset_reg_reg;
  wire sig_rd_sts_reg_empty_reg;
  wire sig_rd_sts_reg_empty_reg_0;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_sm_state_ns1__1;
  wire \sig_sm_state_reg[0] ;

  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1 
       (.I0(sig_rsc2stat_status[0]),
        .I1(sig_rsc2stat_status_valid),
        .I2(sig_rd_sts_reg_empty_reg),
        .I3(p_32_out[0]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1 
       (.I0(sig_rsc2stat_status[1]),
        .I1(sig_rsc2stat_status_valid),
        .I2(sig_rd_sts_reg_empty_reg),
        .I3(p_32_out[1]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1 
       (.I0(sig_rsc2stat_status[2]),
        .I1(sig_rsc2stat_status_valid),
        .I2(sig_rd_sts_reg_empty_reg),
        .I3(p_32_out[2]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ),
        .Q(p_32_out[0]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ),
        .Q(p_32_out[1]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ),
        .Q(p_32_out[2]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0 
       (.I0(sig_init_done_0),
        .I1(\sig_sm_state_reg[0] ),
        .I2(sig_cntl2mm2s_sts_tready),
        .I3(sig_rd_sts_reg_empty_reg),
        .I4(sig_rsc2stat_status_valid),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ),
        .Q(sig_rd_sts_reg_empty_reg),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0080F080)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0 
       (.I0(sig_rsc2stat_status_valid),
        .I1(sig_rd_sts_reg_empty_reg),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(\sig_sm_state_reg[0] ),
        .I4(sig_cntl2mm2s_sts_tready),
        .O(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ),
        .Q(\sig_sm_state_reg[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    sig_rd_sts_interr_reg_i_1
       (.I0(sig_rd_sts_reg_empty_reg),
        .I1(sig_rsc2stat_status_valid),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(sig_rd_sts_reg_empty_reg_0));
  LUT6 #(
    .INIT(64'hCF00FFBBCF33FFBB)) 
    \sig_sm_state[0]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .I1(Q[2]),
        .I2(\sig_sm_state_reg[0] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sig_sm_state_ns1__1),
        .O(D));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized1
   (sig_init_done,
    sig_calc_error_reg_reg,
    sel,
    sig_addr_valid_reg_reg,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    sig_halt_reg_reg,
    sig_addr_reg_empty_reg,
    sig_mstr2addr_cmd_valid,
    in);
  output sig_init_done;
  output sig_calc_error_reg_reg;
  output sel;
  output sig_addr_valid_reg_reg;
  output [45:0]out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input sig_halt_reg_reg;
  input sig_addr_reg_empty_reg;
  input sig_mstr2addr_cmd_valid;
  input [37:0]in;

  wire [37:0]in;
  wire m_axi_aclk;
  wire [45:0]out;
  wire sel;
  wire sig_addr_reg_empty_reg;
  wire sig_addr_valid_reg_reg;
  wire sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_halt_reg_reg;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1__0_n_0;
  wire sig_init_done;
  wire sig_mmap_reset_reg_reg;
  wire sig_mstr2addr_cmd_valid;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_f_7 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .sig_addr_reg_empty_reg(sig_addr_reg_empty_reg),
        .sig_addr_valid_reg_reg(sig_addr_valid_reg_reg),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_calc_error_reg_reg_0(sel),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_halt_reg_reg(sig_halt_reg_reg),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1__0
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1__0_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized2
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_init_done,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    sig_next_cmd_cmplt_reg_reg,
    sig_push_dqual_reg17_out,
    sel,
    E,
    D,
    out,
    sig_advance_pipe19_out__1,
    sig_ld_new_cmd_reg_reg,
    sig_last_dbeat_reg,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ,
    sig_first_dbeat_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    sig_pop_dqual_reg14_out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_mstr2data_cmd_valid,
    \sig_dbeat_cntr_reg[2] ,
    Q,
    \sig_dbeat_cntr_reg[2]_0 ,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_good_mmap_dbeat15_out__0,
    sig_next_sequential_reg,
    sig_last_dbeat_reg_0,
    sig_dqual_reg_empty,
    sig_addr_posted_cntr,
    sig_dqual_reg_full,
    sig_next_calc_error_reg,
    sig_data2rsc_valid,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_ld_new_cmd_reg,
    sig_first_dbeat1__0,
    sig_last_dbeat__1,
    p_7_out,
    sig_rdc2dre_new_align,
    sig_rdc2dre_use_autodest,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ,
    sig_first_dbeat_reg_0,
    in);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_init_done;
  output \INFERRED_GEN.cnt_i_reg[0]_0 ;
  output sig_next_cmd_cmplt_reg_reg;
  output sig_push_dqual_reg17_out;
  output sel;
  output [0:0]E;
  output [7:0]D;
  output [15:0]out;
  output sig_advance_pipe19_out__1;
  output sig_ld_new_cmd_reg_reg;
  output sig_last_dbeat_reg;
  output \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ;
  output \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  output sig_first_dbeat_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input sig_pop_dqual_reg14_out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input sig_mstr2data_cmd_valid;
  input \sig_dbeat_cntr_reg[2] ;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[2]_0 ;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_good_mmap_dbeat15_out__0;
  input sig_next_sequential_reg;
  input sig_last_dbeat_reg_0;
  input sig_dqual_reg_empty;
  input [2:0]sig_addr_posted_cntr;
  input sig_dqual_reg_full;
  input sig_next_calc_error_reg;
  input sig_data2rsc_valid;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_ld_new_cmd_reg;
  input sig_first_dbeat1__0;
  input sig_last_dbeat__1;
  input p_7_out;
  input sig_rdc2dre_new_align;
  input sig_rdc2dre_use_autodest;
  input \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ;
  input sig_first_dbeat_reg_0;
  input [20:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire [7:0]Q;
  wire [20:0]in;
  wire m_axi_aclk;
  wire [15:0]out;
  wire p_7_out;
  wire sel;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_advance_pipe19_out__1;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_data2rsc_valid;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[2]_0 ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_good_mmap_dbeat15_out__0;
  wire sig_inhibit_rdy_n_i_1__2_n_0;
  wire sig_init_done;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mmap_reset_reg_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_pop_dqual_reg14_out;
  wire sig_push_dqual_reg17_out;
  wire sig_rdc2dre_new_align;
  wire sig_rdc2dre_use_autodest;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_f__parameterized0 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .Q(Q),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_7_out(p_7_out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_advance_pipe19_out__1(sig_advance_pipe19_out__1),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2] ),
        .\sig_dbeat_cntr_reg[2]_0 (\sig_dbeat_cntr_reg[2]_0 ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr_reg[3] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_push_dqual_reg17_out),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat1__0(sig_first_dbeat1__0),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_good_mmap_dbeat15_out__0(sig_good_mmap_dbeat15_out__0),
        .sig_inhibit_rdy_n_reg(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .sig_last_dbeat__1(sig_last_dbeat__1),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_cmd_cmplt_reg_reg(sig_next_cmd_cmplt_reg_reg),
        .\sig_next_dre_dest_align_reg_reg[1] (sel),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_pop_dqual_reg14_out(sig_pop_dqual_reg14_out),
        .sig_rdc2dre_new_align(sig_rdc2dre_new_align),
        .sig_rdc2dre_use_autodest(sig_rdc2dre_use_autodest),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1__2
       (.I0(sig_init_done),
        .I1(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .O(sig_inhibit_rdy_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1__2_n_0),
        .Q(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized3
   (sig_init_done_1,
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ,
    D,
    \INFERRED_GEN.cnt_i_reg[3] ,
    E,
    m_axi_bready,
    sig_stream_rst,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    sig_wsc2stat_status,
    out,
    sig_posted_to_axi_reg,
    Q,
    \INFERRED_GEN.cnt_i_reg[3]_0 ,
    m_axi_bvalid,
    sig_data2addr_stop_req,
    m_axi_bresp);
  output sig_init_done_1;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  output [2:0]D;
  output [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  output [0:0]E;
  output m_axi_bready;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input [1:0]sig_wsc2stat_status;
  input [0:0]out;
  input sig_posted_to_axi_reg;
  input [3:0]Q;
  input \INFERRED_GEN.cnt_i_reg[3]_0 ;
  input m_axi_bvalid;
  input sig_data2addr_stop_req;
  input [1:0]m_axi_bresp;

  wire [2:0]D;
  wire [0:0]E;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  wire \INFERRED_GEN.cnt_i_reg[3]_0 ;
  wire [3:0]Q;
  wire m_axi_aclk;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [0:0]out;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_init_done_1;
  wire sig_mmap_reset_reg_reg;
  wire sig_posted_to_axi_reg;
  wire sig_stream_rst;
  wire [1:0]sig_wsc2stat_status;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_f__parameterized1 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ),
        .\INFERRED_GEN.cnt_i_reg[3] (\INFERRED_GEN.cnt_i_reg[3] ),
        .\INFERRED_GEN.cnt_i_reg[3]_0 (\INFERRED_GEN.cnt_i_reg[3]_0 ),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(out),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_posted_to_axi_reg(sig_posted_to_axi_reg),
        .sig_stream_rst(sig_stream_rst),
        .sig_wsc2stat_status(sig_wsc2stat_status));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done_1),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized4
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_init_done_2,
    sig_inhibit_rdy_n,
    D,
    out,
    \INFERRED_GEN.cnt_i_reg[1] ,
    E,
    sig_push_coelsc_reg,
    p_4_out,
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ,
    sig_stream_rst,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    sig_wr_fifo,
    Q,
    \INFERRED_GEN.cnt_i_reg[3] ,
    sig_coelsc_reg_empty,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    sig_wsc2stat_status,
    in);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_init_done_2;
  output sig_inhibit_rdy_n;
  output [2:0]D;
  output [1:0]out;
  output \INFERRED_GEN.cnt_i_reg[1] ;
  output [0:0]E;
  output sig_push_coelsc_reg;
  output p_4_out;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input sig_wr_fifo;
  input [3:0]Q;
  input [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  input sig_coelsc_reg_empty;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input [0:0]sig_wsc2stat_status;
  input [2:0]in;

  wire [2:0]D;
  wire [0:0]E;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  wire [3:0]Q;
  wire [2:0]in;
  wire m_axi_aclk;
  wire [1:0]out;
  wire p_4_out;
  wire sig_coelsc_reg_empty;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1__4_n_0;
  wire sig_init_done_2;
  wire sig_mmap_reset_reg_reg;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_stream_rst;
  wire sig_tlast_err_stop;
  wire sig_wr_fifo;
  wire [0:0]sig_wsc2stat_status;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_f__parameterized2 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[1] (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[3] (\INFERRED_GEN.cnt_i_reg[3] ),
        .Q(Q),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_4_out(p_4_out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_push_coelsc_reg(sig_push_coelsc_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_stream_rst(sig_stream_rst),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wr_fifo(sig_wr_fifo),
        .sig_wsc2stat_status(sig_wsc2stat_status));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1__4
       (.I0(sig_init_done_2),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1__4_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized5
   (sig_init_done_3,
    sig_calc_error_reg_reg,
    sel,
    sig_addr_valid_reg_reg,
    out,
    sig_stream_rst,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_data2addr_stop_req,
    sig_addr_reg_empty,
    p_12_out,
    in);
  output sig_init_done_3;
  output sig_calc_error_reg_reg;
  output sel;
  output sig_addr_valid_reg_reg;
  output [45:0]out;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_data2addr_stop_req;
  input sig_addr_reg_empty;
  input p_12_out;
  input [37:0]in;

  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire [37:0]in;
  wire m_axi_aclk;
  wire [45:0]out;
  wire p_12_out;
  wire sel;
  wire sig_addr_reg_empty;
  wire sig_addr_valid_reg_reg;
  wire sig_calc_error_reg_reg;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1__3_n_0;
  wire sig_init_done_3;
  wire sig_mmap_reset_reg_reg;
  wire sig_stream_rst;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_f \USE_SRL_FIFO.I_SYNC_FIFO 
       (.\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_12_out(p_12_out),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_addr_valid_reg_reg(sig_addr_valid_reg_reg),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_calc_error_reg_reg_0(sel),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_stream_rst(sig_stream_rst));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1__3
       (.I0(sig_init_done_3),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1__3_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done_3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized6
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_init_done_4,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    sig_next_calc_error_reg_reg,
    sig_push_dqual_reg,
    sig_dqual_reg_empty_reg,
    sel,
    E,
    D,
    out,
    sig_last_dbeat_reg,
    sig_first_dbeat_reg,
    sig_ld_new_cmd_reg_reg,
    sig_stream_rst,
    m_axi_aclk,
    sig_mmap_reset_reg_reg,
    sig_next_calc_error_reg,
    \sig_dbeat_cntr_reg[1] ,
    sig_dqual_reg_full,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    p_1_out,
    Q,
    \sig_dbeat_cntr_reg[2] ,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_next_sequential_reg,
    sig_last_dbeat_reg_0,
    sig_dqual_reg_empty,
    sig_posted_to_axi_reg,
    sig_halt_reg_dly3_reg,
    sig_s_ready_out_reg,
    sig_last_mmap_dbeat_reg,
    p_19_out,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_data2addr_stop_req,
    sig_wdc_status_going_full,
    sig_stat2wsc_status_ready,
    sig_wsc2stat_status_valid,
    sig_addr_posted_cntr,
    sig_first_dbeat1__0,
    sig_last_dbeat__1,
    sig_first_dbeat_reg_0,
    sig_ld_new_cmd_reg,
    sig_calc_error_reg_reg);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_init_done_4;
  output \INFERRED_GEN.cnt_i_reg[0]_0 ;
  output sig_next_calc_error_reg_reg;
  output sig_push_dqual_reg;
  output sig_dqual_reg_empty_reg;
  output sel;
  output [0:0]E;
  output [7:0]D;
  output [11:0]out;
  output sig_last_dbeat_reg;
  output sig_first_dbeat_reg;
  output sig_ld_new_cmd_reg_reg;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_mmap_reset_reg_reg;
  input sig_next_calc_error_reg;
  input \sig_dbeat_cntr_reg[1] ;
  input sig_dqual_reg_full;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input p_1_out;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[2] ;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_next_sequential_reg;
  input sig_last_dbeat_reg_0;
  input sig_dqual_reg_empty;
  input sig_posted_to_axi_reg;
  input sig_halt_reg_dly3_reg;
  input sig_s_ready_out_reg;
  input sig_last_mmap_dbeat_reg;
  input p_19_out;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_data2addr_stop_req;
  input sig_wdc_status_going_full;
  input sig_stat2wsc_status_ready;
  input sig_wsc2stat_status_valid;
  input [2:0]sig_addr_posted_cntr;
  input sig_first_dbeat1__0;
  input sig_last_dbeat__1;
  input sig_first_dbeat_reg_0;
  input sig_ld_new_cmd_reg;
  input [15:0]sig_calc_error_reg_reg;

  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire [7:0]Q;
  wire m_axi_aclk;
  wire [11:0]out;
  wire p_19_out;
  wire p_1_out;
  wire sel;
  wire [2:0]sig_addr_posted_cntr;
  wire [15:0]sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire \sig_dbeat_cntr_reg[1] ;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_halt_reg_dly3_reg;
  wire sig_inhibit_rdy_n_i_1__1_n_0;
  wire sig_init_done_4;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_last_mmap_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mmap_reset_reg_reg;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_posted_to_axi_reg;
  wire sig_push_dqual_reg;
  wire sig_s_ready_out_reg;
  wire sig_stat2wsc_status_ready;
  wire sig_stream_rst;
  wire sig_wdc_status_going_full;
  wire sig_wsc2stat_status_valid;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_f__parameterized3 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_19_out(p_19_out),
        .p_1_out(p_1_out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .\sig_dbeat_cntr_reg[1] (\sig_dbeat_cntr_reg[1] ),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2] ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr_reg[3] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_push_dqual_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat1__0(sig_first_dbeat1__0),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_halt_reg_dly3_reg(sig_halt_reg_dly3_reg),
        .sig_inhibit_rdy_n_reg(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .sig_last_dbeat__1(sig_last_dbeat__1),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_last_mmap_dbeat_reg(sig_last_mmap_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg(sig_next_calc_error_reg_reg),
        .sig_next_calc_error_reg_reg_0(sel),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_posted_to_axi_reg(sig_posted_to_axi_reg),
        .sig_s_ready_out_reg(sig_s_ready_out_reg),
        .sig_stat2wsc_status_ready(sig_stat2wsc_status_ready),
        .sig_stream_rst(sig_stream_rst),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1__1
       (.I0(sig_init_done_4),
        .I1(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .O(sig_inhibit_rdy_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1__1_n_0),
        .Q(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg_reg),
        .Q(sig_init_done_4),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_mm2s_dre" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_mm2s_dre
   (p_19_out,
    sig_flush_db1,
    sig_last_mmap_dbeat,
    sig_good_mmap_dbeat15_out__0,
    sig_input_accept59_out,
    m_axi_rready,
    \GEN_MUXFARM_32.sig_shift_case_reg_reg[1]_0 ,
    sig_tlast_error,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    \sig_data_skid_reg_reg[31] ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk,
    sig_output_xfer57_out__0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_dre_tvalid_i_reg_0,
    m_axi_rlast,
    m_axi_rvalid,
    sig_halt_reg_reg,
    sig_advance_pipe19_out__1,
    sig_rdc2dre_new_align,
    sig_rdc2sf_wvalid,
    Q,
    sig_rdc2dre_use_autodest,
    sig_next_eof_reg,
    sig_dbeat_cntr_eq_0,
    sig_good_mmap_dbeat13_out__0,
    \sig_next_last_strb_reg_reg[3] ,
    sig_rdc2sf_wlast,
    sig_next_eof_reg_reg,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ,
    \sig_next_dre_dest_align_reg_reg[0] ,
    SR,
    E,
    D,
    sig_flush_db1_reg_0,
    \sig_next_strt_strb_reg_reg[1] ,
    sig_halt_reg_reg_0,
    sig_flush_db1_reg_1,
    \sig_next_strt_strb_reg_reg[0] ,
    sig_halt_reg_reg_1,
    sig_flush_db1_reg_2,
    \sig_next_strt_strb_reg_reg[3] ,
    \sig_next_strt_strb_reg_reg[3]_0 );
  output p_19_out;
  output sig_flush_db1;
  output sig_last_mmap_dbeat;
  output sig_good_mmap_dbeat15_out__0;
  output sig_input_accept59_out;
  output m_axi_rready;
  output \GEN_MUXFARM_32.sig_shift_case_reg_reg[1]_0 ;
  output sig_tlast_error;
  output \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  output [31:0]\sig_data_skid_reg_reg[31] ;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;
  input sig_output_xfer57_out__0;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input sig_dre_tvalid_i_reg_0;
  input m_axi_rlast;
  input m_axi_rvalid;
  input sig_halt_reg_reg;
  input sig_advance_pipe19_out__1;
  input sig_rdc2dre_new_align;
  input sig_rdc2sf_wvalid;
  input [1:0]Q;
  input sig_rdc2dre_use_autodest;
  input sig_next_eof_reg;
  input sig_dbeat_cntr_eq_0;
  input sig_good_mmap_dbeat13_out__0;
  input [3:0]\sig_next_last_strb_reg_reg[3] ;
  input sig_rdc2sf_wlast;
  input sig_next_eof_reg_reg;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ;
  input \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  input [0:0]\sig_next_dre_dest_align_reg_reg[0] ;
  input [0:0]SR;
  input [0:0]E;
  input [9:0]D;
  input [0:0]sig_flush_db1_reg_0;
  input [0:0]\sig_next_strt_strb_reg_reg[1] ;
  input [9:0]sig_halt_reg_reg_0;
  input [0:0]sig_flush_db1_reg_1;
  input [0:0]\sig_next_strt_strb_reg_reg[0] ;
  input [9:0]sig_halt_reg_reg_1;
  input [0:0]sig_flush_db1_reg_2;
  input [0:0]\sig_next_strt_strb_reg_reg[3] ;
  input [9:0]\sig_next_strt_strb_reg_reg[3]_0 ;

  wire [9:0]D;
  wire [0:0]E;
  wire \GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ;
  wire [9:0]\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 ;
  wire \GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ;
  wire [9:0]\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 ;
  wire \GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ;
  wire [9:0]\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  wire [9:0]\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 ;
  wire [9:0]\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 ;
  wire [9:0]\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 ;
  wire \GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][0] ;
  wire \GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][1] ;
  wire \GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][2] ;
  wire \GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][3] ;
  wire \GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][4] ;
  wire \GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][5] ;
  wire \GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][6] ;
  wire \GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][7] ;
  wire \GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][9] ;
  wire \GEN_MUXFARM_32.sig_shift_case_reg[0]_i_1_n_0 ;
  wire \GEN_MUXFARM_32.sig_shift_case_reg[0]_i_2_n_0 ;
  wire \GEN_MUXFARM_32.sig_shift_case_reg[0]_i_3_n_0 ;
  wire \GEN_MUXFARM_32.sig_shift_case_reg[1]_i_1_n_0 ;
  wire \GEN_MUXFARM_32.sig_shift_case_reg_reg[1]_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ;
  wire \GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ;
  wire \GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ;
  wire \GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ;
  wire \GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ;
  wire \GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/sig_end_stbs_match_err2__6 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire m_axi_aclk;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire p_0_in31_in;
  wire p_16_out;
  wire p_19_out;
  wire p_20_out;
  wire p_20_out_0;
  wire [3:0]p_21_out;
  wire p_24_out;
  wire p_28_out;
  wire p_32_out;
  wire p_36_out;
  wire p_40_out;
  wire sig_advance_pipe19_out__1;
  wire sig_advance_pipe_data58_out;
  wire sig_auto_flush__0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_data2wsc_cmd_cmplt_i_4_n_0;
  wire [31:0]\sig_data_skid_reg_reg[31] ;
  wire sig_dbeat_cntr_eq_0;
  wire [9:0]\sig_delay_mux_bus[0]_12 ;
  wire [8:8]\sig_delay_mux_bus[0]_13 ;
  wire [9:0]\sig_delay_mux_bus[1]_14 ;
  wire [8:8]\sig_delay_mux_bus[1]_15 ;
  wire sig_dre_tvalid_i_i_1_n_0;
  wire sig_dre_tvalid_i_i_3_n_0;
  wire sig_dre_tvalid_i_reg_0;
  wire sig_enable_input_rdy;
  wire [7:0]\sig_final_mux_bus[0]_8 ;
  wire [8:8]\sig_final_mux_bus[0]_9 ;
  wire [7:0]\sig_final_mux_bus[1]_6 ;
  wire [8:8]\sig_final_mux_bus[1]_7 ;
  wire [7:0]\sig_final_mux_bus[2]_16 ;
  wire [8:8]\sig_final_mux_bus[2]_17 ;
  wire [9:9]\sig_final_mux_bus[2]__0 ;
  wire [7:0]\sig_final_mux_bus[3]_10 ;
  wire sig_final_mux_has_tlast;
  wire sig_flush_db1;
  wire sig_flush_db1_i_1_n_0;
  wire sig_flush_db1_i_3_n_0;
  wire [0:0]sig_flush_db1_reg_0;
  wire [0:0]sig_flush_db1_reg_1;
  wire [0:0]sig_flush_db1_reg_2;
  wire sig_flush_db2;
  wire sig_flush_db2_i_1_n_0;
  wire sig_good_mmap_dbeat13_out__0;
  wire sig_good_mmap_dbeat15_out__0;
  wire sig_halt_reg_reg;
  wire [9:0]sig_halt_reg_reg_0;
  wire [9:0]sig_halt_reg_reg_1;
  wire sig_input_accept59_out;
  wire sig_last_mmap_dbeat;
  wire [0:0]\sig_next_dre_dest_align_reg_reg[0] ;
  wire sig_next_eof_reg;
  wire sig_next_eof_reg_reg;
  wire [3:0]\sig_next_last_strb_reg_reg[3] ;
  wire [0:0]\sig_next_strt_strb_reg_reg[0] ;
  wire [0:0]\sig_next_strt_strb_reg_reg[1] ;
  wire [0:0]\sig_next_strt_strb_reg_reg[3] ;
  wire [9:0]\sig_next_strt_strb_reg_reg[3]_0 ;
  wire sig_output_xfer57_out__0;
  wire [8:8]\sig_pass_mux_bus[3]_11 ;
  wire [9:9]\sig_pass_mux_bus[3]__0 ;
  wire sig_rdc2dre_new_align;
  wire sig_rdc2dre_use_autodest;
  wire sig_rdc2sf_wlast;
  wire sig_rdc2sf_wvalid;
  wire [1:0]sig_shift_case_reg;
  wire sig_tlast_error;
  wire sig_tlast_out_i_1_n_0;

  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][0]_i_1 
       (.I0(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][0] ),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [0]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [0]),
        .O(\sig_delay_mux_bus[0]_12 [0]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][1]_i_1 
       (.I0(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][1] ),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [1]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [1]),
        .O(\sig_delay_mux_bus[0]_12 [1]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][2]_i_1 
       (.I0(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][2] ),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [2]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [2]),
        .O(\sig_delay_mux_bus[0]_12 [2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][3]_i_1 
       (.I0(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][3] ),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [3]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [3]),
        .O(\sig_delay_mux_bus[0]_12 [3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][4]_i_1 
       (.I0(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][4] ),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [4]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [4]),
        .O(\sig_delay_mux_bus[0]_12 [4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][5]_i_1 
       (.I0(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][5] ),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [5]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [5]),
        .O(\sig_delay_mux_bus[0]_12 [5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][6]_i_1 
       (.I0(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][6] ),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [6]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [6]),
        .O(\sig_delay_mux_bus[0]_12 [6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][7]_i_1 
       (.I0(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][7] ),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [7]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [7]),
        .O(\sig_delay_mux_bus[0]_12 [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][8]_i_1 
       (.I0(p_0_in31_in),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [8]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [8]),
        .O(\sig_delay_mux_bus[0]_13 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1 
       (.I0(\sig_delay_mux_bus[0]_13 ),
        .I1(sig_advance_pipe_data58_out),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_2 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [8]),
        .I1(sig_shift_case_reg[1]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [8]),
        .I4(p_0_in31_in),
        .I5(sig_advance_pipe_data58_out),
        .O(p_40_out));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_3 
       (.I0(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][9] ),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [9]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [9]),
        .O(\sig_delay_mux_bus[0]_12 [9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    \GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_4 
       (.I0(sig_dre_tvalid_i_reg_0),
        .I1(sig_enable_input_rdy),
        .I2(sig_flush_db1),
        .I3(sig_flush_db2),
        .I4(sig_rdc2sf_wvalid),
        .O(sig_advance_pipe_data58_out));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][0] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_12 [0]),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [0]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][1] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_12 [1]),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [1]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][2] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_12 [2]),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [2]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][3] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_12 [3]),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [3]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][4] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_12 [4]),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [4]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][5] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_12 [5]),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [5]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][6] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_12 [6]),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [6]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][7] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_12 [7]),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [7]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][8] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_13 ),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [8]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[0].sig_delay_data_reg_reg[0][9] 
       (.C(m_axi_aclk),
        .CE(p_40_out),
        .D(\sig_delay_mux_bus[0]_12 [9]),
        .Q(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [9]),
        .R(\GEN_DELAY_REG[0].sig_delay_data_reg[0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][0]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [0]),
        .I1(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][0] ),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_14 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][1]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [1]),
        .I1(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][1] ),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_14 [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][2]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [2]),
        .I1(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][2] ),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_14 [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][3]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [3]),
        .I1(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][3] ),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_14 [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][4]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [4]),
        .I1(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][4] ),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_14 [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][5]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [5]),
        .I1(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][5] ),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_14 [5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][6]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [6]),
        .I1(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][6] ),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_14 [6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][7]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [7]),
        .I1(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][7] ),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_14 [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][8]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [8]),
        .I1(p_0_in31_in),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_15 ));
  LUT5 #(
    .INIT(32'h5300FFFF)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [8]),
        .I1(p_0_in31_in),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_advance_pipe_data58_out),
        .I4(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA820)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_2 
       (.I0(sig_advance_pipe_data58_out),
        .I1(sig_shift_case_reg[0]),
        .I2(p_0_in31_in),
        .I3(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [8]),
        .O(p_36_out));
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_3 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [9]),
        .I1(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][9] ),
        .I2(sig_shift_case_reg[0]),
        .O(\sig_delay_mux_bus[1]_14 [9]));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][0] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_14 [0]),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [0]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][1] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_14 [1]),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [1]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][2] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_14 [2]),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [2]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][3] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_14 [3]),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [3]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][4] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_14 [4]),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [4]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][5] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_14 [5]),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [5]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][6] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_14 [6]),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [6]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][7] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_14 [7]),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [7]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][8] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_15 ),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [8]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[1].sig_delay_data_reg_reg[1][9] 
       (.C(m_axi_aclk),
        .CE(p_36_out),
        .D(\sig_delay_mux_bus[1]_14 [9]),
        .Q(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [9]),
        .R(\GEN_DELAY_REG[1].sig_delay_data_reg[1][9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1 
       (.I0(p_0_in31_in),
        .I1(sig_advance_pipe_data58_out),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_2 
       (.I0(p_0_in31_in),
        .I1(sig_advance_pipe_data58_out),
        .O(p_32_out));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][0] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][0] ),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [0]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][1] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][1] ),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [1]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][2] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][2] ),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [2]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][3] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][3] ),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [3]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][4] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][4] ),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [4]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][5] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][5] ),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [5]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][6] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][6] ),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [6]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][7] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][7] ),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [7]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][8] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(p_0_in31_in),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [8]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_DELAY_REG[2].sig_delay_data_reg_reg[2][9] 
       (.C(m_axi_aclk),
        .CE(p_32_out),
        .D(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][9] ),
        .Q(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [9]),
        .R(\GEN_DELAY_REG[2].sig_delay_data_reg[2][9]_i_1_n_0 ));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][0] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[0]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [0]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][1] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[1]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [1]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][2] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[2]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [2]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][3] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[3]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [3]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][4] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[4]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [4]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][5] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[5]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [5]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][6] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[6]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [6]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][7] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[7]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [7]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][8] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[8]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [8]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[0] ),
        .D(sig_halt_reg_reg_1[9]),
        .Q(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [9]),
        .R(sig_flush_db1_reg_1));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][0] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[0]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [0]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][1] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[1]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [1]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][2] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[2]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [2]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][3] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[3]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [3]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][4] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[4]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [4]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][5] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[5]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [5]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][6] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[6]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [6]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][7] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[7]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [7]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][8] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[8]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [8]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[1] ),
        .D(sig_halt_reg_reg_0[9]),
        .Q(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [9]),
        .R(sig_flush_db1_reg_0));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][0] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [0]),
        .R(SR));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][1] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [1]),
        .R(SR));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][2] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [2]),
        .R(SR));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][3] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [3]),
        .R(SR));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][4] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [4]),
        .R(SR));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][5] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [5]),
        .R(SR));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][6] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [6]),
        .R(SR));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][7] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [7]),
        .R(SR));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][8] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [8]),
        .R(SR));
  FDRE \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [9]),
        .R(SR));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][0] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [0]),
        .Q(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][0] ),
        .R(sig_flush_db1_reg_2));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][1] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [1]),
        .Q(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][1] ),
        .R(sig_flush_db1_reg_2));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][2] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [2]),
        .Q(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][2] ),
        .R(sig_flush_db1_reg_2));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][3] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [3]),
        .Q(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][3] ),
        .R(sig_flush_db1_reg_2));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][4] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [4]),
        .Q(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][4] ),
        .R(sig_flush_db1_reg_2));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][5] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [5]),
        .Q(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][5] ),
        .R(sig_flush_db1_reg_2));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][6] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [6]),
        .Q(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][6] ),
        .R(sig_flush_db1_reg_2));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][7] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [7]),
        .Q(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][7] ),
        .R(sig_flush_db1_reg_2));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][8] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [8]),
        .Q(p_0_in31_in),
        .R(sig_flush_db1_reg_2));
  FDRE \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9] 
       (.C(m_axi_aclk),
        .CE(\sig_next_strt_strb_reg_reg[3] ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [9]),
        .Q(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][9] ),
        .R(sig_flush_db1_reg_2));
  LUT6 #(
    .INIT(64'hFF14FFFFFF140000)) 
    \GEN_MUXFARM_32.sig_shift_case_reg[0]_i_1 
       (.I0(sig_rdc2dre_use_autodest),
        .I1(\sig_next_dre_dest_align_reg_reg[0] ),
        .I2(Q[0]),
        .I3(\GEN_MUXFARM_32.sig_shift_case_reg[0]_i_2_n_0 ),
        .I4(\GEN_MUXFARM_32.sig_shift_case_reg[0]_i_3_n_0 ),
        .I5(sig_shift_case_reg[0]),
        .O(\GEN_MUXFARM_32.sig_shift_case_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA00000A02A0A8)) 
    \GEN_MUXFARM_32.sig_shift_case_reg[0]_i_2 
       (.I0(sig_rdc2dre_use_autodest),
        .I1(p_21_out[0]),
        .I2(p_21_out[2]),
        .I3(p_21_out[1]),
        .I4(Q[0]),
        .I5(p_21_out[3]),
        .O(\GEN_MUXFARM_32.sig_shift_case_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_MUXFARM_32.sig_shift_case_reg[0]_i_3 
       (.I0(sig_input_accept59_out),
        .I1(sig_rdc2dre_new_align),
        .O(\GEN_MUXFARM_32.sig_shift_case_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \GEN_MUXFARM_32.sig_shift_case_reg[1]_i_1 
       (.I0(\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ),
        .I1(sig_input_accept59_out),
        .I2(sig_rdc2dre_new_align),
        .I3(sig_shift_case_reg[1]),
        .O(\GEN_MUXFARM_32.sig_shift_case_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \GEN_MUXFARM_32.sig_shift_case_reg[1]_i_3 
       (.I0(sig_flush_db1),
        .I1(sig_flush_db2),
        .I2(sig_enable_input_rdy),
        .I3(sig_dre_tvalid_i_reg_0),
        .I4(sig_rdc2sf_wvalid),
        .O(sig_input_accept59_out));
  LUT6 #(
    .INIT(64'hCC63CC69CC63CC6C)) 
    \GEN_MUXFARM_32.sig_shift_case_reg[1]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(p_21_out[2]),
        .I3(p_21_out[3]),
        .I4(p_21_out[1]),
        .I5(p_21_out[0]),
        .O(\GEN_MUXFARM_32.sig_shift_case_reg_reg[1]_0 ));
  FDRE \GEN_MUXFARM_32.sig_shift_case_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_MUXFARM_32.sig_shift_case_reg[0]_i_1_n_0 ),
        .Q(sig_shift_case_reg[0]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE \GEN_MUXFARM_32.sig_shift_case_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_MUXFARM_32.sig_shift_case_reg[1]_i_1_n_0 ),
        .Q(sig_shift_case_reg[1]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1 
       (.I0(sig_tlast_error),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][0]_i_1 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [0]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [0]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[0]_8 [0]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][1]_i_1 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [1]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [1]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[0]_8 [1]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][2]_i_1 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [2]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [2]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[0]_8 [2]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][3]_i_1 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [3]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [3]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[0]_8 [3]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][4]_i_1 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [4]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [4]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[0]_8 [4]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][5]_i_1 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [5]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [5]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[0]_8 [5]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][6]_i_1 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [6]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [6]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[0]_8 [6]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][7]_i_1 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [7]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [7]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[0]_8 [7]));
  LUT6 #(
    .INIT(64'h55530000FFFFFFFF)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [8]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [8]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .I4(sig_output_xfer57_out__0),
        .I5(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_2 
       (.I0(sig_shift_case_reg[1]),
        .I1(sig_shift_case_reg[0]),
        .I2(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [8]),
        .I3(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [8]),
        .I4(sig_advance_pipe_data58_out),
        .O(p_28_out));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_3 
       (.I0(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [8]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [8]),
        .I2(sig_shift_case_reg[0]),
        .I3(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[0]_9 ));
  FDRE \GEN_OUTPUT_REG[0].sig_output_data_reg_reg[0][0] 
       (.C(m_axi_aclk),
        .CE(p_28_out),
        .D(\sig_final_mux_bus[0]_8 [0]),
        .Q(\sig_data_skid_reg_reg[31] [0]),
        .R(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[0].sig_output_data_reg_reg[0][1] 
       (.C(m_axi_aclk),
        .CE(p_28_out),
        .D(\sig_final_mux_bus[0]_8 [1]),
        .Q(\sig_data_skid_reg_reg[31] [1]),
        .R(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[0].sig_output_data_reg_reg[0][2] 
       (.C(m_axi_aclk),
        .CE(p_28_out),
        .D(\sig_final_mux_bus[0]_8 [2]),
        .Q(\sig_data_skid_reg_reg[31] [2]),
        .R(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[0].sig_output_data_reg_reg[0][3] 
       (.C(m_axi_aclk),
        .CE(p_28_out),
        .D(\sig_final_mux_bus[0]_8 [3]),
        .Q(\sig_data_skid_reg_reg[31] [3]),
        .R(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[0].sig_output_data_reg_reg[0][4] 
       (.C(m_axi_aclk),
        .CE(p_28_out),
        .D(\sig_final_mux_bus[0]_8 [4]),
        .Q(\sig_data_skid_reg_reg[31] [4]),
        .R(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[0].sig_output_data_reg_reg[0][5] 
       (.C(m_axi_aclk),
        .CE(p_28_out),
        .D(\sig_final_mux_bus[0]_8 [5]),
        .Q(\sig_data_skid_reg_reg[31] [5]),
        .R(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[0].sig_output_data_reg_reg[0][6] 
       (.C(m_axi_aclk),
        .CE(p_28_out),
        .D(\sig_final_mux_bus[0]_8 [6]),
        .Q(\sig_data_skid_reg_reg[31] [6]),
        .R(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[0].sig_output_data_reg_reg[0][7] 
       (.C(m_axi_aclk),
        .CE(p_28_out),
        .D(\sig_final_mux_bus[0]_8 [7]),
        .Q(\sig_data_skid_reg_reg[31] [7]),
        .R(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[0].sig_output_data_reg_reg[0][8] 
       (.C(m_axi_aclk),
        .CE(p_28_out),
        .D(\sig_final_mux_bus[0]_9 ),
        .Q(p_21_out[0]),
        .R(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACAAFA0)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][0]_i_1 
       (.I0(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [0]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [0]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [0]),
        .I4(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[1]_6 [0]));
  LUT5 #(
    .INIT(32'hCACAAFA0)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][1]_i_1 
       (.I0(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [1]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [1]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [1]),
        .I4(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[1]_6 [1]));
  LUT5 #(
    .INIT(32'hCACAAFA0)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][2]_i_1 
       (.I0(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [2]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [2]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [2]),
        .I4(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[1]_6 [2]));
  LUT5 #(
    .INIT(32'hCACAAFA0)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][3]_i_1 
       (.I0(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [3]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [3]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [3]),
        .I4(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[1]_6 [3]));
  LUT5 #(
    .INIT(32'hCACAAFA0)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][4]_i_1 
       (.I0(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [4]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [4]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [4]),
        .I4(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[1]_6 [4]));
  LUT5 #(
    .INIT(32'hCACAAFA0)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][5]_i_1 
       (.I0(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [5]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [5]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [5]),
        .I4(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[1]_6 [5]));
  LUT5 #(
    .INIT(32'hCACAAFA0)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][6]_i_1 
       (.I0(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [6]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [6]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [6]),
        .I4(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[1]_6 [6]));
  LUT5 #(
    .INIT(32'hCACAAFA0)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][7]_i_1 
       (.I0(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [7]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [7]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [7]),
        .I4(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[1]_6 [7]));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1 
       (.I0(\sig_final_mux_bus[1]_7 ),
        .I1(sig_output_xfer57_out__0),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE5EA40400000000)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_2 
       (.I0(sig_shift_case_reg[1]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [8]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [8]),
        .I4(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [8]),
        .I5(sig_advance_pipe_data58_out),
        .O(p_24_out));
  LUT5 #(
    .INIT(32'hCACAAFA0)) 
    \GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_3 
       (.I0(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [8]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [8]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [8]),
        .I4(sig_shift_case_reg[1]),
        .O(\sig_final_mux_bus[1]_7 ));
  FDRE \GEN_OUTPUT_REG[1].sig_output_data_reg_reg[1][0] 
       (.C(m_axi_aclk),
        .CE(p_24_out),
        .D(\sig_final_mux_bus[1]_6 [0]),
        .Q(\sig_data_skid_reg_reg[31] [8]),
        .R(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[1].sig_output_data_reg_reg[1][1] 
       (.C(m_axi_aclk),
        .CE(p_24_out),
        .D(\sig_final_mux_bus[1]_6 [1]),
        .Q(\sig_data_skid_reg_reg[31] [9]),
        .R(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[1].sig_output_data_reg_reg[1][2] 
       (.C(m_axi_aclk),
        .CE(p_24_out),
        .D(\sig_final_mux_bus[1]_6 [2]),
        .Q(\sig_data_skid_reg_reg[31] [10]),
        .R(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[1].sig_output_data_reg_reg[1][3] 
       (.C(m_axi_aclk),
        .CE(p_24_out),
        .D(\sig_final_mux_bus[1]_6 [3]),
        .Q(\sig_data_skid_reg_reg[31] [11]),
        .R(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[1].sig_output_data_reg_reg[1][4] 
       (.C(m_axi_aclk),
        .CE(p_24_out),
        .D(\sig_final_mux_bus[1]_6 [4]),
        .Q(\sig_data_skid_reg_reg[31] [12]),
        .R(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[1].sig_output_data_reg_reg[1][5] 
       (.C(m_axi_aclk),
        .CE(p_24_out),
        .D(\sig_final_mux_bus[1]_6 [5]),
        .Q(\sig_data_skid_reg_reg[31] [13]),
        .R(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[1].sig_output_data_reg_reg[1][6] 
       (.C(m_axi_aclk),
        .CE(p_24_out),
        .D(\sig_final_mux_bus[1]_6 [6]),
        .Q(\sig_data_skid_reg_reg[31] [14]),
        .R(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[1].sig_output_data_reg_reg[1][7] 
       (.C(m_axi_aclk),
        .CE(p_24_out),
        .D(\sig_final_mux_bus[1]_6 [7]),
        .Q(\sig_data_skid_reg_reg[31] [15]),
        .R(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[1].sig_output_data_reg_reg[1][8] 
       (.C(m_axi_aclk),
        .CE(p_24_out),
        .D(\sig_final_mux_bus[1]_7 ),
        .Q(p_21_out[1]),
        .R(\GEN_OUTPUT_REG[1].sig_output_data_reg[1][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][0]_i_1 
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [0]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [0]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [0]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [0]),
        .O(\sig_final_mux_bus[2]_16 [0]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][1]_i_1 
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [1]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [1]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [1]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [1]),
        .O(\sig_final_mux_bus[2]_16 [1]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][2]_i_1 
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [2]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [2]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [2]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [2]),
        .O(\sig_final_mux_bus[2]_16 [2]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][3]_i_1 
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [3]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [3]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [3]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [3]),
        .O(\sig_final_mux_bus[2]_16 [3]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][4]_i_1 
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [4]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [4]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [4]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [4]),
        .O(\sig_final_mux_bus[2]_16 [4]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][5]_i_1 
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [5]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [5]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [5]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [5]),
        .O(\sig_final_mux_bus[2]_16 [5]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][6]_i_1 
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [6]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [6]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [6]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [6]),
        .O(\sig_final_mux_bus[2]_16 [6]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][7]_i_1 
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [7]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [7]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [7]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [7]),
        .O(\sig_final_mux_bus[2]_16 [7]));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1 
       (.I0(\sig_final_mux_bus[2]_17 ),
        .I1(sig_output_xfer57_out__0),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_2 
       (.I0(\sig_final_mux_bus[2]_17 ),
        .I1(sig_advance_pipe_data58_out),
        .O(p_20_out_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_3 
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [8]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [8]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [8]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [8]),
        .O(\sig_final_mux_bus[2]_17 ));
  FDRE \GEN_OUTPUT_REG[2].sig_output_data_reg_reg[2][0] 
       (.C(m_axi_aclk),
        .CE(p_20_out_0),
        .D(\sig_final_mux_bus[2]_16 [0]),
        .Q(\sig_data_skid_reg_reg[31] [16]),
        .R(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[2].sig_output_data_reg_reg[2][1] 
       (.C(m_axi_aclk),
        .CE(p_20_out_0),
        .D(\sig_final_mux_bus[2]_16 [1]),
        .Q(\sig_data_skid_reg_reg[31] [17]),
        .R(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[2].sig_output_data_reg_reg[2][2] 
       (.C(m_axi_aclk),
        .CE(p_20_out_0),
        .D(\sig_final_mux_bus[2]_16 [2]),
        .Q(\sig_data_skid_reg_reg[31] [18]),
        .R(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[2].sig_output_data_reg_reg[2][3] 
       (.C(m_axi_aclk),
        .CE(p_20_out_0),
        .D(\sig_final_mux_bus[2]_16 [3]),
        .Q(\sig_data_skid_reg_reg[31] [19]),
        .R(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[2].sig_output_data_reg_reg[2][4] 
       (.C(m_axi_aclk),
        .CE(p_20_out_0),
        .D(\sig_final_mux_bus[2]_16 [4]),
        .Q(\sig_data_skid_reg_reg[31] [20]),
        .R(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[2].sig_output_data_reg_reg[2][5] 
       (.C(m_axi_aclk),
        .CE(p_20_out_0),
        .D(\sig_final_mux_bus[2]_16 [5]),
        .Q(\sig_data_skid_reg_reg[31] [21]),
        .R(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[2].sig_output_data_reg_reg[2][6] 
       (.C(m_axi_aclk),
        .CE(p_20_out_0),
        .D(\sig_final_mux_bus[2]_16 [6]),
        .Q(\sig_data_skid_reg_reg[31] [22]),
        .R(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[2].sig_output_data_reg_reg[2][7] 
       (.C(m_axi_aclk),
        .CE(p_20_out_0),
        .D(\sig_final_mux_bus[2]_16 [7]),
        .Q(\sig_data_skid_reg_reg[31] [23]),
        .R(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[2].sig_output_data_reg_reg[2][8] 
       (.C(m_axi_aclk),
        .CE(p_20_out_0),
        .D(\sig_final_mux_bus[2]_17 ),
        .Q(p_21_out[2]),
        .R(\GEN_OUTPUT_REG[2].sig_output_data_reg[2][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][0]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [0]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [0]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [0]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][0] ),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_final_mux_bus[3]_10 [0]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][1]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [1]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [1]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [1]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][1] ),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_final_mux_bus[3]_10 [1]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][2]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [2]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [2]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [2]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][2] ),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_final_mux_bus[3]_10 [2]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][3]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [3]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [3]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [3]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][3] ),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_final_mux_bus[3]_10 [3]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][4]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [4]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [4]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [4]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][4] ),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_final_mux_bus[3]_10 [4]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][5]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [5]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [5]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [5]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][5] ),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_final_mux_bus[3]_10 [5]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][6]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [6]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [6]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [6]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][6] ),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_final_mux_bus[3]_10 [6]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][7]_i_1 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [7]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [7]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [7]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][7] ),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_final_mux_bus[3]_10 [7]));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1 
       (.I0(\sig_pass_mux_bus[3]_11 ),
        .I1(sig_output_xfer57_out__0),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_2 
       (.I0(\sig_pass_mux_bus[3]_11 ),
        .I1(sig_advance_pipe_data58_out),
        .O(p_16_out));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_3 
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [8]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [8]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [8]),
        .I3(sig_shift_case_reg[1]),
        .I4(p_0_in31_in),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_pass_mux_bus[3]_11 ));
  FDRE \GEN_OUTPUT_REG[3].sig_output_data_reg_reg[3][0] 
       (.C(m_axi_aclk),
        .CE(p_16_out),
        .D(\sig_final_mux_bus[3]_10 [0]),
        .Q(\sig_data_skid_reg_reg[31] [24]),
        .R(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[3].sig_output_data_reg_reg[3][1] 
       (.C(m_axi_aclk),
        .CE(p_16_out),
        .D(\sig_final_mux_bus[3]_10 [1]),
        .Q(\sig_data_skid_reg_reg[31] [25]),
        .R(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[3].sig_output_data_reg_reg[3][2] 
       (.C(m_axi_aclk),
        .CE(p_16_out),
        .D(\sig_final_mux_bus[3]_10 [2]),
        .Q(\sig_data_skid_reg_reg[31] [26]),
        .R(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[3].sig_output_data_reg_reg[3][3] 
       (.C(m_axi_aclk),
        .CE(p_16_out),
        .D(\sig_final_mux_bus[3]_10 [3]),
        .Q(\sig_data_skid_reg_reg[31] [27]),
        .R(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[3].sig_output_data_reg_reg[3][4] 
       (.C(m_axi_aclk),
        .CE(p_16_out),
        .D(\sig_final_mux_bus[3]_10 [4]),
        .Q(\sig_data_skid_reg_reg[31] [28]),
        .R(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[3].sig_output_data_reg_reg[3][5] 
       (.C(m_axi_aclk),
        .CE(p_16_out),
        .D(\sig_final_mux_bus[3]_10 [5]),
        .Q(\sig_data_skid_reg_reg[31] [29]),
        .R(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[3].sig_output_data_reg_reg[3][6] 
       (.C(m_axi_aclk),
        .CE(p_16_out),
        .D(\sig_final_mux_bus[3]_10 [6]),
        .Q(\sig_data_skid_reg_reg[31] [30]),
        .R(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[3].sig_output_data_reg_reg[3][7] 
       (.C(m_axi_aclk),
        .CE(p_16_out),
        .D(\sig_final_mux_bus[3]_10 [7]),
        .Q(\sig_data_skid_reg_reg[31] [31]),
        .R(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  FDRE \GEN_OUTPUT_REG[3].sig_output_data_reg_reg[3][8] 
       (.C(m_axi_aclk),
        .CE(p_16_out),
        .D(\sig_pass_mux_bus[3]_11 ),
        .Q(p_21_out[3]),
        .R(\GEN_OUTPUT_REG[3].sig_output_data_reg[3][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888A88)) 
    m_axi_rready_INST_0
       (.I0(sig_advance_pipe19_out__1),
        .I1(sig_halt_reg_reg),
        .I2(sig_dre_tvalid_i_reg_0),
        .I3(sig_enable_input_rdy),
        .I4(sig_flush_db2),
        .I5(sig_flush_db1),
        .O(m_axi_rready));
  LUT6 #(
    .INIT(64'h5500400015004000)) 
    sig_data2wsc_cmd_cmplt_i_2
       (.I0(sig_halt_reg_reg),
        .I1(sig_next_eof_reg),
        .I2(sig_dbeat_cntr_eq_0),
        .I3(sig_good_mmap_dbeat13_out__0),
        .I4(p_20_out),
        .I5(\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/sig_end_stbs_match_err2__6 ),
        .O(sig_tlast_error));
  LUT3 #(
    .INIT(8'hF6)) 
    sig_data2wsc_cmd_cmplt_i_3
       (.I0(p_21_out[3]),
        .I1(\sig_next_last_strb_reg_reg[3] [3]),
        .I2(sig_data2wsc_cmd_cmplt_i_4_n_0),
        .O(\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/sig_end_stbs_match_err2__6 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    sig_data2wsc_cmd_cmplt_i_4
       (.I0(p_21_out[0]),
        .I1(\sig_next_last_strb_reg_reg[3] [0]),
        .I2(\sig_next_last_strb_reg_reg[3] [2]),
        .I3(p_21_out[2]),
        .I4(\sig_next_last_strb_reg_reg[3] [1]),
        .I5(p_21_out[1]),
        .O(sig_data2wsc_cmd_cmplt_i_4_n_0));
  LUT6 #(
    .INIT(64'hFC00FC000000AA00)) 
    sig_dre_tvalid_i_i_1
       (.I0(p_19_out),
        .I1(sig_final_mux_has_tlast),
        .I2(\sig_pass_mux_bus[3]_11 ),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I4(sig_output_xfer57_out__0),
        .I5(sig_advance_pipe_data58_out),
        .O(sig_dre_tvalid_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEFA)) 
    sig_dre_tvalid_i_i_2
       (.I0(sig_dre_tvalid_i_i_3_n_0),
        .I1(\GEN_DELAY_REG[0].sig_delay_data_reg_reg[0]_3 [9]),
        .I2(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [9]),
        .I3(sig_shift_case_reg[0]),
        .I4(sig_shift_case_reg[1]),
        .I5(\sig_pass_mux_bus[3]__0 ),
        .O(sig_final_mux_has_tlast));
  LUT6 #(
    .INIT(64'hFFFEBBFEEEBAAABA)) 
    sig_dre_tvalid_i_i_3
       (.I0(\sig_final_mux_bus[2]__0 ),
        .I1(sig_shift_case_reg[1]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [9]),
        .I3(sig_shift_case_reg[0]),
        .I4(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [9]),
        .I5(\GEN_DELAY_REG[1].sig_delay_data_reg_reg[1]_4 [9]),
        .O(sig_dre_tvalid_i_i_3_n_0));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    sig_dre_tvalid_i_i_4
       (.I0(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [9]),
        .I1(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [9]),
        .I2(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [9]),
        .I3(sig_shift_case_reg[1]),
        .I4(\GEN_INPUT_REG[3].sig_input_data_reg_reg_n_0_[3][9] ),
        .I5(sig_shift_case_reg[0]),
        .O(\sig_pass_mux_bus[3]__0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    sig_dre_tvalid_i_i_5
       (.I0(\GEN_DELAY_REG[2].sig_delay_data_reg_reg[2]_5 [9]),
        .I1(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1]_1 [9]),
        .I2(sig_shift_case_reg[0]),
        .I3(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0]_2 [9]),
        .I4(sig_shift_case_reg[1]),
        .I5(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2]_0 [9]),
        .O(\sig_final_mux_bus[2]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_dre_tvalid_i_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_dre_tvalid_i_i_1_n_0),
        .Q(p_19_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_enable_input_rdy_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_enable_input_rdy),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  LUT6 #(
    .INIT(64'h00000000EEE2E2E2)) 
    sig_flush_db1_i_1
       (.I0(sig_flush_db1),
        .I1(sig_input_accept59_out),
        .I2(sig_rdc2sf_wlast),
        .I3(sig_next_eof_reg_reg),
        .I4(m_axi_rlast),
        .I5(sig_flush_db1_i_3_n_0),
        .O(sig_flush_db1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    sig_flush_db1_i_3
       (.I0(sig_dre_tvalid_i_reg_0),
        .I1(sig_flush_db2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(sig_flush_db1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_flush_db1_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_flush_db1_i_1_n_0),
        .Q(sig_flush_db1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC008)) 
    sig_flush_db2_i_1
       (.I0(sig_flush_db1),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I2(sig_flush_db2),
        .I3(sig_dre_tvalid_i_reg_0),
        .O(sig_flush_db2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_flush_db2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_flush_db2_i_1_n_0),
        .Q(sig_flush_db2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(m_axi_rlast),
        .I1(sig_good_mmap_dbeat15_out__0),
        .O(sig_last_mmap_dbeat));
  LUT6 #(
    .INIT(64'hAAAA002000000000)) 
    sig_next_cmd_cmplt_reg_i_5
       (.I0(m_axi_rvalid),
        .I1(sig_auto_flush__0),
        .I2(sig_enable_input_rdy),
        .I3(sig_dre_tvalid_i_reg_0),
        .I4(sig_halt_reg_reg),
        .I5(sig_advance_pipe19_out__1),
        .O(sig_good_mmap_dbeat15_out__0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_next_cmd_cmplt_reg_i_7
       (.I0(sig_flush_db1),
        .I1(sig_flush_db2),
        .O(sig_auto_flush__0));
  LUT5 #(
    .INIT(32'hC0C000A0)) 
    sig_tlast_out_i_1
       (.I0(p_20_out),
        .I1(sig_final_mux_has_tlast),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_output_xfer57_out__0),
        .I4(sig_advance_pipe_data58_out),
        .O(sig_tlast_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_tlast_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_tlast_out_i_1_n_0),
        .Q(p_20_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_mm2s_full_wrap" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_mm2s_full_wrap
   (sig_init_reg,
    sig_stream_rst,
    m_axi_arvalid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    p_36_out,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    \sig_sm_state_reg[0] ,
    in,
    p_19_out,
    sig_rst2all_stop_request,
    sig_data2addr_stop_req,
    S,
    m_axi_rready,
    DI,
    \sig_addr_cntr_im0_msh_reg[7] ,
    \sig_addr_cntr_im0_msh_reg[11] ,
    \sig_addr_cntr_im0_msh_reg[15] ,
    sig_tlast_error,
    D,
    sig_init_done_reg,
    sig_init_done_reg_0,
    sig_init_done_reg_1,
    sig_init_done_reg_2,
    sig_init_done_reg_3,
    sig_init_done_reg_4,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    p_32_out,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    \sig_data_skid_reg_reg[31] ,
    m_axi_aclk,
    sig_rst2dm_resetn,
    O,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ,
    sig_halt_request_reg,
    m_axi_rlast,
    sig_output_xfer57_out__0,
    sig_dre_tvalid_i_reg,
    m_axi_arready,
    m_axi_rvalid,
    m_axi_rresp,
    sig_next_eof_reg,
    sig_dbeat_cntr_eq_0,
    sig_good_mmap_dbeat13_out__0,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg ,
    Q,
    sig_dma_go_reg,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    sig_halt_reg_dly3,
    \sig_next_last_strb_reg_reg[3] ,
    sig_init_reg2,
    E,
    sig_cntl2s2mm_cmd_tvalid,
    sig_cntl2mm2s_sts_tready,
    sig_init_done,
    sig_init_done_0,
    sig_init_done_1,
    sig_init_done_2,
    sig_init_done_3,
    sig_init_done_4,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ,
    \sig_sa_register_lsb_reg[31] ,
    m_axi_rdata);
  output sig_init_reg;
  output sig_stream_rst;
  output m_axi_arvalid;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output p_36_out;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  output \sig_sm_state_reg[0] ;
  output [0:0]in;
  output p_19_out;
  output sig_rst2all_stop_request;
  output sig_data2addr_stop_req;
  output [3:0]S;
  output m_axi_rready;
  output [0:0]DI;
  output [3:0]\sig_addr_cntr_im0_msh_reg[7] ;
  output [3:0]\sig_addr_cntr_im0_msh_reg[11] ;
  output [3:0]\sig_addr_cntr_im0_msh_reg[15] ;
  output sig_tlast_error;
  output [0:0]D;
  output sig_init_done_reg;
  output sig_init_done_reg_0;
  output sig_init_done_reg_1;
  output sig_init_done_reg_2;
  output sig_init_done_reg_3;
  output sig_init_done_reg_4;
  output \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  output [2:0]p_32_out;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [31:0]\sig_data_skid_reg_reg[31] ;
  input m_axi_aclk;
  input sig_rst2dm_resetn;
  input [3:0]O;
  input [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ;
  input [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ;
  input [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  input sig_halt_request_reg;
  input m_axi_rlast;
  input sig_output_xfer57_out__0;
  input sig_dre_tvalid_i_reg;
  input m_axi_arready;
  input m_axi_rvalid;
  input [1:0]m_axi_rresp;
  input sig_next_eof_reg;
  input sig_dbeat_cntr_eq_0;
  input sig_good_mmap_dbeat13_out__0;
  input \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  input [2:0]Q;
  input sig_dma_go_reg;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  input sig_halt_reg_dly3;
  input [3:0]\sig_next_last_strb_reg_reg[3] ;
  input sig_init_reg2;
  input [0:0]E;
  input sig_cntl2s2mm_cmd_tvalid;
  input sig_cntl2mm2s_sts_tready;
  input sig_init_done;
  input sig_init_done_0;
  input sig_init_done_1;
  input sig_init_done_2;
  input sig_init_done_3;
  input sig_init_done_4;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ;
  input [57:0]\sig_sa_register_lsb_reg[31] ;
  input [31:0]m_axi_rdata;

  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo ;
  wire \GEN_INCLUDE_MM2S_DRE.I_DRE_16_to_64_n_6 ;
  wire \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ;
  wire \I_CMD_FIFO/sig_init_done ;
  wire I_CMD_STATUS_n_24;
  wire I_CMD_STATUS_n_25;
  wire I_CMD_STATUS_n_26;
  wire I_CMD_STATUS_n_27;
  wire I_CMD_STATUS_n_28;
  wire I_CMD_STATUS_n_29;
  wire I_CMD_STATUS_n_30;
  wire I_CMD_STATUS_n_31;
  wire I_CMD_STATUS_n_32;
  wire I_CMD_STATUS_n_33;
  wire I_CMD_STATUS_n_34;
  wire I_CMD_STATUS_n_35;
  wire I_CMD_STATUS_n_36;
  wire I_CMD_STATUS_n_37;
  wire I_CMD_STATUS_n_38;
  wire I_CMD_STATUS_n_39;
  wire I_CMD_STATUS_n_44;
  wire I_CMD_STATUS_n_45;
  wire I_CMD_STATUS_n_46;
  wire I_CMD_STATUS_n_47;
  wire I_CMD_STATUS_n_48;
  wire I_CMD_STATUS_n_49;
  wire I_CMD_STATUS_n_50;
  wire I_CMD_STATUS_n_51;
  wire I_CMD_STATUS_n_52;
  wire I_CMD_STATUS_n_53;
  wire I_CMD_STATUS_n_54;
  wire I_CMD_STATUS_n_55;
  wire I_CMD_STATUS_n_56;
  wire I_CMD_STATUS_n_57;
  wire I_CMD_STATUS_n_58;
  wire I_CMD_STATUS_n_59;
  wire I_CMD_STATUS_n_6;
  wire I_CMD_STATUS_n_60;
  wire I_CMD_STATUS_n_61;
  wire I_CMD_STATUS_n_62;
  wire I_CMD_STATUS_n_63;
  wire I_CMD_STATUS_n_64;
  wire I_CMD_STATUS_n_65;
  wire I_CMD_STATUS_n_66;
  wire I_CMD_STATUS_n_67;
  wire I_MSTR_PCC_n_56;
  wire I_MSTR_PCC_n_57;
  wire I_MSTR_PCC_n_58;
  wire I_MSTR_PCC_n_59;
  wire I_MSTR_PCC_n_73;
  wire I_MSTR_PCC_n_74;
  wire I_MSTR_PCC_n_75;
  wire I_MSTR_PCC_n_76;
  wire I_MSTR_PCC_n_77;
  wire I_MSTR_PCC_n_78;
  wire I_RD_DATA_CNTL_n_0;
  wire I_RD_DATA_CNTL_n_15;
  wire I_RD_DATA_CNTL_n_16;
  wire I_RD_DATA_CNTL_n_17;
  wire I_RD_DATA_CNTL_n_21;
  wire I_RD_DATA_CNTL_n_26;
  wire I_RD_DATA_CNTL_n_37;
  wire I_RESET_n_4;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ;
  wire [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ;
  wire [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  wire [15:0]data;
  wire [0:0]in;
  wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire p_15_out;
  wire p_19_out;
  wire [2:0]p_32_out;
  wire p_36_out;
  wire p_44_out;
  wire p_48_out;
  wire p_52_out;
  wire p_55_out;
  wire p_8_out;
  wire sig_addr2data_addr_posted;
  wire sig_addr2rsc_calc_error;
  wire [3:0]\sig_addr_cntr_im0_msh_reg[11] ;
  wire [3:0]\sig_addr_cntr_im0_msh_reg[15] ;
  wire [3:0]\sig_addr_cntr_im0_msh_reg[7] ;
  wire sig_addr_reg_empty;
  wire sig_advance_pipe19_out__1;
  wire sig_cmd2mstr_cmd_valid;
  wire [1:0]sig_cmd_dsa_slice;
  wire sig_cmd_eof_slice;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_type_slice;
  wire sig_cntl2mm2s_sts_tready;
  wire sig_cntl2s2mm_cmd_tvalid;
  wire sig_data2addr_stop_req;
  wire sig_data2rsc_calc_err;
  wire sig_data2rsc_slverr;
  wire [31:0]\sig_data_skid_reg_reg[31] ;
  wire sig_dbeat_cntr_eq_0;
  wire sig_dma_go_reg;
  wire sig_dre_tvalid_i_reg;
  wire sig_flush_db1;
  wire sig_good_mmap_dbeat13_out__0;
  wire sig_good_mmap_dbeat15_out__0;
  wire sig_halt_reg_dly3;
  wire sig_halt_request_reg;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_1;
  wire sig_init_done_2;
  wire sig_init_done_3;
  wire sig_init_done_4;
  wire sig_init_done_reg;
  wire sig_init_done_reg_0;
  wire sig_init_done_reg_1;
  wire sig_init_done_reg_2;
  wire sig_init_done_reg_3;
  wire sig_init_done_reg_4;
  wire sig_init_reg;
  wire sig_init_reg2;
  wire sig_input_accept59_out;
  wire [1:0]sig_input_dsa_reg;
  wire sig_last_mmap_dbeat;
  wire [31:2]sig_mstr2addr_addr;
  wire [0:0]sig_mstr2addr_burst;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_cmplt;
  wire sig_mstr2data_cmd_valid;
  wire [1:0]sig_mstr2data_dre_src_align;
  wire sig_mstr2data_drr;
  wire sig_mstr2data_eof;
  wire [3:0]sig_mstr2data_last_strb;
  wire [3:0]sig_mstr2data_len;
  wire sig_mstr2data_sequential;
  wire sig_next_eof_reg;
  wire [3:0]\sig_next_last_strb_reg_reg[3] ;
  wire sig_output_xfer57_out__0;
  wire sig_push_input_reg11_out;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_reg_full0;
  wire [0:0]sig_rdc2dre_dest_align;
  wire sig_rdc2dre_new_align;
  wire [1:0]sig_rdc2dre_src_align;
  wire sig_rdc2dre_use_autodest;
  wire sig_rdc2sf_wlast;
  wire [3:0]sig_rdc2sf_wstrb;
  wire sig_rdc2sf_wvalid;
  wire sig_rsc2data_ready;
  wire [6:4]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_rst2all_stop_request;
  wire sig_rst2dm_resetn;
  wire [57:0]\sig_sa_register_lsb_reg[31] ;
  wire \sig_sm_state_reg[0] ;
  wire sig_stat2rsc_status_ready;
  wire sig_stream_rst;
  wire [3:0]sig_tlast_enables;
  wire sig_tlast_error;

  CMDA_DRAM_axi_cdma_0_0_axi_datamover_mm2s_dre \GEN_INCLUDE_MM2S_DRE.I_DRE_16_to_64 
       (.D({sig_tlast_enables[2],sig_rdc2sf_wstrb[2],m_axi_rdata[23:16]}),
        .E(p_48_out),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg (I_RD_DATA_CNTL_n_26),
        .\GEN_MUXFARM_32.sig_shift_case_reg_reg[1]_0 (\GEN_INCLUDE_MM2S_DRE.I_DRE_16_to_64_n_6 ),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ),
        .Q(sig_rdc2dre_src_align),
        .SR(I_RD_DATA_CNTL_n_16),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .p_19_out(p_19_out),
        .sig_advance_pipe19_out__1(sig_advance_pipe19_out__1),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_stream_rst),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .\sig_data_skid_reg_reg[31] (\sig_data_skid_reg_reg[31] ),
        .sig_dbeat_cntr_eq_0(sig_dbeat_cntr_eq_0),
        .sig_dre_tvalid_i_reg_0(sig_dre_tvalid_i_reg),
        .sig_flush_db1(sig_flush_db1),
        .sig_flush_db1_reg_0(I_RD_DATA_CNTL_n_15),
        .sig_flush_db1_reg_1(p_15_out),
        .sig_flush_db1_reg_2(p_8_out),
        .sig_good_mmap_dbeat13_out__0(sig_good_mmap_dbeat13_out__0),
        .sig_good_mmap_dbeat15_out__0(sig_good_mmap_dbeat15_out__0),
        .sig_halt_reg_reg(sig_data2addr_stop_req),
        .sig_halt_reg_reg_0({sig_tlast_enables[1],sig_rdc2sf_wstrb[1],m_axi_rdata[15:8]}),
        .sig_halt_reg_reg_1({sig_tlast_enables[0],sig_rdc2sf_wstrb[0],m_axi_rdata[7:0]}),
        .sig_input_accept59_out(sig_input_accept59_out),
        .sig_last_mmap_dbeat(sig_last_mmap_dbeat),
        .\sig_next_dre_dest_align_reg_reg[0] (sig_rdc2dre_dest_align),
        .sig_next_eof_reg(sig_next_eof_reg),
        .sig_next_eof_reg_reg(I_RD_DATA_CNTL_n_21),
        .\sig_next_last_strb_reg_reg[3] (\sig_next_last_strb_reg_reg[3] ),
        .\sig_next_strt_strb_reg_reg[0] (p_55_out),
        .\sig_next_strt_strb_reg_reg[1] (p_52_out),
        .\sig_next_strt_strb_reg_reg[3] (p_44_out),
        .\sig_next_strt_strb_reg_reg[3]_0 ({sig_tlast_enables[3],sig_rdc2sf_wstrb[3],m_axi_rdata[31:24]}),
        .sig_output_xfer57_out__0(sig_output_xfer57_out__0),
        .sig_rdc2dre_new_align(sig_rdc2dre_new_align),
        .sig_rdc2dre_use_autodest(sig_rdc2dre_use_autodest),
        .sig_rdc2sf_wlast(sig_rdc2sf_wlast),
        .sig_rdc2sf_wvalid(sig_rdc2sf_wvalid),
        .sig_tlast_error(sig_tlast_error));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_addr_cntl I_ADDR_CNTL
       (.in({in,sig_mstr2addr_burst,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2data_dre_src_align}),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .out(sig_addr2data_addr_posted),
        .sig_addr2rsc_calc_error(sig_addr2rsc_calc_error),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_stream_rst),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_halt_reg_reg(sig_data2addr_stop_req),
        .sig_init_done(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ),
        .sig_mmap_reset_reg_reg(I_MSTR_PCC_n_77),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_wr_fifo(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo ));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_cmd_status_1 I_CMD_STATUS
       (.D(D),
        .E(E),
        .Q(Q),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (I_MSTR_PCC_n_75),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg (\USE_SINGLE_REG.sig_regfifo_full_reg_reg ),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .p_32_out(p_32_out),
        .\sig_addr_cntr_lsh_kh_reg[31] ({data,I_CMD_STATUS_n_24,I_CMD_STATUS_n_25,I_CMD_STATUS_n_26,I_CMD_STATUS_n_27,I_CMD_STATUS_n_28,I_CMD_STATUS_n_29,I_CMD_STATUS_n_30,I_CMD_STATUS_n_31,I_CMD_STATUS_n_32,I_CMD_STATUS_n_33,I_CMD_STATUS_n_34,I_CMD_STATUS_n_35,I_CMD_STATUS_n_36,I_CMD_STATUS_n_37,I_CMD_STATUS_n_38,I_CMD_STATUS_n_39,sig_cmd_eof_slice,sig_cmd_dsa_slice,sig_cmd_type_slice,I_CMD_STATUS_n_44,I_CMD_STATUS_n_45,I_CMD_STATUS_n_46,I_CMD_STATUS_n_47,I_CMD_STATUS_n_48,I_CMD_STATUS_n_49,I_CMD_STATUS_n_50,I_CMD_STATUS_n_51,I_CMD_STATUS_n_52,I_CMD_STATUS_n_53,I_CMD_STATUS_n_54,I_CMD_STATUS_n_55,I_CMD_STATUS_n_56,I_CMD_STATUS_n_57,I_CMD_STATUS_n_58,I_CMD_STATUS_n_59,I_CMD_STATUS_n_60,I_CMD_STATUS_n_61,I_CMD_STATUS_n_62,I_CMD_STATUS_n_63,I_CMD_STATUS_n_64,I_CMD_STATUS_n_65,I_CMD_STATUS_n_66}),
        .sig_calc_error_reg_reg(I_CMD_STATUS_n_67),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(I_MSTR_PCC_n_74),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_stream_rst),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cntl2mm2s_sts_tready(sig_cntl2mm2s_sts_tready),
        .sig_dma_go_reg(sig_dma_go_reg),
        .sig_init_done(\I_CMD_FIFO/sig_init_done ),
        .sig_init_done_0(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done ),
        .sig_mmap_reset_reg_reg(I_MSTR_PCC_n_73),
        .sig_mmap_reset_reg_reg_0(I_MSTR_PCC_n_76),
        .sig_push_input_reg11_out(sig_push_input_reg11_out),
        .sig_rd_sts_reg_empty_reg(I_CMD_STATUS_n_6),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .\sig_sa_register_lsb_reg[31] (\sig_sa_register_lsb_reg[31] ),
        .\sig_sm_state_reg[0] (\sig_sm_state_reg[0] ),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_pcc I_MSTR_PCC
       (.DI(DI),
        .E(E),
        .FIFO_Full_reg(I_RD_DATA_CNTL_n_0),
        .O(O),
        .S(S),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ({data,I_CMD_STATUS_n_24,I_CMD_STATUS_n_25,I_CMD_STATUS_n_26,I_CMD_STATUS_n_27,I_CMD_STATUS_n_28,I_CMD_STATUS_n_29,I_CMD_STATUS_n_30,I_CMD_STATUS_n_31,I_CMD_STATUS_n_32,I_CMD_STATUS_n_33,I_CMD_STATUS_n_34,I_CMD_STATUS_n_35,I_CMD_STATUS_n_36,I_CMD_STATUS_n_37,I_CMD_STATUS_n_38,I_CMD_STATUS_n_39,sig_cmd_eof_slice,sig_cmd_dsa_slice,sig_cmd_type_slice,I_CMD_STATUS_n_44,I_CMD_STATUS_n_45,I_CMD_STATUS_n_46,I_CMD_STATUS_n_47,I_CMD_STATUS_n_48,I_CMD_STATUS_n_49,I_CMD_STATUS_n_50,I_CMD_STATUS_n_51,I_CMD_STATUS_n_52,I_CMD_STATUS_n_53,I_CMD_STATUS_n_54,I_CMD_STATUS_n_55,I_CMD_STATUS_n_56,I_CMD_STATUS_n_57,I_CMD_STATUS_n_58,I_CMD_STATUS_n_59,I_CMD_STATUS_n_60,I_CMD_STATUS_n_61,I_CMD_STATUS_n_62,I_CMD_STATUS_n_63,I_CMD_STATUS_n_64,I_CMD_STATUS_n_65,I_CMD_STATUS_n_66}),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (I_MSTR_PCC_n_75),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg (I_MSTR_PCC_n_74),
        .in({in,sig_mstr2addr_burst,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2data_dre_src_align}),
        .m_axi_aclk(m_axi_aclk),
        .\sig_addr_cntr_im0_msh_reg[11]_0 (\sig_addr_cntr_im0_msh_reg[11] ),
        .\sig_addr_cntr_im0_msh_reg[15]_0 (sig_init_reg),
        .\sig_addr_cntr_im0_msh_reg[15]_1 (\sig_addr_cntr_im0_msh_reg[15] ),
        .\sig_addr_cntr_im0_msh_reg[7]_0 (\sig_addr_cntr_im0_msh_reg[7] ),
        .sig_calc_error_reg_reg_0(I_CMD_STATUS_n_67),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_stream_rst),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cntl2s2mm_cmd_tvalid(sig_cntl2s2mm_cmd_tvalid),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(sig_init_done),
        .sig_init_done_0(sig_init_done_0),
        .sig_init_done_1(sig_init_done_1),
        .sig_init_done_2(sig_init_done_2),
        .sig_init_done_3(sig_init_done_3),
        .sig_init_done_4(sig_init_done_4),
        .sig_init_done_5(\I_CMD_FIFO/sig_init_done ),
        .sig_init_done_7(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done ),
        .sig_init_done_8(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ),
        .sig_init_done_9(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_done_reg(I_MSTR_PCC_n_73),
        .sig_init_done_reg_0(I_MSTR_PCC_n_76),
        .sig_init_done_reg_1(I_MSTR_PCC_n_77),
        .sig_init_done_reg_2(I_MSTR_PCC_n_78),
        .sig_init_done_reg_3(sig_init_done_reg),
        .sig_init_done_reg_4(sig_init_done_reg_0),
        .sig_init_done_reg_5(sig_init_done_reg_1),
        .sig_init_done_reg_6(sig_init_done_reg_2),
        .sig_init_done_reg_7(sig_init_done_reg_3),
        .sig_init_done_reg_8(sig_init_done_reg_4),
        .sig_init_reg2(sig_init_reg2),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .\sig_next_dre_dest_align_reg_reg[1] ({sig_input_dsa_reg,sig_mstr2data_cmd_cmplt,sig_mstr2data_sequential,sig_mstr2data_eof,sig_mstr2data_drr,sig_mstr2data_last_strb,I_MSTR_PCC_n_56,I_MSTR_PCC_n_57,I_MSTR_PCC_n_58,I_MSTR_PCC_n_59}),
        .sig_push_input_reg11_out(sig_push_input_reg11_out),
        .sig_wr_fifo(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo ),
        .sig_wr_fifo_6(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo ));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_rddata_cntl I_RD_DATA_CNTL
       (.E(p_48_out),
        .\GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9] (p_15_out),
        .\GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9]_0 (p_55_out),
        .\GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9] (I_RD_DATA_CNTL_n_15),
        .\GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9]_0 (p_52_out),
        .\GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9] (p_8_out),
        .\GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9]_0 (p_44_out),
        .\GEN_MUXFARM_32.sig_shift_case_reg_reg[0] (sig_rdc2dre_dest_align),
        .\GEN_MUXFARM_32.sig_shift_case_reg_reg[1] (I_RD_DATA_CNTL_n_26),
        .\INFERRED_GEN.cnt_i_reg[0] (I_RD_DATA_CNTL_n_0),
        .Q(sig_rdc2dre_src_align),
        .SR(I_RD_DATA_CNTL_n_16),
        .in({sig_input_dsa_reg,sig_mstr2data_dre_src_align,in,sig_mstr2data_cmd_cmplt,sig_mstr2data_sequential,sig_mstr2data_eof,sig_mstr2data_drr,sig_mstr2data_last_strb,I_MSTR_PCC_n_56,I_MSTR_PCC_n_57,I_MSTR_PCC_n_58,I_MSTR_PCC_n_59,sig_mstr2data_len}),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .out(sig_addr2data_addr_posted),
        .p_36_out(p_36_out),
        .sig_addr2rsc_calc_error(sig_addr2rsc_calc_error),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_advance_pipe19_out__1(sig_advance_pipe19_out__1),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_stream_rst),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2rsc_calc_err(sig_data2rsc_calc_err),
        .sig_data2rsc_slverr(sig_data2rsc_slverr),
        .sig_dre_tvalid_i_reg(sig_dre_tvalid_i_reg),
        .sig_flush_db1(sig_flush_db1),
        .sig_flush_db1_reg(I_RD_DATA_CNTL_n_21),
        .sig_good_mmap_dbeat15_out__0(sig_good_mmap_dbeat15_out__0),
        .sig_halt_cmplt_reg(I_RD_DATA_CNTL_n_37),
        .sig_halt_reg_dly1_reg(sig_data2addr_stop_req),
        .sig_halt_reg_dly3(sig_halt_reg_dly3),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_input_accept59_out(sig_input_accept59_out),
        .sig_last_mmap_dbeat(sig_last_mmap_dbeat),
        .sig_mmap_reset_reg_reg(I_MSTR_PCC_n_78),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .\sig_next_dre_src_align_reg_reg[0]_0 (\GEN_INCLUDE_MM2S_DRE.I_DRE_16_to_64_n_6 ),
        .sig_push_rd_sts_reg(sig_push_rd_sts_reg),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rd_sts_reg_empty_reg(I_RD_DATA_CNTL_n_17),
        .sig_rd_sts_reg_full0(sig_rd_sts_reg_full0),
        .sig_rdc2dre_new_align(sig_rdc2dre_new_align),
        .sig_rdc2dre_use_autodest(sig_rdc2dre_use_autodest),
        .sig_rdc2sf_wlast(sig_rdc2sf_wlast),
        .sig_rdc2sf_wstrb(sig_rdc2sf_wstrb),
        .sig_rdc2sf_wvalid(sig_rdc2sf_wvalid),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status[5]),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_s_h_halt_reg_reg(I_RESET_n_4),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready),
        .sig_tlast_enables(sig_tlast_enables),
        .sig_wr_fifo(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo ));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_rd_status_cntl I_RD_STATUS_CNTLR
       (.\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (I_CMD_STATUS_n_6),
        .m_axi_aclk(m_axi_aclk),
        .sig_coelsc_reg_full_reg(I_RD_DATA_CNTL_n_17),
        .sig_data2rsc_calc_err(sig_data2rsc_calc_err),
        .sig_data2rsc_slverr(sig_data2rsc_slverr),
        .sig_push_rd_sts_reg(sig_push_rd_sts_reg),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rd_sts_reg_full0(sig_rd_sts_reg_full0),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_reset_2 I_RESET
       (.m_axi_aclk(m_axi_aclk),
        .p_36_out(p_36_out),
        .sig_halt_reg_reg(I_RESET_n_4),
        .sig_halt_reg_reg_0(I_RD_DATA_CNTL_n_37),
        .sig_halt_reg_reg_1(sig_data2addr_stop_req),
        .sig_halt_request_reg(sig_halt_request_reg),
        .sig_rst2all_stop_request(sig_rst2all_stop_request),
        .sig_rst2dm_resetn(sig_rst2dm_resetn),
        .sig_s_h_halt_reg_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_s_h_halt_reg_reg_1(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "axi_datamover_pcc" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_pcc
   (\sig_addr_cntr_im0_msh_reg[15]_0 ,
    in,
    sig_push_input_reg11_out,
    sig_mstr2data_cmd_valid,
    sig_mstr2addr_cmd_valid,
    S,
    \sig_next_dre_dest_align_reg_reg[1] ,
    DI,
    \sig_addr_cntr_im0_msh_reg[7]_0 ,
    \sig_addr_cntr_im0_msh_reg[11]_0 ,
    \sig_addr_cntr_im0_msh_reg[15]_1 ,
    sig_init_done_reg,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg ,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    sig_init_done_reg_0,
    sig_init_done_reg_1,
    sig_init_done_reg_2,
    sig_init_done_reg_3,
    sig_init_done_reg_4,
    sig_init_done_reg_5,
    sig_init_done_reg_6,
    sig_init_done_reg_7,
    sig_init_done_reg_8,
    m_axi_aclk,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    O,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ,
    sig_calc_error_reg_reg_0,
    sig_cmd2mstr_cmd_valid,
    sig_init_done_5,
    sig_wr_fifo,
    sig_wr_fifo_6,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    sig_init_reg2,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    E,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    sig_cntl2s2mm_cmd_tvalid,
    sig_init_done_7,
    sig_init_done_8,
    sig_init_done_9,
    sig_init_done,
    sig_init_done_0,
    sig_init_done_1,
    sig_init_done_2,
    sig_init_done_3,
    sig_init_done_4);
  output \sig_addr_cntr_im0_msh_reg[15]_0 ;
  output [37:0]in;
  output sig_push_input_reg11_out;
  output sig_mstr2data_cmd_valid;
  output sig_mstr2addr_cmd_valid;
  output [3:0]S;
  output [13:0]\sig_next_dre_dest_align_reg_reg[1] ;
  output [0:0]DI;
  output [3:0]\sig_addr_cntr_im0_msh_reg[7]_0 ;
  output [3:0]\sig_addr_cntr_im0_msh_reg[11]_0 ;
  output [3:0]\sig_addr_cntr_im0_msh_reg[15]_1 ;
  output sig_init_done_reg;
  output \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  output sig_init_done_reg_0;
  output sig_init_done_reg_1;
  output sig_init_done_reg_2;
  output sig_init_done_reg_3;
  output sig_init_done_reg_4;
  output sig_init_done_reg_5;
  output sig_init_done_reg_6;
  output sig_init_done_reg_7;
  output sig_init_done_reg_8;
  input m_axi_aclk;
  input [58:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [3:0]O;
  input [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ;
  input [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ;
  input [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ;
  input sig_calc_error_reg_reg_0;
  input sig_cmd2mstr_cmd_valid;
  input sig_init_done_5;
  input sig_wr_fifo;
  input sig_wr_fifo_6;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input sig_init_reg2;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input [0:0]E;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  input sig_cntl2s2mm_cmd_tvalid;
  input sig_init_done_7;
  input sig_init_done_8;
  input sig_init_done_9;
  input sig_init_done;
  input sig_init_done_0;
  input sig_init_done_1;
  input sig_init_done_2;
  input sig_init_done_3;
  input sig_init_done_4;

  wire [0:0]DI;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire \I_CMD_STATUS/I_CMD_FIFO/p_0_out ;
  wire [3:0]O;
  wire [3:0]S;
  wire [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] ;
  wire [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] ;
  wire [58:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] ;
  wire [3:0]\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  wire [37:0]in;
  wire [3:3]lsig_end_vect;
  wire [0:0]lsig_start_vect;
  wire m_axi_aclk;
  wire [15:0]p_1_in;
  wire p_1_in_0;
  wire [16:0]sel0;
  wire sig_addr_aligned_im0;
  wire sig_addr_aligned_ireg1;
  wire \sig_addr_cntr_im0_msh[0]_i_1_n_0 ;
  wire [15:0]sig_addr_cntr_im0_msh_reg;
  wire [3:0]\sig_addr_cntr_im0_msh_reg[11]_0 ;
  wire \sig_addr_cntr_im0_msh_reg[15]_0 ;
  wire [3:0]\sig_addr_cntr_im0_msh_reg[15]_1 ;
  wire [3:0]\sig_addr_cntr_im0_msh_reg[7]_0 ;
  wire [6:0]sig_addr_cntr_incr_ireg2;
  wire \sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ;
  wire \sig_addr_cntr_lsh_im0[15]_i_1_n_0 ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[10] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[11] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[12] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[13] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[14] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[6] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[7] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[8] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[9] ;
  wire [31:0]sig_addr_cntr_lsh_kh;
  wire sig_addr_incr_ge_bpdb_im1;
  wire [5:0]sig_adjusted_addr_incr_im1;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[5]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ;
  wire sig_brst_cnt_eq_one_im0;
  wire sig_brst_cnt_eq_one_ireg1;
  wire sig_brst_cnt_eq_one_ireg1_i_2_n_0;
  wire sig_brst_cnt_eq_one_ireg1_i_3_n_0;
  wire sig_brst_cnt_eq_one_ireg1_i_4_n_0;
  wire sig_brst_cnt_eq_one_ireg1_i_5_n_0;
  wire sig_brst_cnt_eq_zero_im0;
  wire sig_brst_cnt_eq_zero_ireg1;
  wire sig_brst_cnt_eq_zero_ireg1_i_2_n_0;
  wire sig_brst_cnt_eq_zero_ireg1_i_3_n_0;
  wire sig_brst_cnt_eq_zero_ireg1_i_4_n_0;
  wire sig_brst_cnt_eq_zero_ireg1_i_5_n_0;
  wire [22:0]sig_btt_cntr_im00;
  wire sig_btt_cntr_im00_carry__0_i_1_n_0;
  wire sig_btt_cntr_im00_carry__0_i_2_n_0;
  wire sig_btt_cntr_im00_carry__0_i_3_n_0;
  wire sig_btt_cntr_im00_carry__0_i_4_n_0;
  wire sig_btt_cntr_im00_carry__0_n_0;
  wire sig_btt_cntr_im00_carry__0_n_1;
  wire sig_btt_cntr_im00_carry__0_n_2;
  wire sig_btt_cntr_im00_carry__0_n_3;
  wire sig_btt_cntr_im00_carry__1_i_1_n_0;
  wire sig_btt_cntr_im00_carry__1_i_2_n_0;
  wire sig_btt_cntr_im00_carry__1_i_3_n_0;
  wire sig_btt_cntr_im00_carry__1_i_4_n_0;
  wire sig_btt_cntr_im00_carry__1_n_0;
  wire sig_btt_cntr_im00_carry__1_n_1;
  wire sig_btt_cntr_im00_carry__1_n_2;
  wire sig_btt_cntr_im00_carry__1_n_3;
  wire sig_btt_cntr_im00_carry__2_i_1_n_0;
  wire sig_btt_cntr_im00_carry__2_i_2_n_0;
  wire sig_btt_cntr_im00_carry__2_i_3_n_0;
  wire sig_btt_cntr_im00_carry__2_i_4_n_0;
  wire sig_btt_cntr_im00_carry__2_n_0;
  wire sig_btt_cntr_im00_carry__2_n_1;
  wire sig_btt_cntr_im00_carry__2_n_2;
  wire sig_btt_cntr_im00_carry__2_n_3;
  wire sig_btt_cntr_im00_carry__3_i_1_n_0;
  wire sig_btt_cntr_im00_carry__3_i_2_n_0;
  wire sig_btt_cntr_im00_carry__3_i_3_n_0;
  wire sig_btt_cntr_im00_carry__3_i_4_n_0;
  wire sig_btt_cntr_im00_carry__3_n_0;
  wire sig_btt_cntr_im00_carry__3_n_1;
  wire sig_btt_cntr_im00_carry__3_n_2;
  wire sig_btt_cntr_im00_carry__3_n_3;
  wire sig_btt_cntr_im00_carry__4_i_1_n_0;
  wire sig_btt_cntr_im00_carry__4_i_2_n_0;
  wire sig_btt_cntr_im00_carry__4_i_3_n_0;
  wire sig_btt_cntr_im00_carry__4_n_2;
  wire sig_btt_cntr_im00_carry__4_n_3;
  wire sig_btt_cntr_im00_carry_i_1_n_0;
  wire sig_btt_cntr_im00_carry_i_2_n_0;
  wire sig_btt_cntr_im00_carry_i_3_n_0;
  wire sig_btt_cntr_im00_carry_i_4_n_0;
  wire sig_btt_cntr_im00_carry_n_0;
  wire sig_btt_cntr_im00_carry_n_1;
  wire sig_btt_cntr_im00_carry_n_2;
  wire sig_btt_cntr_im00_carry_n_3;
  wire \sig_btt_cntr_im0[0]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[10]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[12]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[13]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[14]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[16]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[17]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[18]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[1]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[20]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[21]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[22]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[2]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[4]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[5]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[6]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[8]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[9]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg_n_0_[0] ;
  wire \sig_btt_cntr_im0_reg_n_0_[1] ;
  wire \sig_btt_cntr_im0_reg_n_0_[2] ;
  wire \sig_btt_cntr_im0_reg_n_0_[3] ;
  wire \sig_btt_cntr_im0_reg_n_0_[4] ;
  wire \sig_btt_cntr_im0_reg_n_0_[5] ;
  wire sig_btt_eq_b2mbaa_im0;
  wire sig_btt_eq_b2mbaa_ireg1;
  wire sig_btt_eq_b2mbaa_ireg1_i_2_n_0;
  wire sig_btt_eq_b2mbaa_ireg1_i_3_n_0;
  wire sig_btt_lt_b2mbaa_im0;
  wire sig_btt_lt_b2mbaa_im01;
  wire sig_btt_lt_b2mbaa_im01_carry_i_1_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_2_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_3_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_4_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_5_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_6_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_7_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_n_1;
  wire sig_btt_lt_b2mbaa_im01_carry_n_2;
  wire sig_btt_lt_b2mbaa_im01_carry_n_3;
  wire sig_btt_lt_b2mbaa_ireg1;
  wire [6:0]sig_bytes_to_mbaa_ireg1;
  wire \sig_bytes_to_mbaa_ireg1[1]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[2]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[3]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[4]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[5]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[6]_i_1_n_0 ;
  wire sig_calc_error_pushed;
  wire sig_calc_error_pushed_i_1_n_0;
  wire sig_calc_error_reg_reg_0;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2dre_valid_i_1_n_0;
  wire sig_cmd2dre_valid_reg_n_0;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_cntl2s2mm_cmd_tvalid;
  wire [1:0]sig_finish_addr_offset_im1;
  wire [1:0]sig_finish_addr_offset_ireg2;
  wire sig_first_xfer_im0;
  wire sig_first_xfer_im0_i_1_n_0;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_1;
  wire sig_init_done_2;
  wire sig_init_done_3;
  wire sig_init_done_4;
  wire sig_init_done_5;
  wire sig_init_done_7;
  wire sig_init_done_8;
  wire sig_init_done_9;
  wire sig_init_done_reg;
  wire sig_init_done_reg_0;
  wire sig_init_done_reg_1;
  wire sig_init_done_reg_2;
  wire sig_init_done_reg_3;
  wire sig_init_done_reg_4;
  wire sig_init_done_reg_5;
  wire sig_init_done_reg_6;
  wire sig_init_done_reg_7;
  wire sig_init_done_reg_8;
  wire sig_init_reg2;
  wire sig_input_cache_type_reg0;
  wire sig_input_eof_reg_reg_n_0;
  wire sig_input_reg_empty;
  wire [1:1]sig_last_addr_offset_im2__0;
  wire sig_last_xfer_valid_im1;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1_n_0;
  wire sig_ld_xfer_reg_tmp;
  wire sig_ld_xfer_reg_tmp_i_1_n_0;
  wire [5:0]sig_mbaa_addr_cntr_slice_im0;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_valid;
  wire [13:0]\sig_next_dre_dest_align_reg_reg[1] ;
  wire sig_no_btt_residue_im0;
  wire sig_no_btt_residue_ireg1;
  wire sig_parent_done;
  wire sig_parent_done_i_1_n_0;
  wire [2:0]sig_pcc_sm_state;
  wire \sig_pcc_sm_state[0]_i_2_n_0 ;
  wire \sig_pcc_sm_state[1]_i_2_n_0 ;
  wire [2:0]sig_pcc_sm_state_ns;
  wire sig_pop_xfer_reg0_out;
  wire [15:0]sig_predict_addr_lsh_im2;
  wire [15:15]sig_predict_addr_lsh_ireg3;
  wire \sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[0] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[10] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[11] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[12] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[13] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[14] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[1] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[2] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[3] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[4] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[5] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[6] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[7] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[8] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[9] ;
  wire sig_push_input_reg11_out;
  wire sig_sm_halt_ns;
  wire sig_sm_halt_reg;
  wire sig_sm_ld_calc1_reg;
  wire sig_sm_ld_calc1_reg_ns;
  wire sig_sm_ld_calc2_reg;
  wire sig_sm_ld_calc2_reg_ns;
  wire sig_sm_ld_calc3_reg;
  wire sig_sm_ld_calc3_reg_ns;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire [1:0]sig_strbgen_addr_ireg2;
  wire \sig_strbgen_bytes_ireg2[0]_i_1_n_0 ;
  wire \sig_strbgen_bytes_ireg2[1]_i_1_n_0 ;
  wire \sig_strbgen_bytes_ireg2[2]_i_1_n_0 ;
  wire \sig_strbgen_bytes_ireg2[2]_i_3_n_0 ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[0] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[1] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[2] ;
  wire sig_wr_fifo;
  wire sig_wr_fifo_6;
  wire [3:0]sig_xfer_end_strb_ireg3;
  wire \sig_xfer_end_strb_ireg3[1]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[3]_i_1_n_0 ;
  wire sig_xfer_len_eq_0_im2;
  wire sig_xfer_len_eq_0_ireg3;
  wire sig_xfer_reg_empty;
  wire sig_xfer_reg_empty_i_1_n_0;
  wire [3:0]sig_xfer_strt_strb_ireg3;
  wire \sig_xfer_strt_strb_ireg3[1]_i_1_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[2]_i_1_n_0 ;
  wire [3:2]NLW_sig_btt_cntr_im00_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_sig_btt_cntr_im00_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED;
  wire [3:3]\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [50]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[7]),
        .O(\sig_addr_cntr_im0_msh_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_i_2 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [49]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[6]),
        .O(\sig_addr_cntr_im0_msh_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_i_3 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [48]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[5]),
        .O(\sig_addr_cntr_im0_msh_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__0_i_4 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [47]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[4]),
        .O(\sig_addr_cntr_im0_msh_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [54]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[11]),
        .O(\sig_addr_cntr_im0_msh_reg[11]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_i_2 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [53]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[10]),
        .O(\sig_addr_cntr_im0_msh_reg[11]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_i_3 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [52]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[9]),
        .O(\sig_addr_cntr_im0_msh_reg[11]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__1_i_4 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [51]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[8]),
        .O(\sig_addr_cntr_im0_msh_reg[11]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [58]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[15]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_1 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_i_2 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [57]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[14]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_1 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_i_3 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [56]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[13]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry__2_i_4 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [55]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[12]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_1 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [43]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[0]),
        .O(DI));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry_i_2 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [46]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[3]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry_i_3 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [45]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry_i_4 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [44]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[1]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'hC5)) 
    \GEN_DM_FULL.I_DATAMOVER_FULL_carry_i_5 
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [43]),
        .I2(sig_push_input_reg11_out),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][10]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(sig_addr_cntr_lsh_kh[6]),
        .I2(in[36]),
        .O(in[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][11]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(sig_addr_cntr_lsh_kh[7]),
        .I2(in[36]),
        .O(in[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][12]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(sig_addr_cntr_lsh_kh[8]),
        .I2(in[36]),
        .O(in[8]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][13]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(sig_addr_cntr_lsh_kh[9]),
        .I2(in[36]),
        .O(in[9]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][14]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(sig_addr_cntr_lsh_kh[10]),
        .I2(in[36]),
        .O(in[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][14]_srl4_i_1__1 
       (.I0(sig_xfer_strt_strb_ireg3[0]),
        .I1(sig_first_xfer_im0),
        .O(\sig_next_dre_dest_align_reg_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][15]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(sig_addr_cntr_lsh_kh[11]),
        .I2(in[36]),
        .O(in[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][15]_srl4_i_1__1 
       (.I0(sig_xfer_strt_strb_ireg3[1]),
        .I1(sig_first_xfer_im0),
        .O(\sig_next_dre_dest_align_reg_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][16]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .I1(sig_addr_cntr_lsh_kh[12]),
        .I2(in[36]),
        .O(in[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][16]_srl4_i_1__1 
       (.I0(sig_xfer_strt_strb_ireg3[2]),
        .I1(sig_first_xfer_im0),
        .O(\sig_next_dre_dest_align_reg_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][17]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .I1(sig_addr_cntr_lsh_kh[13]),
        .I2(in[36]),
        .O(in[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][17]_srl4_i_1__1 
       (.I0(sig_xfer_strt_strb_ireg3[3]),
        .I1(sig_first_xfer_im0),
        .O(\sig_next_dre_dest_align_reg_reg[1] [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hBF80BFBF)) 
    \INFERRED_GEN.data_reg[3][18]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[0]),
        .I1(sig_xfer_len_eq_0_ireg3),
        .I2(sig_first_xfer_im0),
        .I3(sig_xfer_end_strb_ireg3[0]),
        .I4(sig_last_xfer_valid_im1),
        .O(\sig_next_dre_dest_align_reg_reg[1] [4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][18]_srl4_i_1__1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .I1(sig_addr_cntr_lsh_kh[14]),
        .I2(in[36]),
        .O(in[14]));
  LUT6 #(
    .INIT(64'h8F808F808F808080)) 
    \INFERRED_GEN.data_reg[3][18]_srl4_i_2 
       (.I0(sig_addr_aligned_ireg1),
        .I1(sig_brst_cnt_eq_one_ireg1),
        .I2(sig_no_btt_residue_ireg1),
        .I3(sig_brst_cnt_eq_zero_ireg1),
        .I4(sig_btt_eq_b2mbaa_ireg1),
        .I5(sig_btt_lt_b2mbaa_ireg1),
        .O(sig_last_xfer_valid_im1));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hBF80BFBF)) 
    \INFERRED_GEN.data_reg[3][19]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[1]),
        .I1(sig_xfer_len_eq_0_ireg3),
        .I2(sig_first_xfer_im0),
        .I3(sig_xfer_end_strb_ireg3[1]),
        .I4(sig_last_xfer_valid_im1),
        .O(\sig_next_dre_dest_align_reg_reg[1] [5]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][19]_srl4_i_1__1 
       (.I0(p_1_in_0),
        .I1(sig_addr_cntr_lsh_kh[15]),
        .I2(in[36]),
        .O(in[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hBF80BFBF)) 
    \INFERRED_GEN.data_reg[3][20]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[2]),
        .I1(sig_xfer_len_eq_0_ireg3),
        .I2(sig_first_xfer_im0),
        .I3(sig_xfer_end_strb_ireg3[2]),
        .I4(sig_last_xfer_valid_im1),
        .O(\sig_next_dre_dest_align_reg_reg[1] [6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][20]_srl4_i_1__1 
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(sig_addr_cntr_lsh_kh[16]),
        .I2(in[36]),
        .O(in[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hBF80BFBF)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[3]),
        .I1(sig_xfer_len_eq_0_ireg3),
        .I2(sig_first_xfer_im0),
        .I3(sig_xfer_end_strb_ireg3[3]),
        .I4(sig_last_xfer_valid_im1),
        .O(\sig_next_dre_dest_align_reg_reg[1] [7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_1__1 
       (.I0(sig_addr_cntr_im0_msh_reg[1]),
        .I1(sig_addr_cntr_lsh_kh[17]),
        .I2(in[36]),
        .O(in[17]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_1 
       (.I0(sig_input_eof_reg_reg_n_0),
        .I1(sig_first_xfer_im0),
        .O(\sig_next_dre_dest_align_reg_reg[1] [8]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[2]),
        .I1(sig_addr_cntr_lsh_kh[18]),
        .I2(in[36]),
        .O(in[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \INFERRED_GEN.data_reg[3][23]_srl4_i_1 
       (.I0(sig_input_eof_reg_reg_n_0),
        .I1(sig_last_xfer_valid_im1),
        .O(\sig_next_dre_dest_align_reg_reg[1] [9]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][23]_srl4_i_1__1 
       (.I0(sig_addr_cntr_im0_msh_reg[3]),
        .I1(sig_addr_cntr_lsh_kh[19]),
        .I2(in[36]),
        .O(in[19]));
  LUT6 #(
    .INIT(64'h001FFF1FFF1FFF1F)) 
    \INFERRED_GEN.data_reg[3][24]_srl4_i_1 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_btt_eq_b2mbaa_ireg1),
        .I2(sig_brst_cnt_eq_zero_ireg1),
        .I3(sig_no_btt_residue_ireg1),
        .I4(sig_brst_cnt_eq_one_ireg1),
        .I5(sig_addr_aligned_ireg1),
        .O(\sig_next_dre_dest_align_reg_reg[1] [10]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][24]_srl4_i_1__1 
       (.I0(sig_addr_cntr_im0_msh_reg[4]),
        .I1(sig_addr_cntr_lsh_kh[20]),
        .I2(in[36]),
        .O(in[20]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \INFERRED_GEN.data_reg[3][25]_srl4_i_1 
       (.I0(sig_last_xfer_valid_im1),
        .I1(in[37]),
        .O(\sig_next_dre_dest_align_reg_reg[1] [11]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][25]_srl4_i_1__1 
       (.I0(sig_addr_cntr_im0_msh_reg[5]),
        .I1(sig_addr_cntr_lsh_kh[21]),
        .I2(in[36]),
        .O(in[21]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][26]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[6]),
        .I1(sig_addr_cntr_lsh_kh[22]),
        .I2(in[36]),
        .O(in[22]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][27]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[7]),
        .I1(sig_addr_cntr_lsh_kh[23]),
        .I2(in[36]),
        .O(in[23]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][28]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[8]),
        .I1(sig_addr_cntr_lsh_kh[24]),
        .I2(in[36]),
        .O(in[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][29]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[9]),
        .I1(sig_addr_cntr_lsh_kh[25]),
        .I2(in[36]),
        .O(in[25]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][30]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[10]),
        .I1(sig_addr_cntr_lsh_kh[26]),
        .I2(in[36]),
        .O(in[26]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][31]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[11]),
        .I1(sig_addr_cntr_lsh_kh[27]),
        .I2(in[36]),
        .O(in[27]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][32]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[12]),
        .I1(sig_addr_cntr_lsh_kh[28]),
        .I2(in[36]),
        .O(in[28]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][33]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[13]),
        .I1(sig_addr_cntr_lsh_kh[29]),
        .I2(in[36]),
        .O(in[29]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][34]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[14]),
        .I1(sig_addr_cntr_lsh_kh[30]),
        .I2(in[36]),
        .O(in[30]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][35]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[15]),
        .I1(sig_addr_cntr_lsh_kh[31]),
        .I2(in[36]),
        .O(in[31]));
  LUT3 #(
    .INIT(8'hA9)) 
    \INFERRED_GEN.data_reg[3][36]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .O(in[32]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \INFERRED_GEN.data_reg[3][37]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .O(in[33]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \INFERRED_GEN.data_reg[3][38]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .O(in[34]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \INFERRED_GEN.data_reg[3][39]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .O(in[35]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][4]_srl4_i_2 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_addr_cntr_lsh_kh[0]),
        .I2(in[36]),
        .O(in[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][5]_srl4_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[1]),
        .I1(sig_addr_cntr_lsh_kh[1]),
        .I2(in[36]),
        .O(in[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][6]_srl4_i_1__1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(sig_addr_cntr_lsh_kh[2]),
        .I2(in[36]),
        .O(in[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][7]_srl4_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(sig_addr_cntr_lsh_kh[3]),
        .I2(in[36]),
        .O(in[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][8]_srl4_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(sig_addr_cntr_lsh_kh[4]),
        .I2(in[36]),
        .O(in[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][9]_srl4_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(sig_addr_cntr_lsh_kh[5]),
        .I2(in[36]),
        .O(in[5]));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_strb_gen2_4 I_STRT_STRB_GEN
       (.D({lsig_end_vect,lsig_start_vect}),
        .Q(sig_strbgen_addr_ireg2),
        .\sig_strbgen_bytes_ireg2_reg[0] (\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .\sig_strbgen_bytes_ireg2_reg[1] (\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .\sig_strbgen_bytes_ireg2_reg[2] (\sig_strbgen_bytes_ireg2_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hAE)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1 
       (.I0(\I_CMD_STATUS/I_CMD_FIFO/p_0_out ),
        .I1(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I2(sig_cntl2s2mm_cmd_tvalid),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_2 
       (.I0(sig_sm_halt_reg),
        .I1(sig_input_reg_empty),
        .I2(sig_calc_error_pushed),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(sig_init_done_5),
        .O(\I_CMD_STATUS/I_CMD_FIFO/p_0_out ));
  LUT6 #(
    .INIT(64'hC8C8C8C8C808C8C8)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1 
       (.I0(E),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_calc_error_pushed),
        .I4(sig_input_reg_empty),
        .I5(sig_sm_halt_reg),
        .O(\USE_SINGLE_REG.sig_regfifo_full_reg_reg ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_addr_aligned_ireg1_i_1
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(sig_mbaa_addr_cntr_slice_im0[4]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .I5(sig_mbaa_addr_cntr_slice_im0[2]),
        .O(sig_addr_aligned_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_aligned_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_addr_aligned_im0),
        .Q(sig_addr_aligned_ireg1),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \sig_addr_cntr_im0_msh[0]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(p_1_in_0),
        .I2(sig_pop_xfer_reg0_out),
        .I3(sig_predict_addr_lsh_ireg3),
        .O(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(O[0]),
        .Q(sig_addr_cntr_im0_msh_reg[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[10] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] [2]),
        .Q(sig_addr_cntr_im0_msh_reg[10]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[11] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] [3]),
        .Q(sig_addr_cntr_im0_msh_reg[11]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[12] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [0]),
        .Q(sig_addr_cntr_im0_msh_reg[12]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[13] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [1]),
        .Q(sig_addr_cntr_im0_msh_reg[13]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[14] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [2]),
        .Q(sig_addr_cntr_im0_msh_reg[14]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[15] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]_0 [3]),
        .Q(sig_addr_cntr_im0_msh_reg[15]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(O[1]),
        .Q(sig_addr_cntr_im0_msh_reg[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(O[2]),
        .Q(sig_addr_cntr_im0_msh_reg[2]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(O[3]),
        .Q(sig_addr_cntr_im0_msh_reg[3]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] [0]),
        .Q(sig_addr_cntr_im0_msh_reg[4]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] [1]),
        .Q(sig_addr_cntr_im0_msh_reg[5]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] [2]),
        .Q(sig_addr_cntr_im0_msh_reg[6]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] [3]),
        .Q(sig_addr_cntr_im0_msh_reg[7]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[8] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] [0]),
        .Q(sig_addr_cntr_im0_msh_reg[8]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[9] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] [1]),
        .Q(sig_addr_cntr_im0_msh_reg[9]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[0]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[0]),
        .O(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[1]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[1]),
        .O(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[2]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[2]),
        .O(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[3]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[3]),
        .O(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[4]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[4]),
        .O(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[5]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[5]),
        .O(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \sig_addr_cntr_incr_ireg2[6]_i_1 
       (.I0(sig_first_xfer_im0),
        .I1(sig_bytes_to_mbaa_ireg1[6]),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[2]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[3]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[4]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[5]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[6]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[0]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [27]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[0] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[10]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [37]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[10] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[11]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [38]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[11] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[12]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [39]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[12] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[13]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [40]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[13] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[14]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [41]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[14] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hEFAAEFAAEFEFEFEE)) 
    \sig_addr_cntr_lsh_im0[15]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(sig_wr_fifo),
        .I2(sig_mstr2data_cmd_valid),
        .I3(sig_wr_fifo_6),
        .I4(sig_cmd2dre_valid_reg_n_0),
        .I5(sig_mstr2addr_cmd_valid),
        .O(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[15]_i_2 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [42]),
        .I1(sig_predict_addr_lsh_ireg3),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[1]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [28]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[1] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[2]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [29]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[2] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[3]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [30]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[3] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[4]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [31]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[4] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[5]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [32]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[5] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[6]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [33]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[6] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[7]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [34]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[7] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[8]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [35]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[8] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[9]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [36]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[9] ),
        .I2(sig_push_input_reg11_out),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(sig_mbaa_addr_cntr_slice_im0[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[10] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[11] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[12] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[13] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[14] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[15] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(p_1_in_0),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(sig_mbaa_addr_cntr_slice_im0[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(sig_mbaa_addr_cntr_slice_im0[2]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(sig_mbaa_addr_cntr_slice_im0[3]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(sig_mbaa_addr_cntr_slice_im0[4]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(sig_mbaa_addr_cntr_slice_im0[5]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[8] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[9] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [27]),
        .Q(sig_addr_cntr_lsh_kh[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [37]),
        .Q(sig_addr_cntr_lsh_kh[10]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [38]),
        .Q(sig_addr_cntr_lsh_kh[11]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [39]),
        .Q(sig_addr_cntr_lsh_kh[12]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [40]),
        .Q(sig_addr_cntr_lsh_kh[13]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [41]),
        .Q(sig_addr_cntr_lsh_kh[14]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [42]),
        .Q(sig_addr_cntr_lsh_kh[15]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[16] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [43]),
        .Q(sig_addr_cntr_lsh_kh[16]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[17] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [44]),
        .Q(sig_addr_cntr_lsh_kh[17]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [45]),
        .Q(sig_addr_cntr_lsh_kh[18]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [46]),
        .Q(sig_addr_cntr_lsh_kh[19]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [28]),
        .Q(sig_addr_cntr_lsh_kh[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [47]),
        .Q(sig_addr_cntr_lsh_kh[20]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [48]),
        .Q(sig_addr_cntr_lsh_kh[21]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [49]),
        .Q(sig_addr_cntr_lsh_kh[22]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [50]),
        .Q(sig_addr_cntr_lsh_kh[23]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[24] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [51]),
        .Q(sig_addr_cntr_lsh_kh[24]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[25] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [52]),
        .Q(sig_addr_cntr_lsh_kh[25]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[26] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [53]),
        .Q(sig_addr_cntr_lsh_kh[26]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[27] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [54]),
        .Q(sig_addr_cntr_lsh_kh[27]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[28] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [55]),
        .Q(sig_addr_cntr_lsh_kh[28]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[29] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [56]),
        .Q(sig_addr_cntr_lsh_kh[29]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [29]),
        .Q(sig_addr_cntr_lsh_kh[2]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[30] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [57]),
        .Q(sig_addr_cntr_lsh_kh[30]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[31] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [58]),
        .Q(sig_addr_cntr_lsh_kh[31]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [30]),
        .Q(sig_addr_cntr_lsh_kh[3]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [31]),
        .Q(sig_addr_cntr_lsh_kh[4]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [32]),
        .Q(sig_addr_cntr_lsh_kh[5]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [33]),
        .Q(sig_addr_cntr_lsh_kh[6]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [34]),
        .Q(sig_addr_cntr_lsh_kh[7]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [35]),
        .Q(sig_addr_cntr_lsh_kh[8]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [36]),
        .Q(sig_addr_cntr_lsh_kh[9]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[0]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[0]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I4(sig_mbaa_addr_cntr_slice_im0[0]),
        .O(sig_adjusted_addr_incr_im1[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sig_adjusted_addr_incr_ireg2[1]_i_1 
       (.I0(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .O(sig_adjusted_addr_incr_im1[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h077FF880)) 
    \sig_adjusted_addr_incr_ireg2[2]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .I2(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .O(sig_adjusted_addr_incr_im1[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h556AAA6A)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ),
        .I1(sig_bytes_to_mbaa_ireg1[3]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(sig_adjusted_addr_incr_im1[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAA808000)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_2 
       (.I0(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .I3(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .I4(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h556AAA6A)) 
    \sig_adjusted_addr_incr_ireg2[4]_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2[5]_i_2_n_0 ),
        .I1(sig_bytes_to_mbaa_ireg1[4]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_adjusted_addr_incr_im1[4]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    \sig_adjusted_addr_incr_ireg2[5]_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2[5]_i_2_n_0 ),
        .I1(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .I2(sig_bytes_to_mbaa_ireg1[5]),
        .I3(sig_first_xfer_im0),
        .I4(sig_btt_lt_b2mbaa_ireg1),
        .I5(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .O(sig_adjusted_addr_incr_im1[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF8080000)) 
    \sig_adjusted_addr_incr_ireg2[5]_i_2 
       (.I0(sig_bytes_to_mbaa_ireg1[3]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I4(\sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ),
        .O(\sig_adjusted_addr_incr_ireg2[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[0]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[1]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[2]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[3]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[4]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[5]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    sig_brst_cnt_eq_one_ireg1_i_1
       (.I0(sel0[0]),
        .I1(sig_brst_cnt_eq_one_ireg1_i_2_n_0),
        .I2(sig_brst_cnt_eq_one_ireg1_i_3_n_0),
        .I3(sig_brst_cnt_eq_one_ireg1_i_4_n_0),
        .I4(sig_brst_cnt_eq_one_ireg1_i_5_n_0),
        .O(sig_brst_cnt_eq_one_im0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_one_ireg1_i_2
       (.I0(sel0[7]),
        .I1(sel0[8]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .O(sig_brst_cnt_eq_one_ireg1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_one_ireg1_i_3
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(sig_brst_cnt_eq_one_ireg1_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_one_ireg1_i_4
       (.I0(sel0[16]),
        .I1(sel0[15]),
        .I2(sel0[13]),
        .I3(sel0[14]),
        .O(sig_brst_cnt_eq_one_ireg1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_one_ireg1_i_5
       (.I0(sel0[11]),
        .I1(sel0[12]),
        .I2(sel0[9]),
        .I3(sel0[10]),
        .O(sig_brst_cnt_eq_one_ireg1_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_one_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_brst_cnt_eq_one_im0),
        .Q(sig_brst_cnt_eq_one_ireg1),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_brst_cnt_eq_zero_ireg1_i_1
       (.I0(sel0[15]),
        .I1(sig_brst_cnt_eq_zero_ireg1_i_2_n_0),
        .I2(sig_brst_cnt_eq_zero_ireg1_i_3_n_0),
        .I3(sig_brst_cnt_eq_zero_ireg1_i_4_n_0),
        .I4(sig_brst_cnt_eq_zero_ireg1_i_5_n_0),
        .O(sig_brst_cnt_eq_zero_im0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_zero_ireg1_i_2
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .O(sig_brst_cnt_eq_zero_ireg1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_zero_ireg1_i_3
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(sig_brst_cnt_eq_zero_ireg1_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_zero_ireg1_i_4
       (.I0(sel0[14]),
        .I1(sel0[16]),
        .I2(sel0[12]),
        .I3(sel0[13]),
        .O(sig_brst_cnt_eq_zero_ireg1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_zero_ireg1_i_5
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(sel0[8]),
        .I3(sel0[9]),
        .O(sig_brst_cnt_eq_zero_ireg1_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_zero_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_brst_cnt_eq_zero_im0),
        .Q(sig_brst_cnt_eq_zero_ireg1),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  CARRY4 sig_btt_cntr_im00_carry
       (.CI(1'b0),
        .CO({sig_btt_cntr_im00_carry_n_0,sig_btt_cntr_im00_carry_n_1,sig_btt_cntr_im00_carry_n_2,sig_btt_cntr_im00_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\sig_btt_cntr_im0_reg_n_0_[3] ,\sig_btt_cntr_im0_reg_n_0_[2] ,\sig_btt_cntr_im0_reg_n_0_[1] ,\sig_btt_cntr_im0_reg_n_0_[0] }),
        .O(sig_btt_cntr_im00[3:0]),
        .S({sig_btt_cntr_im00_carry_i_1_n_0,sig_btt_cntr_im00_carry_i_2_n_0,sig_btt_cntr_im00_carry_i_3_n_0,sig_btt_cntr_im00_carry_i_4_n_0}));
  CARRY4 sig_btt_cntr_im00_carry__0
       (.CI(sig_btt_cntr_im00_carry_n_0),
        .CO({sig_btt_cntr_im00_carry__0_n_0,sig_btt_cntr_im00_carry__0_n_1,sig_btt_cntr_im00_carry__0_n_2,sig_btt_cntr_im00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sel0[1:0],\sig_btt_cntr_im0_reg_n_0_[5] ,\sig_btt_cntr_im0_reg_n_0_[4] }),
        .O(sig_btt_cntr_im00[7:4]),
        .S({sig_btt_cntr_im00_carry__0_i_1_n_0,sig_btt_cntr_im00_carry__0_i_2_n_0,sig_btt_cntr_im00_carry__0_i_3_n_0,sig_btt_cntr_im00_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__0_i_1
       (.I0(sel0[1]),
        .O(sig_btt_cntr_im00_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry__0_i_2
       (.I0(sel0[0]),
        .I1(sig_addr_cntr_incr_ireg2[6]),
        .O(sig_btt_cntr_im00_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry__0_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_addr_cntr_incr_ireg2[5]),
        .O(sig_btt_cntr_im00_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry__0_i_4
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_addr_cntr_incr_ireg2[4]),
        .O(sig_btt_cntr_im00_carry__0_i_4_n_0));
  CARRY4 sig_btt_cntr_im00_carry__1
       (.CI(sig_btt_cntr_im00_carry__0_n_0),
        .CO({sig_btt_cntr_im00_carry__1_n_0,sig_btt_cntr_im00_carry__1_n_1,sig_btt_cntr_im00_carry__1_n_2,sig_btt_cntr_im00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sel0[5:2]),
        .O(sig_btt_cntr_im00[11:8]),
        .S({sig_btt_cntr_im00_carry__1_i_1_n_0,sig_btt_cntr_im00_carry__1_i_2_n_0,sig_btt_cntr_im00_carry__1_i_3_n_0,sig_btt_cntr_im00_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__1_i_1
       (.I0(sel0[5]),
        .O(sig_btt_cntr_im00_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__1_i_2
       (.I0(sel0[4]),
        .O(sig_btt_cntr_im00_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__1_i_3
       (.I0(sel0[3]),
        .O(sig_btt_cntr_im00_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__1_i_4
       (.I0(sel0[2]),
        .O(sig_btt_cntr_im00_carry__1_i_4_n_0));
  CARRY4 sig_btt_cntr_im00_carry__2
       (.CI(sig_btt_cntr_im00_carry__1_n_0),
        .CO({sig_btt_cntr_im00_carry__2_n_0,sig_btt_cntr_im00_carry__2_n_1,sig_btt_cntr_im00_carry__2_n_2,sig_btt_cntr_im00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(sel0[9:6]),
        .O(sig_btt_cntr_im00[15:12]),
        .S({sig_btt_cntr_im00_carry__2_i_1_n_0,sig_btt_cntr_im00_carry__2_i_2_n_0,sig_btt_cntr_im00_carry__2_i_3_n_0,sig_btt_cntr_im00_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__2_i_1
       (.I0(sel0[9]),
        .O(sig_btt_cntr_im00_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__2_i_2
       (.I0(sel0[8]),
        .O(sig_btt_cntr_im00_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__2_i_3
       (.I0(sel0[7]),
        .O(sig_btt_cntr_im00_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__2_i_4
       (.I0(sel0[6]),
        .O(sig_btt_cntr_im00_carry__2_i_4_n_0));
  CARRY4 sig_btt_cntr_im00_carry__3
       (.CI(sig_btt_cntr_im00_carry__2_n_0),
        .CO({sig_btt_cntr_im00_carry__3_n_0,sig_btt_cntr_im00_carry__3_n_1,sig_btt_cntr_im00_carry__3_n_2,sig_btt_cntr_im00_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(sel0[13:10]),
        .O(sig_btt_cntr_im00[19:16]),
        .S({sig_btt_cntr_im00_carry__3_i_1_n_0,sig_btt_cntr_im00_carry__3_i_2_n_0,sig_btt_cntr_im00_carry__3_i_3_n_0,sig_btt_cntr_im00_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__3_i_1
       (.I0(sel0[13]),
        .O(sig_btt_cntr_im00_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__3_i_2
       (.I0(sel0[12]),
        .O(sig_btt_cntr_im00_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__3_i_3
       (.I0(sel0[11]),
        .O(sig_btt_cntr_im00_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__3_i_4
       (.I0(sel0[10]),
        .O(sig_btt_cntr_im00_carry__3_i_4_n_0));
  CARRY4 sig_btt_cntr_im00_carry__4
       (.CI(sig_btt_cntr_im00_carry__3_n_0),
        .CO({NLW_sig_btt_cntr_im00_carry__4_CO_UNCONNECTED[3:2],sig_btt_cntr_im00_carry__4_n_2,sig_btt_cntr_im00_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sel0[15:14]}),
        .O({NLW_sig_btt_cntr_im00_carry__4_O_UNCONNECTED[3],sig_btt_cntr_im00[22:20]}),
        .S({1'b0,sig_btt_cntr_im00_carry__4_i_1_n_0,sig_btt_cntr_im00_carry__4_i_2_n_0,sig_btt_cntr_im00_carry__4_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__4_i_1
       (.I0(sel0[16]),
        .O(sig_btt_cntr_im00_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__4_i_2
       (.I0(sel0[15]),
        .O(sig_btt_cntr_im00_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__4_i_3
       (.I0(sel0[14]),
        .O(sig_btt_cntr_im00_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_addr_cntr_incr_ireg2[3]),
        .O(sig_btt_cntr_im00_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_addr_cntr_incr_ireg2[2]),
        .O(sig_btt_cntr_im00_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_addr_cntr_incr_ireg2[1]),
        .O(sig_btt_cntr_im00_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry_i_4
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_addr_cntr_incr_ireg2[0]),
        .O(sig_btt_cntr_im00_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[0]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [0]),
        .I1(sig_btt_cntr_im00[0]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[10]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [10]),
        .I1(sig_btt_cntr_im00[10]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[11]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [11]),
        .I1(sig_btt_cntr_im00[11]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[12]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [12]),
        .I1(sig_btt_cntr_im00[12]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[13]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [13]),
        .I1(sig_btt_cntr_im00[13]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[14]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [14]),
        .I1(sig_btt_cntr_im00[14]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[15]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [15]),
        .I1(sig_btt_cntr_im00[15]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[16]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [16]),
        .I1(sig_btt_cntr_im00[16]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[17]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [17]),
        .I1(sig_btt_cntr_im00[17]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[18]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [18]),
        .I1(sig_btt_cntr_im00[18]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[19]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [19]),
        .I1(sig_btt_cntr_im00[19]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[1]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [1]),
        .I1(sig_btt_cntr_im00[1]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[20]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [20]),
        .I1(sig_btt_cntr_im00[20]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[21]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [21]),
        .I1(sig_btt_cntr_im00[21]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[22]_i_1__0 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [22]),
        .I1(sig_btt_cntr_im00[22]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[2]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [2]),
        .I1(sig_btt_cntr_im00[2]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[3]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [3]),
        .I1(sig_btt_cntr_im00[3]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[4]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [4]),
        .I1(sig_btt_cntr_im00[4]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[5]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [5]),
        .I1(sig_btt_cntr_im00[5]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[6]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [6]),
        .I1(sig_btt_cntr_im00[6]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[7]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [7]),
        .I1(sig_btt_cntr_im00[7]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[8]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [8]),
        .I1(sig_btt_cntr_im00[8]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[9]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [9]),
        .I1(sig_btt_cntr_im00[9]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[0]_i_1_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[10] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[10]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[11] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[11]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[12] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[12]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[13] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[13]_i_1_n_0 ),
        .Q(sel0[7]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[14] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[14]_i_1_n_0 ),
        .Q(sel0[8]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[15] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[15]_i_1_n_0 ),
        .Q(sel0[9]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[16] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[16]_i_1_n_0 ),
        .Q(sel0[10]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[17] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[17]_i_1_n_0 ),
        .Q(sel0[11]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[18] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[18]_i_1_n_0 ),
        .Q(sel0[12]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[19] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[19]_i_1_n_0 ),
        .Q(sel0[13]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[1]_i_1_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[20] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[20]_i_1_n_0 ),
        .Q(sel0[14]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[21] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[21]_i_1_n_0 ),
        .Q(sel0[15]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[22] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[22]_i_1__0_n_0 ),
        .Q(sel0[16]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[2]_i_1_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[3]_i_1_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[4]_i_1_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[5]_i_1_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[6]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[7]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[8] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[8]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[9] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[9]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    sig_btt_eq_b2mbaa_ireg1_i_1
       (.I0(\sig_bytes_to_mbaa_ireg1[6]_i_1_n_0 ),
        .I1(sig_btt_eq_b2mbaa_ireg1_i_2_n_0),
        .I2(sig_btt_eq_b2mbaa_ireg1_i_3_n_0),
        .I3(sig_brst_cnt_eq_zero_im0),
        .O(sig_btt_eq_b2mbaa_im0));
  LUT6 #(
    .INIT(64'h0210084020048001)) 
    sig_btt_eq_b2mbaa_ireg1_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_btt_eq_b2mbaa_ireg1_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(\sig_bytes_to_mbaa_ireg1[3]_i_1_n_0 ),
        .I2(\sig_bytes_to_mbaa_ireg1[5]_i_1_n_0 ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I4(\sig_bytes_to_mbaa_ireg1[4]_i_1_n_0 ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_eq_b2mbaa_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_btt_eq_b2mbaa_im0),
        .Q(sig_btt_eq_b2mbaa_ireg1),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  CARRY4 sig_btt_lt_b2mbaa_im01_carry
       (.CI(1'b0),
        .CO({sig_btt_lt_b2mbaa_im01,sig_btt_lt_b2mbaa_im01_carry_n_1,sig_btt_lt_b2mbaa_im01_carry_n_2,sig_btt_lt_b2mbaa_im01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,sig_btt_lt_b2mbaa_im01_carry_i_1_n_0,sig_btt_lt_b2mbaa_im01_carry_i_2_n_0,sig_btt_lt_b2mbaa_im01_carry_i_3_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED[3:0]),
        .S({sig_btt_lt_b2mbaa_im01_carry_i_4_n_0,sig_btt_lt_b2mbaa_im01_carry_i_5_n_0,sig_btt_lt_b2mbaa_im01_carry_i_6_n_0,sig_btt_lt_b2mbaa_im01_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    sig_btt_lt_b2mbaa_im01_carry_i_1
       (.I0(\sig_bytes_to_mbaa_ireg1[4]_i_1_n_0 ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I3(\sig_bytes_to_mbaa_ireg1[5]_i_1_n_0 ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0101011337373770)) 
    sig_btt_lt_b2mbaa_im01_carry_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I2(sig_mbaa_addr_cntr_slice_im0[2]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(sig_mbaa_addr_cntr_slice_im0[0]),
        .I5(sig_mbaa_addr_cntr_slice_im0[3]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h1370)) 
    sig_btt_lt_b2mbaa_im01_carry_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_btt_lt_b2mbaa_im01_carry_i_4
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(sig_mbaa_addr_cntr_slice_im0[3]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(sig_mbaa_addr_cntr_slice_im0[2]),
        .I5(sig_mbaa_addr_cntr_slice_im0[4]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_5
       (.I0(\sig_bytes_to_mbaa_ireg1[4]_i_1_n_0 ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(\sig_bytes_to_mbaa_ireg1[5]_i_1_n_0 ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    sig_btt_lt_b2mbaa_im01_carry_i_6
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h1881)) 
    sig_btt_lt_b2mbaa_im01_carry_i_7
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_btt_lt_b2mbaa_ireg1_i_1
       (.I0(sig_btt_lt_b2mbaa_im01),
        .I1(sig_brst_cnt_eq_zero_im0),
        .O(sig_btt_lt_b2mbaa_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_lt_b2mbaa_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_btt_lt_b2mbaa_im0),
        .Q(sig_btt_lt_b2mbaa_ireg1),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sig_bytes_to_mbaa_ireg1[1]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(\sig_bytes_to_mbaa_ireg1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \sig_bytes_to_mbaa_ireg1[2]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_mbaa_addr_cntr_slice_im0[1]),
        .I2(sig_mbaa_addr_cntr_slice_im0[2]),
        .O(\sig_bytes_to_mbaa_ireg1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \sig_bytes_to_mbaa_ireg1[3]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(sig_mbaa_addr_cntr_slice_im0[1]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[3]),
        .O(\sig_bytes_to_mbaa_ireg1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[2]),
        .I4(sig_mbaa_addr_cntr_slice_im0[4]),
        .O(\sig_bytes_to_mbaa_ireg1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \sig_bytes_to_mbaa_ireg1[5]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .I5(sig_mbaa_addr_cntr_slice_im0[5]),
        .O(\sig_bytes_to_mbaa_ireg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sig_bytes_to_mbaa_ireg1[6]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .I5(sig_mbaa_addr_cntr_slice_im0[5]),
        .O(\sig_bytes_to_mbaa_ireg1[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[0]),
        .Q(sig_bytes_to_mbaa_ireg1[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[1]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[2]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[2]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[3]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[3]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[4]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[4]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[5]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[5]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[6]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[6]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1
       (.I0(in[37]),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_calc_error_pushed),
        .O(sig_calc_error_pushed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_pushed_i_1_n_0),
        .Q(sig_calc_error_pushed),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_reg_reg_0),
        .Q(in[37]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAAE)) 
    sig_cmd2addr_valid_i_1
       (.I0(sig_mstr2addr_cmd_valid),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_pcc_sm_state[1]),
        .I4(sig_wr_fifo_6),
        .I5(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_mstr2addr_cmd_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000AAAE)) 
    sig_cmd2data_valid_i_1
       (.I0(sig_mstr2data_cmd_valid),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_pcc_sm_state[1]),
        .I4(sig_wr_fifo),
        .I5(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_mstr2data_cmd_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    sig_cmd2dre_valid_i_1
       (.I0(sig_pcc_sm_state[1]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[2]),
        .I3(sig_first_xfer_im0),
        .I4(sig_cmd2dre_valid_reg_n_0),
        .I5(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .O(sig_cmd2dre_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1_n_0),
        .Q(sig_cmd2dre_valid_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h556AAA6A)) 
    \sig_finish_addr_offset_ireg2[0]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(sig_finish_addr_offset_im1[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sig_finish_addr_offset_ireg2[1]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .I2(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(sig_finish_addr_offset_im1[1]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[0]),
        .Q(sig_finish_addr_offset_ireg2[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[1]),
        .Q(sig_finish_addr_offset_ireg2[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    sig_first_xfer_im0_i_1
       (.I0(sig_first_xfer_im0),
        .I1(sig_push_input_reg11_out),
        .I2(sig_pop_xfer_reg0_out),
        .I3(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .O(sig_first_xfer_im0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_xfer_im0_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_first_xfer_im0_i_1_n_0),
        .Q(sig_first_xfer_im0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done_5),
        .O(sig_init_done_reg));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__0
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done_7),
        .O(sig_init_done_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__1
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done_8),
        .O(sig_init_done_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__2
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done_9),
        .O(sig_init_done_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__3
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done),
        .O(sig_init_done_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__4
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done_0),
        .O(sig_init_done_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__5
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done_1),
        .O(sig_init_done_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__6
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done_2),
        .O(sig_init_done_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__7
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done_3),
        .O(sig_init_done_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__8
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_init_reg2),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I3(sig_init_done_4),
        .O(sig_init_done_reg_8));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_input_burst_type_reg_i_1
       (.I0(sig_calc_error_pushed),
        .I1(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I2(sig_sm_pop_input_reg),
        .O(sig_input_cache_type_reg0));
  LUT4 #(
    .INIT(16'h0400)) 
    sig_input_burst_type_reg_i_2
       (.I0(in[37]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(sig_push_input_reg11_out));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [23]),
        .Q(in[36]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_dsa_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [24]),
        .Q(\sig_next_dre_dest_align_reg_reg[1] [12]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_dsa_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [25]),
        .Q(\sig_next_dre_dest_align_reg_reg[1] [13]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] [26]),
        .Q(sig_input_eof_reg_reg_n_0),
        .R(sig_input_cache_type_reg0));
  FDSE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(1'b0),
        .Q(sig_input_reg_empty),
        .S(sig_input_cache_type_reg0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h9)) 
    sig_last_addr_offset_im2
       (.I0(sig_finish_addr_offset_ireg2[1]),
        .I1(sig_finish_addr_offset_ireg2[0]),
        .O(sig_last_addr_offset_im2__0));
  LUT6 #(
    .INIT(64'h000000000002FF02)) 
    sig_ld_xfer_reg_i_1
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_ld_xfer_reg),
        .I4(sig_xfer_reg_empty),
        .I5(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .O(sig_ld_xfer_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000AAAE)) 
    sig_ld_xfer_reg_tmp_i_1
       (.I0(sig_ld_xfer_reg_tmp),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_pcc_sm_state[1]),
        .I4(sig_pop_xfer_reg0_out),
        .I5(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .O(sig_ld_xfer_reg_tmp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_tmp_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_tmp_i_1_n_0),
        .Q(sig_ld_xfer_reg_tmp),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_mmap_reset_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .Q(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_no_btt_residue_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_no_btt_residue_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_no_btt_residue_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_no_btt_residue_im0),
        .Q(sig_no_btt_residue_ireg1),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    sig_parent_done_i_1
       (.I0(sig_parent_done),
        .I1(sig_ld_xfer_reg_tmp),
        .I2(sig_last_xfer_valid_im1),
        .I3(sig_push_input_reg11_out),
        .I4(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .O(sig_parent_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_parent_done_i_1_n_0),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCBB03FFFFBB03FF)) 
    \sig_pcc_sm_state[0]_i_1 
       (.I0(\sig_pcc_sm_state[0]_i_2_n_0 ),
        .I1(sig_pcc_sm_state[1]),
        .I2(sig_push_input_reg11_out),
        .I3(sig_pcc_sm_state[0]),
        .I4(sig_pcc_sm_state[2]),
        .I5(sig_pop_xfer_reg0_out),
        .O(sig_pcc_sm_state_ns[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_pcc_sm_state[0]_i_2 
       (.I0(sig_calc_error_pushed),
        .I1(sig_parent_done),
        .O(\sig_pcc_sm_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFB0CCB0C3B0C0B0)) 
    \sig_pcc_sm_state[1]_i_1 
       (.I0(\sig_pcc_sm_state[1]_i_2_n_0 ),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_pcc_sm_state[0]),
        .I4(sig_push_input_reg11_out),
        .I5(sig_pop_xfer_reg0_out),
        .O(sig_pcc_sm_state_ns[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sig_pcc_sm_state[1]_i_2 
       (.I0(sig_calc_error_pushed),
        .I1(sig_parent_done),
        .O(\sig_pcc_sm_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F4F5F400F400F4)) 
    \sig_pcc_sm_state[1]_i_3 
       (.I0(sig_mstr2addr_cmd_valid),
        .I1(sig_cmd2dre_valid_reg_n_0),
        .I2(sig_wr_fifo_6),
        .I3(sig_mstr2data_cmd_valid),
        .I4(FIFO_Full_reg),
        .I5(sig_inhibit_rdy_n),
        .O(sig_pop_xfer_reg0_out));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEAF0)) 
    \sig_pcc_sm_state[2]_i_1 
       (.I0(sig_pcc_sm_state[0]),
        .I1(sig_calc_error_pushed),
        .I2(sig_pcc_sm_state[2]),
        .I3(sig_pcc_sm_state[1]),
        .O(sig_pcc_sm_state_ns[2]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_pcc_sm_state_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pcc_sm_state_ns[0]),
        .Q(sig_pcc_sm_state[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_pcc_sm_state_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pcc_sm_state_ns[1]),
        .Q(sig_pcc_sm_state[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_pcc_sm_state_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pcc_sm_state_ns[2]),
        .Q(sig_pcc_sm_state[2]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(sig_addr_cntr_incr_ireg2[3]),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_3 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(sig_addr_cntr_incr_ireg2[2]),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice_im0[1]),
        .I1(sig_addr_cntr_incr_ireg2[1]),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_5 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_addr_cntr_incr_ireg2[0]),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(sig_addr_cntr_incr_ireg2[6]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(sig_addr_cntr_incr_ireg2[5]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_5 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(sig_addr_cntr_incr_ireg2[4]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[0]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[0] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[10]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[10] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[11]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[11] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[11]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ),
        .CO({\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[11] ,\sig_addr_cntr_lsh_im0_reg_n_0_[10] ,\sig_addr_cntr_lsh_im0_reg_n_0_[9] ,\sig_addr_cntr_lsh_im0_reg_n_0_[8] }),
        .O(sig_predict_addr_lsh_im2[11:8]),
        .S({\sig_addr_cntr_lsh_im0_reg_n_0_[11] ,\sig_addr_cntr_lsh_im0_reg_n_0_[10] ,\sig_addr_cntr_lsh_im0_reg_n_0_[9] ,\sig_addr_cntr_lsh_im0_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[12]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[12] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[13]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[13] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[14]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[14] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[15]),
        .Q(sig_predict_addr_lsh_ireg3),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[15]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0 ),
        .CO({\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED [3],\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_addr_cntr_lsh_im0_reg_n_0_[12] }),
        .O(sig_predict_addr_lsh_im2[15:12]),
        .S({p_1_in_0,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_addr_cntr_lsh_im0_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[1]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[1] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[2]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[2] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[3]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[3] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sig_mbaa_addr_cntr_slice_im0[3:0]),
        .O(sig_predict_addr_lsh_im2[3:0]),
        .S({\sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[4]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[4] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[5]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[5] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[6]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[6] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[7]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[7] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[7]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0 ),
        .CO({\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[7] ,\sig_addr_cntr_lsh_im0_reg_n_0_[6] ,sig_mbaa_addr_cntr_slice_im0[5:4]}),
        .O(sig_predict_addr_lsh_im2[7:4]),
        .S({\sig_addr_cntr_lsh_im0_reg_n_0_[7] ,\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[8]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[8] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[9]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[9] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hA181)) 
    sig_sm_halt_reg_i_1
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_calc_error_pushed),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_sm_halt_reg),
        .S(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h0008000800083008)) 
    sig_sm_ld_calc1_reg_i_1
       (.I0(sig_push_input_reg11_out),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[2]),
        .I3(sig_pcc_sm_state[1]),
        .I4(sig_parent_done),
        .I5(sig_calc_error_pushed),
        .O(sig_sm_ld_calc1_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc1_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc1_reg_ns),
        .Q(sig_sm_ld_calc1_reg),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h02)) 
    sig_sm_ld_calc2_reg_i_1
       (.I0(sig_pcc_sm_state[1]),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .O(sig_sm_ld_calc2_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc2_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg_ns),
        .Q(sig_sm_ld_calc2_reg),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_sm_ld_calc3_reg_i_1
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[1]),
        .O(sig_sm_ld_calc3_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc3_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc3_reg_ns),
        .Q(sig_sm_ld_calc3_reg),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    sig_sm_pop_input_reg_i_1
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_parent_done),
        .I3(sig_calc_error_pushed),
        .I4(sig_pcc_sm_state[1]),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[0]),
        .Q(sig_strbgen_addr_ireg2[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[1]),
        .Q(sig_strbgen_addr_ireg2[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h15100500)) 
    \sig_strbgen_bytes_ireg2[0]_i_1 
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_addr_incr_ge_bpdb_im1),
        .I2(sig_sm_ld_calc2_reg),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I4(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .O(\sig_strbgen_bytes_ireg2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h15100500)) 
    \sig_strbgen_bytes_ireg2[1]_i_1 
       (.I0(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .I1(sig_addr_incr_ge_bpdb_im1),
        .I2(sig_sm_ld_calc2_reg),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .O(\sig_strbgen_bytes_ireg2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBC8)) 
    \sig_strbgen_bytes_ireg2[2]_i_1 
       (.I0(sig_addr_incr_ge_bpdb_im1),
        .I1(sig_sm_ld_calc2_reg),
        .I2(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(\sig_strbgen_bytes_ireg2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFDFDFD5DF)) 
    \sig_strbgen_bytes_ireg2[2]_i_2 
       (.I0(\sig_strbgen_bytes_ireg2[2]_i_3_n_0 ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(sig_first_xfer_im0),
        .I4(sig_bytes_to_mbaa_ireg1[5]),
        .I5(sig_bytes_to_mbaa_ireg1[6]),
        .O(sig_addr_incr_ge_bpdb_im1));
  LUT6 #(
    .INIT(64'h0000000000004777)) 
    \sig_strbgen_bytes_ireg2[2]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[3]),
        .I4(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .I5(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .O(\sig_strbgen_bytes_ireg2[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_ireg2[0]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_ireg2[1]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_ireg2[2]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_xfer_end_strb_ireg3[1]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[1]),
        .I1(sig_finish_addr_offset_ireg2[0]),
        .O(\sig_xfer_end_strb_ireg3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sig_xfer_end_strb_ireg3[3]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[1]),
        .I1(sig_finish_addr_offset_ireg2[0]),
        .O(\sig_xfer_end_strb_ireg3[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(1'b1),
        .Q(sig_xfer_end_strb_ireg3[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[1]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_last_addr_offset_im2__0),
        .Q(sig_xfer_end_strb_ireg3[2]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[3]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[3]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h0000000000011110)) 
    sig_xfer_len_eq_0_ireg3_i_1
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .O(sig_xfer_len_eq_0_im2));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_len_eq_0_ireg3_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_len_eq_0_im2),
        .Q(sig_xfer_len_eq_0_ireg3),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hFF2E)) 
    sig_xfer_reg_empty_i_1
       (.I0(sig_pop_xfer_reg0_out),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(\sig_addr_cntr_im0_msh_reg[15]_0 ),
        .O(sig_xfer_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_xfer_reg_empty_i_1_n_0),
        .Q(sig_xfer_reg_empty),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \sig_xfer_strt_strb_ireg3[1]_i_1 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I2(sig_strbgen_addr_ireg2[0]),
        .I3(sig_strbgen_addr_ireg2[1]),
        .O(\sig_xfer_strt_strb_ireg3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00FC7FEC)) 
    \sig_xfer_strt_strb_ireg3[2]_i_1 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(sig_strbgen_addr_ireg2[1]),
        .I4(sig_strbgen_addr_ireg2[0]),
        .O(\sig_xfer_strt_strb_ireg3[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(lsig_start_vect),
        .Q(sig_xfer_strt_strb_ireg3[0]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_strt_strb_ireg3[1]_i_1_n_0 ),
        .Q(sig_xfer_strt_strb_ireg3[1]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_strt_strb_ireg3[2]_i_1_n_0 ),
        .Q(sig_xfer_strt_strb_ireg3[2]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(lsig_end_vect),
        .Q(sig_xfer_strt_strb_ireg3[3]),
        .R(\sig_addr_cntr_im0_msh_reg[15]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_datamover_pcc" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_pcc__parameterized0
   (p_17_out,
    sig_calc_error_pushed_reg_0,
    p_1_out,
    p_12_out,
    sig_push_input_reg11_out,
    in,
    cntlr2reg_interr_set0__2,
    \sig_next_addr_reg_reg[31] ,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg ,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    sig_init_reg,
    m_axi_aclk,
    sig_calc_error_reg_reg_0,
    Q,
    sig_cmd2mstr_cmd_valid,
    sig_init_done,
    sig_wr_fifo,
    sig_wr_fifo_0,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    sig_mm2s_interr,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_s2mm_interr,
    p_35_out,
    sig_sm_ld_cmd_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    sig_cntl2s2mm_cmd_tvalid);
  output [0:0]p_17_out;
  output sig_calc_error_pushed_reg_0;
  output p_1_out;
  output p_12_out;
  output sig_push_input_reg11_out;
  output [14:0]in;
  output cntlr2reg_interr_set0__2;
  output [31:0]\sig_next_addr_reg_reg[31] ;
  output \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  input sig_init_reg;
  input m_axi_aclk;
  input sig_calc_error_reg_reg_0;
  input [56:0]Q;
  input sig_cmd2mstr_cmd_valid;
  input sig_init_done;
  input sig_wr_fifo;
  input sig_wr_fifo_0;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input sig_mm2s_interr;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_s2mm_interr;
  input p_35_out;
  input [0:0]sig_sm_ld_cmd_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  input sig_cntl2s2mm_cmd_tvalid;

  wire FIFO_Full_reg;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire \I_CMD_STATUS/I_CMD_FIFO/p_0_out ;
  wire [56:0]Q;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  wire cntlr2reg_interr_set0__2;
  wire [14:0]in;
  wire [3:3]lsig_end_vect;
  wire [0:0]lsig_start_vect;
  wire m_axi_aclk;
  wire p_12_out;
  wire [0:0]p_17_out;
  wire p_1_in;
  wire p_1_out;
  wire p_35_out;
  wire [16:0]sel0;
  wire sig_addr_aligned_im0;
  wire sig_addr_aligned_ireg1;
  wire \sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_4_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_5_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_6_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_7_n_0 ;
  wire \sig_addr_cntr_im0_msh[12]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[12]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[12]_i_4_n_0 ;
  wire \sig_addr_cntr_im0_msh[12]_i_5_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_4_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_5_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_4_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_5_n_0 ;
  wire [15:0]sig_addr_cntr_im0_msh_reg;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_1 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_2 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_3 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_4 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_5 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_6 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_7 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_1 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_2 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_3 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_4 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_5 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_6 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_7 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_0 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_1 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_2 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_3 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_4 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_5 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_6 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_7 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_0 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_1 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_2 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_3 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_4 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_5 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_6 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_7 ;
  wire [6:0]sig_addr_cntr_incr_ireg2;
  wire \sig_addr_cntr_incr_ireg2[0]_i_1__0_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[1]_i_1__0_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[2]_i_1__0_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[3]_i_1__0_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[4]_i_1__0_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[5]_i_1__0_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[6]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[0]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[10]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[11]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[12]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[13]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[14]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[15]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[1]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[2]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[3]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[4]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[5]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[6]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[7]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[8]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0[9]_i_1__0_n_0 ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[10] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[11] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[12] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[13] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[14] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[6] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[7] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[8] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[9] ;
  wire [31:0]sig_addr_cntr_lsh_kh;
  wire sig_addr_incr_ge_bpdb_im1;
  wire [5:0]sig_adjusted_addr_incr_im1;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_2__0_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[5]_i_2__0_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ;
  wire sig_brst_cnt_eq_one_im0;
  wire sig_brst_cnt_eq_one_ireg1;
  wire sig_brst_cnt_eq_one_ireg1_i_2__0_n_0;
  wire sig_brst_cnt_eq_one_ireg1_i_3__0_n_0;
  wire sig_brst_cnt_eq_one_ireg1_i_4__0_n_0;
  wire sig_brst_cnt_eq_one_ireg1_i_5__0_n_0;
  wire sig_brst_cnt_eq_zero_im0;
  wire sig_brst_cnt_eq_zero_ireg1;
  wire sig_brst_cnt_eq_zero_ireg1_i_2__0_n_0;
  wire sig_brst_cnt_eq_zero_ireg1_i_3__0_n_0;
  wire sig_brst_cnt_eq_zero_ireg1_i_4__0_n_0;
  wire sig_brst_cnt_eq_zero_ireg1_i_5__0_n_0;
  wire [22:0]sig_btt_cntr_im00;
  wire sig_btt_cntr_im00_carry__0_i_1__0_n_0;
  wire sig_btt_cntr_im00_carry__0_i_2__0_n_0;
  wire sig_btt_cntr_im00_carry__0_i_3__0_n_0;
  wire sig_btt_cntr_im00_carry__0_i_4__0_n_0;
  wire sig_btt_cntr_im00_carry__0_n_0;
  wire sig_btt_cntr_im00_carry__0_n_1;
  wire sig_btt_cntr_im00_carry__0_n_2;
  wire sig_btt_cntr_im00_carry__0_n_3;
  wire sig_btt_cntr_im00_carry__1_i_1__0_n_0;
  wire sig_btt_cntr_im00_carry__1_i_2__0_n_0;
  wire sig_btt_cntr_im00_carry__1_i_3__0_n_0;
  wire sig_btt_cntr_im00_carry__1_i_4__0_n_0;
  wire sig_btt_cntr_im00_carry__1_n_0;
  wire sig_btt_cntr_im00_carry__1_n_1;
  wire sig_btt_cntr_im00_carry__1_n_2;
  wire sig_btt_cntr_im00_carry__1_n_3;
  wire sig_btt_cntr_im00_carry__2_i_1__0_n_0;
  wire sig_btt_cntr_im00_carry__2_i_2__0_n_0;
  wire sig_btt_cntr_im00_carry__2_i_3__0_n_0;
  wire sig_btt_cntr_im00_carry__2_i_4__0_n_0;
  wire sig_btt_cntr_im00_carry__2_n_0;
  wire sig_btt_cntr_im00_carry__2_n_1;
  wire sig_btt_cntr_im00_carry__2_n_2;
  wire sig_btt_cntr_im00_carry__2_n_3;
  wire sig_btt_cntr_im00_carry__3_i_1__0_n_0;
  wire sig_btt_cntr_im00_carry__3_i_2__0_n_0;
  wire sig_btt_cntr_im00_carry__3_i_3__0_n_0;
  wire sig_btt_cntr_im00_carry__3_i_4__0_n_0;
  wire sig_btt_cntr_im00_carry__3_n_0;
  wire sig_btt_cntr_im00_carry__3_n_1;
  wire sig_btt_cntr_im00_carry__3_n_2;
  wire sig_btt_cntr_im00_carry__3_n_3;
  wire sig_btt_cntr_im00_carry__4_i_1__0_n_0;
  wire sig_btt_cntr_im00_carry__4_i_2__0_n_0;
  wire sig_btt_cntr_im00_carry__4_i_3__0_n_0;
  wire sig_btt_cntr_im00_carry__4_n_2;
  wire sig_btt_cntr_im00_carry__4_n_3;
  wire sig_btt_cntr_im00_carry_i_1__0_n_0;
  wire sig_btt_cntr_im00_carry_i_2__0_n_0;
  wire sig_btt_cntr_im00_carry_i_3__0_n_0;
  wire sig_btt_cntr_im00_carry_i_4__0_n_0;
  wire sig_btt_cntr_im00_carry_n_0;
  wire sig_btt_cntr_im00_carry_n_1;
  wire sig_btt_cntr_im00_carry_n_2;
  wire sig_btt_cntr_im00_carry_n_3;
  wire \sig_btt_cntr_im0[0]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[10]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[12]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[13]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[14]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[16]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[17]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[18]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[1]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[20]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[21]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[22]_i_1_n_0 ;
  wire \sig_btt_cntr_im0[22]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[2]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[4]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[5]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[6]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[8]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0[9]_i_1__0_n_0 ;
  wire \sig_btt_cntr_im0_reg_n_0_[0] ;
  wire \sig_btt_cntr_im0_reg_n_0_[1] ;
  wire \sig_btt_cntr_im0_reg_n_0_[2] ;
  wire \sig_btt_cntr_im0_reg_n_0_[3] ;
  wire \sig_btt_cntr_im0_reg_n_0_[4] ;
  wire \sig_btt_cntr_im0_reg_n_0_[5] ;
  wire sig_btt_eq_b2mbaa_im0;
  wire sig_btt_eq_b2mbaa_ireg1;
  wire sig_btt_eq_b2mbaa_ireg1_i_2__0_n_0;
  wire sig_btt_eq_b2mbaa_ireg1_i_3__0_n_0;
  wire sig_btt_lt_b2mbaa_im0;
  wire sig_btt_lt_b2mbaa_im01;
  wire sig_btt_lt_b2mbaa_im01_carry_i_1__0_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_2__0_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_3__0_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_4__0_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_5__0_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_6__0_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_7__0_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_n_1;
  wire sig_btt_lt_b2mbaa_im01_carry_n_2;
  wire sig_btt_lt_b2mbaa_im01_carry_n_3;
  wire sig_btt_lt_b2mbaa_ireg1;
  wire [6:0]sig_bytes_to_mbaa_ireg1;
  wire \sig_bytes_to_mbaa_ireg1[1]_i_1__0_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[2]_i_1__0_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[3]_i_1__0_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[4]_i_1__0_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[5]_i_1__0_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[6]_i_1__0_n_0 ;
  wire sig_calc_error_pushed;
  wire sig_calc_error_pushed_i_1__0_n_0;
  wire sig_calc_error_pushed_reg_0;
  wire sig_calc_error_reg_reg_0;
  wire sig_cmd2addr_valid_i_1__0_n_0;
  wire sig_cmd2data_valid_i_1__0_n_0;
  wire sig_cmd2dre_valid_i_1__0_n_0;
  wire sig_cmd2dre_valid_reg_n_0;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cntl2s2mm_cmd_tvalid;
  wire [1:0]sig_finish_addr_offset_im1;
  wire [1:0]sig_finish_addr_offset_ireg2;
  wire sig_first_xfer_im0;
  wire sig_first_xfer_im0_i_1__0_n_0;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_init_reg;
  wire sig_input_burst_type_reg_i_1__0_n_0;
  wire sig_input_eof_reg_i_1_n_0;
  wire sig_input_eof_reg_reg_n_0;
  wire sig_input_reg_empty;
  wire sig_input_reg_empty_i_1_n_0;
  wire [1:1]sig_last_addr_offset_im2__0;
  wire sig_last_xfer_valid_im1;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1__0_n_0;
  wire sig_ld_xfer_reg_tmp;
  wire sig_ld_xfer_reg_tmp_i_1__0_n_0;
  wire [5:0]sig_mbaa_addr_cntr_slice_im0;
  wire sig_mm2s_interr;
  wire [31:0]\sig_next_addr_reg_reg[31] ;
  wire sig_no_btt_residue_im0;
  wire sig_no_btt_residue_ireg1;
  wire sig_parent_done;
  wire sig_parent_done_i_1__0_n_0;
  wire [2:0]sig_pcc_sm_state;
  wire \sig_pcc_sm_state[0]_i_2__0_n_0 ;
  wire \sig_pcc_sm_state[1]_i_2__0_n_0 ;
  wire [2:0]sig_pcc_sm_state_ns;
  wire sig_pop_xfer_reg0_out;
  wire [15:0]sig_predict_addr_lsh_im2;
  wire [15:15]sig_predict_addr_lsh_ireg3;
  wire \sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1__0_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1__0_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1__0_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1__0_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1__0_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1__0_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1__0_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1__0_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1__0_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1__0_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1__0_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1__0_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1__0_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1__0_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1__0_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[0] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[10] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[11] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[12] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[13] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[14] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[1] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[2] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[3] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[4] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[5] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[6] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[7] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[8] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[9] ;
  wire sig_push_input_reg11_out;
  wire sig_s2mm_interr;
  wire sig_sm_halt_ns;
  wire sig_sm_halt_reg;
  wire sig_sm_ld_calc1_reg;
  wire sig_sm_ld_calc1_reg_ns;
  wire sig_sm_ld_calc2_reg;
  wire sig_sm_ld_calc2_reg_ns;
  wire sig_sm_ld_calc3_reg;
  wire sig_sm_ld_calc3_reg_ns;
  wire [0:0]sig_sm_ld_cmd_reg;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire [1:0]sig_strbgen_addr_ireg2;
  wire \sig_strbgen_bytes_ireg2[0]_i_1__0_n_0 ;
  wire \sig_strbgen_bytes_ireg2[1]_i_1__0_n_0 ;
  wire \sig_strbgen_bytes_ireg2[2]_i_1__0_n_0 ;
  wire \sig_strbgen_bytes_ireg2[2]_i_3__0_n_0 ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[0] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[1] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[2] ;
  wire sig_wr_fifo;
  wire sig_wr_fifo_0;
  wire [3:0]sig_xfer_end_strb_ireg3;
  wire \sig_xfer_end_strb_ireg3[1]_i_1__0_n_0 ;
  wire \sig_xfer_end_strb_ireg3[3]_i_1__0_n_0 ;
  wire sig_xfer_len_eq_0_im2;
  wire sig_xfer_len_eq_0_ireg3;
  wire sig_xfer_reg_empty;
  wire sig_xfer_reg_empty_i_1__0_n_0;
  wire [3:0]sig_xfer_strt_strb_ireg3;
  wire \sig_xfer_strt_strb_ireg3[1]_i_1__0_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[2]_i_1__0_n_0 ;
  wire [3:3]\NLW_sig_addr_cntr_im0_msh_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_sig_btt_cntr_im00_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_sig_btt_cntr_im00_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED;
  wire [3:3]\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1__0_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][10]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(sig_addr_cntr_lsh_kh[6]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][11]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(sig_addr_cntr_lsh_kh[7]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][12]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(sig_addr_cntr_lsh_kh[8]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][13]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(sig_addr_cntr_lsh_kh[9]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][14]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(sig_addr_cntr_lsh_kh[10]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][14]_srl4_i_1__2 
       (.I0(sig_xfer_strt_strb_ireg3[0]),
        .I1(sig_first_xfer_im0),
        .O(in[4]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][15]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(sig_addr_cntr_lsh_kh[11]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][15]_srl4_i_1__2 
       (.I0(sig_xfer_strt_strb_ireg3[1]),
        .I1(sig_first_xfer_im0),
        .O(in[5]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][16]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .I1(sig_addr_cntr_lsh_kh[12]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][16]_srl4_i_1__2 
       (.I0(sig_xfer_strt_strb_ireg3[2]),
        .I1(sig_first_xfer_im0),
        .O(in[6]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][17]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .I1(sig_addr_cntr_lsh_kh[13]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][17]_srl4_i_1__2 
       (.I0(sig_xfer_strt_strb_ireg3[3]),
        .I1(sig_first_xfer_im0),
        .O(in[7]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hBF80BFBF)) 
    \INFERRED_GEN.data_reg[3][18]_srl4_i_1__0 
       (.I0(sig_xfer_strt_strb_ireg3[0]),
        .I1(sig_xfer_len_eq_0_ireg3),
        .I2(sig_first_xfer_im0),
        .I3(sig_xfer_end_strb_ireg3[0]),
        .I4(sig_last_xfer_valid_im1),
        .O(in[8]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][18]_srl4_i_1__2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .I1(sig_addr_cntr_lsh_kh[14]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [14]));
  LUT6 #(
    .INIT(64'h8F808F808F808080)) 
    \INFERRED_GEN.data_reg[3][18]_srl4_i_2__0 
       (.I0(sig_addr_aligned_ireg1),
        .I1(sig_brst_cnt_eq_one_ireg1),
        .I2(sig_no_btt_residue_ireg1),
        .I3(sig_brst_cnt_eq_zero_ireg1),
        .I4(sig_btt_eq_b2mbaa_ireg1),
        .I5(sig_btt_lt_b2mbaa_ireg1),
        .O(sig_last_xfer_valid_im1));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hBF80BFBF)) 
    \INFERRED_GEN.data_reg[3][19]_srl4_i_1__0 
       (.I0(sig_xfer_strt_strb_ireg3[1]),
        .I1(sig_xfer_len_eq_0_ireg3),
        .I2(sig_first_xfer_im0),
        .I3(sig_xfer_end_strb_ireg3[1]),
        .I4(sig_last_xfer_valid_im1),
        .O(in[9]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][19]_srl4_i_1__2 
       (.I0(p_1_in),
        .I1(sig_addr_cntr_lsh_kh[15]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hBF80BFBF)) 
    \INFERRED_GEN.data_reg[3][20]_srl4_i_1__0 
       (.I0(sig_xfer_strt_strb_ireg3[2]),
        .I1(sig_xfer_len_eq_0_ireg3),
        .I2(sig_first_xfer_im0),
        .I3(sig_xfer_end_strb_ireg3[2]),
        .I4(sig_last_xfer_valid_im1),
        .O(in[10]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][20]_srl4_i_1__2 
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(sig_addr_cntr_lsh_kh[16]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hBF80BFBF)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_1__0 
       (.I0(sig_xfer_strt_strb_ireg3[3]),
        .I1(sig_xfer_len_eq_0_ireg3),
        .I2(sig_first_xfer_im0),
        .I3(sig_xfer_end_strb_ireg3[3]),
        .I4(sig_last_xfer_valid_im1),
        .O(in[11]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_1__2 
       (.I0(sig_addr_cntr_im0_msh_reg[1]),
        .I1(sig_addr_cntr_lsh_kh[17]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_1__1 
       (.I0(sig_addr_cntr_im0_msh_reg[2]),
        .I1(sig_addr_cntr_lsh_kh[18]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [18]));
  LUT2 #(
    .INIT(4'h8)) 
    \INFERRED_GEN.data_reg[3][23]_srl4_i_1__0 
       (.I0(sig_input_eof_reg_reg_n_0),
        .I1(sig_last_xfer_valid_im1),
        .O(in[12]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][23]_srl4_i_1__2 
       (.I0(sig_addr_cntr_im0_msh_reg[3]),
        .I1(sig_addr_cntr_lsh_kh[19]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [19]));
  LUT6 #(
    .INIT(64'h001FFF1FFF1FFF1F)) 
    \INFERRED_GEN.data_reg[3][24]_srl4_i_1__0 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_btt_eq_b2mbaa_ireg1),
        .I2(sig_brst_cnt_eq_zero_ireg1),
        .I3(sig_no_btt_residue_ireg1),
        .I4(sig_brst_cnt_eq_one_ireg1),
        .I5(sig_addr_aligned_ireg1),
        .O(in[13]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][24]_srl4_i_1__2 
       (.I0(sig_addr_cntr_im0_msh_reg[4]),
        .I1(sig_addr_cntr_lsh_kh[20]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \INFERRED_GEN.data_reg[3][25]_srl4_i_1__0 
       (.I0(sig_last_xfer_valid_im1),
        .I1(sig_calc_error_pushed_reg_0),
        .O(in[14]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][25]_srl4_i_1__2 
       (.I0(sig_addr_cntr_im0_msh_reg[5]),
        .I1(sig_addr_cntr_lsh_kh[21]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][26]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[6]),
        .I1(sig_addr_cntr_lsh_kh[22]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][27]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[7]),
        .I1(sig_addr_cntr_lsh_kh[23]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][28]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[8]),
        .I1(sig_addr_cntr_lsh_kh[24]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][29]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[9]),
        .I1(sig_addr_cntr_lsh_kh[25]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][30]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[10]),
        .I1(sig_addr_cntr_lsh_kh[26]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][31]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[11]),
        .I1(sig_addr_cntr_lsh_kh[27]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][32]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[12]),
        .I1(sig_addr_cntr_lsh_kh[28]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][33]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[13]),
        .I1(sig_addr_cntr_lsh_kh[29]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][34]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[14]),
        .I1(sig_addr_cntr_lsh_kh[30]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][35]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[15]),
        .I1(sig_addr_cntr_lsh_kh[31]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [31]));
  LUT3 #(
    .INIT(8'hA9)) 
    \INFERRED_GEN.data_reg[3][36]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .O(in[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \INFERRED_GEN.data_reg[3][37]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .O(in[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \INFERRED_GEN.data_reg[3][38]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .O(in[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \INFERRED_GEN.data_reg[3][39]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .O(in[3]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][4]_srl4_i_2__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_addr_cntr_lsh_kh[0]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][5]_srl4_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[1]),
        .I1(sig_addr_cntr_lsh_kh[1]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][6]_srl4_i_1__2 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(sig_addr_cntr_lsh_kh[2]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][7]_srl4_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(sig_addr_cntr_lsh_kh[3]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][8]_srl4_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(sig_addr_cntr_lsh_kh[4]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \INFERRED_GEN.data_reg[3][9]_srl4_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(sig_addr_cntr_lsh_kh[5]),
        .I2(p_17_out),
        .O(\sig_next_addr_reg_reg[31] [5]));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_strb_gen2 I_STRT_STRB_GEN
       (.D({lsig_end_vect,lsig_start_vect}),
        .Q(sig_strbgen_addr_ireg2),
        .\sig_strbgen_bytes_ireg2_reg[0] (\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .\sig_strbgen_bytes_ireg2_reg[1] (\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .\sig_strbgen_bytes_ireg2_reg[2] (\sig_strbgen_bytes_ireg2_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hAE)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__1 
       (.I0(\I_CMD_STATUS/I_CMD_FIFO/p_0_out ),
        .I1(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I2(sig_cntl2s2mm_cmd_tvalid),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_2__0 
       (.I0(sig_sm_halt_reg),
        .I1(sig_input_reg_empty),
        .I2(sig_calc_error_pushed),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(sig_init_done),
        .O(\I_CMD_STATUS/I_CMD_FIFO/p_0_out ));
  LUT6 #(
    .INIT(64'hC8C8C8C8C808C8C8)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__1 
       (.I0(sig_sm_ld_cmd_reg),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_calc_error_pushed),
        .I4(sig_input_reg_empty),
        .I5(sig_sm_halt_reg),
        .O(\USE_SINGLE_REG.sig_regfifo_full_reg_reg ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_addr_aligned_ireg1_i_1__0
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(sig_mbaa_addr_cntr_slice_im0[4]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .I5(sig_mbaa_addr_cntr_slice_im0[2]),
        .O(sig_addr_aligned_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_aligned_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_addr_aligned_im0),
        .Q(sig_addr_aligned_ireg1),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \sig_addr_cntr_im0_msh[0]_i_1__0 
       (.I0(sig_push_input_reg11_out),
        .I1(p_1_in),
        .I2(sig_pop_xfer_reg0_out),
        .I3(sig_predict_addr_lsh_ireg3),
        .O(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[0]_i_3 
       (.I0(Q[41]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[0]),
        .O(\sig_addr_cntr_im0_msh[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[0]_i_4 
       (.I0(Q[44]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[3]),
        .O(\sig_addr_cntr_im0_msh[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[0]_i_5 
       (.I0(Q[43]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[2]),
        .O(\sig_addr_cntr_im0_msh[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[0]_i_6 
       (.I0(Q[42]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[1]),
        .O(\sig_addr_cntr_im0_msh[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \sig_addr_cntr_im0_msh[0]_i_7 
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(Q[41]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_im0_msh[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[12]_i_2 
       (.I0(Q[56]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[15]),
        .O(\sig_addr_cntr_im0_msh[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[12]_i_3 
       (.I0(Q[55]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[14]),
        .O(\sig_addr_cntr_im0_msh[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[12]_i_4 
       (.I0(Q[54]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[13]),
        .O(\sig_addr_cntr_im0_msh[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[12]_i_5 
       (.I0(Q[53]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[12]),
        .O(\sig_addr_cntr_im0_msh[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[4]_i_2 
       (.I0(Q[48]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[7]),
        .O(\sig_addr_cntr_im0_msh[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[4]_i_3 
       (.I0(Q[47]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[6]),
        .O(\sig_addr_cntr_im0_msh[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[4]_i_4 
       (.I0(Q[46]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[5]),
        .O(\sig_addr_cntr_im0_msh[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[4]_i_5 
       (.I0(Q[45]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[4]),
        .O(\sig_addr_cntr_im0_msh[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[8]_i_2 
       (.I0(Q[52]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[11]),
        .O(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[8]_i_3 
       (.I0(Q[51]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[10]),
        .O(\sig_addr_cntr_im0_msh[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[8]_i_4 
       (.I0(Q[50]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[9]),
        .O(\sig_addr_cntr_im0_msh[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_im0_msh[8]_i_5 
       (.I0(Q[49]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[8]),
        .O(\sig_addr_cntr_im0_msh[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[0]),
        .R(sig_init_reg));
  CARRY4 \sig_addr_cntr_im0_msh_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sig_addr_cntr_im0_msh_reg[0]_i_2_n_0 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_1 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_2 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sig_addr_cntr_im0_msh[0]_i_3_n_0 }),
        .O({\sig_addr_cntr_im0_msh_reg[0]_i_2_n_4 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_5 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_6 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_7 }),
        .S({\sig_addr_cntr_im0_msh[0]_i_4_n_0 ,\sig_addr_cntr_im0_msh[0]_i_5_n_0 ,\sig_addr_cntr_im0_msh[0]_i_6_n_0 ,\sig_addr_cntr_im0_msh[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[10] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[10]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[11] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[11]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[12] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[12]_i_1_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[12]),
        .R(sig_init_reg));
  CARRY4 \sig_addr_cntr_im0_msh_reg[12]_i_1 
       (.CI(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_0 ),
        .CO({\NLW_sig_addr_cntr_im0_msh_reg[12]_i_1_CO_UNCONNECTED [3],\sig_addr_cntr_im0_msh_reg[12]_i_1_n_1 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_2 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_addr_cntr_im0_msh_reg[12]_i_1_n_4 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_5 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_6 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_7 }),
        .S({\sig_addr_cntr_im0_msh[12]_i_2_n_0 ,\sig_addr_cntr_im0_msh[12]_i_3_n_0 ,\sig_addr_cntr_im0_msh[12]_i_4_n_0 ,\sig_addr_cntr_im0_msh[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[13] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[12]_i_1_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[13]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[14] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[12]_i_1_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[14]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[15] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[12]_i_1_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[15]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[3]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[4]),
        .R(sig_init_reg));
  CARRY4 \sig_addr_cntr_im0_msh_reg[4]_i_1 
       (.CI(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_0 ),
        .CO({\sig_addr_cntr_im0_msh_reg[4]_i_1_n_0 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_1 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_2 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_addr_cntr_im0_msh_reg[4]_i_1_n_4 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_5 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_6 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_7 }),
        .S({\sig_addr_cntr_im0_msh[4]_i_2_n_0 ,\sig_addr_cntr_im0_msh[4]_i_3_n_0 ,\sig_addr_cntr_im0_msh[4]_i_4_n_0 ,\sig_addr_cntr_im0_msh[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[5]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[6]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[7]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[8] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[8]),
        .R(sig_init_reg));
  CARRY4 \sig_addr_cntr_im0_msh_reg[8]_i_1 
       (.CI(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_0 ),
        .CO({\sig_addr_cntr_im0_msh_reg[8]_i_1_n_0 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_1 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_2 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_addr_cntr_im0_msh_reg[8]_i_1_n_4 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_5 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_6 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_7 }),
        .S({\sig_addr_cntr_im0_msh[8]_i_2_n_0 ,\sig_addr_cntr_im0_msh[8]_i_3_n_0 ,\sig_addr_cntr_im0_msh[8]_i_4_n_0 ,\sig_addr_cntr_im0_msh[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[9] 
       (.C(m_axi_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1__0_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[9]),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[0]_i_1__0 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[0]),
        .O(\sig_addr_cntr_incr_ireg2[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[1]_i_1__0 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[1]),
        .O(\sig_addr_cntr_incr_ireg2[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[2]_i_1__0 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[2]),
        .O(\sig_addr_cntr_incr_ireg2[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[3]_i_1__0 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[3]),
        .O(\sig_addr_cntr_incr_ireg2[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[4]_i_1__0 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[4]),
        .O(\sig_addr_cntr_incr_ireg2[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[5]_i_1__0 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[5]),
        .O(\sig_addr_cntr_incr_ireg2[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \sig_addr_cntr_incr_ireg2[6]_i_1__0 
       (.I0(sig_first_xfer_im0),
        .I1(sig_bytes_to_mbaa_ireg1[6]),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[0]_i_1__0_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[1]_i_1__0_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[2]_i_1__0_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[3]_i_1__0_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[3]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[4]_i_1__0_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[4]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[5]_i_1__0_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[5]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[6]_i_1__0_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[6]),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[0]_i_1__0 
       (.I0(Q[25]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[0] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[10]_i_1__0 
       (.I0(Q[35]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[10] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[11]_i_1__0 
       (.I0(Q[36]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[11] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[12]_i_1__0 
       (.I0(Q[37]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[12] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[13]_i_1__0 
       (.I0(Q[38]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[13] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[14]_i_1__0 
       (.I0(Q[39]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[14] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[15]_i_1__0 
       (.I0(Q[40]),
        .I1(sig_predict_addr_lsh_ireg3),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[1]_i_1__0 
       (.I0(Q[26]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[1] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[2]_i_1__0 
       (.I0(Q[27]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[2] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[3]_i_1__0 
       (.I0(Q[28]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[3] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[4]_i_1__0 
       (.I0(Q[29]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[4] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[5]_i_1__0 
       (.I0(Q[30]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[5] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[6]_i_1__0 
       (.I0(Q[31]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[6] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[7]_i_1__0 
       (.I0(Q[32]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[7] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[8]_i_1__0 
       (.I0(Q[33]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[8] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[8]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_addr_cntr_lsh_im0[9]_i_1__0 
       (.I0(Q[34]),
        .I1(\sig_predict_addr_lsh_ireg3_reg_n_0_[9] ),
        .I2(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_lsh_im0[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[0]_i_1__0_n_0 ),
        .Q(sig_mbaa_addr_cntr_slice_im0[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[10] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[10]_i_1__0_n_0 ),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[11] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[11]_i_1__0_n_0 ),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[12] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[12]_i_1__0_n_0 ),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[13] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[13]_i_1__0_n_0 ),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[14] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[14]_i_1__0_n_0 ),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[15] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[15]_i_1__0_n_0 ),
        .Q(p_1_in),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[1]_i_1__0_n_0 ),
        .Q(sig_mbaa_addr_cntr_slice_im0[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[2]_i_1__0_n_0 ),
        .Q(sig_mbaa_addr_cntr_slice_im0[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[3]_i_1__0_n_0 ),
        .Q(sig_mbaa_addr_cntr_slice_im0[3]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[4]_i_1__0_n_0 ),
        .Q(sig_mbaa_addr_cntr_slice_im0[4]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[5]_i_1__0_n_0 ),
        .Q(sig_mbaa_addr_cntr_slice_im0[5]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[6]_i_1__0_n_0 ),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[7]_i_1__0_n_0 ),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[8] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[8]_i_1__0_n_0 ),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[9] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_addr_cntr_lsh_im0[9]_i_1__0_n_0 ),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'h0400)) 
    \sig_addr_cntr_lsh_kh[31]_i_1 
       (.I0(sig_calc_error_pushed_reg_0),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(sig_push_input_reg11_out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[25]),
        .Q(sig_addr_cntr_lsh_kh[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[35]),
        .Q(sig_addr_cntr_lsh_kh[10]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[36]),
        .Q(sig_addr_cntr_lsh_kh[11]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[37]),
        .Q(sig_addr_cntr_lsh_kh[12]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[38]),
        .Q(sig_addr_cntr_lsh_kh[13]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[39]),
        .Q(sig_addr_cntr_lsh_kh[14]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[40]),
        .Q(sig_addr_cntr_lsh_kh[15]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[16] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[41]),
        .Q(sig_addr_cntr_lsh_kh[16]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[17] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[42]),
        .Q(sig_addr_cntr_lsh_kh[17]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[43]),
        .Q(sig_addr_cntr_lsh_kh[18]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[44]),
        .Q(sig_addr_cntr_lsh_kh[19]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[26]),
        .Q(sig_addr_cntr_lsh_kh[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[45]),
        .Q(sig_addr_cntr_lsh_kh[20]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[46]),
        .Q(sig_addr_cntr_lsh_kh[21]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[47]),
        .Q(sig_addr_cntr_lsh_kh[22]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[48]),
        .Q(sig_addr_cntr_lsh_kh[23]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[24] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[49]),
        .Q(sig_addr_cntr_lsh_kh[24]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[25] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[50]),
        .Q(sig_addr_cntr_lsh_kh[25]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[26] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[51]),
        .Q(sig_addr_cntr_lsh_kh[26]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[27] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[52]),
        .Q(sig_addr_cntr_lsh_kh[27]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[28] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[53]),
        .Q(sig_addr_cntr_lsh_kh[28]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[29] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[54]),
        .Q(sig_addr_cntr_lsh_kh[29]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[27]),
        .Q(sig_addr_cntr_lsh_kh[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[30] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[55]),
        .Q(sig_addr_cntr_lsh_kh[30]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[31] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[56]),
        .Q(sig_addr_cntr_lsh_kh[31]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[28]),
        .Q(sig_addr_cntr_lsh_kh[3]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[29]),
        .Q(sig_addr_cntr_lsh_kh[4]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[30]),
        .Q(sig_addr_cntr_lsh_kh[5]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[31]),
        .Q(sig_addr_cntr_lsh_kh[6]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[32]),
        .Q(sig_addr_cntr_lsh_kh[7]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[33]),
        .Q(sig_addr_cntr_lsh_kh[8]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[34]),
        .Q(sig_addr_cntr_lsh_kh[9]),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[0]_i_1__0 
       (.I0(sig_bytes_to_mbaa_ireg1[0]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I4(sig_mbaa_addr_cntr_slice_im0[0]),
        .O(sig_adjusted_addr_incr_im1[0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sig_adjusted_addr_incr_ireg2[1]_i_1__0 
       (.I0(\sig_addr_cntr_incr_ireg2[0]_i_1__0_n_0 ),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(\sig_addr_cntr_incr_ireg2[1]_i_1__0_n_0 ),
        .O(sig_adjusted_addr_incr_im1[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h077FF880)) 
    \sig_adjusted_addr_incr_ireg2[2]_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(\sig_addr_cntr_incr_ireg2[0]_i_1__0_n_0 ),
        .I2(\sig_addr_cntr_incr_ireg2[1]_i_1__0_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(\sig_addr_cntr_incr_ireg2[2]_i_1__0_n_0 ),
        .O(sig_adjusted_addr_incr_im1[2]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h556AAA6A)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2[3]_i_2__0_n_0 ),
        .I1(sig_bytes_to_mbaa_ireg1[3]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(sig_adjusted_addr_incr_im1[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hAA808000)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_2__0 
       (.I0(\sig_addr_cntr_incr_ireg2[2]_i_1__0_n_0 ),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(\sig_addr_cntr_incr_ireg2[0]_i_1__0_n_0 ),
        .I3(\sig_addr_cntr_incr_ireg2[1]_i_1__0_n_0 ),
        .I4(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h556AAA6A)) 
    \sig_adjusted_addr_incr_ireg2[4]_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2[5]_i_2__0_n_0 ),
        .I1(sig_bytes_to_mbaa_ireg1[4]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_adjusted_addr_incr_im1[4]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    \sig_adjusted_addr_incr_ireg2[5]_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2[5]_i_2__0_n_0 ),
        .I1(\sig_addr_cntr_incr_ireg2[4]_i_1__0_n_0 ),
        .I2(sig_bytes_to_mbaa_ireg1[5]),
        .I3(sig_first_xfer_im0),
        .I4(sig_btt_lt_b2mbaa_ireg1),
        .I5(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .O(sig_adjusted_addr_incr_im1[5]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hF8080000)) 
    \sig_adjusted_addr_incr_ireg2[5]_i_2__0 
       (.I0(sig_bytes_to_mbaa_ireg1[3]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I4(\sig_adjusted_addr_incr_ireg2[3]_i_2__0_n_0 ),
        .O(\sig_adjusted_addr_incr_ireg2[5]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[0]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[1]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[2]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[3]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[4]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[5]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .R(sig_init_reg));
  LUT5 #(
    .INIT(32'h00000002)) 
    sig_brst_cnt_eq_one_ireg1_i_1__0
       (.I0(sel0[0]),
        .I1(sig_brst_cnt_eq_one_ireg1_i_2__0_n_0),
        .I2(sig_brst_cnt_eq_one_ireg1_i_3__0_n_0),
        .I3(sig_brst_cnt_eq_one_ireg1_i_4__0_n_0),
        .I4(sig_brst_cnt_eq_one_ireg1_i_5__0_n_0),
        .O(sig_brst_cnt_eq_one_im0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_one_ireg1_i_2__0
       (.I0(sel0[7]),
        .I1(sel0[8]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .O(sig_brst_cnt_eq_one_ireg1_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_one_ireg1_i_3__0
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(sig_brst_cnt_eq_one_ireg1_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_one_ireg1_i_4__0
       (.I0(sel0[16]),
        .I1(sel0[15]),
        .I2(sel0[13]),
        .I3(sel0[14]),
        .O(sig_brst_cnt_eq_one_ireg1_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_one_ireg1_i_5__0
       (.I0(sel0[11]),
        .I1(sel0[12]),
        .I2(sel0[9]),
        .I3(sel0[10]),
        .O(sig_brst_cnt_eq_one_ireg1_i_5__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_one_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_brst_cnt_eq_one_im0),
        .Q(sig_brst_cnt_eq_one_ireg1),
        .R(sig_init_reg));
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_brst_cnt_eq_zero_ireg1_i_1__0
       (.I0(sel0[15]),
        .I1(sig_brst_cnt_eq_zero_ireg1_i_2__0_n_0),
        .I2(sig_brst_cnt_eq_zero_ireg1_i_3__0_n_0),
        .I3(sig_brst_cnt_eq_zero_ireg1_i_4__0_n_0),
        .I4(sig_brst_cnt_eq_zero_ireg1_i_5__0_n_0),
        .O(sig_brst_cnt_eq_zero_im0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_zero_ireg1_i_2__0
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .O(sig_brst_cnt_eq_zero_ireg1_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_zero_ireg1_i_3__0
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(sig_brst_cnt_eq_zero_ireg1_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_zero_ireg1_i_4__0
       (.I0(sel0[14]),
        .I1(sel0[16]),
        .I2(sel0[12]),
        .I3(sel0[13]),
        .O(sig_brst_cnt_eq_zero_ireg1_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_zero_ireg1_i_5__0
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(sel0[8]),
        .I3(sel0[9]),
        .O(sig_brst_cnt_eq_zero_ireg1_i_5__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_zero_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_brst_cnt_eq_zero_im0),
        .Q(sig_brst_cnt_eq_zero_ireg1),
        .R(sig_init_reg));
  CARRY4 sig_btt_cntr_im00_carry
       (.CI(1'b0),
        .CO({sig_btt_cntr_im00_carry_n_0,sig_btt_cntr_im00_carry_n_1,sig_btt_cntr_im00_carry_n_2,sig_btt_cntr_im00_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\sig_btt_cntr_im0_reg_n_0_[3] ,\sig_btt_cntr_im0_reg_n_0_[2] ,\sig_btt_cntr_im0_reg_n_0_[1] ,\sig_btt_cntr_im0_reg_n_0_[0] }),
        .O(sig_btt_cntr_im00[3:0]),
        .S({sig_btt_cntr_im00_carry_i_1__0_n_0,sig_btt_cntr_im00_carry_i_2__0_n_0,sig_btt_cntr_im00_carry_i_3__0_n_0,sig_btt_cntr_im00_carry_i_4__0_n_0}));
  CARRY4 sig_btt_cntr_im00_carry__0
       (.CI(sig_btt_cntr_im00_carry_n_0),
        .CO({sig_btt_cntr_im00_carry__0_n_0,sig_btt_cntr_im00_carry__0_n_1,sig_btt_cntr_im00_carry__0_n_2,sig_btt_cntr_im00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sel0[1:0],\sig_btt_cntr_im0_reg_n_0_[5] ,\sig_btt_cntr_im0_reg_n_0_[4] }),
        .O(sig_btt_cntr_im00[7:4]),
        .S({sig_btt_cntr_im00_carry__0_i_1__0_n_0,sig_btt_cntr_im00_carry__0_i_2__0_n_0,sig_btt_cntr_im00_carry__0_i_3__0_n_0,sig_btt_cntr_im00_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__0_i_1__0
       (.I0(sel0[1]),
        .O(sig_btt_cntr_im00_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry__0_i_2__0
       (.I0(sel0[0]),
        .I1(sig_addr_cntr_incr_ireg2[6]),
        .O(sig_btt_cntr_im00_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry__0_i_3__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_addr_cntr_incr_ireg2[5]),
        .O(sig_btt_cntr_im00_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry__0_i_4__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_addr_cntr_incr_ireg2[4]),
        .O(sig_btt_cntr_im00_carry__0_i_4__0_n_0));
  CARRY4 sig_btt_cntr_im00_carry__1
       (.CI(sig_btt_cntr_im00_carry__0_n_0),
        .CO({sig_btt_cntr_im00_carry__1_n_0,sig_btt_cntr_im00_carry__1_n_1,sig_btt_cntr_im00_carry__1_n_2,sig_btt_cntr_im00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sel0[5:2]),
        .O(sig_btt_cntr_im00[11:8]),
        .S({sig_btt_cntr_im00_carry__1_i_1__0_n_0,sig_btt_cntr_im00_carry__1_i_2__0_n_0,sig_btt_cntr_im00_carry__1_i_3__0_n_0,sig_btt_cntr_im00_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__1_i_1__0
       (.I0(sel0[5]),
        .O(sig_btt_cntr_im00_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__1_i_2__0
       (.I0(sel0[4]),
        .O(sig_btt_cntr_im00_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__1_i_3__0
       (.I0(sel0[3]),
        .O(sig_btt_cntr_im00_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__1_i_4__0
       (.I0(sel0[2]),
        .O(sig_btt_cntr_im00_carry__1_i_4__0_n_0));
  CARRY4 sig_btt_cntr_im00_carry__2
       (.CI(sig_btt_cntr_im00_carry__1_n_0),
        .CO({sig_btt_cntr_im00_carry__2_n_0,sig_btt_cntr_im00_carry__2_n_1,sig_btt_cntr_im00_carry__2_n_2,sig_btt_cntr_im00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(sel0[9:6]),
        .O(sig_btt_cntr_im00[15:12]),
        .S({sig_btt_cntr_im00_carry__2_i_1__0_n_0,sig_btt_cntr_im00_carry__2_i_2__0_n_0,sig_btt_cntr_im00_carry__2_i_3__0_n_0,sig_btt_cntr_im00_carry__2_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__2_i_1__0
       (.I0(sel0[9]),
        .O(sig_btt_cntr_im00_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__2_i_2__0
       (.I0(sel0[8]),
        .O(sig_btt_cntr_im00_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__2_i_3__0
       (.I0(sel0[7]),
        .O(sig_btt_cntr_im00_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__2_i_4__0
       (.I0(sel0[6]),
        .O(sig_btt_cntr_im00_carry__2_i_4__0_n_0));
  CARRY4 sig_btt_cntr_im00_carry__3
       (.CI(sig_btt_cntr_im00_carry__2_n_0),
        .CO({sig_btt_cntr_im00_carry__3_n_0,sig_btt_cntr_im00_carry__3_n_1,sig_btt_cntr_im00_carry__3_n_2,sig_btt_cntr_im00_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(sel0[13:10]),
        .O(sig_btt_cntr_im00[19:16]),
        .S({sig_btt_cntr_im00_carry__3_i_1__0_n_0,sig_btt_cntr_im00_carry__3_i_2__0_n_0,sig_btt_cntr_im00_carry__3_i_3__0_n_0,sig_btt_cntr_im00_carry__3_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__3_i_1__0
       (.I0(sel0[13]),
        .O(sig_btt_cntr_im00_carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__3_i_2__0
       (.I0(sel0[12]),
        .O(sig_btt_cntr_im00_carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__3_i_3__0
       (.I0(sel0[11]),
        .O(sig_btt_cntr_im00_carry__3_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__3_i_4__0
       (.I0(sel0[10]),
        .O(sig_btt_cntr_im00_carry__3_i_4__0_n_0));
  CARRY4 sig_btt_cntr_im00_carry__4
       (.CI(sig_btt_cntr_im00_carry__3_n_0),
        .CO({NLW_sig_btt_cntr_im00_carry__4_CO_UNCONNECTED[3:2],sig_btt_cntr_im00_carry__4_n_2,sig_btt_cntr_im00_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sel0[15:14]}),
        .O({NLW_sig_btt_cntr_im00_carry__4_O_UNCONNECTED[3],sig_btt_cntr_im00[22:20]}),
        .S({1'b0,sig_btt_cntr_im00_carry__4_i_1__0_n_0,sig_btt_cntr_im00_carry__4_i_2__0_n_0,sig_btt_cntr_im00_carry__4_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__4_i_1__0
       (.I0(sel0[16]),
        .O(sig_btt_cntr_im00_carry__4_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__4_i_2__0
       (.I0(sel0[15]),
        .O(sig_btt_cntr_im00_carry__4_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr_im00_carry__4_i_3__0
       (.I0(sel0[14]),
        .O(sig_btt_cntr_im00_carry__4_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry_i_1__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_addr_cntr_incr_ireg2[3]),
        .O(sig_btt_cntr_im00_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry_i_2__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_addr_cntr_incr_ireg2[2]),
        .O(sig_btt_cntr_im00_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry_i_3__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_addr_cntr_incr_ireg2[1]),
        .O(sig_btt_cntr_im00_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr_im00_carry_i_4__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_addr_cntr_incr_ireg2[0]),
        .O(sig_btt_cntr_im00_carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[0]_i_1__0 
       (.I0(Q[0]),
        .I1(sig_btt_cntr_im00[0]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[10]_i_1__0 
       (.I0(Q[10]),
        .I1(sig_btt_cntr_im00[10]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[11]_i_1__0 
       (.I0(Q[11]),
        .I1(sig_btt_cntr_im00[11]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[12]_i_1__0 
       (.I0(Q[12]),
        .I1(sig_btt_cntr_im00[12]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[13]_i_1__0 
       (.I0(Q[13]),
        .I1(sig_btt_cntr_im00[13]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[14]_i_1__0 
       (.I0(Q[14]),
        .I1(sig_btt_cntr_im00[14]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[15]_i_1__0 
       (.I0(Q[15]),
        .I1(sig_btt_cntr_im00[15]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[16]_i_1__0 
       (.I0(Q[16]),
        .I1(sig_btt_cntr_im00[16]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[17]_i_1__0 
       (.I0(Q[17]),
        .I1(sig_btt_cntr_im00[17]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[18]_i_1__0 
       (.I0(Q[18]),
        .I1(sig_btt_cntr_im00[18]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[19]_i_1__0 
       (.I0(Q[19]),
        .I1(sig_btt_cntr_im00[19]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[1]_i_1__0 
       (.I0(Q[1]),
        .I1(sig_btt_cntr_im00[1]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[20]_i_1__0 
       (.I0(Q[20]),
        .I1(sig_btt_cntr_im00[20]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[21]_i_1__0 
       (.I0(Q[21]),
        .I1(sig_btt_cntr_im00[21]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[21]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEFAAEFEFEFEE)) 
    \sig_btt_cntr_im0[22]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(sig_wr_fifo),
        .I2(p_1_out),
        .I3(sig_wr_fifo_0),
        .I4(sig_cmd2dre_valid_reg_n_0),
        .I5(p_12_out),
        .O(\sig_btt_cntr_im0[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[22]_i_2 
       (.I0(Q[22]),
        .I1(sig_btt_cntr_im00[22]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[2]_i_1__0 
       (.I0(Q[2]),
        .I1(sig_btt_cntr_im00[2]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[3]_i_1__0 
       (.I0(Q[3]),
        .I1(sig_btt_cntr_im00[3]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[4]_i_1__0 
       (.I0(Q[4]),
        .I1(sig_btt_cntr_im00[4]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[5]_i_1__0 
       (.I0(Q[5]),
        .I1(sig_btt_cntr_im00[5]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[6]_i_1__0 
       (.I0(Q[6]),
        .I1(sig_btt_cntr_im00[6]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[7]_i_1__0 
       (.I0(Q[7]),
        .I1(sig_btt_cntr_im00[7]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[8]_i_1__0 
       (.I0(Q[8]),
        .I1(sig_btt_cntr_im00[8]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sig_btt_cntr_im0[9]_i_1__0 
       (.I0(Q[9]),
        .I1(sig_btt_cntr_im00[9]),
        .I2(sig_push_input_reg11_out),
        .O(\sig_btt_cntr_im0[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[0]_i_1__0_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[10] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[10]_i_1__0_n_0 ),
        .Q(sel0[4]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[11] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[11]_i_1__0_n_0 ),
        .Q(sel0[5]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[12] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[12]_i_1__0_n_0 ),
        .Q(sel0[6]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[13] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[13]_i_1__0_n_0 ),
        .Q(sel0[7]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[14] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[14]_i_1__0_n_0 ),
        .Q(sel0[8]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[15] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[15]_i_1__0_n_0 ),
        .Q(sel0[9]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[16] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[16]_i_1__0_n_0 ),
        .Q(sel0[10]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[17] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[17]_i_1__0_n_0 ),
        .Q(sel0[11]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[18] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[18]_i_1__0_n_0 ),
        .Q(sel0[12]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[19] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[19]_i_1__0_n_0 ),
        .Q(sel0[13]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[1]_i_1__0_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[20] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[20]_i_1__0_n_0 ),
        .Q(sel0[14]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[21] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[21]_i_1__0_n_0 ),
        .Q(sel0[15]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[22] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[22]_i_2_n_0 ),
        .Q(sel0[16]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[2]_i_1__0_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[3]_i_1__0_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[4]_i_1__0_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[5]_i_1__0_n_0 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[6]_i_1__0_n_0 ),
        .Q(sel0[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[7]_i_1__0_n_0 ),
        .Q(sel0[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[8] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[8]_i_1__0_n_0 ),
        .Q(sel0[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[9] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr_im0[22]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0[9]_i_1__0_n_0 ),
        .Q(sel0[3]),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    sig_btt_eq_b2mbaa_ireg1_i_1__0
       (.I0(\sig_bytes_to_mbaa_ireg1[6]_i_1__0_n_0 ),
        .I1(sig_btt_eq_b2mbaa_ireg1_i_2__0_n_0),
        .I2(sig_btt_eq_b2mbaa_ireg1_i_3__0_n_0),
        .I3(sig_brst_cnt_eq_zero_im0),
        .O(sig_btt_eq_b2mbaa_im0));
  LUT6 #(
    .INIT(64'h0210084020048001)) 
    sig_btt_eq_b2mbaa_ireg1_i_2__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_btt_eq_b2mbaa_ireg1_i_3__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(\sig_bytes_to_mbaa_ireg1[3]_i_1__0_n_0 ),
        .I2(\sig_bytes_to_mbaa_ireg1[5]_i_1__0_n_0 ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I4(\sig_bytes_to_mbaa_ireg1[4]_i_1__0_n_0 ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_eq_b2mbaa_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_btt_eq_b2mbaa_im0),
        .Q(sig_btt_eq_b2mbaa_ireg1),
        .R(sig_init_reg));
  CARRY4 sig_btt_lt_b2mbaa_im01_carry
       (.CI(1'b0),
        .CO({sig_btt_lt_b2mbaa_im01,sig_btt_lt_b2mbaa_im01_carry_n_1,sig_btt_lt_b2mbaa_im01_carry_n_2,sig_btt_lt_b2mbaa_im01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,sig_btt_lt_b2mbaa_im01_carry_i_1__0_n_0,sig_btt_lt_b2mbaa_im01_carry_i_2__0_n_0,sig_btt_lt_b2mbaa_im01_carry_i_3__0_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED[3:0]),
        .S({sig_btt_lt_b2mbaa_im01_carry_i_4__0_n_0,sig_btt_lt_b2mbaa_im01_carry_i_5__0_n_0,sig_btt_lt_b2mbaa_im01_carry_i_6__0_n_0,sig_btt_lt_b2mbaa_im01_carry_i_7__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    sig_btt_lt_b2mbaa_im01_carry_i_1__0
       (.I0(\sig_bytes_to_mbaa_ireg1[4]_i_1__0_n_0 ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I3(\sig_bytes_to_mbaa_ireg1[5]_i_1__0_n_0 ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0101011337373770)) 
    sig_btt_lt_b2mbaa_im01_carry_i_2__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I2(sig_mbaa_addr_cntr_slice_im0[2]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(sig_mbaa_addr_cntr_slice_im0[0]),
        .I5(sig_mbaa_addr_cntr_slice_im0[3]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h1370)) 
    sig_btt_lt_b2mbaa_im01_carry_i_3__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_btt_lt_b2mbaa_im01_carry_i_4__0
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(sig_mbaa_addr_cntr_slice_im0[3]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(sig_mbaa_addr_cntr_slice_im0[2]),
        .I5(sig_mbaa_addr_cntr_slice_im0[4]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_5__0
       (.I0(\sig_bytes_to_mbaa_ireg1[4]_i_1__0_n_0 ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(\sig_bytes_to_mbaa_ireg1[5]_i_1__0_n_0 ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    sig_btt_lt_b2mbaa_im01_carry_i_6__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h1881)) 
    sig_btt_lt_b2mbaa_im01_carry_i_7__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_btt_lt_b2mbaa_ireg1_i_1__0
       (.I0(sig_btt_lt_b2mbaa_im01),
        .I1(sig_brst_cnt_eq_zero_im0),
        .O(sig_btt_lt_b2mbaa_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_lt_b2mbaa_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_btt_lt_b2mbaa_im0),
        .Q(sig_btt_lt_b2mbaa_ireg1),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sig_bytes_to_mbaa_ireg1[1]_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(\sig_bytes_to_mbaa_ireg1[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \sig_bytes_to_mbaa_ireg1[2]_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_mbaa_addr_cntr_slice_im0[1]),
        .I2(sig_mbaa_addr_cntr_slice_im0[2]),
        .O(\sig_bytes_to_mbaa_ireg1[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \sig_bytes_to_mbaa_ireg1[3]_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(sig_mbaa_addr_cntr_slice_im0[1]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[3]),
        .O(\sig_bytes_to_mbaa_ireg1[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[2]),
        .I4(sig_mbaa_addr_cntr_slice_im0[4]),
        .O(\sig_bytes_to_mbaa_ireg1[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \sig_bytes_to_mbaa_ireg1[5]_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .I5(sig_mbaa_addr_cntr_slice_im0[5]),
        .O(\sig_bytes_to_mbaa_ireg1[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sig_bytes_to_mbaa_ireg1[6]_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .I5(sig_mbaa_addr_cntr_slice_im0[5]),
        .O(\sig_bytes_to_mbaa_ireg1[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[0]),
        .Q(sig_bytes_to_mbaa_ireg1[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[1]_i_1__0_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[2]_i_1__0_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[3]_i_1__0_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[3]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[4]_i_1__0_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[4]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[5]_i_1__0_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[5]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_bytes_to_mbaa_ireg1[6]_i_1__0_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[6]),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1__0
       (.I0(sig_calc_error_pushed_reg_0),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_calc_error_pushed),
        .O(sig_calc_error_pushed_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_pushed_i_1__0_n_0),
        .Q(sig_calc_error_pushed),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_reg_reg_0),
        .Q(sig_calc_error_pushed_reg_0),
        .R(sig_init_reg));
  LUT6 #(
    .INIT(64'h000000000000AAAE)) 
    sig_cmd2addr_valid_i_1__0
       (.I0(p_12_out),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_pcc_sm_state[1]),
        .I4(sig_wr_fifo_0),
        .I5(sig_init_reg),
        .O(sig_cmd2addr_valid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1__0_n_0),
        .Q(p_12_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000AAAE)) 
    sig_cmd2data_valid_i_1__0
       (.I0(p_1_out),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_pcc_sm_state[1]),
        .I4(sig_wr_fifo),
        .I5(sig_init_reg),
        .O(sig_cmd2data_valid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1__0_n_0),
        .Q(p_1_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    sig_cmd2dre_valid_i_1__0
       (.I0(sig_pcc_sm_state[1]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[2]),
        .I3(sig_first_xfer_im0),
        .I4(sig_cmd2dre_valid_reg_n_0),
        .I5(sig_init_reg),
        .O(sig_cmd2dre_valid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1__0_n_0),
        .Q(sig_cmd2dre_valid_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h556AAA6A)) 
    \sig_finish_addr_offset_ireg2[0]_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(sig_finish_addr_offset_im1[0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sig_finish_addr_offset_ireg2[1]_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(\sig_addr_cntr_incr_ireg2[0]_i_1__0_n_0 ),
        .I2(\sig_addr_cntr_incr_ireg2[1]_i_1__0_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(sig_finish_addr_offset_im1[1]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[0]),
        .Q(sig_finish_addr_offset_ireg2[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[1]),
        .Q(sig_finish_addr_offset_ireg2[1]),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'h000E)) 
    sig_first_xfer_im0_i_1__0
       (.I0(sig_first_xfer_im0),
        .I1(sig_push_input_reg11_out),
        .I2(sig_pop_xfer_reg0_out),
        .I3(sig_init_reg),
        .O(sig_first_xfer_im0_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_xfer_im0_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_first_xfer_im0_i_1__0_n_0),
        .Q(sig_first_xfer_im0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    sig_input_burst_type_reg_i_1__0
       (.I0(p_17_out),
        .I1(sig_push_input_reg11_out),
        .I2(Q[23]),
        .I3(sig_sm_pop_input_reg),
        .I4(sig_init_reg),
        .I5(sig_calc_error_pushed),
        .O(sig_input_burst_type_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_input_burst_type_reg_i_1__0_n_0),
        .Q(p_17_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    sig_input_eof_reg_i_1
       (.I0(sig_input_eof_reg_reg_n_0),
        .I1(sig_push_input_reg11_out),
        .I2(Q[24]),
        .I3(sig_sm_pop_input_reg),
        .I4(sig_init_reg),
        .I5(sig_calc_error_pushed),
        .O(sig_input_eof_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_input_eof_reg_i_1_n_0),
        .Q(sig_input_eof_reg_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    sig_input_reg_empty_i_1
       (.I0(sig_input_reg_empty),
        .I1(sig_push_input_reg11_out),
        .I2(sig_sm_pop_input_reg),
        .I3(sig_init_reg),
        .I4(sig_calc_error_pushed),
        .O(sig_input_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_input_reg_empty_i_1_n_0),
        .Q(sig_input_reg_empty),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h9)) 
    sig_last_addr_offset_im2
       (.I0(sig_finish_addr_offset_ireg2[1]),
        .I1(sig_finish_addr_offset_ireg2[0]),
        .O(sig_last_addr_offset_im2__0));
  LUT6 #(
    .INIT(64'h000000000002FF02)) 
    sig_ld_xfer_reg_i_1__0
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_ld_xfer_reg),
        .I4(sig_xfer_reg_empty),
        .I5(sig_init_reg),
        .O(sig_ld_xfer_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1__0_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000AAAE)) 
    sig_ld_xfer_reg_tmp_i_1__0
       (.I0(sig_ld_xfer_reg_tmp),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_pcc_sm_state[1]),
        .I4(sig_pop_xfer_reg0_out),
        .I5(sig_init_reg),
        .O(sig_ld_xfer_reg_tmp_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_tmp_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_tmp_i_1__0_n_0),
        .Q(sig_ld_xfer_reg_tmp),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_no_btt_residue_ireg1_i_1__0
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_no_btt_residue_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_no_btt_residue_ireg1_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_no_btt_residue_im0),
        .Q(sig_no_btt_residue_ireg1),
        .R(sig_init_reg));
  LUT5 #(
    .INIT(32'h000000E2)) 
    sig_parent_done_i_1__0
       (.I0(sig_parent_done),
        .I1(sig_ld_xfer_reg_tmp),
        .I2(sig_last_xfer_valid_im1),
        .I3(sig_push_input_reg11_out),
        .I4(sig_init_reg),
        .O(sig_parent_done_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_parent_done_i_1__0_n_0),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCBB03FFFFBB03FF)) 
    \sig_pcc_sm_state[0]_i_1__0 
       (.I0(\sig_pcc_sm_state[0]_i_2__0_n_0 ),
        .I1(sig_pcc_sm_state[1]),
        .I2(sig_push_input_reg11_out),
        .I3(sig_pcc_sm_state[0]),
        .I4(sig_pcc_sm_state[2]),
        .I5(sig_pop_xfer_reg0_out),
        .O(sig_pcc_sm_state_ns[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_pcc_sm_state[0]_i_2__0 
       (.I0(sig_calc_error_pushed),
        .I1(sig_parent_done),
        .O(\sig_pcc_sm_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hCFB0CCB0C3B0C0B0)) 
    \sig_pcc_sm_state[1]_i_1__0 
       (.I0(\sig_pcc_sm_state[1]_i_2__0_n_0 ),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_pcc_sm_state[0]),
        .I4(sig_push_input_reg11_out),
        .I5(sig_pop_xfer_reg0_out),
        .O(sig_pcc_sm_state_ns[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sig_pcc_sm_state[1]_i_2__0 
       (.I0(sig_calc_error_pushed),
        .I1(sig_parent_done),
        .O(\sig_pcc_sm_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00F4F5F400F400F4)) 
    \sig_pcc_sm_state[1]_i_3__0 
       (.I0(p_12_out),
        .I1(sig_cmd2dre_valid_reg_n_0),
        .I2(sig_wr_fifo_0),
        .I3(p_1_out),
        .I4(FIFO_Full_reg),
        .I5(sig_inhibit_rdy_n),
        .O(sig_pop_xfer_reg0_out));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hEAF0)) 
    \sig_pcc_sm_state[2]_i_1__0 
       (.I0(sig_pcc_sm_state[0]),
        .I1(sig_calc_error_pushed),
        .I2(sig_pcc_sm_state[2]),
        .I3(sig_pcc_sm_state[1]),
        .O(sig_pcc_sm_state_ns[2]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_pcc_sm_state_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pcc_sm_state_ns[0]),
        .Q(sig_pcc_sm_state[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_pcc_sm_state_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pcc_sm_state_ns[1]),
        .Q(sig_pcc_sm_state[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_pcc_sm_state_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pcc_sm_state_ns[2]),
        .Q(sig_pcc_sm_state[2]),
        .R(sig_init_reg));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(sig_addr_cntr_incr_ireg2[3]),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_3 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(sig_addr_cntr_incr_ireg2[2]),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice_im0[1]),
        .I1(sig_addr_cntr_incr_ireg2[1]),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_5 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_addr_cntr_incr_ireg2[0]),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(sig_addr_cntr_incr_ireg2[6]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(sig_addr_cntr_incr_ireg2[5]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_5 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(sig_addr_cntr_incr_ireg2[4]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[0]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[0] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[10]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[10] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[11]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[11] ),
        .R(sig_init_reg));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[11]_i_1__0 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[7]_i_1__0_n_0 ),
        .CO({\sig_predict_addr_lsh_ireg3_reg[11]_i_1__0_n_0 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1__0_n_1 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1__0_n_2 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[11] ,\sig_addr_cntr_lsh_im0_reg_n_0_[10] ,\sig_addr_cntr_lsh_im0_reg_n_0_[9] ,\sig_addr_cntr_lsh_im0_reg_n_0_[8] }),
        .O(sig_predict_addr_lsh_im2[11:8]),
        .S({\sig_addr_cntr_lsh_im0_reg_n_0_[11] ,\sig_addr_cntr_lsh_im0_reg_n_0_[10] ,\sig_addr_cntr_lsh_im0_reg_n_0_[9] ,\sig_addr_cntr_lsh_im0_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[12]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[12] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[13]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[13] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[14]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[14] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[15]),
        .Q(sig_predict_addr_lsh_ireg3),
        .R(sig_init_reg));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[15]_i_1__0 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[11]_i_1__0_n_0 ),
        .CO({\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1__0_CO_UNCONNECTED [3],\sig_predict_addr_lsh_ireg3_reg[15]_i_1__0_n_1 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1__0_n_2 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_addr_cntr_lsh_im0_reg_n_0_[12] }),
        .O(sig_predict_addr_lsh_im2[15:12]),
        .S({p_1_in,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_addr_cntr_lsh_im0_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[1]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[1] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[2]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[2] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[3]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[3] ),
        .R(sig_init_reg));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\sig_predict_addr_lsh_ireg3_reg[3]_i_1__0_n_0 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1__0_n_1 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1__0_n_2 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(sig_mbaa_addr_cntr_slice_im0[3:0]),
        .O(sig_predict_addr_lsh_im2[3:0]),
        .S({\sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[4]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[4] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[5]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[5] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[6]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[6] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[7]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[7] ),
        .R(sig_init_reg));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[7]_i_1__0 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[3]_i_1__0_n_0 ),
        .CO({\sig_predict_addr_lsh_ireg3_reg[7]_i_1__0_n_0 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1__0_n_1 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1__0_n_2 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[7] ,\sig_addr_cntr_lsh_im0_reg_n_0_[6] ,sig_mbaa_addr_cntr_slice_im0[5:4]}),
        .O(sig_predict_addr_lsh_im2[7:4]),
        .S({\sig_addr_cntr_lsh_im0_reg_n_0_[7] ,\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[8]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[8] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[9]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[9] ),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hA181)) 
    sig_sm_halt_reg_i_1__0
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_calc_error_pushed),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_sm_halt_reg),
        .S(sig_init_reg));
  LUT6 #(
    .INIT(64'h0008000800083008)) 
    sig_sm_ld_calc1_reg_i_1__0
       (.I0(sig_push_input_reg11_out),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[2]),
        .I3(sig_pcc_sm_state[1]),
        .I4(sig_parent_done),
        .I5(sig_calc_error_pushed),
        .O(sig_sm_ld_calc1_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc1_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc1_reg_ns),
        .Q(sig_sm_ld_calc1_reg),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h02)) 
    sig_sm_ld_calc2_reg_i_1__0
       (.I0(sig_pcc_sm_state[1]),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .O(sig_sm_ld_calc2_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc2_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg_ns),
        .Q(sig_sm_ld_calc2_reg),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_sm_ld_calc3_reg_i_1__0
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[1]),
        .O(sig_sm_ld_calc3_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc3_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc3_reg_ns),
        .Q(sig_sm_ld_calc3_reg),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    sig_sm_pop_input_reg_i_1__0
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_parent_done),
        .I3(sig_calc_error_pushed),
        .I4(sig_pcc_sm_state[1]),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(sig_init_reg));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_sm_state[2]_i_3 
       (.I0(sig_mm2s_interr),
        .I1(sig_calc_error_pushed_reg_0),
        .I2(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .I3(sig_s2mm_interr),
        .I4(p_35_out),
        .O(cntlr2reg_interr_set0__2));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[0]),
        .Q(sig_strbgen_addr_ireg2[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[1]),
        .Q(sig_strbgen_addr_ireg2[1]),
        .R(sig_init_reg));
  LUT5 #(
    .INIT(32'h15100500)) 
    \sig_strbgen_bytes_ireg2[0]_i_1__0 
       (.I0(sig_init_reg),
        .I1(sig_addr_incr_ge_bpdb_im1),
        .I2(sig_sm_ld_calc2_reg),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I4(\sig_addr_cntr_incr_ireg2[0]_i_1__0_n_0 ),
        .O(\sig_strbgen_bytes_ireg2[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h15100500)) 
    \sig_strbgen_bytes_ireg2[1]_i_1__0 
       (.I0(sig_init_reg),
        .I1(sig_addr_incr_ge_bpdb_im1),
        .I2(sig_sm_ld_calc2_reg),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_incr_ireg2[1]_i_1__0_n_0 ),
        .O(\sig_strbgen_bytes_ireg2[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFBC8)) 
    \sig_strbgen_bytes_ireg2[2]_i_1__0 
       (.I0(sig_addr_incr_ge_bpdb_im1),
        .I1(sig_sm_ld_calc2_reg),
        .I2(\sig_addr_cntr_incr_ireg2[2]_i_1__0_n_0 ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(\sig_strbgen_bytes_ireg2[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFDFDFD5DF)) 
    \sig_strbgen_bytes_ireg2[2]_i_2__0 
       (.I0(\sig_strbgen_bytes_ireg2[2]_i_3__0_n_0 ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(sig_first_xfer_im0),
        .I4(sig_bytes_to_mbaa_ireg1[5]),
        .I5(sig_bytes_to_mbaa_ireg1[6]),
        .O(sig_addr_incr_ge_bpdb_im1));
  LUT6 #(
    .INIT(64'h0000000000004777)) 
    \sig_strbgen_bytes_ireg2[2]_i_3__0 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[3]),
        .I4(\sig_addr_cntr_incr_ireg2[2]_i_1__0_n_0 ),
        .I5(\sig_addr_cntr_incr_ireg2[4]_i_1__0_n_0 ),
        .O(\sig_strbgen_bytes_ireg2[2]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_ireg2[0]_i_1__0_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_ireg2[1]_i_1__0_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_ireg2[2]_i_1__0_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .R(sig_init_reg));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_xfer_end_strb_ireg3[1]_i_1__0 
       (.I0(sig_finish_addr_offset_ireg2[1]),
        .I1(sig_finish_addr_offset_ireg2[0]),
        .O(\sig_xfer_end_strb_ireg3[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sig_xfer_end_strb_ireg3[3]_i_1__0 
       (.I0(sig_finish_addr_offset_ireg2[1]),
        .I1(sig_finish_addr_offset_ireg2[0]),
        .O(\sig_xfer_end_strb_ireg3[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(1'b1),
        .Q(sig_xfer_end_strb_ireg3[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[1]_i_1__0_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_last_addr_offset_im2__0),
        .Q(sig_xfer_end_strb_ireg3[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[3]_i_1__0_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[3]),
        .R(sig_init_reg));
  LUT6 #(
    .INIT(64'h0000000000011110)) 
    sig_xfer_len_eq_0_ireg3_i_1__0
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .O(sig_xfer_len_eq_0_im2));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_len_eq_0_ireg3_reg
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_len_eq_0_im2),
        .Q(sig_xfer_len_eq_0_ireg3),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'hFF2E)) 
    sig_xfer_reg_empty_i_1__0
       (.I0(sig_pop_xfer_reg0_out),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_init_reg),
        .O(sig_xfer_reg_empty_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_xfer_reg_empty_i_1__0_n_0),
        .Q(sig_xfer_reg_empty),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \sig_xfer_strt_strb_ireg3[1]_i_1__0 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I2(sig_strbgen_addr_ireg2[0]),
        .I3(sig_strbgen_addr_ireg2[1]),
        .O(\sig_xfer_strt_strb_ireg3[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00FC7FEC)) 
    \sig_xfer_strt_strb_ireg3[2]_i_1__0 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(sig_strbgen_addr_ireg2[1]),
        .I4(sig_strbgen_addr_ireg2[0]),
        .O(\sig_xfer_strt_strb_ireg3[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(lsig_start_vect),
        .Q(sig_xfer_strt_strb_ireg3[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_strt_strb_ireg3[1]_i_1__0_n_0 ),
        .Q(sig_xfer_strt_strb_ireg3[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_strt_strb_ireg3[2]_i_1__0_n_0 ),
        .Q(sig_xfer_strt_strb_ireg3[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(lsig_end_vect),
        .Q(sig_xfer_strt_strb_ireg3[3]),
        .R(sig_init_reg));
endmodule

(* ORIG_REF_NAME = "axi_datamover_rd_status_cntl" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_rd_status_cntl
   (sig_rsc2stat_status,
    sig_rsc2stat_status_valid,
    sig_rsc2data_ready,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    sig_push_rd_sts_reg,
    m_axi_aclk,
    sig_rd_sts_decerr_reg0,
    sig_rd_sts_reg_full0,
    sig_coelsc_reg_full_reg,
    sig_data2rsc_calc_err,
    sig_data2rsc_slverr);
  output [2:0]sig_rsc2stat_status;
  output sig_rsc2stat_status_valid;
  output sig_rsc2data_ready;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  input sig_push_rd_sts_reg;
  input m_axi_aclk;
  input sig_rd_sts_decerr_reg0;
  input sig_rd_sts_reg_full0;
  input sig_coelsc_reg_full_reg;
  input sig_data2rsc_calc_err;
  input sig_data2rsc_slverr;

  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire m_axi_aclk;
  wire sig_coelsc_reg_full_reg;
  wire sig_data2rsc_calc_err;
  wire sig_data2rsc_slverr;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_reg_full0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rsc2data_ready;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;

  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_decerr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_decerr_reg0),
        .Q(sig_rsc2stat_status[1]),
        .R(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_interr_reg_i_3
       (.I0(sig_rsc2stat_status[0]),
        .I1(sig_data2rsc_calc_err),
        .O(sig_rd_sts_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_interr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_interr_reg0),
        .Q(sig_rsc2stat_status[0]),
        .R(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  FDSE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_coelsc_reg_full_reg),
        .Q(sig_rsc2data_ready),
        .S(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_reg_full0),
        .Q(sig_rsc2stat_status_valid),
        .R(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_slverr_reg_i_1
       (.I0(sig_rsc2stat_status[2]),
        .I1(sig_data2rsc_slverr),
        .O(sig_rd_sts_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_slverr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_slverr_reg0),
        .Q(sig_rsc2stat_status[2]),
        .R(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
endmodule

(* ORIG_REF_NAME = "axi_datamover_rddata_cntl" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_rddata_cntl
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_data2rsc_calc_err,
    sig_data2rsc_slverr,
    sig_init_done,
    sig_inhibit_rdy_n,
    sig_rdc2dre_new_align,
    sig_rdc2dre_use_autodest,
    sig_halt_reg_dly1_reg,
    \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9] ,
    sig_rdc2sf_wvalid,
    sig_rdc2sf_wstrb,
    \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9] ,
    \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9] ,
    SR,
    sig_rd_sts_reg_empty_reg,
    sig_rd_sts_reg_full0,
    sig_rd_sts_decerr_reg0,
    sig_wr_fifo,
    sig_flush_db1_reg,
    E,
    \GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9]_0 ,
    \GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9]_0 ,
    \GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9]_0 ,
    \GEN_MUXFARM_32.sig_shift_case_reg_reg[1] ,
    Q,
    \GEN_MUXFARM_32.sig_shift_case_reg_reg[0] ,
    sig_push_rd_sts_reg,
    sig_tlast_enables,
    sig_rdc2sf_wlast,
    sig_advance_pipe19_out__1,
    sig_halt_cmplt_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk,
    sig_last_mmap_dbeat,
    sig_mmap_reset_reg_reg,
    sig_s_h_halt_reg_reg,
    sig_good_mmap_dbeat15_out__0,
    m_axi_rlast,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_rsc2data_ready,
    sig_dre_tvalid_i_reg,
    sig_flush_db1,
    sig_rsc2stat_status,
    sig_mstr2data_cmd_valid,
    m_axi_rresp,
    m_axi_rvalid,
    sig_input_accept59_out,
    \sig_next_dre_src_align_reg_reg[0]_0 ,
    sig_halt_reg_dly3,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_addr2rsc_calc_error,
    sig_addr_reg_empty,
    p_36_out,
    in,
    out);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_data2rsc_calc_err;
  output sig_data2rsc_slverr;
  output sig_init_done;
  output sig_inhibit_rdy_n;
  output sig_rdc2dre_new_align;
  output sig_rdc2dre_use_autodest;
  output sig_halt_reg_dly1_reg;
  output [0:0]\GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9] ;
  output sig_rdc2sf_wvalid;
  output [3:0]sig_rdc2sf_wstrb;
  output [0:0]\GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9] ;
  output [0:0]\GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9] ;
  output [0:0]SR;
  output sig_rd_sts_reg_empty_reg;
  output sig_rd_sts_reg_full0;
  output sig_rd_sts_decerr_reg0;
  output sig_wr_fifo;
  output sig_flush_db1_reg;
  output [0:0]E;
  output [0:0]\GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9]_0 ;
  output [0:0]\GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9]_0 ;
  output [0:0]\GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9]_0 ;
  output \GEN_MUXFARM_32.sig_shift_case_reg_reg[1] ;
  output [1:0]Q;
  output [0:0]\GEN_MUXFARM_32.sig_shift_case_reg_reg[0] ;
  output sig_push_rd_sts_reg;
  output [3:0]sig_tlast_enables;
  output sig_rdc2sf_wlast;
  output sig_advance_pipe19_out__1;
  output sig_halt_cmplt_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;
  input sig_last_mmap_dbeat;
  input sig_mmap_reset_reg_reg;
  input sig_s_h_halt_reg_reg;
  input sig_good_mmap_dbeat15_out__0;
  input m_axi_rlast;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input sig_rsc2data_ready;
  input sig_dre_tvalid_i_reg;
  input sig_flush_db1;
  input [0:0]sig_rsc2stat_status;
  input sig_mstr2data_cmd_valid;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  input sig_input_accept59_out;
  input \sig_next_dre_src_align_reg_reg[0]_0 ;
  input sig_halt_reg_dly3;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_addr2rsc_calc_error;
  input sig_addr_reg_empty;
  input p_36_out;
  input [20:0]in;
  input out;

  wire [0:0]E;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_32 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_33 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_34 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_35 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_36 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_i_2_n_0 ;
  wire [0:0]\GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9] ;
  wire [0:0]\GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9]_0 ;
  wire [0:0]\GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9] ;
  wire [0:0]\GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9]_0 ;
  wire [0:0]\GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9] ;
  wire [0:0]\GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9]_0 ;
  wire [0:0]\GEN_MUXFARM_32.sig_shift_case_reg_reg[0] ;
  wire \GEN_MUXFARM_32.sig_shift_case_reg_reg[1] ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [20:0]in;
  wire m_axi_aclk;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire out;
  wire [7:0]p_0_in__0;
  wire p_36_out;
  wire p_7_out;
  wire sig_addr2rsc_calc_error;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire sig_addr_posted_cntr_eq_0__1;
  wire sig_addr_reg_empty;
  wire sig_advance_pipe19_out__1;
  wire sig_cmd_cmplt_last_dbeat;
  wire [30:14]sig_cmd_fifo_data_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_reg_full_i_1_n_0;
  wire sig_coelsc_slverr_reg0;
  wire sig_data2rsc_calc_err;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_slverr;
  wire sig_data2rsc_valid;
  wire sig_data2rst_stop_cmplt;
  wire \sig_dbeat_cntr[4]_i_2_n_0 ;
  wire \sig_dbeat_cntr[5]_i_2_n_0 ;
  wire \sig_dbeat_cntr[7]_i_3__0_n_0 ;
  wire \sig_dbeat_cntr[7]_i_4_n_0 ;
  wire \sig_dbeat_cntr[7]_i_5_n_0 ;
  wire [7:0]sig_dbeat_cntr_reg__0;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_full;
  wire sig_dre_tvalid_i_reg;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg_n_0;
  wire sig_flush_db1;
  wire sig_flush_db1_reg;
  wire sig_good_mmap_dbeat15_out__0;
  wire sig_halt_cmplt_reg;
  wire sig_halt_reg_dly1_reg;
  wire sig_halt_reg_dly3;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_input_accept59_out;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg_reg_n_0;
  wire sig_ld_new_cmd_reg;
  wire sig_mmap_reset_reg_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg;
  wire \sig_next_dre_src_align_reg_reg[0]_0 ;
  wire sig_next_eof_reg;
  wire [3:0]sig_next_last_strb_reg;
  wire sig_next_sequential_reg;
  wire [3:0]sig_next_strt_strb_reg;
  wire sig_pop_dqual_reg14_out;
  wire sig_push_coelsc_reg;
  wire sig_push_dqual_reg17_out;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_reg_empty_reg;
  wire sig_rd_sts_reg_full0;
  wire [1:1]sig_rdc2dre_dest_align;
  wire sig_rdc2dre_new_align;
  wire sig_rdc2dre_use_autodest;
  wire sig_rdc2sf_wlast;
  wire [3:0]sig_rdc2sf_wstrb;
  wire sig_rdc2sf_wvalid;
  wire sig_rsc2data_ready;
  wire [0:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_s_h_halt_reg_reg;
  wire sig_stat2rsc_status_ready;
  wire [3:0]sig_tlast_enables;
  wire sig_wr_fifo;

  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized2 \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO 
       (.D(p_0_in__0),
        .E(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_35 ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_34 ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_i_2_n_0 ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (sig_inhibit_rdy_n),
        .Q(sig_dbeat_cntr_reg__0),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out({sig_cmd_fifo_data_out[30:23],sig_cmd_fifo_data_out[21:14]}),
        .p_7_out(p_7_out),
        .sel(sig_wr_fifo),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_advance_pipe19_out__1(sig_advance_pipe19_out__1),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr[7]_i_3__0_n_0 ),
        .\sig_dbeat_cntr_reg[2]_0 (\sig_dbeat_cntr[4]_i_2_n_0 ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr[5]_i_2_n_0 ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr[7]_i_4_n_0 ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat1__0(sig_first_dbeat1__0),
        .sig_first_dbeat_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_36 ),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_n_0),
        .sig_good_mmap_dbeat15_out__0(sig_good_mmap_dbeat15_out__0),
        .sig_init_done(sig_init_done),
        .sig_last_dbeat__1(sig_last_dbeat__1),
        .sig_last_dbeat_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_33 ),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_n_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_32 ),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_cmd_cmplt_reg_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_pop_dqual_reg14_out(sig_pop_dqual_reg14_out),
        .sig_push_dqual_reg17_out(sig_push_dqual_reg17_out),
        .sig_rdc2dre_new_align(sig_rdc2dre_new_align),
        .sig_rdc2dre_use_autodest(sig_rdc2dre_use_autodest),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  LUT6 #(
    .INIT(64'h80888888FFFFFFFF)) 
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_i_2 
       (.I0(sig_good_mmap_dbeat15_out__0),
        .I1(sig_rdc2dre_new_align),
        .I2(sig_next_calc_error_reg),
        .I3(sig_dqual_reg_full),
        .I4(m_axi_rlast),
        .I5(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_35 ),
        .Q(sig_rdc2dre_use_autodest),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_i_2 
       (.I0(sig_next_sequential_reg),
        .I1(sig_next_eof_reg),
        .I2(sig_next_cmd_cmplt_reg),
        .O(p_7_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_34 ),
        .Q(sig_rdc2dre_new_align),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  LUT5 #(
    .INIT(32'hFFFBAAFB)) 
    \GEN_INPUT_REG[0].sig_input_data_reg[0][8]_i_1 
       (.I0(sig_halt_reg_dly1_reg),
        .I1(sig_last_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[0]),
        .I3(sig_first_dbeat_reg_n_0),
        .I4(sig_next_strt_strb_reg[0]),
        .O(sig_rdc2sf_wstrb[0]));
  LUT5 #(
    .INIT(32'h30FF32FF)) 
    \GEN_INPUT_REG[0].sig_input_data_reg[0][9]_i_1 
       (.I0(sig_rdc2sf_wvalid),
        .I1(sig_dre_tvalid_i_reg),
        .I2(sig_flush_db1),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I4(sig_rdc2sf_wstrb[0]),
        .O(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9] ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808A8A)) 
    \GEN_INPUT_REG[0].sig_input_data_reg[0][9]_i_2 
       (.I0(sig_input_accept59_out),
        .I1(sig_next_strt_strb_reg[0]),
        .I2(sig_first_dbeat_reg_n_0),
        .I3(sig_next_last_strb_reg[0]),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(sig_halt_reg_dly1_reg),
        .O(\GEN_INPUT_REG[0].sig_input_data_reg_reg[0][9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \GEN_INPUT_REG[0].sig_input_data_reg[0][9]_i_3 
       (.I0(sig_rdc2sf_wstrb[1]),
        .I1(sig_rdc2sf_wstrb[2]),
        .I2(sig_rdc2sf_wlast),
        .I3(sig_rdc2sf_wstrb[3]),
        .O(sig_tlast_enables[0]));
  LUT5 #(
    .INIT(32'hFFFBAAFB)) 
    \GEN_INPUT_REG[1].sig_input_data_reg[1][8]_i_1 
       (.I0(sig_halt_reg_dly1_reg),
        .I1(sig_last_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[1]),
        .I3(sig_first_dbeat_reg_n_0),
        .I4(sig_next_strt_strb_reg[1]),
        .O(sig_rdc2sf_wstrb[1]));
  LUT5 #(
    .INIT(32'h30FF32FF)) 
    \GEN_INPUT_REG[1].sig_input_data_reg[1][9]_i_1 
       (.I0(sig_rdc2sf_wvalid),
        .I1(sig_dre_tvalid_i_reg),
        .I2(sig_flush_db1),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I4(sig_rdc2sf_wstrb[1]),
        .O(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9] ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808A8A)) 
    \GEN_INPUT_REG[1].sig_input_data_reg[1][9]_i_2 
       (.I0(sig_input_accept59_out),
        .I1(sig_next_strt_strb_reg[1]),
        .I2(sig_first_dbeat_reg_n_0),
        .I3(sig_next_last_strb_reg[1]),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(sig_halt_reg_dly1_reg),
        .O(\GEN_INPUT_REG[1].sig_input_data_reg_reg[1][9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \GEN_INPUT_REG[1].sig_input_data_reg[1][9]_i_3 
       (.I0(sig_rdc2sf_wstrb[3]),
        .I1(sig_rdc2sf_wstrb[2]),
        .I2(sig_rdc2sf_wlast),
        .I3(sig_rdc2sf_wstrb[1]),
        .O(sig_tlast_enables[1]));
  LUT5 #(
    .INIT(32'hFFFBAAFB)) 
    \GEN_INPUT_REG[2].sig_input_data_reg[2][8]_i_1 
       (.I0(sig_halt_reg_dly1_reg),
        .I1(sig_last_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[2]),
        .I3(sig_first_dbeat_reg_n_0),
        .I4(sig_next_strt_strb_reg[2]),
        .O(sig_rdc2sf_wstrb[2]));
  LUT5 #(
    .INIT(32'h30FF32FF)) 
    \GEN_INPUT_REG[2].sig_input_data_reg[2][9]_i_1 
       (.I0(sig_rdc2sf_wvalid),
        .I1(sig_dre_tvalid_i_reg),
        .I2(sig_flush_db1),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I4(sig_rdc2sf_wstrb[2]),
        .O(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808A8A)) 
    \GEN_INPUT_REG[2].sig_input_data_reg[2][9]_i_2 
       (.I0(sig_input_accept59_out),
        .I1(sig_next_strt_strb_reg[2]),
        .I2(sig_first_dbeat_reg_n_0),
        .I3(sig_next_last_strb_reg[2]),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(sig_halt_reg_dly1_reg),
        .O(E));
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_INPUT_REG[2].sig_input_data_reg[2][9]_i_3 
       (.I0(sig_rdc2sf_wstrb[3]),
        .I1(sig_rdc2sf_wlast),
        .I2(sig_rdc2sf_wstrb[2]),
        .O(sig_tlast_enables[2]));
  LUT6 #(
    .INIT(64'h0020003000200020)) 
    \GEN_INPUT_REG[2].sig_input_data_reg[2][9]_i_4 
       (.I0(sig_halt_reg_dly1_reg),
        .I1(sig_addr_posted_cntr_eq_0__1),
        .I2(sig_dqual_reg_full),
        .I3(sig_next_calc_error_reg),
        .I4(sig_data2rsc_valid),
        .I5(m_axi_rvalid),
        .O(sig_rdc2sf_wvalid));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \GEN_INPUT_REG[2].sig_input_data_reg[2][9]_i_5 
       (.I0(sig_halt_reg_dly1_reg),
        .I1(sig_next_calc_error_reg),
        .I2(sig_dqual_reg_full),
        .I3(sig_addr_posted_cntr_eq_0__1),
        .I4(m_axi_rlast),
        .I5(sig_next_eof_reg),
        .O(sig_rdc2sf_wlast));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_INPUT_REG[2].sig_input_data_reg[2][9]_i_6 
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[0]),
        .I2(sig_addr_posted_cntr[2]),
        .O(sig_addr_posted_cntr_eq_0__1));
  LUT5 #(
    .INIT(32'hFFFBAAFB)) 
    \GEN_INPUT_REG[3].sig_input_data_reg[3][8]_i_1 
       (.I0(sig_halt_reg_dly1_reg),
        .I1(sig_last_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[3]),
        .I3(sig_first_dbeat_reg_n_0),
        .I4(sig_next_strt_strb_reg[3]),
        .O(sig_rdc2sf_wstrb[3]));
  LUT5 #(
    .INIT(32'h30FF32FF)) 
    \GEN_INPUT_REG[3].sig_input_data_reg[3][9]_i_1 
       (.I0(sig_rdc2sf_wvalid),
        .I1(sig_dre_tvalid_i_reg),
        .I2(sig_flush_db1),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .I4(sig_rdc2sf_wstrb[3]),
        .O(\GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9] ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808A8A)) 
    \GEN_INPUT_REG[3].sig_input_data_reg[3][9]_i_2 
       (.I0(sig_input_accept59_out),
        .I1(sig_next_strt_strb_reg[3]),
        .I2(sig_first_dbeat_reg_n_0),
        .I3(sig_next_last_strb_reg[3]),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(sig_halt_reg_dly1_reg),
        .O(\GEN_INPUT_REG[3].sig_input_data_reg_reg[3][9]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808A8A)) 
    \GEN_INPUT_REG[3].sig_input_data_reg[3][9]_i_3 
       (.I0(sig_rdc2sf_wlast),
        .I1(sig_next_strt_strb_reg[3]),
        .I2(sig_first_dbeat_reg_n_0),
        .I3(sig_next_last_strb_reg[3]),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(sig_halt_reg_dly1_reg),
        .O(sig_tlast_enables[3]));
  LUT6 #(
    .INIT(64'h8B88B8BBB8BB8B88)) 
    \GEN_MUXFARM_32.sig_shift_case_reg[1]_i_2 
       (.I0(\sig_next_dre_src_align_reg_reg[0]_0 ),
        .I1(sig_rdc2dre_use_autodest),
        .I2(Q[0]),
        .I3(\GEN_MUXFARM_32.sig_shift_case_reg_reg[0] ),
        .I4(sig_rdc2dre_dest_align),
        .I5(Q[1]),
        .O(\GEN_MUXFARM_32.sig_shift_case_reg_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hEA5555A8)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_last_mmap_dbeat_reg_reg_n_0),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[2]),
        .I3(out),
        .I4(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hFA04DFA0)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(out),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_addr_posted_cntr[1]),
        .I4(sig_last_mmap_dbeat_reg_reg_n_0),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hCCC8ECCC)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(out),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_addr_posted_cntr[1]),
        .I4(sig_last_mmap_dbeat_reg_reg_n_0),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_coelsc_decerr_reg_i_1
       (.I0(m_axi_rresp[1]),
        .I1(m_axi_rvalid),
        .I2(m_axi_rresp[0]),
        .I3(sig_data2rsc_decerr),
        .O(sig_coelsc_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_decerr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_decerr_reg0),
        .Q(sig_data2rsc_decerr),
        .R(sig_coelsc_reg_full_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_coelsc_interr_reg_i_1
       (.I0(sig_next_calc_error_reg),
        .I1(sig_data2rsc_calc_err),
        .O(sig_coelsc_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_interr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_interr_reg0),
        .Q(sig_data2rsc_calc_err),
        .R(sig_coelsc_reg_full_i_1_n_0));
  LUT5 #(
    .INIT(32'h2A00FFFF)) 
    sig_coelsc_reg_full_i_1
       (.I0(sig_data2rsc_valid),
        .I1(sig_ld_new_cmd_reg),
        .I2(sig_next_calc_error_reg),
        .I3(sig_rsc2data_ready),
        .I4(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .O(sig_coelsc_reg_full_i_1_n_0));
  LUT4 #(
    .INIT(16'hF444)) 
    sig_coelsc_reg_full_i_2
       (.I0(sig_data2rsc_valid),
        .I1(sig_good_mmap_dbeat15_out__0),
        .I2(sig_ld_new_cmd_reg),
        .I3(sig_next_calc_error_reg),
        .O(sig_push_coelsc_reg));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    sig_coelsc_reg_full_i_3
       (.I0(sig_next_calc_error_reg),
        .I1(sig_next_cmd_cmplt_reg),
        .I2(m_axi_rlast),
        .O(sig_cmd_cmplt_last_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_cmd_cmplt_last_dbeat),
        .Q(sig_data2rsc_valid),
        .R(sig_coelsc_reg_full_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    sig_coelsc_slverr_reg_i_1
       (.I0(m_axi_rresp[1]),
        .I1(m_axi_rvalid),
        .I2(m_axi_rresp[0]),
        .I3(sig_data2rsc_slverr),
        .O(sig_coelsc_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_slverr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_slverr_reg0),
        .Q(sig_data2rsc_slverr),
        .R(sig_coelsc_reg_full_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_dbeat_cntr[4]_i_2 
       (.I0(sig_dbeat_cntr_reg__0[2]),
        .I1(sig_dbeat_cntr_reg__0[0]),
        .I2(sig_dbeat_cntr_reg__0[1]),
        .I3(sig_dbeat_cntr_reg__0[3]),
        .O(\sig_dbeat_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_dbeat_cntr[5]_i_2 
       (.I0(sig_dbeat_cntr_reg__0[3]),
        .I1(sig_dbeat_cntr_reg__0[1]),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[2]),
        .I4(sig_dbeat_cntr_reg__0[4]),
        .O(\sig_dbeat_cntr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \sig_dbeat_cntr[7]_i_3__0 
       (.I0(sig_good_mmap_dbeat15_out__0),
        .I1(sig_dbeat_cntr_reg__0[2]),
        .I2(sig_dbeat_cntr_reg__0[3]),
        .I3(sig_dbeat_cntr_reg__0[0]),
        .I4(sig_dbeat_cntr_reg__0[1]),
        .I5(\sig_dbeat_cntr[7]_i_5_n_0 ),
        .O(\sig_dbeat_cntr[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_dbeat_cntr[7]_i_4 
       (.I0(sig_dbeat_cntr_reg__0[4]),
        .I1(sig_dbeat_cntr_reg__0[2]),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[1]),
        .I4(sig_dbeat_cntr_reg__0[3]),
        .I5(sig_dbeat_cntr_reg__0[5]),
        .O(\sig_dbeat_cntr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_dbeat_cntr[7]_i_5 
       (.I0(sig_dbeat_cntr_reg__0[7]),
        .I1(sig_dbeat_cntr_reg__0[6]),
        .I2(sig_dbeat_cntr_reg__0[4]),
        .I3(sig_dbeat_cntr_reg__0[5]),
        .O(\sig_dbeat_cntr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(p_0_in__0[0]),
        .Q(sig_dbeat_cntr_reg__0[0]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(p_0_in__0[1]),
        .Q(sig_dbeat_cntr_reg__0[1]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(p_0_in__0[2]),
        .Q(sig_dbeat_cntr_reg__0[2]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(p_0_in__0[3]),
        .Q(sig_dbeat_cntr_reg__0[3]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(p_0_in__0[4]),
        .Q(sig_dbeat_cntr_reg__0[4]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(p_0_in__0[5]),
        .Q(sig_dbeat_cntr_reg__0[5]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(p_0_in__0[6]),
        .Q(sig_dbeat_cntr_reg__0[6]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(p_0_in__0[7]),
        .Q(sig_dbeat_cntr_reg__0[7]),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_push_dqual_reg17_out),
        .Q(sig_dqual_reg_full),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_dbeat_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_36 ),
        .Q(sig_first_dbeat_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sig_flush_db1_i_2
       (.I0(sig_next_eof_reg),
        .I1(sig_next_sequential_reg),
        .O(sig_flush_db1_reg));
  LUT5 #(
    .INIT(32'hFFFF8880)) 
    sig_halt_cmplt_i_1__1
       (.I0(sig_data2rst_stop_cmplt),
        .I1(sig_halt_reg_dly1_reg),
        .I2(sig_addr2rsc_calc_error),
        .I3(sig_addr_reg_empty),
        .I4(p_36_out),
        .O(sig_halt_cmplt_reg));
  LUT5 #(
    .INIT(32'h8888888A)) 
    sig_halt_cmplt_i_2__0
       (.I0(sig_halt_reg_dly3),
        .I1(sig_next_calc_error_reg),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_addr_posted_cntr[0]),
        .I4(sig_addr_posted_cntr[2]),
        .O(sig_data2rst_stop_cmplt));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_h_halt_reg_reg),
        .Q(sig_halt_reg_dly1_reg),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    sig_last_dbeat_i_2
       (.I0(sig_dbeat_cntr_reg__0[2]),
        .I1(sig_dbeat_cntr_reg__0[3]),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[1]),
        .I4(\sig_dbeat_cntr[7]_i_5_n_0 ),
        .I5(sig_good_mmap_dbeat15_out__0),
        .O(sig_first_dbeat1__0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sig_last_dbeat_i_4
       (.I0(\sig_dbeat_cntr[7]_i_5_n_0 ),
        .I1(sig_dbeat_cntr_reg__0[1]),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[3]),
        .I4(sig_dbeat_cntr_reg__0[2]),
        .I5(sig_good_mmap_dbeat15_out__0),
        .O(sig_last_dbeat__1));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_33 ),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg_reg_n_0),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_32 ),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[26]),
        .Q(sig_next_calc_error_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    sig_next_cmd_cmplt_reg_i_3
       (.I0(sig_next_calc_error_reg),
        .I1(sig_dqual_reg_full),
        .I2(sig_good_mmap_dbeat15_out__0),
        .I3(m_axi_rlast),
        .O(sig_pop_dqual_reg14_out));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[25]),
        .Q(sig_next_cmd_cmplt_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_dre_dest_align_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[29]),
        .Q(\GEN_MUXFARM_32.sig_shift_case_reg_reg[0] ),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_dre_dest_align_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[30]),
        .Q(sig_rdc2dre_dest_align),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_dre_src_align_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[27]),
        .Q(Q[0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_dre_src_align_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[28]),
        .Q(Q[1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[23]),
        .Q(sig_next_eof_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[18]),
        .Q(sig_next_last_strb_reg[0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[19]),
        .Q(sig_next_last_strb_reg[1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[20]),
        .Q(sig_next_last_strb_reg[2]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[21]),
        .Q(sig_next_last_strb_reg[3]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[24]),
        .Q(sig_next_sequential_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[14]),
        .Q(sig_next_strt_strb_reg[0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[15]),
        .Q(sig_next_strt_strb_reg[1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[16]),
        .Q(sig_next_strt_strb_reg[2]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg17_out),
        .D(sig_cmd_fifo_data_out[17]),
        .Q(sig_next_strt_strb_reg[3]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_decerr_reg_i_1
       (.I0(sig_data2rsc_decerr),
        .I1(sig_rsc2stat_status),
        .O(sig_rd_sts_decerr_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_rd_sts_interr_reg_i_2
       (.I0(sig_data2rsc_valid),
        .I1(sig_rsc2data_ready),
        .O(sig_push_rd_sts_reg));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sig_rd_sts_reg_empty_i_1
       (.I0(sig_data2rsc_valid),
        .I1(sig_data2rsc_calc_err),
        .O(sig_rd_sts_reg_empty_reg));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_reg_full_i_1
       (.I0(sig_data2rsc_calc_err),
        .I1(sig_data2rsc_valid),
        .O(sig_rd_sts_reg_full0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_reset" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_reset
   (p_18_out,
    sig_stream_rst,
    sig_addr_reg_empty_reg,
    m_axi_aclk);
  output p_18_out;
  input sig_stream_rst;
  input sig_addr_reg_empty_reg;
  input m_axi_aclk;

  wire m_axi_aclk;
  wire p_18_out;
  wire sig_addr_reg_empty_reg;
  wire sig_stream_rst;

  FDRE #(
    .INIT(1'b0)) 
    sig_halt_cmplt_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_addr_reg_empty_reg),
        .Q(p_18_out),
        .R(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "axi_datamover_reset" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_reset_2
   (sig_s_h_halt_reg_reg_0,
    p_36_out,
    sig_s_h_halt_reg_reg_1,
    sig_rst2all_stop_request,
    sig_halt_reg_reg,
    sig_rst2dm_resetn,
    m_axi_aclk,
    sig_halt_reg_reg_0,
    sig_halt_request_reg,
    sig_halt_reg_reg_1);
  output sig_s_h_halt_reg_reg_0;
  output p_36_out;
  output sig_s_h_halt_reg_reg_1;
  output sig_rst2all_stop_request;
  output sig_halt_reg_reg;
  input sig_rst2dm_resetn;
  input m_axi_aclk;
  input sig_halt_reg_reg_0;
  input sig_halt_request_reg;
  input sig_halt_reg_reg_1;

  wire m_axi_aclk;
  wire p_36_out;
  wire sig_halt_reg_reg;
  wire sig_halt_reg_reg_0;
  wire sig_halt_reg_reg_1;
  wire sig_halt_request_reg;
  wire sig_rst2all_stop_request;
  wire sig_rst2dm_resetn;
  wire sig_s_h_halt_reg_reg_0;
  wire sig_s_h_halt_reg_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_rst2dm_resetn),
        .Q(sig_s_h_halt_reg_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_cmplt_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_halt_reg_reg_0),
        .Q(p_36_out),
        .R(sig_s_h_halt_reg_reg_1));
  LUT2 #(
    .INIT(4'hE)) 
    sig_halt_reg_i_1
       (.I0(sig_rst2all_stop_request),
        .I1(sig_halt_reg_reg_1),
        .O(sig_halt_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_s_h_halt_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_halt_request_reg),
        .Q(sig_rst2all_stop_request),
        .R(sig_s_h_halt_reg_reg_1));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_strb_reg_out[3]_i_1 
       (.I0(sig_s_h_halt_reg_reg_0),
        .O(sig_s_h_halt_reg_reg_1));
endmodule

(* ORIG_REF_NAME = "axi_datamover_s2mm_full_wrap" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_s2mm_full_wrap
   (m_axi_wvalid,
    m_axi_awvalid,
    sig_next_eof_reg,
    m_axi_wlast,
    sig_halt_reg_dly3,
    sig_init_reg2,
    p_18_out,
    sig_init_done,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    sig_init_done_0,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    sig_init_done_1,
    sig_init_done_2,
    sig_init_done_3,
    sig_init_done_4,
    sig_data2wsc_cmd_cmplt_reg,
    in,
    sig_dbeat_cntr_eq_0,
    sig_good_mmap_dbeat13_out__0,
    \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] ,
    sig_output_xfer57_out__0,
    m_axi_bready,
    cntlr2reg_interr_set0__2,
    \sig_sm_state_reg[1] ,
    \sig_strb_skid_reg_reg[3] ,
    p_14_out,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_aclk,
    sig_stream_rst,
    sig_init_reg,
    sig_data2addr_stop_req,
    sig_mmap_reset_reg_reg,
    sig_mmap_reset_reg_reg_0,
    sig_mmap_reset_reg_reg_1,
    sig_mmap_reset_reg_reg_2,
    sig_mmap_reset_reg_reg_3,
    sig_mmap_reset_reg_reg_4,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    p_19_out,
    m_axi_awready,
    m_axi_wready,
    m_axi_bvalid,
    sig_tlast_error,
    sig_mm2s_interr,
    sig_s2mm_interr,
    p_35_out,
    sig_dma_go_reg,
    p_34_out,
    Q,
    D,
    sig_sm_ld_cmd_reg,
    sig_cntl2s2mm_cmd_tvalid,
    sig_cntl2s2mm_sts_tready,
    m_axi_bresp,
    \sig_da_register_lsb_reg[31] );
  output m_axi_wvalid;
  output m_axi_awvalid;
  output sig_next_eof_reg;
  output m_axi_wlast;
  output sig_halt_reg_dly3;
  output sig_init_reg2;
  output p_18_out;
  output sig_init_done;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  output sig_init_done_0;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  output sig_init_done_1;
  output sig_init_done_2;
  output sig_init_done_3;
  output sig_init_done_4;
  output sig_data2wsc_cmd_cmplt_reg;
  output [0:0]in;
  output sig_dbeat_cntr_eq_0;
  output sig_good_mmap_dbeat13_out__0;
  output \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] ;
  output sig_output_xfer57_out__0;
  output m_axi_bready;
  output cntlr2reg_interr_set0__2;
  output \sig_sm_state_reg[1] ;
  output [3:0]\sig_strb_skid_reg_reg[3] ;
  output [2:0]p_14_out;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  input m_axi_aclk;
  input sig_stream_rst;
  input sig_init_reg;
  input sig_data2addr_stop_req;
  input sig_mmap_reset_reg_reg;
  input sig_mmap_reset_reg_reg_0;
  input sig_mmap_reset_reg_reg_1;
  input sig_mmap_reset_reg_reg_2;
  input sig_mmap_reset_reg_reg_3;
  input sig_mmap_reset_reg_reg_4;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input p_19_out;
  input m_axi_awready;
  input m_axi_wready;
  input m_axi_bvalid;
  input sig_tlast_error;
  input sig_mm2s_interr;
  input sig_s2mm_interr;
  input p_35_out;
  input sig_dma_go_reg;
  input p_34_out;
  input [0:0]Q;
  input [31:0]D;
  input [0:0]sig_sm_ld_cmd_reg;
  input sig_cntl2s2mm_cmd_tvalid;
  input sig_cntl2s2mm_sts_tready;
  input [1:0]m_axi_bresp;
  input [55:0]\sig_da_register_lsb_reg[31] ;

  wire [31:0]D;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo ;
  wire \GEN_INCLUDE_PCC.I_MSTR_PCC_n_12 ;
  wire \GEN_INCLUDE_PCC.I_MSTR_PCC_n_13 ;
  wire \GEN_INCLUDE_PCC.I_MSTR_PCC_n_14 ;
  wire \GEN_INCLUDE_PCC.I_MSTR_PCC_n_15 ;
  wire \GEN_INCLUDE_PCC.I_MSTR_PCC_n_53 ;
  wire \GEN_INCLUDE_PCC.I_MSTR_PCC_n_54 ;
  wire \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_wr_fifo ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire I_ADDR_CNTL_n_5;
  wire I_CMD_STATUS_n_25;
  wire I_CMD_STATUS_n_26;
  wire I_CMD_STATUS_n_27;
  wire I_CMD_STATUS_n_28;
  wire I_CMD_STATUS_n_29;
  wire I_CMD_STATUS_n_30;
  wire I_CMD_STATUS_n_31;
  wire I_CMD_STATUS_n_32;
  wire I_CMD_STATUS_n_33;
  wire I_CMD_STATUS_n_34;
  wire I_CMD_STATUS_n_35;
  wire I_CMD_STATUS_n_36;
  wire I_CMD_STATUS_n_37;
  wire I_CMD_STATUS_n_38;
  wire I_CMD_STATUS_n_39;
  wire I_CMD_STATUS_n_40;
  wire I_CMD_STATUS_n_43;
  wire I_CMD_STATUS_n_44;
  wire I_CMD_STATUS_n_45;
  wire I_CMD_STATUS_n_46;
  wire I_CMD_STATUS_n_47;
  wire I_CMD_STATUS_n_48;
  wire I_CMD_STATUS_n_49;
  wire I_CMD_STATUS_n_50;
  wire I_CMD_STATUS_n_51;
  wire I_CMD_STATUS_n_52;
  wire I_CMD_STATUS_n_53;
  wire I_CMD_STATUS_n_54;
  wire I_CMD_STATUS_n_55;
  wire I_CMD_STATUS_n_56;
  wire I_CMD_STATUS_n_57;
  wire I_CMD_STATUS_n_58;
  wire I_CMD_STATUS_n_59;
  wire I_CMD_STATUS_n_60;
  wire I_CMD_STATUS_n_61;
  wire I_CMD_STATUS_n_62;
  wire I_CMD_STATUS_n_63;
  wire I_CMD_STATUS_n_64;
  wire I_CMD_STATUS_n_65;
  wire I_CMD_STATUS_n_66;
  wire I_CMD_STATUS_n_7;
  wire I_WR_DATA_CNTL_n_0;
  wire I_WR_STATUS_CNTLR_n_3;
  wire [0:0]Q;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire cntlr2reg_interr_set0__2;
  wire [15:0]data;
  wire [0:0]in;
  wire m_axi_aclk;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [7:0]m_axi_awlen;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire p_0_in3_in;
  wire [1:0]p_10_out;
  wire p_12_out;
  wire [2:0]p_14_out;
  wire [0:0]p_17_out;
  wire p_18_out;
  wire p_19_out;
  wire p_1_out;
  wire [31:2]p_20_out;
  wire p_2_out;
  wire p_34_out;
  wire p_35_out;
  wire p_4_out;
  wire p_5_out;
  wire [3:0]p_7_out;
  wire [3:0]p_9_out;
  wire sig_addr2data_addr_posted;
  wire sig_addr2wsc_calc_error;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_eof_slice;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_type_slice;
  wire sig_cntl2s2mm_cmd_tvalid;
  wire sig_cntl2s2mm_sts_tready;
  wire [55:0]\sig_da_register_lsb_reg[31] ;
  wire sig_data2addr_stop_req;
  wire sig_data2addr_stop_req_0;
  wire sig_data2rst_stop_cmplt;
  wire sig_data2skid_wlast;
  wire [3:0]sig_data2skid_wstrb;
  wire sig_data2skid_wvalid;
  wire sig_data2wsc_calc_err;
  wire sig_data2wsc_cmd_cmplt;
  wire sig_data2wsc_cmd_cmplt_reg;
  wire sig_data2wsc_last_err;
  wire sig_dbeat_cntr_eq_0;
  wire sig_dma_go_reg;
  wire sig_good_mmap_dbeat13_out__0;
  wire sig_halt_reg_dly1;
  wire sig_halt_reg_dly3;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_1;
  wire sig_init_done_2;
  wire sig_init_done_3;
  wire sig_init_done_4;
  wire sig_init_reg;
  wire sig_init_reg2;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  wire sig_mm2s_interr;
  wire sig_mmap_reset_reg_reg;
  wire sig_mmap_reset_reg_reg_0;
  wire sig_mmap_reset_reg_reg_1;
  wire sig_mmap_reset_reg_reg_2;
  wire sig_mmap_reset_reg_reg_3;
  wire sig_mmap_reset_reg_reg_4;
  wire sig_next_eof_reg;
  wire sig_output_xfer57_out__0;
  wire sig_push_input_reg11_out;
  wire sig_push_to_wsc;
  wire sig_s2mm_interr;
  wire sig_skid2data_wready;
  wire [0:0]sig_sm_ld_cmd_reg;
  wire \sig_sm_state_reg[1] ;
  wire sig_stat2wsc_status_ready;
  wire [3:0]sig_strb_skid_mux_out;
  wire [3:0]sig_strb_skid_reg;
  wire [3:0]\sig_strb_skid_reg_reg[3] ;
  wire sig_stream_rst;
  wire sig_tlast_err_stop;
  wire sig_tlast_error;
  wire sig_wdc_status_going_full;
  wire sig_wsc2rst_stop_cmplt;
  wire [6:4]sig_wsc2stat_status;
  wire sig_wsc2stat_status_valid;

  CMDA_DRAM_axi_cdma_0_0_axi_datamover_pcc__parameterized0 \GEN_INCLUDE_PCC.I_MSTR_PCC 
       (.FIFO_Full_reg(I_WR_DATA_CNTL_n_0),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (sig_data2wsc_cmd_cmplt_reg),
        .Q({data,I_CMD_STATUS_n_25,I_CMD_STATUS_n_26,I_CMD_STATUS_n_27,I_CMD_STATUS_n_28,I_CMD_STATUS_n_29,I_CMD_STATUS_n_30,I_CMD_STATUS_n_31,I_CMD_STATUS_n_32,I_CMD_STATUS_n_33,I_CMD_STATUS_n_34,I_CMD_STATUS_n_35,I_CMD_STATUS_n_36,I_CMD_STATUS_n_37,I_CMD_STATUS_n_38,I_CMD_STATUS_n_39,I_CMD_STATUS_n_40,sig_cmd_eof_slice,sig_cmd_type_slice,I_CMD_STATUS_n_43,I_CMD_STATUS_n_44,I_CMD_STATUS_n_45,I_CMD_STATUS_n_46,I_CMD_STATUS_n_47,I_CMD_STATUS_n_48,I_CMD_STATUS_n_49,I_CMD_STATUS_n_50,I_CMD_STATUS_n_51,I_CMD_STATUS_n_52,I_CMD_STATUS_n_53,I_CMD_STATUS_n_54,I_CMD_STATUS_n_55,I_CMD_STATUS_n_56,I_CMD_STATUS_n_57,I_CMD_STATUS_n_58,I_CMD_STATUS_n_59,I_CMD_STATUS_n_60,I_CMD_STATUS_n_61,I_CMD_STATUS_n_62,I_CMD_STATUS_n_63,I_CMD_STATUS_n_64,I_CMD_STATUS_n_65}),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (\GEN_INCLUDE_PCC.I_MSTR_PCC_n_54 ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg (\GEN_INCLUDE_PCC.I_MSTR_PCC_n_53 ),
        .cntlr2reg_interr_set0__2(cntlr2reg_interr_set0__2),
        .in({p_2_out,p_4_out,p_5_out,p_7_out,\GEN_INCLUDE_PCC.I_MSTR_PCC_n_12 ,\GEN_INCLUDE_PCC.I_MSTR_PCC_n_13 ,\GEN_INCLUDE_PCC.I_MSTR_PCC_n_14 ,\GEN_INCLUDE_PCC.I_MSTR_PCC_n_15 ,p_9_out}),
        .m_axi_aclk(m_axi_aclk),
        .p_12_out(p_12_out),
        .p_17_out(p_17_out),
        .p_1_out(p_1_out),
        .p_35_out(p_35_out),
        .sig_calc_error_pushed_reg_0(in),
        .sig_calc_error_reg_reg_0(I_CMD_STATUS_n_66),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cntl2s2mm_cmd_tvalid(sig_cntl2s2mm_cmd_tvalid),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(sig_init_done),
        .sig_init_reg(sig_init_reg),
        .sig_mm2s_interr(sig_mm2s_interr),
        .\sig_next_addr_reg_reg[31] ({p_20_out,p_10_out}),
        .sig_push_input_reg11_out(sig_push_input_reg11_out),
        .sig_s2mm_interr(sig_s2mm_interr),
        .sig_sm_ld_cmd_reg(sig_sm_ld_cmd_reg),
        .sig_wr_fifo(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo ),
        .sig_wr_fifo_0(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo ));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_addr_cntl__parameterized0 I_ADDR_CNTL
       (.\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (sig_data2wsc_cmd_cmplt_reg),
        .in({in,p_17_out,p_9_out,p_20_out,p_10_out}),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .out(sig_addr2data_addr_posted),
        .p_12_out(p_12_out),
        .p_18_out(p_18_out),
        .sig_addr2wsc_calc_error(sig_addr2wsc_calc_error),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_data2addr_stop_req_0(sig_data2addr_stop_req_0),
        .sig_data2rst_stop_cmplt(sig_data2rst_stop_cmplt),
        .sig_halt_cmplt_reg(I_ADDR_CNTL_n_5),
        .sig_init_done_3(sig_init_done_3),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg_3),
        .sig_stream_rst(sig_stream_rst),
        .sig_wr_fifo(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo ),
        .sig_wsc2rst_stop_cmplt(sig_wsc2rst_stop_cmplt));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_cmd_status I_CMD_STATUS
       (.\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg (I_CMD_STATUS_n_7),
        .Q(Q),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_1 (\GEN_INCLUDE_PCC.I_MSTR_PCC_n_54 ),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .p_14_out(p_14_out),
        .p_34_out(p_34_out),
        .\sig_addr_cntr_lsh_kh_reg[31] ({data,I_CMD_STATUS_n_25,I_CMD_STATUS_n_26,I_CMD_STATUS_n_27,I_CMD_STATUS_n_28,I_CMD_STATUS_n_29,I_CMD_STATUS_n_30,I_CMD_STATUS_n_31,I_CMD_STATUS_n_32,I_CMD_STATUS_n_33,I_CMD_STATUS_n_34,I_CMD_STATUS_n_35,I_CMD_STATUS_n_36,I_CMD_STATUS_n_37,I_CMD_STATUS_n_38,I_CMD_STATUS_n_39,I_CMD_STATUS_n_40,sig_cmd_eof_slice,sig_cmd_type_slice,I_CMD_STATUS_n_43,I_CMD_STATUS_n_44,I_CMD_STATUS_n_45,I_CMD_STATUS_n_46,I_CMD_STATUS_n_47,I_CMD_STATUS_n_48,I_CMD_STATUS_n_49,I_CMD_STATUS_n_50,I_CMD_STATUS_n_51,I_CMD_STATUS_n_52,I_CMD_STATUS_n_53,I_CMD_STATUS_n_54,I_CMD_STATUS_n_55,I_CMD_STATUS_n_56,I_CMD_STATUS_n_57,I_CMD_STATUS_n_58,I_CMD_STATUS_n_59,I_CMD_STATUS_n_60,I_CMD_STATUS_n_61,I_CMD_STATUS_n_62,I_CMD_STATUS_n_63,I_CMD_STATUS_n_64,I_CMD_STATUS_n_65}),
        .sig_calc_error_reg_reg(I_CMD_STATUS_n_66),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(\GEN_INCLUDE_PCC.I_MSTR_PCC_n_53 ),
        .sig_cntl2s2mm_sts_tready(sig_cntl2s2mm_sts_tready),
        .\sig_da_register_lsb_reg[31] (\sig_da_register_lsb_reg[31] ),
        .sig_dma_go_reg(sig_dma_go_reg),
        .sig_init_done(sig_init_done),
        .sig_init_done_0(sig_init_done_0),
        .sig_init_reg(sig_init_reg),
        .sig_init_reg2(sig_init_reg2),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg),
        .sig_mmap_reset_reg_reg_0(sig_mmap_reset_reg_reg_0),
        .sig_push_input_reg11_out(sig_push_input_reg11_out),
        .sig_sm_ld_cmd_reg(sig_sm_ld_cmd_reg),
        .\sig_sm_state_reg[1] (\sig_sm_state_reg[1] ),
        .sig_stat2wsc_status_ready(sig_stat2wsc_status_ready),
        .sig_stream_rst(sig_stream_rst),
        .sig_wsc2stat_status(sig_wsc2stat_status),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_reset I_RESET
       (.m_axi_aclk(m_axi_aclk),
        .p_18_out(p_18_out),
        .sig_addr_reg_empty_reg(I_ADDR_CNTL_n_5),
        .sig_stream_rst(sig_stream_rst));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_skid2mm_buf I_S2MM_MMAP_SKID_BUF
       (.D(D),
        .Q(sig_strb_skid_reg),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .out(p_0_in3_in),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2skid_wlast(sig_data2skid_wlast),
        .sig_data2skid_wvalid(sig_data2skid_wvalid),
        .sig_dqual_reg_empty_reg(sig_skid2data_wready),
        .sig_init_reg(sig_init_reg),
        .sig_last_skid_mux_out(sig_last_skid_mux_out),
        .sig_last_skid_reg(sig_last_skid_reg),
        .\sig_next_strt_strb_reg_reg[3] (sig_data2skid_wstrb),
        .\sig_next_strt_strb_reg_reg[3]_0 (sig_strb_skid_mux_out),
        .sig_stream_rst(sig_stream_rst));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_wrdata_cntl I_WR_DATA_CNTL
       (.FIFO_Full_reg(I_WR_STATUS_CNTLR_n_3),
        .\GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] (\GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] ),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (I_WR_DATA_CNTL_n_0),
        .Q(sig_strb_skid_reg),
        .in({sig_data2wsc_calc_err,sig_data2wsc_last_err,sig_data2wsc_cmd_cmplt}),
        .m_axi_aclk(m_axi_aclk),
        .out(p_0_in3_in),
        .p_19_out(p_19_out),
        .p_1_out(p_1_out),
        .sig_calc_error_reg_reg({in,p_2_out,p_4_out,p_5_out,p_7_out,\GEN_INCLUDE_PCC.I_MSTR_PCC_n_12 ,\GEN_INCLUDE_PCC.I_MSTR_PCC_n_13 ,\GEN_INCLUDE_PCC.I_MSTR_PCC_n_14 ,\GEN_INCLUDE_PCC.I_MSTR_PCC_n_15 ,p_9_out}),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_data2addr_stop_req_0(sig_data2addr_stop_req_0),
        .sig_data2rst_stop_cmplt(sig_data2rst_stop_cmplt),
        .sig_data2skid_wlast(sig_data2skid_wlast),
        .sig_data2skid_wvalid(sig_data2skid_wvalid),
        .sig_data2wsc_cmd_cmplt_reg_0(sig_data2wsc_cmd_cmplt_reg),
        .\sig_dbeat_cntr_reg[7]_0 (sig_dbeat_cntr_eq_0),
        .sig_dqual_reg_empty_reg_0(sig_halt_reg_dly3),
        .sig_dqual_reg_empty_reg_1(sig_good_mmap_dbeat13_out__0),
        .sig_halt_reg_dly1(sig_halt_reg_dly1),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_1(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done_4(sig_init_done_4),
        .sig_last_skid_mux_out(sig_last_skid_mux_out),
        .sig_last_skid_reg(sig_last_skid_reg),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg_4),
        .sig_next_eof_reg(sig_next_eof_reg),
        .sig_output_xfer57_out__0(sig_output_xfer57_out__0),
        .sig_posted_to_axi_reg(sig_addr2data_addr_posted),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_s_ready_out_reg(sig_skid2data_wready),
        .sig_stat2wsc_status_ready(sig_stat2wsc_status_ready),
        .\sig_strb_reg_out_reg[3] (sig_strb_skid_mux_out),
        .\sig_strb_skid_reg_reg[3] (\sig_strb_skid_reg_reg[3] ),
        .\sig_strb_skid_reg_reg[3]_0 (sig_data2skid_wstrb),
        .sig_stream_rst(sig_stream_rst),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_tlast_error(sig_tlast_error),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wr_fifo(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_wr_fifo ),
        .sig_wr_fifo_0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo ),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_wr_status_cntl I_WR_STATUS_CNTLR
       (.\INFERRED_GEN.cnt_i_reg[0] (I_WR_STATUS_CNTLR_n_3),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (I_CMD_STATUS_n_7),
        .in({sig_data2wsc_calc_err,sig_data2wsc_last_err,sig_data2wsc_cmd_cmplt}),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(sig_addr2data_addr_posted),
        .sig_addr2wsc_calc_error(sig_addr2wsc_calc_error),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_halt_reg_dly1(sig_halt_reg_dly1),
        .sig_halt_reg_dly3(sig_halt_reg_dly3),
        .sig_inhibit_rdy_n(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done_1(sig_init_done_1),
        .sig_init_done_2(sig_init_done_2),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg_1),
        .sig_mmap_reset_reg_reg_0(sig_mmap_reset_reg_reg_2),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_stream_rst(sig_stream_rst),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wr_fifo(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_wr_fifo ),
        .sig_wsc2rst_stop_cmplt(sig_wsc2rst_stop_cmplt),
        .sig_wsc2stat_status(sig_wsc2stat_status),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
endmodule

(* ORIG_REF_NAME = "axi_datamover_skid2mm_buf" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_skid2mm_buf
   (out,
    sig_dqual_reg_empty_reg,
    m_axi_wvalid,
    sig_last_skid_reg,
    m_axi_wlast,
    m_axi_wdata,
    Q,
    m_axi_wstrb,
    m_axi_aclk,
    sig_stream_rst,
    sig_data2skid_wlast,
    sig_last_skid_mux_out,
    m_axi_wready,
    sig_init_reg,
    sig_data2skid_wvalid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    D,
    \sig_next_strt_strb_reg_reg[3] ,
    \sig_next_strt_strb_reg_reg[3]_0 );
  output out;
  output sig_dqual_reg_empty_reg;
  output m_axi_wvalid;
  output sig_last_skid_reg;
  output m_axi_wlast;
  output [31:0]m_axi_wdata;
  output [3:0]Q;
  output [3:0]m_axi_wstrb;
  input m_axi_aclk;
  input sig_stream_rst;
  input sig_data2skid_wlast;
  input sig_last_skid_mux_out;
  input m_axi_wready;
  input sig_init_reg;
  input sig_data2skid_wvalid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [31:0]D;
  input [3:0]\sig_next_strt_strb_reg_reg[3] ;
  input [3:0]\sig_next_strt_strb_reg_reg[3]_0 ;

  wire [31:0]D;
  wire [3:0]Q;
  wire m_axi_aclk;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2skid_wlast;
  wire sig_data2skid_wvalid;
  wire \sig_data_reg_out[31]_i_1_n_0 ;
  wire [31:0]sig_data_skid_mux_out;
  wire [31:0]sig_data_skid_reg;
  wire sig_init_reg;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire [3:0]\sig_next_strt_strb_reg_reg[3] ;
  wire [3:0]\sig_next_strt_strb_reg_reg[3]_0 ;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_stream_rst;

  assign m_axi_wvalid = sig_m_valid_out;
  assign out = sig_s_ready_dup;
  assign sig_dqual_reg_empty_reg = sig_s_ready_out;
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[0]_i_1 
       (.I0(sig_data_skid_reg[0]),
        .I1(D[0]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[10]_i_1 
       (.I0(sig_data_skid_reg[10]),
        .I1(D[10]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[11]_i_1 
       (.I0(sig_data_skid_reg[11]),
        .I1(D[11]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[12]_i_1 
       (.I0(sig_data_skid_reg[12]),
        .I1(D[12]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[13]_i_1 
       (.I0(sig_data_skid_reg[13]),
        .I1(D[13]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[14]_i_1 
       (.I0(sig_data_skid_reg[14]),
        .I1(D[14]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[15]_i_1 
       (.I0(sig_data_skid_reg[15]),
        .I1(D[15]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[16]_i_1 
       (.I0(sig_data_skid_reg[16]),
        .I1(D[16]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[17]_i_1 
       (.I0(sig_data_skid_reg[17]),
        .I1(D[17]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[18]_i_1 
       (.I0(sig_data_skid_reg[18]),
        .I1(D[18]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[19]_i_1 
       (.I0(sig_data_skid_reg[19]),
        .I1(D[19]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[1]_i_1 
       (.I0(sig_data_skid_reg[1]),
        .I1(D[1]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[20]_i_1 
       (.I0(sig_data_skid_reg[20]),
        .I1(D[20]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[21]_i_1 
       (.I0(sig_data_skid_reg[21]),
        .I1(D[21]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[22]_i_1 
       (.I0(sig_data_skid_reg[22]),
        .I1(D[22]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[23]_i_1 
       (.I0(sig_data_skid_reg[23]),
        .I1(D[23]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[24]_i_1 
       (.I0(sig_data_skid_reg[24]),
        .I1(D[24]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[25]_i_1 
       (.I0(sig_data_skid_reg[25]),
        .I1(D[25]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[26]_i_1 
       (.I0(sig_data_skid_reg[26]),
        .I1(D[26]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[27]_i_1 
       (.I0(sig_data_skid_reg[27]),
        .I1(D[27]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[28]_i_1 
       (.I0(sig_data_skid_reg[28]),
        .I1(D[28]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[29]_i_1 
       (.I0(sig_data_skid_reg[29]),
        .I1(D[29]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[2]_i_1 
       (.I0(sig_data_skid_reg[2]),
        .I1(D[2]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[30]_i_1 
       (.I0(sig_data_skid_reg[30]),
        .I1(D[30]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[30]));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_data_reg_out[31]_i_1 
       (.I0(m_axi_wready),
        .I1(sig_m_valid_dup),
        .O(\sig_data_reg_out[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[31]_i_2 
       (.I0(sig_data_skid_reg[31]),
        .I1(D[31]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[3]_i_1 
       (.I0(sig_data_skid_reg[3]),
        .I1(D[3]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[4]_i_1 
       (.I0(sig_data_skid_reg[4]),
        .I1(D[4]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[5]_i_1 
       (.I0(sig_data_skid_reg[5]),
        .I1(D[5]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[6]_i_1 
       (.I0(sig_data_skid_reg[6]),
        .I1(D[6]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[7]_i_1 
       (.I0(sig_data_skid_reg[7]),
        .I1(D[7]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[8]_i_1 
       (.I0(sig_data_skid_reg[8]),
        .I1(D[8]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hCA)) 
    \sig_data_reg_out[9]_i_1 
       (.I0(sig_data_skid_reg[9]),
        .I1(D[9]),
        .I2(sig_s_ready_dup),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[0]),
        .Q(m_axi_wdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[10]),
        .Q(m_axi_wdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[11]),
        .Q(m_axi_wdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[12]),
        .Q(m_axi_wdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[13]),
        .Q(m_axi_wdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[14]),
        .Q(m_axi_wdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[15]),
        .Q(m_axi_wdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[16]),
        .Q(m_axi_wdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[17]),
        .Q(m_axi_wdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[18]),
        .Q(m_axi_wdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[19]),
        .Q(m_axi_wdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[1]),
        .Q(m_axi_wdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[20]),
        .Q(m_axi_wdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[21]),
        .Q(m_axi_wdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[22]),
        .Q(m_axi_wdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[23]),
        .Q(m_axi_wdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[24]),
        .Q(m_axi_wdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[25]),
        .Q(m_axi_wdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[26]),
        .Q(m_axi_wdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[27]),
        .Q(m_axi_wdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[28]),
        .Q(m_axi_wdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[29]),
        .Q(m_axi_wdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[2]),
        .Q(m_axi_wdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[30]),
        .Q(m_axi_wdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[31]),
        .Q(m_axi_wdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[3]),
        .Q(m_axi_wdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[4]),
        .Q(m_axi_wdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[5]),
        .Q(m_axi_wdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[6]),
        .Q(m_axi_wdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[7]),
        .Q(m_axi_wdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[8]),
        .Q(m_axi_wdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_data_skid_mux_out[9]),
        .Q(m_axi_wdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[0]),
        .Q(sig_data_skid_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[10]),
        .Q(sig_data_skid_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[11]),
        .Q(sig_data_skid_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[12]),
        .Q(sig_data_skid_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[13]),
        .Q(sig_data_skid_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[14]),
        .Q(sig_data_skid_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[15]),
        .Q(sig_data_skid_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[16]),
        .Q(sig_data_skid_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[17]),
        .Q(sig_data_skid_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[18]),
        .Q(sig_data_skid_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[19]),
        .Q(sig_data_skid_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[1]),
        .Q(sig_data_skid_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[20]),
        .Q(sig_data_skid_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[21]),
        .Q(sig_data_skid_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[22]),
        .Q(sig_data_skid_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[23]),
        .Q(sig_data_skid_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[24]),
        .Q(sig_data_skid_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[25]),
        .Q(sig_data_skid_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[26]),
        .Q(sig_data_skid_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[27]),
        .Q(sig_data_skid_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[28]),
        .Q(sig_data_skid_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[29]),
        .Q(sig_data_skid_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[2]),
        .Q(sig_data_skid_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[30]),
        .Q(sig_data_skid_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[31]),
        .Q(sig_data_skid_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[3]),
        .Q(sig_data_skid_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[4]),
        .Q(sig_data_skid_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[5]),
        .Q(sig_data_skid_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[6]),
        .Q(sig_data_skid_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[7]),
        .Q(sig_data_skid_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[8]),
        .Q(sig_data_skid_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[9]),
        .Q(sig_data_skid_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(sig_last_skid_mux_out),
        .Q(m_axi_wlast),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_data2skid_wlast),
        .Q(sig_last_skid_reg),
        .R(sig_stream_rst));
  LUT6 #(
    .INIT(64'h4444444400404040)) 
    sig_m_valid_dup_i_1
       (.I0(sig_init_reg),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I2(sig_m_valid_dup),
        .I3(sig_s_ready_dup),
        .I4(m_axi_wready),
        .I5(sig_data2skid_wvalid),
        .O(sig_m_valid_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFAEEE)) 
    sig_s_ready_dup_i_1
       (.I0(sig_init_reg),
        .I1(sig_s_ready_dup),
        .I2(sig_m_valid_dup),
        .I3(sig_data2skid_wvalid),
        .I4(m_axi_wready),
        .O(sig_s_ready_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_dup),
        .R(sig_stream_rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_out),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [0]),
        .Q(m_axi_wstrb[0]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [1]),
        .Q(m_axi_wstrb[1]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [2]),
        .Q(m_axi_wstrb[2]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out[31]_i_1_n_0 ),
        .D(\sig_next_strt_strb_reg_reg[3]_0 [3]),
        .Q(m_axi_wstrb[3]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_next_strt_strb_reg_reg[3] [0]),
        .Q(Q[0]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_next_strt_strb_reg_reg[3] [1]),
        .Q(Q[1]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_next_strt_strb_reg_reg[3] [2]),
        .Q(Q[2]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_next_strt_strb_reg_reg[3] [3]),
        .Q(Q[3]),
        .R(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "axi_datamover_strb_gen2" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_strb_gen2
   (D,
    Q,
    \sig_strbgen_bytes_ireg2_reg[0] ,
    \sig_strbgen_bytes_ireg2_reg[2] ,
    \sig_strbgen_bytes_ireg2_reg[1] );
  output [1:0]D;
  input [1:0]Q;
  input \sig_strbgen_bytes_ireg2_reg[0] ;
  input \sig_strbgen_bytes_ireg2_reg[2] ;
  input \sig_strbgen_bytes_ireg2_reg[1] ;

  wire [1:0]D;
  wire [1:0]Q;
  wire \sig_strbgen_bytes_ireg2_reg[0] ;
  wire \sig_strbgen_bytes_ireg2_reg[1] ;
  wire \sig_strbgen_bytes_ireg2_reg[2] ;

  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h1FFAF8F0)) 
    lsig_end_vect
       (.I0(Q[0]),
        .I1(\sig_strbgen_bytes_ireg2_reg[0] ),
        .I2(\sig_strbgen_bytes_ireg2_reg[2] ),
        .I3(\sig_strbgen_bytes_ireg2_reg[1] ),
        .I4(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h1)) 
    lsig_start_vect
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "axi_datamover_strb_gen2" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_strb_gen2_4
   (D,
    Q,
    \sig_strbgen_bytes_ireg2_reg[0] ,
    \sig_strbgen_bytes_ireg2_reg[2] ,
    \sig_strbgen_bytes_ireg2_reg[1] );
  output [1:0]D;
  input [1:0]Q;
  input \sig_strbgen_bytes_ireg2_reg[0] ;
  input \sig_strbgen_bytes_ireg2_reg[2] ;
  input \sig_strbgen_bytes_ireg2_reg[1] ;

  wire [1:0]D;
  wire [1:0]Q;
  wire \sig_strbgen_bytes_ireg2_reg[0] ;
  wire \sig_strbgen_bytes_ireg2_reg[1] ;
  wire \sig_strbgen_bytes_ireg2_reg[2] ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h1FFAF8F0)) 
    lsig_end_vect
       (.I0(Q[0]),
        .I1(\sig_strbgen_bytes_ireg2_reg[0] ),
        .I2(\sig_strbgen_bytes_ireg2_reg[2] ),
        .I3(\sig_strbgen_bytes_ireg2_reg[1] ),
        .I4(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    lsig_start_vect
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "axi_datamover_wr_status_cntl" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_wr_status_cntl
   (sig_wsc2stat_status,
    \INFERRED_GEN.cnt_i_reg[0] ,
    sig_wsc2stat_status_valid,
    sig_wdc_status_going_full,
    sig_halt_reg_dly1,
    sig_init_done_1,
    sig_init_done_2,
    sig_inhibit_rdy_n,
    m_axi_bready,
    sig_wsc2rst_stop_cmplt,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    m_axi_aclk,
    sig_stream_rst,
    sig_data2addr_stop_req,
    sig_mmap_reset_reg_reg,
    sig_mmap_reset_reg_reg_0,
    sig_wr_fifo,
    out,
    m_axi_bvalid,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    sig_halt_reg_dly3,
    sig_addr2wsc_calc_error,
    m_axi_bresp,
    in);
  output [2:0]sig_wsc2stat_status;
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_wsc2stat_status_valid;
  output sig_wdc_status_going_full;
  output sig_halt_reg_dly1;
  output sig_init_done_1;
  output sig_init_done_2;
  output sig_inhibit_rdy_n;
  output m_axi_bready;
  output sig_wsc2rst_stop_cmplt;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  input m_axi_aclk;
  input sig_stream_rst;
  input sig_data2addr_stop_req;
  input sig_mmap_reset_reg_reg;
  input sig_mmap_reset_reg_reg_0;
  input sig_wr_fifo;
  input out;
  input m_axi_bvalid;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input sig_halt_reg_dly3;
  input sig_addr2wsc_calc_error;
  input [1:0]m_axi_bresp;
  input [2:0]in;

  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_12 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_3 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_4 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_8 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_9 ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire I_WRESP_STATUS_FIFO_n_1;
  wire I_WRESP_STATUS_FIFO_n_2;
  wire I_WRESP_STATUS_FIFO_n_3;
  wire I_WRESP_STATUS_FIFO_n_4;
  wire I_WRESP_STATUS_FIFO_n_5;
  wire I_WRESP_STATUS_FIFO_n_7;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire [2:0]in;
  wire m_axi_aclk;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire out;
  wire p_4_out;
  wire sig_addr2wsc_calc_error;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire [3:0]sig_addr_posted_cntr_reg__0;
  wire sig_coelsc_reg_empty;
  wire sig_data2addr_stop_req;
  wire [2:0]sig_dcntl_sfifo_out;
  wire sig_halt_reg_dly1;
  wire sig_halt_reg_dly3;
  wire sig_inhibit_rdy_n;
  wire sig_init_done_1;
  wire sig_init_done_2;
  wire sig_mmap_reset_reg_reg;
  wire sig_mmap_reset_reg_reg_0;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_rd_empty;
  wire sig_statcnt_gt_eq_thres;
  wire sig_stream_rst;
  wire sig_tlast_err_stop;
  wire \sig_wdc_statcnt[0]_i_1_n_0 ;
  wire [3:0]sig_wdc_statcnt_reg__0;
  wire sig_wdc_status_going_full;
  wire sig_wr_fifo;
  wire sig_wsc2rst_stop_cmplt;
  wire [2:0]sig_wsc2stat_status;
  wire sig_wsc2stat_status_valid;

  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized4 \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO 
       (.D({\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_3 ,\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_4 ,\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5 }),
        .E(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_9 ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg (\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_12 ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[1] (\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_8 ),
        .\INFERRED_GEN.cnt_i_reg[3] (sig_rd_empty),
        .Q(sig_wdc_statcnt_reg__0),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out({sig_dcntl_sfifo_out[2],sig_dcntl_sfifo_out[0]}),
        .p_4_out(p_4_out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_init_done_2(sig_init_done_2),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg_0),
        .sig_push_coelsc_reg(sig_push_coelsc_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_stream_rst(sig_stream_rst),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wr_fifo(sig_wr_fifo),
        .sig_wsc2stat_status(sig_wsc2stat_status[0]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg 
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(I_WRESP_STATUS_FIFO_n_1),
        .Q(sig_wsc2stat_status[1]),
        .R(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg 
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(p_4_out),
        .Q(sig_wsc2stat_status[0]),
        .R(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  FDSE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg 
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_12 ),
        .Q(sig_coelsc_reg_empty),
        .S(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg 
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_dcntl_sfifo_out[0]),
        .Q(sig_wsc2stat_status_valid),
        .R(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg 
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(I_WRESP_STATUS_FIFO_n_2),
        .Q(sig_wsc2stat_status[2]),
        .R(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ));
  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized3 I_WRESP_STATUS_FIFO
       (.D({I_WRESP_STATUS_FIFO_n_3,I_WRESP_STATUS_FIFO_n_4,I_WRESP_STATUS_FIFO_n_5}),
        .E(I_WRESP_STATUS_FIFO_n_7),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg (I_WRESP_STATUS_FIFO_n_1),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg (I_WRESP_STATUS_FIFO_n_2),
        .\INFERRED_GEN.cnt_i_reg[3] (sig_rd_empty),
        .\INFERRED_GEN.cnt_i_reg[3]_0 (\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_8 ),
        .Q(sig_addr_posted_cntr_reg__0),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(sig_dcntl_sfifo_out[2]),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_init_done_1(sig_init_done_1),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg),
        .sig_posted_to_axi_reg(out),
        .sig_stream_rst(sig_stream_rst),
        .sig_wsc2stat_status(sig_wsc2stat_status[2:1]));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_addr_posted_cntr_reg__0[0]),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(I_WRESP_STATUS_FIFO_n_7),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr_reg__0[0]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(I_WRESP_STATUS_FIFO_n_7),
        .D(I_WRESP_STATUS_FIFO_n_5),
        .Q(sig_addr_posted_cntr_reg__0[1]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(I_WRESP_STATUS_FIFO_n_7),
        .D(I_WRESP_STATUS_FIFO_n_4),
        .Q(sig_addr_posted_cntr_reg__0[2]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[3] 
       (.C(m_axi_aclk),
        .CE(I_WRESP_STATUS_FIFO_n_7),
        .D(I_WRESP_STATUS_FIFO_n_3),
        .Q(sig_addr_posted_cntr_reg__0[3]),
        .R(sig_stream_rst));
  LUT6 #(
    .INIT(64'h0000002000000002)) 
    sig_halt_cmplt_i_2
       (.I0(sig_halt_reg_dly3),
        .I1(sig_addr_posted_cntr_reg__0[1]),
        .I2(sig_addr_posted_cntr_reg__0[0]),
        .I3(sig_addr_posted_cntr_reg__0[2]),
        .I4(sig_addr_posted_cntr_reg__0[3]),
        .I5(sig_addr2wsc_calc_error),
        .O(sig_wsc2rst_stop_cmplt));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_dly1_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_data2addr_stop_req),
        .Q(sig_halt_reg_dly1),
        .R(sig_stream_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_wdc_statcnt[0]_i_1 
       (.I0(sig_wdc_statcnt_reg__0[0]),
        .O(\sig_wdc_statcnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_9 ),
        .D(\sig_wdc_statcnt[0]_i_1_n_0 ),
        .Q(sig_wdc_statcnt_reg__0[0]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_9 ),
        .D(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5 ),
        .Q(sig_wdc_statcnt_reg__0[1]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_9 ),
        .D(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_4 ),
        .Q(sig_wdc_statcnt_reg__0[2]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_9 ),
        .D(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_3 ),
        .Q(sig_wdc_statcnt_reg__0[3]),
        .R(sig_stream_rst));
  LUT2 #(
    .INIT(4'hE)) 
    sig_wdc_status_going_full_i_1
       (.I0(sig_wdc_statcnt_reg__0[3]),
        .I1(sig_wdc_statcnt_reg__0[2]),
        .O(sig_statcnt_gt_eq_thres));
  FDRE #(
    .INIT(1'b0)) 
    sig_wdc_status_going_full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_statcnt_gt_eq_thres),
        .Q(sig_wdc_status_going_full),
        .R(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "axi_datamover_wrdata_cntl" *) 
module CMDA_DRAM_axi_cdma_0_0_axi_datamover_wrdata_cntl
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_next_eof_reg,
    sig_push_to_wsc,
    in,
    sig_dqual_reg_empty_reg_0,
    sig_init_done_4,
    sig_inhibit_rdy_n,
    sig_data2wsc_cmd_cmplt_reg_0,
    sig_tlast_err_stop,
    \sig_dbeat_cntr_reg[7]_0 ,
    sig_dqual_reg_empty_reg_1,
    \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] ,
    sig_output_xfer57_out__0,
    sig_wr_fifo,
    sig_wr_fifo_0,
    sig_last_skid_mux_out,
    sig_data2skid_wlast,
    sig_data2skid_wvalid,
    sig_data2rst_stop_cmplt,
    sig_data2addr_stop_req_0,
    \sig_strb_reg_out_reg[3] ,
    \sig_strb_skid_reg_reg[3] ,
    \sig_strb_skid_reg_reg[3]_0 ,
    sig_stream_rst,
    m_axi_aclk,
    sig_halt_reg_dly1,
    sig_mmap_reset_reg_reg,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    FIFO_Full_reg,
    sig_inhibit_rdy_n_1,
    p_19_out,
    sig_s_ready_out_reg,
    sig_data2addr_stop_req,
    p_1_out,
    out,
    sig_last_skid_reg,
    sig_tlast_error,
    sig_posted_to_axi_reg,
    sig_wdc_status_going_full,
    sig_stat2wsc_status_ready,
    sig_wsc2stat_status_valid,
    Q,
    sig_calc_error_reg_reg);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_next_eof_reg;
  output sig_push_to_wsc;
  output [2:0]in;
  output sig_dqual_reg_empty_reg_0;
  output sig_init_done_4;
  output sig_inhibit_rdy_n;
  output sig_data2wsc_cmd_cmplt_reg_0;
  output sig_tlast_err_stop;
  output \sig_dbeat_cntr_reg[7]_0 ;
  output sig_dqual_reg_empty_reg_1;
  output \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] ;
  output sig_output_xfer57_out__0;
  output sig_wr_fifo;
  output sig_wr_fifo_0;
  output sig_last_skid_mux_out;
  output sig_data2skid_wlast;
  output sig_data2skid_wvalid;
  output sig_data2rst_stop_cmplt;
  output sig_data2addr_stop_req_0;
  output [3:0]\sig_strb_reg_out_reg[3] ;
  output [3:0]\sig_strb_skid_reg_reg[3] ;
  output [3:0]\sig_strb_skid_reg_reg[3]_0 ;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_halt_reg_dly1;
  input sig_mmap_reset_reg_reg;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n_1;
  input p_19_out;
  input sig_s_ready_out_reg;
  input sig_data2addr_stop_req;
  input p_1_out;
  input out;
  input sig_last_skid_reg;
  input sig_tlast_error;
  input sig_posted_to_axi_reg;
  input sig_wdc_status_going_full;
  input sig_stat2wsc_status_ready;
  input sig_wsc2stat_status_valid;
  input [3:0]Q;
  input [15:0]sig_calc_error_reg_reg;

  wire FIFO_Full_reg;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_28 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_29 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_30 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ;
  wire \GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ;
  wire \GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_5_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [3:0]Q;
  wire [2:0]in;
  wire m_axi_aclk;
  wire m_axi_rready_INST_0_i_4_n_0;
  wire out;
  wire [7:0]p_0_in__1;
  wire [26:14]p_0_out;
  wire p_19_out;
  wire p_1_out;
  wire sig_addr_chan_rdy__2;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire [15:0]sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire sig_data2addr_stop_req_0;
  wire sig_data2rst_stop_cmplt;
  wire sig_data2skid_wlast;
  wire sig_data2skid_wvalid;
  wire sig_data2wsc_cmd_cmplt0;
  wire sig_data2wsc_cmd_cmplt_reg_0;
  wire sig_data2wsc_last_err0;
  wire \sig_dbeat_cntr[4]_i_2__0_n_0 ;
  wire \sig_dbeat_cntr[5]_i_2__0_n_0 ;
  wire \sig_dbeat_cntr[7]_i_3_n_0 ;
  wire \sig_dbeat_cntr_reg[7]_0 ;
  wire [7:0]sig_dbeat_cntr_reg__0;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_empty_reg_1;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg_n_0;
  wire sig_halt_reg_dly1;
  wire sig_halt_reg_dly2;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_1;
  wire sig_init_done_4;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg;
  wire sig_last_reg_out_i_3_n_0;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mmap_reset_reg_reg;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_eof_reg;
  wire sig_next_sequential_reg;
  wire [3:0]sig_next_strt_strb_reg;
  wire sig_output_xfer57_out__0;
  wire sig_posted_to_axi_reg;
  wire sig_push_dqual_reg;
  wire sig_push_err2wsc;
  wire sig_push_err2wsc_i_1_n_0;
  wire sig_push_to_wsc;
  wire sig_push_to_wsc_i_1_n_0;
  wire sig_push_to_wsc_i_2_n_0;
  wire sig_s_ready_out_reg;
  wire sig_set_push2wsc__0;
  wire sig_stat2wsc_status_ready;
  wire [3:0]\sig_strb_reg_out_reg[3] ;
  wire [3:0]\sig_strb_skid_reg_reg[3] ;
  wire [3:0]\sig_strb_skid_reg_reg[3]_0 ;
  wire sig_stream_rst;
  wire sig_tlast_err_stop;
  wire sig_tlast_error;
  wire sig_wdc_status_going_full;
  wire sig_wr_fifo;
  wire sig_wr_fifo_0;
  wire sig_wsc2stat_status_valid;

  CMDA_DRAM_axi_cdma_0_0_axi_datamover_fifo__parameterized6 \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO 
       (.D(p_0_in__1),
        .E(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (sig_data2wsc_cmd_cmplt_reg_0),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (sig_inhibit_rdy_n),
        .Q(sig_dbeat_cntr_reg__0),
        .m_axi_aclk(m_axi_aclk),
        .out({p_0_out[26:23],p_0_out[21:14]}),
        .p_19_out(p_19_out),
        .p_1_out(p_1_out),
        .sel(sig_wr_fifo_0),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .\sig_dbeat_cntr_reg[1] (\sig_dbeat_cntr_reg[7]_0 ),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr[4]_i_2__0_n_0 ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr[5]_i_2__0_n_0 ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr[7]_i_3_n_0 ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg_1),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat1__0(sig_first_dbeat1__0),
        .sig_first_dbeat_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_29 ),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_n_0),
        .sig_halt_reg_dly3_reg(sig_dqual_reg_empty_reg_0),
        .sig_init_done_4(sig_init_done_4),
        .sig_last_dbeat__1(sig_last_dbeat__1),
        .sig_last_dbeat_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_28 ),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_n_0),
        .sig_last_mmap_dbeat_reg(sig_last_mmap_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_30 ),
        .sig_mmap_reset_reg_reg(sig_mmap_reset_reg_reg),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_posted_to_axi_reg(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_5_n_0 ),
        .sig_push_dqual_reg(sig_push_dqual_reg),
        .sig_s_ready_out_reg(sig_s_ready_out_reg),
        .sig_stat2wsc_status_ready(sig_stat2wsc_status_ready),
        .sig_stream_rst(sig_stream_rst),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1 
       (.I0(FIFO_Full_reg),
        .I1(sig_inhibit_rdy_n_1),
        .I2(sig_push_to_wsc),
        .I3(sig_data2wsc_cmd_cmplt_reg_0),
        .I4(sig_tlast_err_stop),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0 ),
        .Q(sig_tlast_err_stop),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ),
        .Q(sig_data2wsc_cmd_cmplt_reg_0),
        .R(sig_stream_rst));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'hFF020000)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_4 
       (.I0(sig_s_ready_out_reg),
        .I1(sig_data2wsc_cmd_cmplt_reg_0),
        .I2(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_5_n_0 ),
        .I3(sig_data2addr_stop_req),
        .I4(p_19_out),
        .O(sig_output_xfer57_out__0));
  LUT6 #(
    .INIT(64'h55555555555575FF)) 
    \GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_5 
       (.I0(m_axi_rready_INST_0_i_4_n_0),
        .I1(sig_posted_to_axi_reg),
        .I2(sig_last_mmap_dbeat_reg),
        .I3(sig_addr_posted_cntr[0]),
        .I4(sig_addr_posted_cntr[2]),
        .I5(sig_addr_posted_cntr[1]),
        .O(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \INFERRED_GEN.data_reg[5][0]_srl6_i_1__0 
       (.I0(sig_tlast_err_stop),
        .I1(sig_push_to_wsc),
        .I2(FIFO_Full_reg),
        .I3(sig_inhibit_rdy_n_1),
        .O(sig_wr_fifo));
  LUT6 #(
    .INIT(64'h00000000A2AAAAAA)) 
    m_axi_rready_INST_0_i_2
       (.I0(p_19_out),
        .I1(sig_s_ready_out_reg),
        .I2(sig_data2wsc_cmd_cmplt_reg_0),
        .I3(sig_addr_chan_rdy__2),
        .I4(m_axi_rready_INST_0_i_4_n_0),
        .I5(sig_data2addr_stop_req),
        .O(\GEN_INPUT_REG[2].sig_input_data_reg_reg[2][9] ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hFEFEEEFE)) 
    m_axi_rready_INST_0_i_3
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(sig_posted_to_axi_reg),
        .O(sig_addr_chan_rdy__2));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_rready_INST_0_i_4
       (.I0(sig_dqual_reg_full),
        .I1(sig_next_calc_error_reg),
        .O(m_axi_rready_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'hD9996664)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_last_mmap_dbeat_reg),
        .I1(sig_posted_to_axi_reg),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'hF0C2BCF0)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[0]),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_posted_to_axi_reg),
        .I4(sig_last_mmap_dbeat_reg),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hAAA8EAAA)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[0]),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_posted_to_axi_reg),
        .I4(sig_last_mmap_dbeat_reg),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    sig_data2wsc_calc_err_reg
       (.C(m_axi_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_next_calc_error_reg),
        .Q(in[2]),
        .R(sig_push_to_wsc_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sig_data2wsc_cmd_cmplt_i_1
       (.I0(sig_tlast_error),
        .I1(sig_data2wsc_cmd_cmplt_reg_0),
        .I2(sig_next_cmd_cmplt_reg),
        .O(sig_data2wsc_cmd_cmplt0));
  FDRE #(
    .INIT(1'b0)) 
    sig_data2wsc_cmd_cmplt_reg
       (.C(m_axi_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_data2wsc_cmd_cmplt0),
        .Q(in[0]),
        .R(sig_push_to_wsc_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_data2wsc_last_err_i_1
       (.I0(sig_data2wsc_cmd_cmplt_reg_0),
        .I1(sig_tlast_error),
        .O(sig_data2wsc_last_err0));
  FDRE #(
    .INIT(1'b0)) 
    sig_data2wsc_last_err_reg
       (.C(m_axi_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_data2wsc_last_err0),
        .Q(in[1]),
        .R(sig_push_to_wsc_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_dbeat_cntr[4]_i_2__0 
       (.I0(sig_dbeat_cntr_reg__0[2]),
        .I1(sig_dbeat_cntr_reg__0[0]),
        .I2(sig_dbeat_cntr_reg__0[1]),
        .I3(sig_dbeat_cntr_reg__0[3]),
        .O(\sig_dbeat_cntr[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_dbeat_cntr[5]_i_2__0 
       (.I0(sig_dbeat_cntr_reg__0[3]),
        .I1(sig_dbeat_cntr_reg__0[1]),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[2]),
        .I4(sig_dbeat_cntr_reg__0[4]),
        .O(\sig_dbeat_cntr[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_dbeat_cntr[7]_i_3 
       (.I0(sig_dbeat_cntr_reg__0[4]),
        .I1(sig_dbeat_cntr_reg__0[2]),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[1]),
        .I4(sig_dbeat_cntr_reg__0[3]),
        .I5(sig_dbeat_cntr_reg__0[5]),
        .O(\sig_dbeat_cntr[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .D(p_0_in__1[0]),
        .Q(sig_dbeat_cntr_reg__0[0]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .D(p_0_in__1[1]),
        .Q(sig_dbeat_cntr_reg__0[1]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .D(p_0_in__1[2]),
        .Q(sig_dbeat_cntr_reg__0[2]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .D(p_0_in__1[3]),
        .Q(sig_dbeat_cntr_reg__0[3]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .D(p_0_in__1[4]),
        .Q(sig_dbeat_cntr_reg__0[4]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .D(p_0_in__1[5]),
        .Q(sig_dbeat_cntr_reg__0[5]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .D(p_0_in__1[6]),
        .Q(sig_dbeat_cntr_reg__0[6]),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .D(p_0_in__1[7]),
        .Q(sig_dbeat_cntr_reg__0[7]),
        .R(sig_stream_rst));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_push_dqual_reg),
        .Q(sig_dqual_reg_full),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_dbeat_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_29 ),
        .Q(sig_first_dbeat_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_halt_cmplt_i_3
       (.I0(sig_data2wsc_cmd_cmplt_reg_0),
        .I1(sig_data2addr_stop_req),
        .O(sig_data2addr_stop_req_0));
  LUT5 #(
    .INIT(32'hAAAA0002)) 
    sig_halt_cmplt_i_4
       (.I0(sig_dqual_reg_empty_reg_0),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_next_calc_error_reg),
        .O(sig_data2rst_stop_cmplt));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_dly2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_halt_reg_dly1),
        .Q(sig_halt_reg_dly2),
        .R(sig_stream_rst));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_dly3_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_halt_reg_dly2),
        .Q(sig_dqual_reg_empty_reg_0),
        .R(sig_stream_rst));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    sig_last_dbeat_i_2__0
       (.I0(sig_dbeat_cntr_reg__0[2]),
        .I1(sig_dbeat_cntr_reg__0[3]),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[1]),
        .I4(sig_last_reg_out_i_3_n_0),
        .I5(sig_dqual_reg_empty_reg_1),
        .O(sig_first_dbeat1__0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sig_last_dbeat_i_4__0
       (.I0(sig_last_reg_out_i_3_n_0),
        .I1(sig_dbeat_cntr_reg__0[1]),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[3]),
        .I4(sig_dbeat_cntr_reg__0[2]),
        .I5(sig_dqual_reg_empty_reg_1),
        .O(sig_last_dbeat__1));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_28 ),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sig_last_mmap_dbeat_reg_i_1__0
       (.I0(sig_dqual_reg_empty_reg_1),
        .I1(sig_dqual_reg_full),
        .I2(\sig_dbeat_cntr_reg[7]_0 ),
        .O(sig_last_mmap_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg),
        .R(sig_stream_rst));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    sig_last_reg_out_i_1
       (.I0(\sig_dbeat_cntr_reg[7]_0 ),
        .I1(sig_dqual_reg_full),
        .I2(out),
        .I3(sig_last_skid_reg),
        .O(sig_last_skid_mux_out));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_last_reg_out_i_2
       (.I0(sig_last_reg_out_i_3_n_0),
        .I1(sig_dbeat_cntr_reg__0[1]),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[3]),
        .I4(sig_dbeat_cntr_reg__0[2]),
        .O(\sig_dbeat_cntr_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_reg_out_i_3
       (.I0(sig_dbeat_cntr_reg__0[7]),
        .I1(sig_dbeat_cntr_reg__0[6]),
        .I2(sig_dbeat_cntr_reg__0[4]),
        .I3(sig_dbeat_cntr_reg__0[5]),
        .O(sig_last_reg_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_last_skid_reg_i_1
       (.I0(\sig_dbeat_cntr_reg[7]_0 ),
        .I1(sig_dqual_reg_full),
        .O(sig_data2skid_wlast));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_30 ),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000011115550)) 
    sig_m_valid_dup_i_2
       (.I0(sig_data2rst_stop_cmplt),
        .I1(sig_last_mmap_dbeat_reg),
        .I2(p_19_out),
        .I3(sig_data2wsc_cmd_cmplt_reg_0),
        .I4(sig_data2addr_stop_req),
        .I5(\GEN_OUTPUT_REG[0].sig_output_data_reg[0][8]_i_5_n_0 ),
        .O(sig_data2skid_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[26]),
        .Q(sig_next_calc_error_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[25]),
        .Q(sig_next_cmd_cmplt_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[23]),
        .Q(sig_next_eof_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[18]),
        .Q(\sig_strb_skid_reg_reg[3] [0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[19]),
        .Q(\sig_strb_skid_reg_reg[3] [1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[20]),
        .Q(\sig_strb_skid_reg_reg[3] [2]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[21]),
        .Q(\sig_strb_skid_reg_reg[3] [3]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[24]),
        .Q(sig_next_sequential_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[14]),
        .Q(sig_next_strt_strb_reg[0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[15]),
        .Q(sig_next_strt_strb_reg[1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[16]),
        .Q(sig_next_strt_strb_reg[2]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_dqual_reg),
        .D(p_0_out[17]),
        .Q(sig_next_strt_strb_reg[3]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_push_err2wsc_i_1
       (.I0(sig_ld_new_cmd_reg),
        .I1(sig_next_calc_error_reg),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I3(sig_push_err2wsc),
        .O(sig_push_err2wsc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_push_err2wsc_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_push_err2wsc_i_1_n_0),
        .Q(sig_push_err2wsc),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    sig_push_to_wsc_i_1
       (.I0(sig_set_push2wsc__0),
        .I1(FIFO_Full_reg),
        .I2(sig_inhibit_rdy_n_1),
        .I3(sig_push_to_wsc),
        .I4(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_push_to_wsc_i_1_n_0));
  LUT4 #(
    .INIT(16'h00EA)) 
    sig_push_to_wsc_i_2
       (.I0(sig_push_err2wsc),
        .I1(\sig_dbeat_cntr_reg[7]_0 ),
        .I2(sig_dqual_reg_empty_reg_1),
        .I3(sig_tlast_err_stop),
        .O(sig_push_to_wsc_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    sig_push_to_wsc_i_3
       (.I0(sig_dqual_reg_empty_reg_1),
        .I1(\sig_dbeat_cntr_reg[7]_0 ),
        .I2(sig_push_err2wsc),
        .O(sig_set_push2wsc__0));
  FDRE #(
    .INIT(1'b0)) 
    sig_push_to_wsc_reg
       (.C(m_axi_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_push_to_wsc_i_2_n_0),
        .Q(sig_push_to_wsc),
        .R(sig_push_to_wsc_i_1_n_0));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \sig_strb_reg_out[0]_i_1 
       (.I0(sig_next_strt_strb_reg[0]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(\sig_strb_skid_reg_reg[3] [0]),
        .I3(sig_last_dbeat_reg_n_0),
        .I4(out),
        .I5(Q[0]),
        .O(\sig_strb_reg_out_reg[3] [0]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \sig_strb_reg_out[1]_i_1 
       (.I0(sig_next_strt_strb_reg[1]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(\sig_strb_skid_reg_reg[3] [1]),
        .I3(sig_last_dbeat_reg_n_0),
        .I4(out),
        .I5(Q[1]),
        .O(\sig_strb_reg_out_reg[3] [1]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \sig_strb_reg_out[2]_i_1 
       (.I0(sig_next_strt_strb_reg[2]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(\sig_strb_skid_reg_reg[3] [2]),
        .I3(sig_last_dbeat_reg_n_0),
        .I4(out),
        .I5(Q[2]),
        .O(\sig_strb_reg_out_reg[3] [2]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \sig_strb_reg_out[3]_i_2 
       (.I0(sig_next_strt_strb_reg[3]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(\sig_strb_skid_reg_reg[3] [3]),
        .I3(sig_last_dbeat_reg_n_0),
        .I4(out),
        .I5(Q[3]),
        .O(\sig_strb_reg_out_reg[3] [3]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \sig_strb_skid_reg[0]_i_1 
       (.I0(sig_next_strt_strb_reg[0]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(\sig_strb_skid_reg_reg[3] [0]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(\sig_strb_skid_reg_reg[3]_0 [0]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \sig_strb_skid_reg[1]_i_1 
       (.I0(sig_next_strt_strb_reg[1]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(\sig_strb_skid_reg_reg[3] [1]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(\sig_strb_skid_reg_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \sig_strb_skid_reg[2]_i_1 
       (.I0(sig_next_strt_strb_reg[2]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(\sig_strb_skid_reg_reg[3] [2]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(\sig_strb_skid_reg_reg[3]_0 [2]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \sig_strb_skid_reg[3]_i_1 
       (.I0(sig_next_strt_strb_reg[3]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(\sig_strb_skid_reg_reg[3] [3]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(\sig_strb_skid_reg_reg[3]_0 [3]));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f
   (sig_next_calc_error_reg_reg,
    sig_dqual_reg_empty_reg,
    sig_dqual_reg_empty_reg_0,
    fifo_full_p1,
    Q,
    E,
    sig_ld_new_cmd_reg_reg,
    sig_next_calc_error_reg,
    \sig_dbeat_cntr_reg[1] ,
    sig_dqual_reg_full,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_cmd2data_valid_reg,
    p_1_out,
    FIFO_Full_reg,
    sig_inhibit_rdy_n_reg,
    sig_next_sequential_reg,
    sig_last_dbeat_reg,
    sig_dqual_reg_empty,
    sig_posted_to_axi_reg,
    sig_halt_reg_dly3_reg,
    sig_s_ready_out_reg,
    sig_last_mmap_dbeat_reg,
    p_19_out,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_data2addr_stop_req,
    sig_wdc_status_going_full,
    sig_stat2wsc_status_ready,
    sig_wsc2stat_status_valid,
    sig_addr_posted_cntr,
    sig_ld_new_cmd_reg,
    sig_stream_rst,
    m_axi_aclk);
  output sig_next_calc_error_reg_reg;
  output sig_dqual_reg_empty_reg;
  output sig_dqual_reg_empty_reg_0;
  output fifo_full_p1;
  output [1:0]Q;
  output [0:0]E;
  output sig_ld_new_cmd_reg_reg;
  input sig_next_calc_error_reg;
  input \sig_dbeat_cntr_reg[1] ;
  input sig_dqual_reg_full;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_cmd2data_valid_reg;
  input p_1_out;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n_reg;
  input sig_next_sequential_reg;
  input sig_last_dbeat_reg;
  input sig_dqual_reg_empty;
  input sig_posted_to_axi_reg;
  input sig_halt_reg_dly3_reg;
  input sig_s_ready_out_reg;
  input sig_last_mmap_dbeat_reg;
  input p_19_out;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_data2addr_stop_req;
  input sig_wdc_status_going_full;
  input sig_stat2wsc_status_ready;
  input sig_wsc2stat_status_valid;
  input [2:0]sig_addr_posted_cntr;
  input sig_ld_new_cmd_reg;
  input sig_stream_rst;
  input m_axi_aclk;

  wire [0:0]E;
  wire FIFO_Full_reg;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire [1:0]Q;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire p_19_out;
  wire p_1_out;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_addr_posted_cntr_eq_0__1;
  wire sig_addr_posted_cntr_max__1;
  wire sig_cmd2data_valid_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire \sig_dbeat_cntr_reg[1] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_full;
  wire sig_halt_reg_dly3_reg;
  wire sig_inhibit_rdy_n_reg;
  wire sig_last_dbeat_reg;
  wire sig_last_mmap_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_i_4_n_0;
  wire sig_next_calc_error_reg_i_5_n_0;
  wire sig_next_calc_error_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_posted_to_axi_reg;
  wire sig_rd_empty;
  wire sig_s_ready_out_reg;
  wire sig_stat2wsc_status_ready;
  wire sig_stream_rst;
  wire sig_wdc_status_going_full;
  wire sig_wsc2stat_status_valid;

  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h41100000)) 
    FIFO_Full_i_1__4
       (.I0(sig_rd_empty),
        .I1(sig_dqual_reg_empty_reg),
        .I2(sig_cmd2data_valid_reg),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'hBB4BBBBB44B44444)) 
    \INFERRED_GEN.cnt_i[0]_i_1__4 
       (.I0(sig_rd_empty),
        .I1(sig_dqual_reg_empty_reg),
        .I2(p_1_out),
        .I3(FIFO_Full_reg),
        .I4(sig_inhibit_rdy_n_reg),
        .I5(Q[0]),
        .O(addr_i_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h77E78818)) 
    \INFERRED_GEN.cnt_i[1]_i_1__4 
       (.I0(Q[0]),
        .I1(sig_cmd2data_valid_reg),
        .I2(sig_dqual_reg_empty_reg),
        .I3(sig_rd_empty),
        .I4(Q[1]),
        .O(addr_i_p1[1]));
  LUT5 #(
    .INIT(32'h7F7F0180)) 
    \INFERRED_GEN.cnt_i[2]_i_1__4 
       (.I0(sig_cmd2data_valid_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sig_dqual_reg_empty_reg),
        .I4(sig_rd_empty),
        .O(addr_i_p1[2]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(sig_rd_empty),
        .S(sig_stream_rst));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \sig_dbeat_cntr[7]_i_1__0 
       (.I0(sig_dqual_reg_empty_reg),
        .I1(\sig_dbeat_cntr_reg[1] ),
        .I2(sig_dqual_reg_empty_reg_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sig_ld_new_cmd_reg_i_1__0
       (.I0(sig_dqual_reg_empty_reg),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_ld_new_cmd_reg_reg));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    sig_next_calc_error_reg_i_1
       (.I0(sig_dqual_reg_empty_reg),
        .I1(sig_next_calc_error_reg),
        .I2(\sig_dbeat_cntr_reg[1] ),
        .I3(sig_dqual_reg_full),
        .I4(sig_dqual_reg_empty_reg_0),
        .I5(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_next_calc_error_reg_reg));
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    sig_next_calc_error_reg_i_2
       (.I0(sig_next_calc_error_reg_i_4_n_0),
        .I1(sig_next_sequential_reg),
        .I2(sig_last_dbeat_reg),
        .I3(sig_dqual_reg_empty_reg_0),
        .I4(sig_dqual_reg_empty),
        .O(sig_dqual_reg_empty_reg));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    sig_next_calc_error_reg_i_3
       (.I0(sig_posted_to_axi_reg),
        .I1(sig_next_calc_error_reg_i_5_n_0),
        .I2(sig_halt_reg_dly3_reg),
        .I3(sig_addr_posted_cntr_eq_0__1),
        .I4(sig_next_calc_error_reg),
        .I5(sig_s_ready_out_reg),
        .O(sig_dqual_reg_empty_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000045)) 
    sig_next_calc_error_reg_i_4
       (.I0(sig_wdc_status_going_full),
        .I1(sig_stat2wsc_status_ready),
        .I2(sig_wsc2stat_status_valid),
        .I3(sig_addr_posted_cntr_max__1),
        .I4(sig_rd_empty),
        .I5(sig_next_calc_error_reg),
        .O(sig_next_calc_error_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'hAA03)) 
    sig_next_calc_error_reg_i_5
       (.I0(sig_last_mmap_dbeat_reg),
        .I1(p_19_out),
        .I2(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .I3(sig_data2addr_stop_req),
        .O(sig_next_calc_error_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h01)) 
    sig_next_calc_error_reg_i_6
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[0]),
        .I2(sig_addr_posted_cntr[2]),
        .O(sig_addr_posted_cntr_eq_0__1));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sig_next_calc_error_reg_i_7
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[0]),
        .I2(sig_addr_posted_cntr[2]),
        .O(sig_addr_posted_cntr_max__1));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f_0
   (sig_calc_error_reg_reg,
    fifo_full_p1,
    Q,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_data2addr_stop_req,
    sig_addr_reg_empty,
    sig_cmd2addr_valid_reg,
    p_12_out,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    sig_stream_rst,
    m_axi_aclk);
  output sig_calc_error_reg_reg;
  output fifo_full_p1;
  output [1:0]Q;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_data2addr_stop_req;
  input sig_addr_reg_empty;
  input sig_cmd2addr_valid_reg;
  input p_12_out;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input sig_stream_rst;
  input m_axi_aclk;

  wire FIFO_Full_reg;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire [1:0]Q;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire p_12_out;
  wire sig_addr_reg_empty;
  wire sig_calc_error_reg_reg;
  wire sig_cmd2addr_valid_reg;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_rd_empty;
  wire sig_stream_rst;

  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h41100008)) 
    FIFO_Full_i_1__3
       (.I0(sig_rd_empty),
        .I1(sig_calc_error_reg_reg),
        .I2(sig_cmd2addr_valid_reg),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(fifo_full_p1));
  LUT5 #(
    .INIT(32'h5955A6AA)) 
    \INFERRED_GEN.cnt_i[0]_i_1__3 
       (.I0(sig_calc_error_reg_reg),
        .I1(p_12_out),
        .I2(FIFO_Full_reg),
        .I3(sig_inhibit_rdy_n),
        .I4(Q[0]),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAEAAF7FF51550800)) 
    \INFERRED_GEN.cnt_i[1]_i_1__3 
       (.I0(Q[0]),
        .I1(p_12_out),
        .I2(FIFO_Full_reg),
        .I3(sig_inhibit_rdy_n),
        .I4(sig_calc_error_reg_reg),
        .I5(Q[1]),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hFE7F0180)) 
    \INFERRED_GEN.cnt_i[2]_i_1__3 
       (.I0(sig_cmd2addr_valid_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sig_calc_error_reg_reg),
        .I4(sig_rd_empty),
        .O(addr_i_p1[2]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(sig_rd_empty),
        .S(sig_stream_rst));
  LUT4 #(
    .INIT(16'h0010)) 
    sig_addr_valid_reg_i_2
       (.I0(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .I1(sig_data2addr_stop_req),
        .I2(sig_addr_reg_empty),
        .I3(sig_rd_empty),
        .O(sig_calc_error_reg_reg));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f_3
   (sig_next_cmd_cmplt_reg_reg,
    sig_dqual_reg_empty_reg,
    fifo_full_p1,
    Q,
    E,
    sig_advance_pipe19_out__1,
    sig_ld_new_cmd_reg_reg,
    sig_pop_dqual_reg14_out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_cmd2data_valid_reg,
    sig_mstr2data_cmd_valid,
    FIFO_Full_reg,
    sig_inhibit_rdy_n_reg,
    \sig_dbeat_cntr_reg[2] ,
    sig_good_mmap_dbeat15_out__0,
    sig_next_sequential_reg,
    sig_last_dbeat_reg,
    sig_dqual_reg_empty,
    sig_addr_posted_cntr,
    sig_dqual_reg_full,
    sig_next_calc_error_reg,
    sig_data2rsc_valid,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_ld_new_cmd_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    m_axi_aclk);
  output sig_next_cmd_cmplt_reg_reg;
  output sig_dqual_reg_empty_reg;
  output fifo_full_p1;
  output [1:0]Q;
  output [0:0]E;
  output sig_advance_pipe19_out__1;
  output sig_ld_new_cmd_reg_reg;
  input sig_pop_dqual_reg14_out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_cmd2data_valid_reg;
  input sig_mstr2data_cmd_valid;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n_reg;
  input \sig_dbeat_cntr_reg[2] ;
  input sig_good_mmap_dbeat15_out__0;
  input sig_next_sequential_reg;
  input sig_last_dbeat_reg;
  input sig_dqual_reg_empty;
  input [2:0]sig_addr_posted_cntr;
  input sig_dqual_reg_full;
  input sig_next_calc_error_reg;
  input sig_data2rsc_valid;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_ld_new_cmd_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input m_axi_aclk;

  wire [0:0]E;
  wire FIFO_Full_reg;
  wire [1:0]Q;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_addr_posted_cntr_max__1;
  wire sig_advance_pipe19_out__1;
  wire sig_cmd2data_valid_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_data2rsc_valid;
  wire \sig_dbeat_cntr_reg[2] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_full;
  wire sig_good_mmap_dbeat15_out__0;
  wire sig_inhibit_rdy_n_reg;
  wire sig_last_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg_i_4_n_0;
  wire sig_next_cmd_cmplt_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_pop_dqual_reg14_out;
  wire sig_rd_empty;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h41100000)) 
    FIFO_Full_i_1__0
       (.I0(sig_rd_empty),
        .I1(sig_dqual_reg_empty_reg),
        .I2(sig_cmd2data_valid_reg),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'hBB4BBBBB44B44444)) 
    \INFERRED_GEN.cnt_i[0]_i_1__0 
       (.I0(sig_rd_empty),
        .I1(sig_dqual_reg_empty_reg),
        .I2(sig_mstr2data_cmd_valid),
        .I3(FIFO_Full_reg),
        .I4(sig_inhibit_rdy_n_reg),
        .I5(Q[0]),
        .O(addr_i_p1[0]));
  LUT5 #(
    .INIT(32'h77E78818)) 
    \INFERRED_GEN.cnt_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(sig_cmd2data_valid_reg),
        .I2(sig_dqual_reg_empty_reg),
        .I3(sig_rd_empty),
        .I4(Q[1]),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h7F7F0180)) 
    \INFERRED_GEN.cnt_i[2]_i_1__0 
       (.I0(sig_cmd2data_valid_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sig_dqual_reg_empty_reg),
        .I4(sig_rd_empty),
        .O(addr_i_p1[2]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(sig_rd_empty),
        .S(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  LUT6 #(
    .INIT(64'h000000000000FE00)) 
    m_axi_rready_INST_0_i_1
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[0]),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_dqual_reg_full),
        .I4(sig_next_calc_error_reg),
        .I5(sig_data2rsc_valid),
        .O(sig_advance_pipe19_out__1));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(sig_dqual_reg_empty_reg),
        .I1(\sig_dbeat_cntr_reg[2] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(sig_dqual_reg_empty_reg),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_ld_new_cmd_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    sig_next_cmd_cmplt_reg_i_1
       (.I0(sig_dqual_reg_empty_reg),
        .I1(sig_pop_dqual_reg14_out),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_next_cmd_cmplt_reg_reg));
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    sig_next_cmd_cmplt_reg_i_2
       (.I0(sig_next_cmd_cmplt_reg_i_4_n_0),
        .I1(sig_good_mmap_dbeat15_out__0),
        .I2(sig_next_sequential_reg),
        .I3(sig_last_dbeat_reg),
        .I4(sig_dqual_reg_empty),
        .O(sig_dqual_reg_empty_reg));
  LUT5 #(
    .INIT(32'h0000000D)) 
    sig_next_cmd_cmplt_reg_i_4
       (.I0(sig_rsc2stat_status_valid),
        .I1(sig_stat2rsc_status_ready),
        .I2(sig_addr_posted_cntr_max__1),
        .I3(sig_rd_empty),
        .I4(sig_next_calc_error_reg),
        .O(sig_next_cmd_cmplt_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    sig_next_cmd_cmplt_reg_i_6
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[0]),
        .I2(sig_addr_posted_cntr[2]),
        .O(sig_addr_posted_cntr_max__1));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f_9
   (sig_calc_error_reg_reg,
    fifo_full_p1,
    Q,
    sig_halt_reg_reg,
    sig_addr_reg_empty_reg,
    sig_cmd2addr_valid_reg,
    sig_mstr2addr_cmd_valid,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk);
  output sig_calc_error_reg_reg;
  output fifo_full_p1;
  output [1:0]Q;
  input sig_halt_reg_reg;
  input sig_addr_reg_empty_reg;
  input sig_cmd2addr_valid_reg;
  input sig_mstr2addr_cmd_valid;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;

  wire FIFO_Full_reg;
  wire [1:0]Q;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire sig_addr_reg_empty_reg;
  wire sig_calc_error_reg_reg;
  wire sig_cmd2addr_valid_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_halt_reg_reg;
  wire sig_inhibit_rdy_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_rd_empty;

  LUT6 #(
    .INIT(64'h0451510000000000)) 
    FIFO_Full_i_1
       (.I0(sig_rd_empty),
        .I1(sig_addr_reg_empty_reg),
        .I2(sig_halt_reg_reg),
        .I3(sig_cmd2addr_valid_reg),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(fifo_full_p1));
  LUT5 #(
    .INIT(32'h5955A6AA)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(sig_calc_error_reg_reg),
        .I1(sig_mstr2addr_cmd_valid),
        .I2(FIFO_Full_reg),
        .I3(sig_inhibit_rdy_n),
        .I4(Q[0]),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAEAAF7FF51550800)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(Q[0]),
        .I1(sig_mstr2addr_cmd_valid),
        .I2(FIFO_Full_reg),
        .I3(sig_inhibit_rdy_n),
        .I4(sig_calc_error_reg_reg),
        .I5(Q[1]),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'h7F7F7F7F80018080)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(sig_cmd2addr_valid_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sig_halt_reg_reg),
        .I4(sig_addr_reg_empty_reg),
        .I5(sig_rd_empty),
        .O(addr_i_p1[2]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(sig_rd_empty),
        .S(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  LUT3 #(
    .INIT(8'h04)) 
    sig_addr_valid_reg_i_2__0
       (.I0(sig_halt_reg_reg),
        .I1(sig_addr_reg_empty_reg),
        .I2(sig_rd_empty),
        .O(sig_calc_error_reg_reg));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f__parameterized0
   (fifo_full_p1,
    Q,
    sig_wr_fifo,
    \INFERRED_GEN.cnt_i_reg[3]_0 ,
    m_axi_bvalid,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    sig_stream_rst,
    m_axi_aclk);
  output fifo_full_p1;
  output [3:0]Q;
  output sig_wr_fifo;
  input \INFERRED_GEN.cnt_i_reg[3]_0 ;
  input m_axi_bvalid;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input sig_stream_rst;
  input m_axi_aclk;

  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg[3]_0 ;
  wire [3:0]Q;
  wire [3:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire m_axi_bvalid;
  wire sig_inhibit_rdy_n;
  wire sig_stream_rst;
  wire sig_wr_fifo;

  LUT6 #(
    .INIT(64'h0004411000000000)) 
    FIFO_Full_i_1__1
       (.I0(Q[3]),
        .I1(\INFERRED_GEN.cnt_i_reg[3]_0 ),
        .I2(sig_wr_fifo),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(fifo_full_p1));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'h5955A6AA)) 
    \INFERRED_GEN.cnt_i[0]_i_1__1 
       (.I0(\INFERRED_GEN.cnt_i_reg[3]_0 ),
        .I1(m_axi_bvalid),
        .I2(FIFO_Full_reg),
        .I3(sig_inhibit_rdy_n),
        .I4(Q[0]),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAEAAF7FF51550800)) 
    \INFERRED_GEN.cnt_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(m_axi_bvalid),
        .I2(FIFO_Full_reg),
        .I3(sig_inhibit_rdy_n),
        .I4(\INFERRED_GEN.cnt_i_reg[3]_0 ),
        .I5(Q[1]),
        .O(addr_i_p1[1]));
  LUT5 #(
    .INIT(32'hFE7F0180)) 
    \INFERRED_GEN.cnt_i[2]_i_1__1 
       (.I0(sig_wr_fifo),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\INFERRED_GEN.cnt_i_reg[3]_0 ),
        .I4(Q[2]),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hFFFE7FFF00018000)) 
    \INFERRED_GEN.cnt_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sig_wr_fifo),
        .I3(Q[2]),
        .I4(\INFERRED_GEN.cnt_i_reg[3]_0 ),
        .I5(Q[3]),
        .O(addr_i_p1[3]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(sig_stream_rst));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \INFERRED_GEN.data_reg[5][0]_srl6_i_1 
       (.I0(m_axi_bvalid),
        .I1(FIFO_Full_reg),
        .I2(sig_inhibit_rdy_n),
        .O(sig_wr_fifo));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f__parameterized1
   (\INFERRED_GEN.cnt_i_reg[1]_0 ,
    Q,
    fifo_full_p1,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[3]_0 ,
    \INFERRED_GEN.cnt_i_reg[3]_1 ,
    sig_wr_fifo,
    D,
    sig_stream_rst,
    m_axi_aclk);
  output \INFERRED_GEN.cnt_i_reg[1]_0 ;
  output [3:0]Q;
  output fifo_full_p1;
  input sig_coelsc_reg_empty;
  input [0:0]\INFERRED_GEN.cnt_i_reg[3]_0 ;
  input \INFERRED_GEN.cnt_i_reg[3]_1 ;
  input sig_wr_fifo;
  input [0:0]D;
  input sig_stream_rst;
  input m_axi_aclk;

  wire [0:0]D;
  wire \INFERRED_GEN.cnt_i_reg[1]_0 ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[3]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[3]_1 ;
  wire [3:0]Q;
  wire [3:1]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire sig_coelsc_reg_empty;
  wire sig_stream_rst;
  wire sig_wr_fifo;

  LUT6 #(
    .INIT(64'h0004411000000000)) 
    FIFO_Full_i_1__2
       (.I0(Q[3]),
        .I1(\INFERRED_GEN.cnt_i_reg[3]_1 ),
        .I2(sig_wr_fifo),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(fifo_full_p1));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \INFERRED_GEN.cnt_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(sig_wr_fifo),
        .I2(\INFERRED_GEN.cnt_i_reg[3]_1 ),
        .I3(Q[1]),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hFE7F0180)) 
    \INFERRED_GEN.cnt_i[2]_i_1__2 
       (.I0(sig_wr_fifo),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\INFERRED_GEN.cnt_i_reg[3]_1 ),
        .I4(Q[2]),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hFFFE7FFF00018000)) 
    \INFERRED_GEN.cnt_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sig_wr_fifo),
        .I3(Q[2]),
        .I4(\INFERRED_GEN.cnt_i_reg[3]_1 ),
        .I5(Q[3]),
        .O(addr_i_p1[3]));
  LUT3 #(
    .INIT(8'h04)) 
    \INFERRED_GEN.cnt_i[3]_i_2__0 
       (.I0(Q[3]),
        .I1(sig_coelsc_reg_empty),
        .I2(\INFERRED_GEN.cnt_i_reg[3]_0 ),
        .O(\INFERRED_GEN.cnt_i_reg[1]_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(sig_stream_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module CMDA_DRAM_axi_cdma_0_0_dynshreg_f
   (sig_calc_error_reg_reg,
    sig_addr_valid_reg_reg,
    out,
    p_12_out,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    in,
    Q,
    m_axi_aclk);
  output sig_calc_error_reg_reg;
  output sig_addr_valid_reg_reg;
  output [45:0]out;
  input p_12_out;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input [37:0]in;
  input [1:0]Q;
  input m_axi_aclk;

  wire FIFO_Full_reg;
  wire [1:0]Q;
  wire [37:0]in;
  wire m_axi_aclk;
  wire [45:0]out;
  wire p_12_out;
  wire sig_addr_valid_reg_reg;
  wire sig_calc_error_reg_reg;
  wire sig_inhibit_rdy_n;

  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][10]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][11]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][12]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][13]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][14]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][15]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][16]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][17]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][18]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][19]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][20]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][21]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][22]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][23]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][24]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][25]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][26]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][27]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][28]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][29]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][30]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][31]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][32]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][33]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][34]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][35]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][36]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][36]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[32]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][37]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[33]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][38]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][38]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[34]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][39]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[35]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][40]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[36]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][41]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[37]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][42]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[38]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][43]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[39]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][44]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[40]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][45]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b1),
        .Q(out[41]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][46]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[42]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][47]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][47]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[36]),
        .Q(out[43]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][48]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][48]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[44]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][4]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h20)) 
    \INFERRED_GEN.data_reg[3][4]_srl4_i_1__0 
       (.I0(p_12_out),
        .I1(FIFO_Full_reg),
        .I2(sig_inhibit_rdy_n),
        .O(sig_calc_error_reg_reg));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][50]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][50]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[37]),
        .Q(out[45]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][5]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][6]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][7]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][8]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][9]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[5]),
        .Q(out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    sig_addr_valid_reg_i_3__0
       (.I0(out[45]),
        .O(sig_addr_valid_reg_reg));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module CMDA_DRAM_axi_cdma_0_0_dynshreg_f_10
   (sig_calc_error_reg_reg,
    sig_addr_valid_reg_reg,
    out,
    sig_mstr2addr_cmd_valid,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    in,
    Q,
    m_axi_aclk);
  output sig_calc_error_reg_reg;
  output sig_addr_valid_reg_reg;
  output [45:0]out;
  input sig_mstr2addr_cmd_valid;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input [37:0]in;
  input [1:0]Q;
  input m_axi_aclk;

  wire FIFO_Full_reg;
  wire [1:0]Q;
  wire [37:0]in;
  wire m_axi_aclk;
  wire [45:0]out;
  wire sig_addr_valid_reg_reg;
  wire sig_calc_error_reg_reg;
  wire sig_inhibit_rdy_n;
  wire sig_mstr2addr_cmd_valid;

  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][10]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][11]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][12]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][13]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][14]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][15]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][16]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][17]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][18]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][19]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][20]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][21]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][22]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][23]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][24]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][25]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][26]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][27]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][28]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][29]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][30]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][31]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][32]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][33]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][34]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][35]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][36]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][36]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[32]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][37]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[33]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][38]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][38]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[34]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][39]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[35]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][40]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[36]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][41]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[37]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][42]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[38]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][43]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[39]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][44]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[40]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][45]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b1),
        .Q(out[41]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][46]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[42]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][47]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][47]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[36]),
        .Q(out[43]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][48]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][48]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(out[44]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][4]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h20)) 
    \INFERRED_GEN.data_reg[3][4]_srl4_i_1 
       (.I0(sig_mstr2addr_cmd_valid),
        .I1(FIFO_Full_reg),
        .I2(sig_inhibit_rdy_n),
        .O(sig_calc_error_reg_reg));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][50]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][50]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[37]),
        .Q(out[45]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][5]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][6]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][7]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][8]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][9]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(in[5]),
        .Q(out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    sig_addr_valid_reg_i_3
       (.I0(out[45]),
        .O(sig_addr_valid_reg_reg));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module CMDA_DRAM_axi_cdma_0_0_dynshreg_f__parameterized0
   (\sig_next_dre_dest_align_reg_reg[1] ,
    D,
    sig_last_dbeat_reg,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ,
    sig_first_dbeat_reg,
    out,
    sig_mstr2data_cmd_valid,
    FIFO_Full_reg,
    sig_inhibit_rdy_n_reg,
    sig_next_sequential_reg_reg,
    Q,
    \sig_dbeat_cntr_reg[2] ,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_first_dbeat1__0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_last_dbeat__1,
    sig_last_dbeat_reg_0,
    p_7_out,
    sig_pop_dqual_reg14_out,
    sig_good_mmap_dbeat15_out__0,
    sig_rdc2dre_new_align,
    sig_rdc2dre_use_autodest,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ,
    sig_first_dbeat_reg_0,
    in,
    \INFERRED_GEN.cnt_i_reg[1] ,
    m_axi_aclk);
  output \sig_next_dre_dest_align_reg_reg[1] ;
  output [7:0]D;
  output sig_last_dbeat_reg;
  output \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ;
  output \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  output sig_first_dbeat_reg;
  output [15:0]out;
  input sig_mstr2data_cmd_valid;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n_reg;
  input sig_next_sequential_reg_reg;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[2] ;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_first_dbeat1__0;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_last_dbeat__1;
  input sig_last_dbeat_reg_0;
  input p_7_out;
  input sig_pop_dqual_reg14_out;
  input sig_good_mmap_dbeat15_out__0;
  input sig_rdc2dre_new_align;
  input sig_rdc2dre_use_autodest;
  input \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ;
  input sig_first_dbeat_reg_0;
  input [20:0]in;
  input [1:0]\INFERRED_GEN.cnt_i_reg[1] ;
  input m_axi_aclk;

  wire [7:0]D;
  wire FIFO_Full_reg;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ;
  wire [1:0]\INFERRED_GEN.cnt_i_reg[1] ;
  wire [7:0]Q;
  wire [20:0]in;
  wire m_axi_aclk;
  wire [15:0]out;
  wire p_7_out;
  wire [22:6]sig_cmd_fifo_data_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_good_mmap_dbeat15_out__0;
  wire sig_inhibit_rdy_n_reg;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_i_5_n_0;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_mstr2data_cmd_valid;
  wire sig_new_len_eq_0;
  wire \sig_next_dre_dest_align_reg_reg[1] ;
  wire sig_next_sequential_reg_reg;
  wire sig_pop_dqual_reg14_out;
  wire sig_rdc2dre_new_align;
  wire sig_rdc2dre_use_autodest;

  LUT6 #(
    .INIT(64'h000000E200E200E2)) 
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_i_1 
       (.I0(sig_rdc2dre_use_autodest),
        .I1(sig_pop_dqual_reg14_out),
        .I2(p_7_out),
        .I3(\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ),
        .I4(sig_cmd_fifo_data_out[22]),
        .I5(sig_next_sequential_reg_reg),
        .O(\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ));
  LUT6 #(
    .INIT(64'hF888FBBBF888F888)) 
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_i_1 
       (.I0(p_7_out),
        .I1(sig_pop_dqual_reg14_out),
        .I2(sig_cmd_fifo_data_out[22]),
        .I3(sig_next_sequential_reg_reg),
        .I4(sig_good_mmap_dbeat15_out__0),
        .I5(sig_rdc2dre_new_align),
        .O(\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][10]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(sig_cmd_fifo_data_out[10]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][11]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(sig_cmd_fifo_data_out[11]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][12]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(sig_cmd_fifo_data_out[12]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][13]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(sig_cmd_fifo_data_out[13]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][14]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[4]),
        .Q(out[0]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][15]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[5]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][16]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[6]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][17]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[7]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][18]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[8]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][19]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[9]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][20]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[10]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][21]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[11]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][22]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[12]),
        .Q(sig_cmd_fifo_data_out[22]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][23]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[13]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][24]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[14]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][25]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[15]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][26]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[16]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][27]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[17]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][28]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[18]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][29]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[19]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][30]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[20]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][6]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[0]),
        .Q(sig_cmd_fifo_data_out[6]));
  LUT3 #(
    .INIT(8'h20)) 
    \INFERRED_GEN.data_reg[3][6]_srl4_i_1 
       (.I0(sig_mstr2data_cmd_valid),
        .I1(FIFO_Full_reg),
        .I2(sig_inhibit_rdy_n_reg),
        .O(\sig_next_dre_dest_align_reg_reg[1] ));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][7]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[1]),
        .Q(sig_cmd_fifo_data_out[7]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][8]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[2]),
        .Q(sig_cmd_fifo_data_out[8]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][9]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sig_next_dre_dest_align_reg_reg[1] ),
        .CLK(m_axi_aclk),
        .D(in[3]),
        .Q(sig_cmd_fifo_data_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(sig_cmd_fifo_data_out[6]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(sig_cmd_fifo_data_out[7]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(sig_cmd_fifo_data_out[8]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(sig_cmd_fifo_data_out[9]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(sig_cmd_fifo_data_out[10]),
        .I1(sig_next_sequential_reg_reg),
        .I2(\sig_dbeat_cntr_reg[2] ),
        .I3(Q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(sig_cmd_fifo_data_out[11]),
        .I1(sig_next_sequential_reg_reg),
        .I2(\sig_dbeat_cntr_reg[3] ),
        .I3(Q[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(sig_cmd_fifo_data_out[12]),
        .I1(sig_next_sequential_reg_reg),
        .I2(\sig_dbeat_cntr_reg[4] ),
        .I3(Q[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(sig_cmd_fifo_data_out[13]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[6]),
        .I3(\sig_dbeat_cntr_reg[4] ),
        .I4(Q[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h303000A0)) 
    sig_first_dbeat_i_1
       (.I0(sig_first_dbeat_reg_0),
        .I1(sig_new_len_eq_0),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I3(sig_last_dbeat__1),
        .I4(sig_next_sequential_reg_reg),
        .O(sig_first_dbeat_reg));
  LUT6 #(
    .INIT(64'hCA00CF00CA00C000)) 
    sig_last_dbeat_i_1
       (.I0(sig_first_dbeat1__0),
        .I1(sig_new_len_eq_0),
        .I2(sig_next_sequential_reg_reg),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I4(sig_last_dbeat__1),
        .I5(sig_last_dbeat_reg_0),
        .O(sig_last_dbeat_reg));
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_last_dbeat_i_3
       (.I0(sig_cmd_fifo_data_out[11]),
        .I1(sig_cmd_fifo_data_out[10]),
        .I2(sig_cmd_fifo_data_out[12]),
        .I3(sig_cmd_fifo_data_out[13]),
        .I4(sig_last_dbeat_i_5_n_0),
        .O(sig_new_len_eq_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_dbeat_i_5
       (.I0(sig_cmd_fifo_data_out[8]),
        .I1(sig_cmd_fifo_data_out[9]),
        .I2(sig_cmd_fifo_data_out[6]),
        .I3(sig_cmd_fifo_data_out[7]),
        .O(sig_last_dbeat_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module CMDA_DRAM_axi_cdma_0_0_dynshreg_f__parameterized1
   (\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ,
    sig_wsc2stat_status,
    out,
    sel,
    m_axi_bresp,
    addr,
    m_axi_aclk);
  output \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  input [1:0]sig_wsc2stat_status;
  input [0:0]out;
  input sel;
  input [1:0]m_axi_bresp;
  input [0:2]addr;
  input m_axi_aclk;

  wire \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  wire [0:2]addr;
  wire m_axi_aclk;
  wire [1:0]m_axi_bresp;
  wire [0:0]out;
  wire sel;
  wire [1:0]sig_wresp_sfifo_out;
  wire [1:0]sig_wsc2stat_status;

  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h00EA)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_i_1 
       (.I0(sig_wsc2stat_status[0]),
        .I1(sig_wresp_sfifo_out[0]),
        .I2(sig_wresp_sfifo_out[1]),
        .I3(out),
        .O(\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_i_1 
       (.I0(sig_wsc2stat_status[1]),
        .I1(sig_wresp_sfifo_out[1]),
        .I2(sig_wresp_sfifo_out[0]),
        .I3(out),
        .O(\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][0]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[5][0]_srl6 
       (.A0(addr[2]),
        .A1(addr[1]),
        .A2(addr[0]),
        .A3(1'b0),
        .CE(sel),
        .CLK(m_axi_aclk),
        .D(m_axi_bresp[0]),
        .Q(sig_wresp_sfifo_out[0]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][1]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[5][1]_srl6 
       (.A0(addr[2]),
        .A1(addr[1]),
        .A2(addr[0]),
        .A3(1'b0),
        .CE(sel),
        .CLK(m_axi_aclk),
        .D(m_axi_bresp[1]),
        .Q(sig_wresp_sfifo_out[1]));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module CMDA_DRAM_axi_cdma_0_0_dynshreg_f__parameterized2
   (D,
    \INFERRED_GEN.cnt_i_reg[0] ,
    out,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    E,
    sig_push_coelsc_reg,
    p_4_out,
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ,
    sig_wr_fifo,
    Q,
    \INFERRED_GEN.cnt_i_reg[3] ,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[3]_0 ,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    sig_wsc2stat_status,
    in,
    m_axi_aclk);
  output [2:0]D;
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output [1:0]out;
  output [0:0]\INFERRED_GEN.cnt_i_reg[0]_0 ;
  output [0:0]E;
  output sig_push_coelsc_reg;
  output p_4_out;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  input sig_wr_fifo;
  input [3:0]Q;
  input [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  input sig_coelsc_reg_empty;
  input [3:0]\INFERRED_GEN.cnt_i_reg[3]_0 ;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input [0:0]sig_wsc2stat_status;
  input [2:0]in;
  input m_axi_aclk;

  wire [2:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  wire [3:0]\INFERRED_GEN.cnt_i_reg[3]_0 ;
  wire [3:0]Q;
  wire [2:0]in;
  wire m_axi_aclk;
  wire [1:0]out;
  wire p_4_out;
  wire sig_coelsc_reg_empty;
  wire [1:1]sig_dcntl_sfifo_out;
  wire sig_inhibit_rdy_n;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_tlast_err_stop;
  wire sig_wr_fifo;
  wire [0:0]sig_wsc2stat_status;

  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'h22222022)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_i_2 
       (.I0(sig_coelsc_reg_empty),
        .I1(\INFERRED_GEN.cnt_i_reg[3]_0 [3]),
        .I2(out[1]),
        .I3(\INFERRED_GEN.cnt_i_reg[3] ),
        .I4(sig_dcntl_sfifo_out),
        .O(sig_push_coelsc_reg));
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_i_3 
       (.I0(out[1]),
        .I1(sig_wsc2stat_status),
        .I2(sig_dcntl_sfifo_out),
        .O(p_4_out));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_1 
       (.I0(out[0]),
        .O(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ));
  LUT6 #(
    .INIT(64'h55655555AA9AAAAA)) 
    \INFERRED_GEN.cnt_i[0]_i_1__2 
       (.I0(\INFERRED_GEN.cnt_i_reg[0] ),
        .I1(sig_tlast_err_stop),
        .I2(sig_push_to_wsc),
        .I3(FIFO_Full_reg),
        .I4(sig_inhibit_rdy_n),
        .I5(\INFERRED_GEN.cnt_i_reg[3]_0 [0]),
        .O(\INFERRED_GEN.cnt_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'h0000FB00)) 
    \INFERRED_GEN.cnt_i[3]_i_2 
       (.I0(sig_dcntl_sfifo_out),
        .I1(\INFERRED_GEN.cnt_i_reg[3] ),
        .I2(out[1]),
        .I3(sig_coelsc_reg_empty),
        .I4(\INFERRED_GEN.cnt_i_reg[3]_0 [3]),
        .O(\INFERRED_GEN.cnt_i_reg[0] ));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][0]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[5][0]_srl6 
       (.A0(\INFERRED_GEN.cnt_i_reg[3]_0 [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[3]_0 [1]),
        .A2(\INFERRED_GEN.cnt_i_reg[3]_0 [2]),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_aclk),
        .D(in[0]),
        .Q(out[0]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][1]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[5][1]_srl6 
       (.A0(\INFERRED_GEN.cnt_i_reg[3]_0 [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[3]_0 [1]),
        .A2(\INFERRED_GEN.cnt_i_reg[3]_0 [2]),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_aclk),
        .D(in[1]),
        .Q(sig_dcntl_sfifo_out));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][2]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[5][2]_srl6 
       (.A0(\INFERRED_GEN.cnt_i_reg[3]_0 [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[3]_0 [1]),
        .A2(\INFERRED_GEN.cnt_i_reg[3]_0 [2]),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_aclk),
        .D(in[2]),
        .Q(out[1]));
  LUT6 #(
    .INIT(64'hDD2022DDDD2222DD)) 
    \sig_wdc_statcnt[1]_i_1 
       (.I0(sig_wr_fifo),
        .I1(\INFERRED_GEN.cnt_i_reg[0] ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hDF20F20D)) 
    \sig_wdc_statcnt[2]_i_1 
       (.I0(sig_wr_fifo),
        .I1(\INFERRED_GEN.cnt_i_reg[0] ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000FFFEFFDF0000)) 
    \sig_wdc_statcnt[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(sig_wr_fifo),
        .I5(\INFERRED_GEN.cnt_i_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'hDFFF2000FFBA0045)) 
    \sig_wdc_statcnt[3]_i_2 
       (.I0(Q[0]),
        .I1(\INFERRED_GEN.cnt_i_reg[0] ),
        .I2(sig_wr_fifo),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(D[2]));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module CMDA_DRAM_axi_cdma_0_0_dynshreg_f__parameterized3
   (sig_next_calc_error_reg_reg,
    D,
    sig_last_dbeat_reg,
    sig_first_dbeat_reg,
    out,
    p_1_out,
    FIFO_Full_reg,
    sig_inhibit_rdy_n_reg,
    sig_next_sequential_reg_reg,
    Q,
    \sig_dbeat_cntr_reg[2] ,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_first_dbeat1__0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_last_dbeat__1,
    sig_last_dbeat_reg_0,
    sig_first_dbeat_reg_0,
    sig_calc_error_reg_reg,
    \INFERRED_GEN.cnt_i_reg[1] ,
    m_axi_aclk);
  output sig_next_calc_error_reg_reg;
  output [7:0]D;
  output sig_last_dbeat_reg;
  output sig_first_dbeat_reg;
  output [11:0]out;
  input p_1_out;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n_reg;
  input sig_next_sequential_reg_reg;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[2] ;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_first_dbeat1__0;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_last_dbeat__1;
  input sig_last_dbeat_reg_0;
  input sig_first_dbeat_reg_0;
  input [15:0]sig_calc_error_reg_reg;
  input [1:0]\INFERRED_GEN.cnt_i_reg[1] ;
  input m_axi_aclk;

  wire [7:0]D;
  wire FIFO_Full_reg;
  wire [1:0]\INFERRED_GEN.cnt_i_reg[1] ;
  wire [7:0]Q;
  wire m_axi_aclk;
  wire [11:0]out;
  wire [13:6]p_0_out;
  wire p_1_out;
  wire [15:0]sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_inhibit_rdy_n_reg;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_i_5__0_n_0;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_new_len_eq_0;
  wire sig_next_calc_error_reg_reg;
  wire sig_next_sequential_reg_reg;

  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][10]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(p_0_out[10]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][11]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(p_0_out[11]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][12]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(p_0_out[12]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][13]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(1'b0),
        .Q(p_0_out[13]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][14]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[4]),
        .Q(out[0]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][15]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[5]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][16]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[6]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][17]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[7]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][18]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[8]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][19]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[9]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][20]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[10]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][21]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[11]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][23]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[12]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][24]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[13]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][25]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[14]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][26]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[15]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][6]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[0]),
        .Q(p_0_out[6]));
  LUT3 #(
    .INIT(8'h20)) 
    \INFERRED_GEN.data_reg[3][6]_srl4_i_1__0 
       (.I0(p_1_out),
        .I1(FIFO_Full_reg),
        .I2(sig_inhibit_rdy_n_reg),
        .O(sig_next_calc_error_reg_reg));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][7]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[1]),
        .Q(p_0_out[7]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][8]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[2]),
        .Q(p_0_out[8]));
  (* srl_bus_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\GEN_SIMPLE_MODE.I_SIMPLE_MODE_WRAP/GEN_DM_FULL.I_DATAMOVER_FULL/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][9]_srl4 
       (.A0(\INFERRED_GEN.cnt_i_reg[1] [0]),
        .A1(\INFERRED_GEN.cnt_i_reg[1] [1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_next_calc_error_reg_reg),
        .CLK(m_axi_aclk),
        .D(sig_calc_error_reg_reg[3]),
        .Q(p_0_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_dbeat_cntr[0]_i_1__0 
       (.I0(p_0_out[6]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[1]_i_1__0 
       (.I0(p_0_out[7]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \sig_dbeat_cntr[2]_i_1__0 
       (.I0(p_0_out[8]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \sig_dbeat_cntr[3]_i_1__0 
       (.I0(p_0_out[9]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[4]_i_1__0 
       (.I0(p_0_out[10]),
        .I1(sig_next_sequential_reg_reg),
        .I2(\sig_dbeat_cntr_reg[2] ),
        .I3(Q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[5]_i_1__0 
       (.I0(p_0_out[11]),
        .I1(sig_next_sequential_reg_reg),
        .I2(\sig_dbeat_cntr_reg[3] ),
        .I3(Q[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[6]_i_1__0 
       (.I0(p_0_out[12]),
        .I1(sig_next_sequential_reg_reg),
        .I2(\sig_dbeat_cntr_reg[4] ),
        .I3(Q[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \sig_dbeat_cntr[7]_i_2__0 
       (.I0(p_0_out[13]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[6]),
        .I3(\sig_dbeat_cntr_reg[4] ),
        .I4(Q[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h303000A0)) 
    sig_first_dbeat_i_1__0
       (.I0(sig_first_dbeat_reg_0),
        .I1(sig_new_len_eq_0),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I3(sig_last_dbeat__1),
        .I4(sig_next_sequential_reg_reg),
        .O(sig_first_dbeat_reg));
  LUT6 #(
    .INIT(64'hCA00CF00CA00C000)) 
    sig_last_dbeat_i_1__0
       (.I0(sig_first_dbeat1__0),
        .I1(sig_new_len_eq_0),
        .I2(sig_next_sequential_reg_reg),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I4(sig_last_dbeat__1),
        .I5(sig_last_dbeat_reg_0),
        .O(sig_last_dbeat_reg));
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_last_dbeat_i_3__0
       (.I0(p_0_out[11]),
        .I1(p_0_out[10]),
        .I2(p_0_out[12]),
        .I3(p_0_out[13]),
        .I4(sig_last_dbeat_i_5__0_n_0),
        .O(sig_new_len_eq_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_dbeat_i_5__0
       (.I0(p_0_out[8]),
        .I1(p_0_out[9]),
        .I2(p_0_out[6]),
        .I3(p_0_out[7]),
        .O(sig_last_dbeat_i_5__0_n_0));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_f
   (sig_calc_error_reg_reg,
    sig_calc_error_reg_reg_0,
    sig_addr_valid_reg_reg,
    out,
    sig_stream_rst,
    m_axi_aclk,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_data2addr_stop_req,
    sig_addr_reg_empty,
    p_12_out,
    sig_inhibit_rdy_n,
    in);
  output sig_calc_error_reg_reg;
  output sig_calc_error_reg_reg_0;
  output sig_addr_valid_reg_reg;
  output [45:0]out;
  input sig_stream_rst;
  input m_axi_aclk;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_data2addr_stop_req;
  input sig_addr_reg_empty;
  input p_12_out;
  input sig_inhibit_rdy_n;
  input [37:0]in;

  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire [37:0]in;
  wire m_axi_aclk;
  wire [45:0]out;
  wire p_12_out;
  wire sig_addr_reg_empty;
  wire sig_addr_valid_reg_reg;
  wire sig_calc_error_reg_reg;
  wire sig_calc_error_reg_reg_0;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_stream_rst;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f I_SRL_FIFO_RBU_F
       (.\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_12_out(p_12_out),
        .sel(sig_calc_error_reg_reg_0),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_addr_valid_reg_reg(sig_addr_valid_reg_reg),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_stream_rst(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_f_7
   (sig_calc_error_reg_reg,
    sig_calc_error_reg_reg_0,
    sig_addr_valid_reg_reg,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk,
    sig_halt_reg_reg,
    sig_addr_reg_empty_reg,
    sig_mstr2addr_cmd_valid,
    sig_inhibit_rdy_n,
    in);
  output sig_calc_error_reg_reg;
  output sig_calc_error_reg_reg_0;
  output sig_addr_valid_reg_reg;
  output [45:0]out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;
  input sig_halt_reg_reg;
  input sig_addr_reg_empty_reg;
  input sig_mstr2addr_cmd_valid;
  input sig_inhibit_rdy_n;
  input [37:0]in;

  wire [37:0]in;
  wire m_axi_aclk;
  wire [45:0]out;
  wire sig_addr_reg_empty_reg;
  wire sig_addr_valid_reg_reg;
  wire sig_calc_error_reg_reg;
  wire sig_calc_error_reg_reg_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_halt_reg_reg;
  wire sig_inhibit_rdy_n;
  wire sig_mstr2addr_cmd_valid;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f_8 I_SRL_FIFO_RBU_F
       (.in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .sel(sig_calc_error_reg_reg_0),
        .sig_addr_reg_empty_reg(sig_addr_reg_empty_reg),
        .sig_addr_valid_reg_reg(sig_addr_valid_reg_reg),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_halt_reg_reg(sig_halt_reg_reg),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_f__parameterized0
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_next_cmd_cmplt_reg_reg,
    sig_dqual_reg_empty_reg,
    \sig_next_dre_dest_align_reg_reg[1] ,
    E,
    D,
    sig_advance_pipe19_out__1,
    sig_ld_new_cmd_reg_reg,
    sig_last_dbeat_reg,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ,
    sig_first_dbeat_reg,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk,
    sig_pop_dqual_reg14_out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_mstr2data_cmd_valid,
    sig_inhibit_rdy_n_reg,
    \sig_dbeat_cntr_reg[2] ,
    Q,
    \sig_dbeat_cntr_reg[2]_0 ,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_good_mmap_dbeat15_out__0,
    sig_next_sequential_reg,
    sig_last_dbeat_reg_0,
    sig_dqual_reg_empty,
    sig_addr_posted_cntr,
    sig_dqual_reg_full,
    sig_next_calc_error_reg,
    sig_data2rsc_valid,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_ld_new_cmd_reg,
    sig_first_dbeat1__0,
    sig_last_dbeat__1,
    p_7_out,
    sig_rdc2dre_new_align,
    sig_rdc2dre_use_autodest,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ,
    sig_first_dbeat_reg_0,
    in);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_next_cmd_cmplt_reg_reg;
  output sig_dqual_reg_empty_reg;
  output \sig_next_dre_dest_align_reg_reg[1] ;
  output [0:0]E;
  output [7:0]D;
  output sig_advance_pipe19_out__1;
  output sig_ld_new_cmd_reg_reg;
  output sig_last_dbeat_reg;
  output \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ;
  output \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  output sig_first_dbeat_reg;
  output [15:0]out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;
  input sig_pop_dqual_reg14_out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input sig_mstr2data_cmd_valid;
  input sig_inhibit_rdy_n_reg;
  input \sig_dbeat_cntr_reg[2] ;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[2]_0 ;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_good_mmap_dbeat15_out__0;
  input sig_next_sequential_reg;
  input sig_last_dbeat_reg_0;
  input sig_dqual_reg_empty;
  input [2:0]sig_addr_posted_cntr;
  input sig_dqual_reg_full;
  input sig_next_calc_error_reg;
  input sig_data2rsc_valid;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_ld_new_cmd_reg;
  input sig_first_dbeat1__0;
  input sig_last_dbeat__1;
  input p_7_out;
  input sig_rdc2dre_new_align;
  input sig_rdc2dre_use_autodest;
  input \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ;
  input sig_first_dbeat_reg_0;
  input [20:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [7:0]Q;
  wire [20:0]in;
  wire m_axi_aclk;
  wire [15:0]out;
  wire p_7_out;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_advance_pipe19_out__1;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_data2rsc_valid;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[2]_0 ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_good_mmap_dbeat15_out__0;
  wire sig_inhibit_rdy_n_reg;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg_reg;
  wire \sig_next_dre_dest_align_reg_reg[1] ;
  wire sig_next_sequential_reg;
  wire sig_pop_dqual_reg14_out;
  wire sig_rdc2dre_new_align;
  wire sig_rdc2dre_use_autodest;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f__parameterized0 I_SRL_FIFO_RBU_F
       (.D(D),
        .E(E),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .Q(Q),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_7_out(p_7_out),
        .sel(\sig_next_dre_dest_align_reg_reg[1] ),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_advance_pipe19_out__1(sig_advance_pipe19_out__1),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2] ),
        .\sig_dbeat_cntr_reg[2]_0 (\sig_dbeat_cntr_reg[2]_0 ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr_reg[3] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat1__0(sig_first_dbeat1__0),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_good_mmap_dbeat15_out__0(sig_good_mmap_dbeat15_out__0),
        .sig_inhibit_rdy_n_reg(sig_inhibit_rdy_n_reg),
        .sig_last_dbeat__1(sig_last_dbeat__1),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_cmd_cmplt_reg_reg(sig_next_cmd_cmplt_reg_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_pop_dqual_reg14_out(sig_pop_dqual_reg14_out),
        .sig_rdc2dre_new_align(sig_rdc2dre_new_align),
        .sig_rdc2dre_use_autodest(sig_rdc2dre_use_autodest),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_f__parameterized1
   (\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ,
    D,
    \INFERRED_GEN.cnt_i_reg[3] ,
    E,
    m_axi_bready,
    sig_stream_rst,
    m_axi_aclk,
    sig_wsc2stat_status,
    out,
    sig_posted_to_axi_reg,
    Q,
    \INFERRED_GEN.cnt_i_reg[3]_0 ,
    m_axi_bvalid,
    sig_inhibit_rdy_n,
    sig_data2addr_stop_req,
    m_axi_bresp);
  output \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  output [2:0]D;
  output [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  output [0:0]E;
  output m_axi_bready;
  input sig_stream_rst;
  input m_axi_aclk;
  input [1:0]sig_wsc2stat_status;
  input [0:0]out;
  input sig_posted_to_axi_reg;
  input [3:0]Q;
  input \INFERRED_GEN.cnt_i_reg[3]_0 ;
  input m_axi_bvalid;
  input sig_inhibit_rdy_n;
  input sig_data2addr_stop_req;
  input [1:0]m_axi_bresp;

  wire [2:0]D;
  wire [0:0]E;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  wire \INFERRED_GEN.cnt_i_reg[3]_0 ;
  wire [3:0]Q;
  wire m_axi_aclk;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [0:0]out;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_posted_to_axi_reg;
  wire sig_stream_rst;
  wire [1:0]sig_wsc2stat_status;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f__parameterized1 I_SRL_FIFO_RBU_F
       (.D(D),
        .E(E),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ),
        .\INFERRED_GEN.cnt_i_reg[3] (\INFERRED_GEN.cnt_i_reg[3] ),
        .\INFERRED_GEN.cnt_i_reg[3]_0 (\INFERRED_GEN.cnt_i_reg[3]_0 ),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(out),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_posted_to_axi_reg(sig_posted_to_axi_reg),
        .sig_stream_rst(sig_stream_rst),
        .sig_wsc2stat_status(sig_wsc2stat_status));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_f__parameterized2
   (\INFERRED_GEN.cnt_i_reg[0] ,
    D,
    out,
    \INFERRED_GEN.cnt_i_reg[1] ,
    E,
    sig_push_coelsc_reg,
    p_4_out,
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ,
    sig_stream_rst,
    m_axi_aclk,
    sig_wr_fifo,
    Q,
    \INFERRED_GEN.cnt_i_reg[3] ,
    sig_coelsc_reg_empty,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    sig_inhibit_rdy_n,
    sig_wsc2stat_status,
    in);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output [2:0]D;
  output [1:0]out;
  output \INFERRED_GEN.cnt_i_reg[1] ;
  output [0:0]E;
  output sig_push_coelsc_reg;
  output p_4_out;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_wr_fifo;
  input [3:0]Q;
  input [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  input sig_coelsc_reg_empty;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input sig_inhibit_rdy_n;
  input [0:0]sig_wsc2stat_status;
  input [2:0]in;

  wire [2:0]D;
  wire [0:0]E;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  wire [3:0]Q;
  wire [2:0]in;
  wire m_axi_aclk;
  wire [1:0]out;
  wire p_4_out;
  wire sig_coelsc_reg_empty;
  wire sig_inhibit_rdy_n;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_stream_rst;
  wire sig_tlast_err_stop;
  wire sig_wr_fifo;
  wire [0:0]sig_wsc2stat_status;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f__parameterized2 I_SRL_FIFO_RBU_F
       (.D(D),
        .E(E),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[1] (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[3] (\INFERRED_GEN.cnt_i_reg[3] ),
        .Q(Q),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_4_out(p_4_out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_push_coelsc_reg(sig_push_coelsc_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_stream_rst(sig_stream_rst),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wr_fifo(sig_wr_fifo),
        .sig_wsc2stat_status(sig_wsc2stat_status));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_f__parameterized3
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_next_calc_error_reg_reg,
    sig_dqual_reg_empty_reg,
    sig_dqual_reg_empty_reg_0,
    sig_next_calc_error_reg_reg_0,
    E,
    D,
    sig_last_dbeat_reg,
    sig_first_dbeat_reg,
    sig_ld_new_cmd_reg_reg,
    out,
    sig_stream_rst,
    m_axi_aclk,
    sig_next_calc_error_reg,
    \sig_dbeat_cntr_reg[1] ,
    sig_dqual_reg_full,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    p_1_out,
    sig_inhibit_rdy_n_reg,
    Q,
    \sig_dbeat_cntr_reg[2] ,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_next_sequential_reg,
    sig_last_dbeat_reg_0,
    sig_dqual_reg_empty,
    sig_posted_to_axi_reg,
    sig_halt_reg_dly3_reg,
    sig_s_ready_out_reg,
    sig_last_mmap_dbeat_reg,
    p_19_out,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_data2addr_stop_req,
    sig_wdc_status_going_full,
    sig_stat2wsc_status_ready,
    sig_wsc2stat_status_valid,
    sig_addr_posted_cntr,
    sig_first_dbeat1__0,
    sig_last_dbeat__1,
    sig_first_dbeat_reg_0,
    sig_ld_new_cmd_reg,
    sig_calc_error_reg_reg);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_next_calc_error_reg_reg;
  output sig_dqual_reg_empty_reg;
  output sig_dqual_reg_empty_reg_0;
  output sig_next_calc_error_reg_reg_0;
  output [0:0]E;
  output [7:0]D;
  output sig_last_dbeat_reg;
  output sig_first_dbeat_reg;
  output sig_ld_new_cmd_reg_reg;
  output [11:0]out;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_next_calc_error_reg;
  input \sig_dbeat_cntr_reg[1] ;
  input sig_dqual_reg_full;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input p_1_out;
  input sig_inhibit_rdy_n_reg;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[2] ;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_next_sequential_reg;
  input sig_last_dbeat_reg_0;
  input sig_dqual_reg_empty;
  input sig_posted_to_axi_reg;
  input sig_halt_reg_dly3_reg;
  input sig_s_ready_out_reg;
  input sig_last_mmap_dbeat_reg;
  input p_19_out;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_data2addr_stop_req;
  input sig_wdc_status_going_full;
  input sig_stat2wsc_status_ready;
  input sig_wsc2stat_status_valid;
  input [2:0]sig_addr_posted_cntr;
  input sig_first_dbeat1__0;
  input sig_last_dbeat__1;
  input sig_first_dbeat_reg_0;
  input sig_ld_new_cmd_reg;
  input [15:0]sig_calc_error_reg_reg;

  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [7:0]Q;
  wire m_axi_aclk;
  wire [11:0]out;
  wire p_19_out;
  wire p_1_out;
  wire [2:0]sig_addr_posted_cntr;
  wire [15:0]sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire \sig_dbeat_cntr_reg[1] ;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_halt_reg_dly3_reg;
  wire sig_inhibit_rdy_n_reg;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_last_mmap_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_reg;
  wire sig_next_calc_error_reg_reg_0;
  wire sig_next_sequential_reg;
  wire sig_posted_to_axi_reg;
  wire sig_s_ready_out_reg;
  wire sig_stat2wsc_status_ready;
  wire sig_stream_rst;
  wire sig_wdc_status_going_full;
  wire sig_wsc2stat_status_valid;

  CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f__parameterized3 I_SRL_FIFO_RBU_F
       (.D(D),
        .E(E),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_19_out(p_19_out),
        .p_1_out(p_1_out),
        .sel(sig_next_calc_error_reg_reg_0),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .\sig_dbeat_cntr_reg[1] (\sig_dbeat_cntr_reg[1] ),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2] ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr_reg[3] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat1__0(sig_first_dbeat1__0),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_halt_reg_dly3_reg(sig_halt_reg_dly3_reg),
        .sig_inhibit_rdy_n_reg(sig_inhibit_rdy_n_reg),
        .sig_last_dbeat__1(sig_last_dbeat__1),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_last_mmap_dbeat_reg(sig_last_mmap_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg(sig_next_calc_error_reg_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_posted_to_axi_reg(sig_posted_to_axi_reg),
        .sig_s_ready_out_reg(sig_s_ready_out_reg),
        .sig_stat2wsc_status_ready(sig_stat2wsc_status_ready),
        .sig_stream_rst(sig_stream_rst),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f
   (sig_calc_error_reg_reg,
    sel,
    sig_addr_valid_reg_reg,
    out,
    sig_stream_rst,
    m_axi_aclk,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_data2addr_stop_req,
    sig_addr_reg_empty,
    p_12_out,
    sig_inhibit_rdy_n,
    in);
  output sig_calc_error_reg_reg;
  output sel;
  output sig_addr_valid_reg_reg;
  output [45:0]out;
  input sig_stream_rst;
  input m_axi_aclk;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_data2addr_stop_req;
  input sig_addr_reg_empty;
  input p_12_out;
  input sig_inhibit_rdy_n;
  input [37:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire FIFO_Full_reg_n_0;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire fifo_full_p1;
  wire [37:0]in;
  wire m_axi_aclk;
  wire [45:0]out;
  wire p_12_out;
  wire sel;
  wire sig_addr_reg_empty;
  wire sig_addr_valid_reg_reg;
  wire sig_calc_error_reg_reg;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_stream_rst;

  CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f_0 CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_n_0),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_aclk(m_axi_aclk),
        .p_12_out(p_12_out),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd2addr_valid_reg(sel),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_stream_rst(sig_stream_rst));
  CMDA_DRAM_axi_cdma_0_0_dynshreg_f DYNSHREG_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_n_0),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_12_out(p_12_out),
        .sig_addr_valid_reg_reg(sig_addr_valid_reg_reg),
        .sig_calc_error_reg_reg(sel),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n));
  FDRE FIFO_Full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f_8
   (sig_calc_error_reg_reg,
    sel,
    sig_addr_valid_reg_reg,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk,
    sig_halt_reg_reg,
    sig_addr_reg_empty_reg,
    sig_mstr2addr_cmd_valid,
    sig_inhibit_rdy_n,
    in);
  output sig_calc_error_reg_reg;
  output sel;
  output sig_addr_valid_reg_reg;
  output [45:0]out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;
  input sig_halt_reg_reg;
  input sig_addr_reg_empty_reg;
  input sig_mstr2addr_cmd_valid;
  input sig_inhibit_rdy_n;
  input [37:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire FIFO_Full_reg_n_0;
  wire fifo_full_p1;
  wire [37:0]in;
  wire m_axi_aclk;
  wire [45:0]out;
  wire sel;
  wire sig_addr_reg_empty_reg;
  wire sig_addr_valid_reg_reg;
  wire sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_halt_reg_reg;
  wire sig_inhibit_rdy_n;
  wire sig_mstr2addr_cmd_valid;

  CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f_9 CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_n_0),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_aclk(m_axi_aclk),
        .sig_addr_reg_empty_reg(sig_addr_reg_empty_reg),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd2addr_valid_reg(sel),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_halt_reg_reg(sig_halt_reg_reg),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
  CMDA_DRAM_axi_cdma_0_0_dynshreg_f_10 DYNSHREG_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_n_0),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .sig_addr_valid_reg_reg(sig_addr_valid_reg_reg),
        .sig_calc_error_reg_reg(sel),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
  FDRE FIFO_Full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f__parameterized0
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_next_cmd_cmplt_reg_reg,
    sig_dqual_reg_empty_reg,
    sel,
    E,
    D,
    sig_advance_pipe19_out__1,
    sig_ld_new_cmd_reg_reg,
    sig_last_dbeat_reg,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ,
    sig_first_dbeat_reg,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_aclk,
    sig_pop_dqual_reg14_out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_mstr2data_cmd_valid,
    sig_inhibit_rdy_n_reg,
    \sig_dbeat_cntr_reg[2] ,
    Q,
    \sig_dbeat_cntr_reg[2]_0 ,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_good_mmap_dbeat15_out__0,
    sig_next_sequential_reg,
    sig_last_dbeat_reg_0,
    sig_dqual_reg_empty,
    sig_addr_posted_cntr,
    sig_dqual_reg_full,
    sig_next_calc_error_reg,
    sig_data2rsc_valid,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_ld_new_cmd_reg,
    sig_first_dbeat1__0,
    sig_last_dbeat__1,
    p_7_out,
    sig_rdc2dre_new_align,
    sig_rdc2dre_use_autodest,
    \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ,
    sig_first_dbeat_reg_0,
    in);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_next_cmd_cmplt_reg_reg;
  output sig_dqual_reg_empty_reg;
  output sel;
  output [0:0]E;
  output [7:0]D;
  output sig_advance_pipe19_out__1;
  output sig_ld_new_cmd_reg_reg;
  output sig_last_dbeat_reg;
  output \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ;
  output \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  output sig_first_dbeat_reg;
  output [15:0]out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_aclk;
  input sig_pop_dqual_reg14_out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  input sig_mstr2data_cmd_valid;
  input sig_inhibit_rdy_n_reg;
  input \sig_dbeat_cntr_reg[2] ;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[2]_0 ;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_good_mmap_dbeat15_out__0;
  input sig_next_sequential_reg;
  input sig_last_dbeat_reg_0;
  input sig_dqual_reg_empty;
  input [2:0]sig_addr_posted_cntr;
  input sig_dqual_reg_full;
  input sig_next_calc_error_reg;
  input sig_data2rsc_valid;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_ld_new_cmd_reg;
  input sig_first_dbeat1__0;
  input sig_last_dbeat__1;
  input p_7_out;
  input sig_rdc2dre_new_align;
  input sig_rdc2dre_use_autodest;
  input \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ;
  input sig_first_dbeat_reg_0;
  input [20:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ;
  wire \GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [7:0]Q;
  wire fifo_full_p1;
  wire [20:0]in;
  wire m_axi_aclk;
  wire [15:0]out;
  wire p_7_out;
  wire sel;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_advance_pipe19_out__1;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_data2rsc_valid;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[2]_0 ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_good_mmap_dbeat15_out__0;
  wire sig_inhibit_rdy_n_reg;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_pop_dqual_reg14_out;
  wire sig_rdc2dre_new_align;
  wire sig_rdc2dre_use_autodest;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f_3 CNTR_INCR_DECR_ADDN_F_I
       (.E(E),
        .FIFO_Full_reg(\INFERRED_GEN.cnt_i_reg[0] ),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4}),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_aclk(m_axi_aclk),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_advance_pipe19_out__1(sig_advance_pipe19_out__1),
        .sig_cmd2data_valid_reg(sel),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_good_mmap_dbeat15_out__0(sig_good_mmap_dbeat15_out__0),
        .sig_inhibit_rdy_n_reg(sig_inhibit_rdy_n_reg),
        .sig_last_dbeat_reg(sig_last_dbeat_reg_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_cmd_cmplt_reg_reg(sig_next_cmd_cmplt_reg_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_pop_dqual_reg14_out(sig_pop_dqual_reg14_out),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  CMDA_DRAM_axi_cdma_0_0_dynshreg_f__parameterized0 DYNSHREG_F_I
       (.D(D),
        .FIFO_Full_reg(\INFERRED_GEN.cnt_i_reg[0] ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_autodest_reg ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg ),
        .\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 (\GEN_INCLUDE_DRE_CNTLS.lsig_s_h_dre_new_align_reg_0 ),
        .\INFERRED_GEN.cnt_i_reg[1] ({CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4}),
        .Q(Q),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_7_out(p_7_out),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2]_0 ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr_reg[3] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .sig_first_dbeat1__0(sig_first_dbeat1__0),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_good_mmap_dbeat15_out__0(sig_good_mmap_dbeat15_out__0),
        .sig_inhibit_rdy_n_reg(sig_inhibit_rdy_n_reg),
        .sig_last_dbeat__1(sig_last_dbeat__1),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .\sig_next_dre_dest_align_reg_reg[1] (sel),
        .sig_next_sequential_reg_reg(sig_dqual_reg_empty_reg),
        .sig_pop_dqual_reg14_out(sig_pop_dqual_reg14_out),
        .sig_rdc2dre_new_align(sig_rdc2dre_new_align),
        .sig_rdc2dre_use_autodest(sig_rdc2dre_use_autodest));
  FDRE FIFO_Full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(\INFERRED_GEN.cnt_i_reg[0] ),
        .R(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f__parameterized1
   (\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ,
    D,
    \INFERRED_GEN.cnt_i_reg[3] ,
    E,
    m_axi_bready,
    sig_stream_rst,
    m_axi_aclk,
    sig_wsc2stat_status,
    out,
    sig_posted_to_axi_reg,
    Q,
    \INFERRED_GEN.cnt_i_reg[3]_0 ,
    m_axi_bvalid,
    sig_inhibit_rdy_n,
    sig_data2addr_stop_req,
    m_axi_bresp);
  output \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  output [2:0]D;
  output [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  output [0:0]E;
  output m_axi_bready;
  input sig_stream_rst;
  input m_axi_aclk;
  input [1:0]sig_wsc2stat_status;
  input [0:0]out;
  input sig_posted_to_axi_reg;
  input [3:0]Q;
  input \INFERRED_GEN.cnt_i_reg[3]_0 ;
  input m_axi_bvalid;
  input sig_inhibit_rdy_n;
  input sig_data2addr_stop_req;
  input [1:0]m_axi_bresp;

  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire [2:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg_n_0;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  wire \INFERRED_GEN.cnt_i_reg[3]_0 ;
  wire [3:0]Q;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [0:0]out;
  wire sig_data2addr_stop_req;
  wire sig_decr_addr_posted_cntr5_out;
  wire sig_inhibit_rdy_n;
  wire sig_posted_to_axi_reg;
  wire sig_stream_rst;
  wire sig_wr_fifo;
  wire [1:0]sig_wsc2stat_status;

  CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f__parameterized0 CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_n_0),
        .\INFERRED_GEN.cnt_i_reg[3]_0 (\INFERRED_GEN.cnt_i_reg[3]_0 ),
        .Q({\INFERRED_GEN.cnt_i_reg[3] ,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4}),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_bvalid(m_axi_bvalid),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_stream_rst(sig_stream_rst),
        .sig_wr_fifo(sig_wr_fifo));
  CMDA_DRAM_axi_cdma_0_0_dynshreg_f__parameterized1 DYNSHREG_F_I
       (.\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ),
        .addr({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4}),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_bresp(m_axi_bresp),
        .out(out),
        .sel(sig_wr_fifo),
        .sig_wsc2stat_status(sig_wsc2stat_status));
  FDRE FIFO_Full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(sig_stream_rst));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    m_axi_bready_INST_0
       (.I0(FIFO_Full_reg_n_0),
        .I1(sig_inhibit_rdy_n),
        .I2(sig_data2addr_stop_req),
        .O(m_axi_bready));
  LUT6 #(
    .INIT(64'hFDDD22222222DDDD)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_posted_to_axi_reg),
        .I1(sig_decr_addr_posted_cntr5_out),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFD22FF00FF0022DD)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_posted_to_axi_reg),
        .I1(sig_decr_addr_posted_cntr5_out),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000FFFE7FFF0000)) 
    \sig_addr_posted_cntr[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(sig_posted_to_axi_reg),
        .I5(sig_decr_addr_posted_cntr5_out),
        .O(E));
  LUT6 #(
    .INIT(64'hF2F0F0F0F0F0F02D)) 
    \sig_addr_posted_cntr[3]_i_2 
       (.I0(sig_posted_to_axi_reg),
        .I1(sig_decr_addr_posted_cntr5_out),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_addr_posted_cntr[3]_i_3 
       (.I0(FIFO_Full_reg_n_0),
        .I1(sig_inhibit_rdy_n),
        .I2(m_axi_bvalid),
        .O(sig_decr_addr_posted_cntr5_out));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f__parameterized2
   (\INFERRED_GEN.cnt_i_reg[0] ,
    D,
    out,
    \INFERRED_GEN.cnt_i_reg[1] ,
    E,
    sig_push_coelsc_reg,
    p_4_out,
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ,
    sig_stream_rst,
    m_axi_aclk,
    sig_wr_fifo,
    Q,
    \INFERRED_GEN.cnt_i_reg[3] ,
    sig_coelsc_reg_empty,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    sig_inhibit_rdy_n,
    sig_wsc2stat_status,
    in);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output [2:0]D;
  output [1:0]out;
  output \INFERRED_GEN.cnt_i_reg[1] ;
  output [0:0]E;
  output sig_push_coelsc_reg;
  output p_4_out;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_wr_fifo;
  input [3:0]Q;
  input [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  input sig_coelsc_reg_empty;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input sig_inhibit_rdy_n;
  input [0:0]sig_wsc2stat_status;
  input [2:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire [2:0]D;
  wire DYNSHREG_F_I_n_3;
  wire [0:0]E;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[3] ;
  wire [3:0]Q;
  wire [0:0]addr_i_p1;
  wire fifo_full_p1;
  wire [2:0]in;
  wire m_axi_aclk;
  wire [1:0]out;
  wire p_4_out;
  wire sig_coelsc_reg_empty;
  wire sig_inhibit_rdy_n;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_rd_empty;
  wire sig_stream_rst;
  wire sig_tlast_err_stop;
  wire sig_wr_fifo;
  wire [0:0]sig_wsc2stat_status;

  CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f__parameterized1 CNTR_INCR_DECR_ADDN_F_I
       (.D(addr_i_p1),
        .\INFERRED_GEN.cnt_i_reg[1]_0 (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[3]_0 (\INFERRED_GEN.cnt_i_reg[3] ),
        .\INFERRED_GEN.cnt_i_reg[3]_1 (DYNSHREG_F_I_n_3),
        .Q({sig_rd_empty,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4}),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_aclk(m_axi_aclk),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_stream_rst(sig_stream_rst),
        .sig_wr_fifo(sig_wr_fifo));
  CMDA_DRAM_axi_cdma_0_0_dynshreg_f__parameterized2 DYNSHREG_F_I
       (.D(D),
        .E(E),
        .FIFO_Full_reg(\INFERRED_GEN.cnt_i_reg[0] ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (DYNSHREG_F_I_n_3),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (addr_i_p1),
        .\INFERRED_GEN.cnt_i_reg[3] (\INFERRED_GEN.cnt_i_reg[3] ),
        .\INFERRED_GEN.cnt_i_reg[3]_0 ({sig_rd_empty,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4}),
        .Q(Q),
        .in(in),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_4_out(p_4_out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_push_coelsc_reg(sig_push_coelsc_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wr_fifo(sig_wr_fifo),
        .sig_wsc2stat_status(sig_wsc2stat_status));
  FDRE FIFO_Full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(\INFERRED_GEN.cnt_i_reg[0] ),
        .R(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module CMDA_DRAM_axi_cdma_0_0_srl_fifo_rbu_f__parameterized3
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_next_calc_error_reg_reg,
    sig_dqual_reg_empty_reg,
    sig_dqual_reg_empty_reg_0,
    sel,
    E,
    D,
    sig_last_dbeat_reg,
    sig_first_dbeat_reg,
    sig_ld_new_cmd_reg_reg,
    out,
    sig_stream_rst,
    m_axi_aclk,
    sig_next_calc_error_reg,
    \sig_dbeat_cntr_reg[1] ,
    sig_dqual_reg_full,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    p_1_out,
    sig_inhibit_rdy_n_reg,
    Q,
    \sig_dbeat_cntr_reg[2] ,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_next_sequential_reg,
    sig_last_dbeat_reg_0,
    sig_dqual_reg_empty,
    sig_posted_to_axi_reg,
    sig_halt_reg_dly3_reg,
    sig_s_ready_out_reg,
    sig_last_mmap_dbeat_reg,
    p_19_out,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_data2addr_stop_req,
    sig_wdc_status_going_full,
    sig_stat2wsc_status_ready,
    sig_wsc2stat_status_valid,
    sig_addr_posted_cntr,
    sig_first_dbeat1__0,
    sig_last_dbeat__1,
    sig_first_dbeat_reg_0,
    sig_ld_new_cmd_reg,
    sig_calc_error_reg_reg);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_next_calc_error_reg_reg;
  output sig_dqual_reg_empty_reg;
  output sig_dqual_reg_empty_reg_0;
  output sel;
  output [0:0]E;
  output [7:0]D;
  output sig_last_dbeat_reg;
  output sig_first_dbeat_reg;
  output sig_ld_new_cmd_reg_reg;
  output [11:0]out;
  input sig_stream_rst;
  input m_axi_aclk;
  input sig_next_calc_error_reg;
  input \sig_dbeat_cntr_reg[1] ;
  input sig_dqual_reg_full;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input p_1_out;
  input sig_inhibit_rdy_n_reg;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[2] ;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_next_sequential_reg;
  input sig_last_dbeat_reg_0;
  input sig_dqual_reg_empty;
  input sig_posted_to_axi_reg;
  input sig_halt_reg_dly3_reg;
  input sig_s_ready_out_reg;
  input sig_last_mmap_dbeat_reg;
  input p_19_out;
  input \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  input sig_data2addr_stop_req;
  input sig_wdc_status_going_full;
  input sig_stat2wsc_status_ready;
  input sig_wsc2stat_status_valid;
  input [2:0]sig_addr_posted_cntr;
  input sig_first_dbeat1__0;
  input sig_last_dbeat__1;
  input sig_first_dbeat_reg_0;
  input sig_ld_new_cmd_reg;
  input [15:0]sig_calc_error_reg_reg;

  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire CNTR_INCR_DECR_ADDN_F_I_n_5;
  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [7:0]Q;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire [11:0]out;
  wire p_19_out;
  wire p_1_out;
  wire sel;
  wire [2:0]sig_addr_posted_cntr;
  wire [15:0]sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire \sig_dbeat_cntr_reg[1] ;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat1__0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_halt_reg_dly3_reg;
  wire sig_inhibit_rdy_n_reg;
  wire sig_last_dbeat__1;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_last_mmap_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_posted_to_axi_reg;
  wire sig_s_ready_out_reg;
  wire sig_stat2wsc_status_ready;
  wire sig_stream_rst;
  wire sig_wdc_status_going_full;
  wire sig_wsc2stat_status_valid;

  CMDA_DRAM_axi_cdma_0_0_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.E(E),
        .FIFO_Full_reg(\INFERRED_GEN.cnt_i_reg[0] ),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5}),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_aclk(m_axi_aclk),
        .p_19_out(p_19_out),
        .p_1_out(p_1_out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_cmd2data_valid_reg(sel),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .\sig_dbeat_cntr_reg[1] (\sig_dbeat_cntr_reg[1] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_halt_reg_dly3_reg(sig_halt_reg_dly3_reg),
        .sig_inhibit_rdy_n_reg(sig_inhibit_rdy_n_reg),
        .sig_last_dbeat_reg(sig_last_dbeat_reg_0),
        .sig_last_mmap_dbeat_reg(sig_last_mmap_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg(sig_next_calc_error_reg_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_posted_to_axi_reg(sig_posted_to_axi_reg),
        .sig_s_ready_out_reg(sig_s_ready_out_reg),
        .sig_stat2wsc_status_ready(sig_stat2wsc_status_ready),
        .sig_stream_rst(sig_stream_rst),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  CMDA_DRAM_axi_cdma_0_0_dynshreg_f__parameterized3 DYNSHREG_F_I
       (.D(D),
        .FIFO_Full_reg(\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[1] ({CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5}),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .p_1_out(p_1_out),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2] ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr_reg[3] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .sig_first_dbeat1__0(sig_first_dbeat1__0),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_inhibit_rdy_n_reg(sig_inhibit_rdy_n_reg),
        .sig_last_dbeat__1(sig_last_dbeat__1),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_next_calc_error_reg_reg(sel),
        .sig_next_sequential_reg_reg(sig_dqual_reg_empty_reg));
  FDRE FIFO_Full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(\INFERRED_GEN.cnt_i_reg[0] ),
        .R(sig_stream_rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
