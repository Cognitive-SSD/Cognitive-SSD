vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/dist_mem_gen_v8_0_10

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap dist_mem_gen_v8_0_10 riviera/dist_mem_gen_v8_0_10

vlog -work xil_defaultlib -v2k5 -sv \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_10 -v2k5 \
"../../../ipstatic/dist_mem_gen_v8_0_10/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -v2k5 \
"../../../../CDMA_BRAM.srcs/sources_1/ip/DIS_0_MEMORY/sim/DIS_0_MEMORY.v" \

vlog -work xil_defaultlib "glbl.v"

