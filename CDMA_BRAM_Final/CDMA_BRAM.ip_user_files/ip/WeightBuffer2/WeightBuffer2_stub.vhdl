-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Fri Feb 02 23:36:55 2018
-- Host        : DESKTOP-G14T14M running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               J:/CDMA_BRAM/CDMA_DBRAM_DRAM_1/CDMA_BRAM.srcs/sources_1/ip/WeightBuffer2/WeightBuffer2_stub.vhdl
-- Design      : WeightBuffer2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WeightBuffer2 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 63 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 511 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 511 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 63 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 511 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 511 downto 0 )
  );

end WeightBuffer2;

architecture stub of WeightBuffer2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[63:0],addra[8:0],dina[511:0],douta[511:0],clkb,enb,web[63:0],addrb[8:0],dinb[511:0],doutb[511:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_3_3,Vivado 2016.2";
begin
end;
