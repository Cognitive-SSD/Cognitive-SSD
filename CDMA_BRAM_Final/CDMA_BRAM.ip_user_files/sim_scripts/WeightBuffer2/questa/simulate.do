onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "J:/Vivado2016/Vivado/2016.2/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib WeightBuffer2_opt

do {wave.do}

view wave
view structure
view signals

do {WeightBuffer2.udo}

run -all

quit -force
