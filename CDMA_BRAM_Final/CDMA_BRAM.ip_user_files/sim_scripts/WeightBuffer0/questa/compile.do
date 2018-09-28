vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/blk_mem_gen_v8_3_3

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap blk_mem_gen_v8_3_3 msim/blk_mem_gen_v8_3_3

vlog -work xil_defaultlib -64 -sv \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_3_3 -64 \
"../../../ipstatic/blk_mem_gen_v8_3_3/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -64 \
"../../../../CDMA_BRAM.srcs/sources_1/ip/WeightBuffer0/sim/WeightBuffer0.v" \

vlog -work xil_defaultlib "glbl.v"

