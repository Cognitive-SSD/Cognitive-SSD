onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -pli "J:/Vivado2016/Vivado/2016.2/lib/win64.o/libxil_vsim.dll" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L dist_mem_gen_v8_0_10 -lib xil_defaultlib xil_defaultlib.DIS_0_MEMORY xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {DIS_0_MEMORY.udo}

run -all

quit -force
