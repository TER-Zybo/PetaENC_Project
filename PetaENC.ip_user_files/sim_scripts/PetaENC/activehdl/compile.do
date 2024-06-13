transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_30
vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_7

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_30 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ip/PetaENC_axi_gpio_0_0/sim/PetaENC_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_2 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l xil_defaultlib -l xlconstant_v1_1_7 \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/ff0e/src/pmod_concat.v" \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ip/PetaENC_pmod_bridge_0_0/sim/PetaENC_pmod_bridge_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ip/PetaENC_PmodENC_0_1/sim/PetaENC_PmodENC_0_1.vhd" \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/sim/PetaENC.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_2 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l xil_defaultlib -l xlconstant_v1_1_7 \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_2 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l xil_defaultlib -l xlconstant_v1_1_7 \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ip/PetaENC_xlconstant_0_0/sim/PetaENC_xlconstant_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

