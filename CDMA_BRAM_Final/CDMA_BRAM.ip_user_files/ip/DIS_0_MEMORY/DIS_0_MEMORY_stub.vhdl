-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Wed Jan 31 21:30:27 2018
-- Host        : DESKTOP-G14T14M running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               J:/CDMA_BRAM/CDMA_DBRAM_DRAM_1/CDMA_BRAM.srcs/sources_1/ip/DIS_0_MEMORY/DIS_0_MEMORY_stub.vhdl
-- Design      : DIS_0_MEMORY
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DIS_0_MEMORY is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end DIS_0_MEMORY;

architecture stub of DIS_0_MEMORY is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[11:0],d[31:0],dpra[11:0],clk,we,dpo[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_10,Vivado 2016.2";
begin
end;
