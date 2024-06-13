--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2.2 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
--Date        : Thu Jun 13 15:26:45 2024
--Host        : LAPTOP-DWAYNE running 64-bit major release  (build 9200)
--Command     : generate_target PetaENC.bd
--Design      : PetaENC
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PetaENC is
  port (
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
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of PetaENC : entity is "PetaENC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PetaENC,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of PetaENC : entity is "PetaENC.hwdef";
end PetaENC;

architecture STRUCTURE of PetaENC is
  component PetaENC_axi_gpio_0_0 is
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
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component PetaENC_axi_gpio_0_0;
  component PetaENC_pmod_bridge_0_0 is
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
  end component PetaENC_pmod_bridge_0_0;
  component PetaENC_PmodENC_0_1 is
  port (
    clk : in STD_LOGIC;
    Pmod_top : in STD_LOGIC_VECTOR ( 3 downto 0 );
    counter : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component PetaENC_PmodENC_0_1;
  component PetaENC_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component PetaENC_xlconstant_0_0;
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
  signal pmod_bridge_0_in_top_bus_I : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_aresetn_0_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_gpio_0_gpio_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_gpio_0_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pmod_bridge_0_out0_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out0_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out1_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out2_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out3_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out3_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out4_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out4_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out5_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out5_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out6_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out6_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out7_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out7_T_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
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
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN PetaENC_s_axi_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S_AXI_araddr : signal is "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PetaENC_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  Net <= s_axi_aclk;
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
  s_axi_aresetn_0_1 <= s_axi_aresetn;
PmodENC_0: component PetaENC_PmodENC_0_1
     port map (
      Pmod_top(3 downto 0) => pmod_bridge_0_in_top_bus_I(3 downto 0),
      clk => Net,
      counter(3 downto 0) => PmodENC_0_counter(3 downto 0)
    );
axi_gpio_0: component PetaENC_axi_gpio_0_0
     port map (
      gpio_io_i(3 downto 0) => PmodENC_0_counter(3 downto 0),
      gpio_io_o(3 downto 0) => NLW_axi_gpio_0_gpio_io_o_UNCONNECTED(3 downto 0),
      gpio_io_t(3 downto 0) => NLW_axi_gpio_0_gpio_io_t_UNCONNECTED(3 downto 0),
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
pmod_bridge_0: component PetaENC_pmod_bridge_0_0
     port map (
      in_top_bus_I(3 downto 0) => pmod_bridge_0_in_top_bus_I(3 downto 0),
      in_top_bus_O(3 downto 0) => B"0000",
      in_top_bus_T(3 downto 0) => xlconstant_0_dout(3 downto 0),
      out0_I => '0',
      out0_O => NLW_pmod_bridge_0_out0_O_UNCONNECTED,
      out0_T => NLW_pmod_bridge_0_out0_T_UNCONNECTED,
      out1_I => '0',
      out1_O => NLW_pmod_bridge_0_out1_O_UNCONNECTED,
      out1_T => NLW_pmod_bridge_0_out1_T_UNCONNECTED,
      out2_I => '0',
      out2_O => NLW_pmod_bridge_0_out2_O_UNCONNECTED,
      out2_T => NLW_pmod_bridge_0_out2_T_UNCONNECTED,
      out3_I => '0',
      out3_O => NLW_pmod_bridge_0_out3_O_UNCONNECTED,
      out3_T => NLW_pmod_bridge_0_out3_T_UNCONNECTED,
      out4_I => '0',
      out4_O => NLW_pmod_bridge_0_out4_O_UNCONNECTED,
      out4_T => NLW_pmod_bridge_0_out4_T_UNCONNECTED,
      out5_I => '0',
      out5_O => NLW_pmod_bridge_0_out5_O_UNCONNECTED,
      out5_T => NLW_pmod_bridge_0_out5_T_UNCONNECTED,
      out6_I => '0',
      out6_O => NLW_pmod_bridge_0_out6_O_UNCONNECTED,
      out6_T => NLW_pmod_bridge_0_out6_T_UNCONNECTED,
      out7_I => '0',
      out7_O => NLW_pmod_bridge_0_out7_O_UNCONNECTED,
      out7_T => NLW_pmod_bridge_0_out7_T_UNCONNECTED
    );
xlconstant_0: component PetaENC_xlconstant_0_0
     port map (
      dout(3 downto 0) => xlconstant_0_dout(3 downto 0)
    );
end STRUCTURE;