--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
--Date        : Thu Jun 20 12:27:23 2024
--Host        : secil10.siame.univ-tlse3.fr running 64-bit Fedora Linux 38 (Thirty Eight)
--Command     : generate_target PetaENC_INT.bd
--Design      : PetaENC_INT
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PetaENC_INT is
  port (
    Pmod_ENC_pin10_i : in STD_LOGIC;
    Pmod_ENC_pin10_o : out STD_LOGIC;
    Pmod_ENC_pin10_t : out STD_LOGIC;
    Pmod_ENC_pin1_i : in STD_LOGIC;
    Pmod_ENC_pin1_o : out STD_LOGIC;
    Pmod_ENC_pin1_t : out STD_LOGIC;
    Pmod_ENC_pin2_i : in STD_LOGIC;
    Pmod_ENC_pin2_o : out STD_LOGIC;
    Pmod_ENC_pin2_t : out STD_LOGIC;
    Pmod_ENC_pin3_i : in STD_LOGIC;
    Pmod_ENC_pin3_o : out STD_LOGIC;
    Pmod_ENC_pin3_t : out STD_LOGIC;
    Pmod_ENC_pin4_i : in STD_LOGIC;
    Pmod_ENC_pin4_o : out STD_LOGIC;
    Pmod_ENC_pin4_t : out STD_LOGIC;
    Pmod_ENC_pin7_i : in STD_LOGIC;
    Pmod_ENC_pin7_o : out STD_LOGIC;
    Pmod_ENC_pin7_t : out STD_LOGIC;
    Pmod_ENC_pin8_i : in STD_LOGIC;
    Pmod_ENC_pin8_o : out STD_LOGIC;
    Pmod_ENC_pin8_t : out STD_LOGIC;
    Pmod_ENC_pin9_i : in STD_LOGIC;
    Pmod_ENC_pin9_o : out STD_LOGIC;
    Pmod_ENC_pin9_t : out STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    ip2intc_irpt_0 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of PetaENC_INT : entity is "PetaENC_INT,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PetaENC_INT,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of PetaENC_INT : entity is "PetaENC_INT.hwdef";
end PetaENC_INT;

architecture STRUCTURE of PetaENC_INT is
  component PetaENC_INT_PmodENC_0_0 is
  port (
    clk : in STD_LOGIC;
    Pmod_top : in STD_LOGIC_VECTOR ( 3 downto 0 );
    counter : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component PetaENC_INT_PmodENC_0_0;
  component PetaENC_INT_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component PetaENC_INT_axi_gpio_0_0;
  component PetaENC_INT_pmod_bridge_0_0 is
  port (
    in_top_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    out0_I : in STD_LOGIC;
    out1_I : in STD_LOGIC;
    out2_I : in STD_LOGIC;
    out3_I : in STD_LOGIC;
    out4_I : in STD_LOGIC;
    out5_I : in STD_LOGIC;
    out6_I : in STD_LOGIC;
    out7_I : in STD_LOGIC;
    out0_O : out STD_LOGIC;
    out1_O : out STD_LOGIC;
    out2_O : out STD_LOGIC;
    out3_O : out STD_LOGIC;
    out4_O : out STD_LOGIC;
    out5_O : out STD_LOGIC;
    out6_O : out STD_LOGIC;
    out7_O : out STD_LOGIC;
    out0_T : out STD_LOGIC;
    out1_T : out STD_LOGIC;
    out2_T : out STD_LOGIC;
    out3_T : out STD_LOGIC;
    out4_T : out STD_LOGIC;
    out5_T : out STD_LOGIC;
    out6_T : out STD_LOGIC;
    out7_T : out STD_LOGIC
  );
  end component PetaENC_INT_pmod_bridge_0_0;
  component PetaENC_INT_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component PetaENC_INT_xlconstant_0_0;
  signal Net : STD_LOGIC;
  signal PmodENC_0_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal S_AXI_0_1_ARREADY : STD_LOGIC;
  signal S_AXI_0_1_ARVALID : STD_LOGIC;
  signal S_AXI_0_1_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal S_AXI_0_1_AWREADY : STD_LOGIC;
  signal S_AXI_0_1_AWVALID : STD_LOGIC;
  signal S_AXI_0_1_BREADY : STD_LOGIC;
  signal S_AXI_0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_0_1_BVALID : STD_LOGIC;
  signal S_AXI_0_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_0_1_RREADY : STD_LOGIC;
  signal S_AXI_0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_0_1_RVALID : STD_LOGIC;
  signal S_AXI_0_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_0_1_WREADY : STD_LOGIC;
  signal S_AXI_0_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_WVALID : STD_LOGIC;
  signal axi_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN10_I : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN10_O : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN10_T : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN1_I : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN1_O : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN1_T : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN2_I : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN2_O : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN2_T : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN3_I : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN3_O : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN3_T : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN4_I : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN4_O : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN4_T : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN7_I : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN7_O : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN7_T : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN8_I : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN8_O : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN8_T : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN9_I : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN9_O : STD_LOGIC;
  signal pmod_bridge_0_Pmod_out_PIN9_T : STD_LOGIC;
  signal pmod_bridge_0_in_top_bus_I : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_aresetn_0_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_gpio_0_gpio_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_gpio_0_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Pmod_ENC_pin10_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_I";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin10_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_O";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin10_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_T";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin1_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_I";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin1_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_O";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin1_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_T";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin2_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_I";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin2_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_O";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin2_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_T";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin3_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_I";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin3_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_O";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin3_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_T";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin4_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_I";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin4_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_O";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin4_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_T";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin7_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_I";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin7_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_O";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin7_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_T";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin8_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_I";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin8_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_O";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin8_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_T";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin9_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_I";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin9_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_O";
  attribute X_INTERFACE_INFO of Pmod_ENC_pin9_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_T";
  attribute X_INTERFACE_INFO of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of ip2intc_irpt_0 : signal is "xilinx.com:signal:interrupt:1.0 INTR.IP2INTC_IRPT_0 INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ip2intc_irpt_0 : signal is "XIL_INTERFACENAME INTR.IP2INTC_IRPT_0, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN PetaENC_INT_s_axi_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S_AXI_araddr : signal is "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PetaENC_INT_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  Net <= s_axi_aclk;
  Pmod_ENC_pin10_o <= pmod_bridge_0_Pmod_out_PIN10_O;
  Pmod_ENC_pin10_t <= pmod_bridge_0_Pmod_out_PIN10_T;
  Pmod_ENC_pin1_o <= pmod_bridge_0_Pmod_out_PIN1_O;
  Pmod_ENC_pin1_t <= pmod_bridge_0_Pmod_out_PIN1_T;
  Pmod_ENC_pin2_o <= pmod_bridge_0_Pmod_out_PIN2_O;
  Pmod_ENC_pin2_t <= pmod_bridge_0_Pmod_out_PIN2_T;
  Pmod_ENC_pin3_o <= pmod_bridge_0_Pmod_out_PIN3_O;
  Pmod_ENC_pin3_t <= pmod_bridge_0_Pmod_out_PIN3_T;
  Pmod_ENC_pin4_o <= pmod_bridge_0_Pmod_out_PIN4_O;
  Pmod_ENC_pin4_t <= pmod_bridge_0_Pmod_out_PIN4_T;
  Pmod_ENC_pin7_o <= pmod_bridge_0_Pmod_out_PIN7_O;
  Pmod_ENC_pin7_t <= pmod_bridge_0_Pmod_out_PIN7_T;
  Pmod_ENC_pin8_o <= pmod_bridge_0_Pmod_out_PIN8_O;
  Pmod_ENC_pin8_t <= pmod_bridge_0_Pmod_out_PIN8_T;
  Pmod_ENC_pin9_o <= pmod_bridge_0_Pmod_out_PIN9_O;
  Pmod_ENC_pin9_t <= pmod_bridge_0_Pmod_out_PIN9_T;
  S_AXI_0_1_ARADDR(8 downto 0) <= S_AXI_araddr(8 downto 0);
  S_AXI_0_1_ARVALID <= S_AXI_arvalid;
  S_AXI_0_1_AWADDR(8 downto 0) <= S_AXI_awaddr(8 downto 0);
  S_AXI_0_1_AWVALID <= S_AXI_awvalid;
  S_AXI_0_1_BREADY <= S_AXI_bready;
  S_AXI_0_1_RREADY <= S_AXI_rready;
  S_AXI_0_1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  S_AXI_0_1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  S_AXI_0_1_WVALID <= S_AXI_wvalid;
  S_AXI_arready <= S_AXI_0_1_ARREADY;
  S_AXI_awready <= S_AXI_0_1_AWREADY;
  S_AXI_bresp(1 downto 0) <= S_AXI_0_1_BRESP(1 downto 0);
  S_AXI_bvalid <= S_AXI_0_1_BVALID;
  S_AXI_rdata(31 downto 0) <= S_AXI_0_1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= S_AXI_0_1_RRESP(1 downto 0);
  S_AXI_rvalid <= S_AXI_0_1_RVALID;
  S_AXI_wready <= S_AXI_0_1_WREADY;
  ip2intc_irpt_0 <= axi_gpio_0_ip2intc_irpt;
  pmod_bridge_0_Pmod_out_PIN10_I <= Pmod_ENC_pin10_i;
  pmod_bridge_0_Pmod_out_PIN1_I <= Pmod_ENC_pin1_i;
  pmod_bridge_0_Pmod_out_PIN2_I <= Pmod_ENC_pin2_i;
  pmod_bridge_0_Pmod_out_PIN3_I <= Pmod_ENC_pin3_i;
  pmod_bridge_0_Pmod_out_PIN4_I <= Pmod_ENC_pin4_i;
  pmod_bridge_0_Pmod_out_PIN7_I <= Pmod_ENC_pin7_i;
  pmod_bridge_0_Pmod_out_PIN8_I <= Pmod_ENC_pin8_i;
  pmod_bridge_0_Pmod_out_PIN9_I <= Pmod_ENC_pin9_i;
  s_axi_aresetn_0_1 <= s_axi_aresetn;
PmodENC_0: component PetaENC_INT_PmodENC_0_0
     port map (
      Pmod_top(3 downto 0) => pmod_bridge_0_in_top_bus_I(3 downto 0),
      clk => Net,
      counter(3 downto 0) => PmodENC_0_counter(3 downto 0)
    );
axi_gpio_0: component PetaENC_INT_axi_gpio_0_0
     port map (
      gpio_io_i(3 downto 0) => PmodENC_0_counter(3 downto 0),
      gpio_io_o(3 downto 0) => NLW_axi_gpio_0_gpio_io_o_UNCONNECTED(3 downto 0),
      gpio_io_t(3 downto 0) => NLW_axi_gpio_0_gpio_io_t_UNCONNECTED(3 downto 0),
      ip2intc_irpt => axi_gpio_0_ip2intc_irpt,
      s_axi_aclk => Net,
      s_axi_araddr(8 downto 0) => S_AXI_0_1_ARADDR(8 downto 0),
      s_axi_aresetn => s_axi_aresetn_0_1,
      s_axi_arready => S_AXI_0_1_ARREADY,
      s_axi_arvalid => S_AXI_0_1_ARVALID,
      s_axi_awaddr(8 downto 0) => S_AXI_0_1_AWADDR(8 downto 0),
      s_axi_awready => S_AXI_0_1_AWREADY,
      s_axi_awvalid => S_AXI_0_1_AWVALID,
      s_axi_bready => S_AXI_0_1_BREADY,
      s_axi_bresp(1 downto 0) => S_AXI_0_1_BRESP(1 downto 0),
      s_axi_bvalid => S_AXI_0_1_BVALID,
      s_axi_rdata(31 downto 0) => S_AXI_0_1_RDATA(31 downto 0),
      s_axi_rready => S_AXI_0_1_RREADY,
      s_axi_rresp(1 downto 0) => S_AXI_0_1_RRESP(1 downto 0),
      s_axi_rvalid => S_AXI_0_1_RVALID,
      s_axi_wdata(31 downto 0) => S_AXI_0_1_WDATA(31 downto 0),
      s_axi_wready => S_AXI_0_1_WREADY,
      s_axi_wstrb(3 downto 0) => S_AXI_0_1_WSTRB(3 downto 0),
      s_axi_wvalid => S_AXI_0_1_WVALID
    );
pmod_bridge_0: component PetaENC_INT_pmod_bridge_0_0
     port map (
      in_top_bus_I(3 downto 0) => pmod_bridge_0_in_top_bus_I(3 downto 0),
      in_top_bus_O(3 downto 0) => B"0000",
      in_top_bus_T(3 downto 0) => xlconstant_0_dout(3 downto 0),
      out0_I => pmod_bridge_0_Pmod_out_PIN1_I,
      out0_O => pmod_bridge_0_Pmod_out_PIN1_O,
      out0_T => pmod_bridge_0_Pmod_out_PIN1_T,
      out1_I => pmod_bridge_0_Pmod_out_PIN2_I,
      out1_O => pmod_bridge_0_Pmod_out_PIN2_O,
      out1_T => pmod_bridge_0_Pmod_out_PIN2_T,
      out2_I => pmod_bridge_0_Pmod_out_PIN3_I,
      out2_O => pmod_bridge_0_Pmod_out_PIN3_O,
      out2_T => pmod_bridge_0_Pmod_out_PIN3_T,
      out3_I => pmod_bridge_0_Pmod_out_PIN4_I,
      out3_O => pmod_bridge_0_Pmod_out_PIN4_O,
      out3_T => pmod_bridge_0_Pmod_out_PIN4_T,
      out4_I => pmod_bridge_0_Pmod_out_PIN7_I,
      out4_O => pmod_bridge_0_Pmod_out_PIN7_O,
      out4_T => pmod_bridge_0_Pmod_out_PIN7_T,
      out5_I => pmod_bridge_0_Pmod_out_PIN8_I,
      out5_O => pmod_bridge_0_Pmod_out_PIN8_O,
      out5_T => pmod_bridge_0_Pmod_out_PIN8_T,
      out6_I => pmod_bridge_0_Pmod_out_PIN9_I,
      out6_O => pmod_bridge_0_Pmod_out_PIN9_O,
      out6_T => pmod_bridge_0_Pmod_out_PIN9_T,
      out7_I => pmod_bridge_0_Pmod_out_PIN10_I,
      out7_O => pmod_bridge_0_Pmod_out_PIN10_O,
      out7_T => pmod_bridge_0_Pmod_out_PIN10_T
    );
xlconstant_0: component PetaENC_INT_xlconstant_0_0
     port map (
      dout(3 downto 0) => xlconstant_0_dout(3 downto 0)
    );
end STRUCTURE;
