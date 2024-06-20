transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_32
vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_8

vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_32 activehdl/axi_gpio_v2_0_32
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconstant_v1_1_8 activehdl/xlconstant_v1_1_8

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_32 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/32ee/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/PetaENC/ip/PetaENC_axi_gpio_0_0/sim/PetaENC_axi_gpio_0_0.vhd" \
"../../../bd/PetaENC/ip/PetaENC_PmodENC_0_1/sim/PetaENC_PmodENC_0_1.vhd" \

vlog -work xlconstant_v1_1_8  -v2k5 -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_2 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_32 -l xil_defaultlib -l xlconstant_v1_1_8 \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_2 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_32 -l xil_defaultlib -l xlconstant_v1_1_8 \
"../../../bd/PetaENC/ip/PetaENC_xlconstant_0_0/sim/PetaENC_xlconstant_0_0.v" \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/ff0e/src/pmod_concat.v" \
"../../../bd/PetaENC/ip/PetaENC_pmod_bridge_0_1/sim/PetaENC_pmod_bridge_0_1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/PetaENC/sim/PetaENC.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

