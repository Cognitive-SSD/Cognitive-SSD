-makelib ies/xil_defaultlib -sv \
  "J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
  "J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
  "J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
  "J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
  "J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
  "J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
  "J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \
-endlib
-makelib ies/xpm \
  "J:/Vivado2016/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_3 \
  "../../../ipstatic/blk_mem_gen_v8_3_3/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../../GENERATE_ID/GENERATE_ID.srcs/sources_1/ip/BitMap/sim/BitMap.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

