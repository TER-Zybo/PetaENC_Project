transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+PetaENC  -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_32 -L xil_defaultlib -L xlconstant_v1_1_8 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.PetaENC xil_defaultlib.glbl

do {PetaENC.udo}

run 1000ns

endsim

quit -force
