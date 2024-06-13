vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_30
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_7

vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_30 questa_lib/msim/axi_gpio_v2_0_30
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_30 -64 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ip/PetaENC_axi_gpio_0_0/sim/PetaENC_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/ff0e/src/pmod_concat.v" \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ip/PetaENC_pmod_bridge_0_0/sim/PetaENC_pmod_bridge_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ip/PetaENC_PmodENC_0_1/sim/PetaENC_PmodENC_0_1.vhd" \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/sim/PetaENC.vhd" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../PetaENC.gen/sources_1/bd/PetaENC/ip/PetaENC_xlconstant_0_0/sim/PetaENC_xlconstant_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

