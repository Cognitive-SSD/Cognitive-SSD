connect -url tcp:127.0.0.1:3121
source J:/Papers3/CDMA_BRAM/CDMA_BRAM.sdk/Top_hw_platform_1/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
loadhw J:/Papers3/CDMA_BRAM/CDMA_BRAM.sdk/Top_hw_platform_1/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
dow J:/Papers3/CDMA_BRAM/CDMA_BRAM.sdk/CDMA/Debug/CDMA.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A00E04"} -index 0
con
