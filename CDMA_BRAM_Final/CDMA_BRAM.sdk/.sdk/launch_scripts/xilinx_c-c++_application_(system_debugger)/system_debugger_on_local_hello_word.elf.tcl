connect -url tcp:127.0.0.1:3121
source J:/CDMA_BRAM/CDMA_BRAM/CDMA_BRAM.sdk/CMDA_DRAM_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
loadhw J:/CDMA_BRAM/CDMA_BRAM/CDMA_BRAM.sdk/CMDA_DRAM_wrapper_hw_platform_0/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
dow J:/CDMA_BRAM/CDMA_BRAM/CDMA_BRAM.sdk/Hello_word/Debug/Hello_word.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
con
