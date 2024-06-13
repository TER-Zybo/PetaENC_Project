vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_32
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_8

vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_32 modelsim_lib/msim/axi_gpio_v2_0_32
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_8 modelsim_lib/msim/xlconstant_v1_1_8

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_32  -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/32ee/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/PetaENC/ip/PetaENC_axi_gpio_0_0/sim/PetaENC_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/ff0e/src/pmod_concat.v" \
"../../../bd/PetaENC/ip/PetaENC_pmod_bridge_0_0/sim/PetaENC_pmod_bridge_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/PetaENC/ip/PetaENC_PmodENC_0_1/sim/PetaENC_PmodENC_0_1.vhd" \

vlog -work xlconstant_v1_1_8  -incr -mfcu  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/PetaENC/ip/PetaENC_xlconstant_0_0/sim/PetaENC_xlconstant_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/PetaENC/sim/PetaENC.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

