onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "J:/Vivado2016/Vivado/2016.2/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib WeightBuffer1_opt

do {wave.do}

view wave
view structure
view signals

do {WeightBuffer1.udo}

run -all

quit -force
