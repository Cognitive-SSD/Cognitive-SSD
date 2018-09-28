onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "J:/Vivado2016/Vivado/2016.2/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib WeightBuffer3_opt

do {wave.do}

view wave
view structure
view signals

do {WeightBuffer3.udo}

run -all

quit -force
