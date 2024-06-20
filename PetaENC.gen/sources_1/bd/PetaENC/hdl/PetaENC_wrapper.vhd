--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
--Date        : Thu Jun 20 12:23:15 2024
--Host        : secil10.siame.univ-tlse3.fr running 64-bit Fedora Linux 38 (Thirty Eight)
--Command     : generate_target PetaENC_wrapper.bd
--Design      : PetaENC_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PetaENC_wrapper is
  port (
    Pmod_ENC_pin10_io : inout STD_LOGIC;
    Pmod_ENC_pin1_io : inout STD_LOGIC;
    Pmod_ENC_pin2_io : inout STD_LOGIC;
    Pmod_ENC_pin3_io : inout STD_LOGIC;
    Pmod_ENC_pin4_io : inout STD_LOGIC;
    Pmod_ENC_pin7_io : inout STD_LOGIC;
    Pmod_ENC_pin8_io : inout STD_LOGIC;
    Pmod_ENC_pin9_io : inout STD_LOGIC;
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
end PetaENC_wrapper;

architecture STRUCTURE of PetaENC_wrapper is
  component PetaENC is
  port (
    Pmod_ENC_pin1_o : out STD_LOGIC;
    Pmod_ENC_pin7_i : in STD_LOGIC;
    Pmod_ENC_pin2_o : out STD_LOGIC;
    Pmod_ENC_pin8_i : in STD_LOGIC;
    Pmod_ENC_pin3_o : out STD_LOGIC;
    Pmod_ENC_pin9_i : in STD_LOGIC;
    Pmod_ENC_pin10_o : out STD_LOGIC;
    Pmod_ENC_pin4_o : out STD_LOGIC;
    Pmod_ENC_pin3_i : in STD_LOGIC;
    Pmod_ENC_pin4_i : in STD_LOGIC;
    Pmod_ENC_pin1_i : in STD_LOGIC;
    Pmod_ENC_pin2_i : in STD_LOGIC;
    Pmod_ENC_pin10_t : out STD_LOGIC;
    Pmod_ENC_pin8_t : out STD_LOGIC;
    Pmod_ENC_pin9_t : out STD_LOGIC;
    Pmod_ENC_pin4_t : out STD_LOGIC;
    Pmod_ENC_pin9_o : out STD_LOGIC;
    Pmod_ENC_pin10_i : in STD_LOGIC;
    Pmod_ENC_pin7_t : out STD_LOGIC;
    Pmod_ENC_pin1_t : out STD_LOGIC;
    Pmod_ENC_pin2_t : out STD_LOGIC;
    Pmod_ENC_pin7_o : out STD_LOGIC;
    Pmod_ENC_pin3_t : out STD_LOGIC;
    Pmod_ENC_pin8_o : out STD_LOGIC;
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
    s_axi_aresetn : in STD_LOGIC;
    ip2intc_irpt_0 : out STD_LOGIC
  );
  end component PetaENC;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal Pmod_ENC_pin10_i : STD_LOGIC;
  signal Pmod_ENC_pin10_o : STD_LOGIC;
  signal Pmod_ENC_pin10_t : STD_LOGIC;
  signal Pmod_ENC_pin1_i : STD_LOGIC;
  signal Pmod_ENC_pin1_o : STD_LOGIC;
  signal Pmod_ENC_pin1_t : STD_LOGIC;
  signal Pmod_ENC_pin2_i : STD_LOGIC;
  signal Pmod_ENC_pin2_o : STD_LOGIC;
  signal Pmod_ENC_pin2_t : STD_LOGIC;
  signal Pmod_ENC_pin3_i : STD_LOGIC;
  signal Pmod_ENC_pin3_o : STD_LOGIC;
  signal Pmod_ENC_pin3_t : STD_LOGIC;
  signal Pmod_ENC_pin4_i : STD_LOGIC;
  signal Pmod_ENC_pin4_o : STD_LOGIC;
  signal Pmod_ENC_pin4_t : STD_LOGIC;
  signal Pmod_ENC_pin7_i : STD_LOGIC;
  signal Pmod_ENC_pin7_o : STD_LOGIC;
  signal Pmod_ENC_pin7_t : STD_LOGIC;
  signal Pmod_ENC_pin8_i : STD_LOGIC;
  signal Pmod_ENC_pin8_o : STD_LOGIC;
  signal Pmod_ENC_pin8_t : STD_LOGIC;
  signal Pmod_ENC_pin9_i : STD_LOGIC;
  signal Pmod_ENC_pin9_o : STD_LOGIC;
  signal Pmod_ENC_pin9_t : STD_LOGIC;
begin
PetaENC_i: component PetaENC
     port map (
      Pmod_ENC_pin10_i => Pmod_ENC_pin10_i,
      Pmod_ENC_pin10_o => Pmod_ENC_pin10_o,
      Pmod_ENC_pin10_t => Pmod_ENC_pin10_t,
      Pmod_ENC_pin1_i => Pmod_ENC_pin1_i,
      Pmod_ENC_pin1_o => Pmod_ENC_pin1_o,
      Pmod_ENC_pin1_t => Pmod_ENC_pin1_t,
      Pmod_ENC_pin2_i => Pmod_ENC_pin2_i,
      Pmod_ENC_pin2_o => Pmod_ENC_pin2_o,
      Pmod_ENC_pin2_t => Pmod_ENC_pin2_t,
      Pmod_ENC_pin3_i => Pmod_ENC_pin3_i,
      Pmod_ENC_pin3_o => Pmod_ENC_pin3_o,
      Pmod_ENC_pin3_t => Pmod_ENC_pin3_t,
      Pmod_ENC_pin4_i => Pmod_ENC_pin4_i,
      Pmod_ENC_pin4_o => Pmod_ENC_pin4_o,
      Pmod_ENC_pin4_t => Pmod_ENC_pin4_t,
      Pmod_ENC_pin7_i => Pmod_ENC_pin7_i,
      Pmod_ENC_pin7_o => Pmod_ENC_pin7_o,
      Pmod_ENC_pin7_t => Pmod_ENC_pin7_t,
      Pmod_ENC_pin8_i => Pmod_ENC_pin8_i,
      Pmod_ENC_pin8_o => Pmod_ENC_pin8_o,
      Pmod_ENC_pin8_t => Pmod_ENC_pin8_t,
      Pmod_ENC_pin9_i => Pmod_ENC_pin9_i,
      Pmod_ENC_pin9_o => Pmod_ENC_pin9_o,
      Pmod_ENC_pin9_t => Pmod_ENC_pin9_t,
      S_AXI_araddr(8 downto 0) => S_AXI_araddr(8 downto 0),
      S_AXI_arready => S_AXI_arready,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(8 downto 0) => S_AXI_awaddr(8 downto 0),
      S_AXI_awready => S_AXI_awready,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      S_AXI_wready => S_AXI_wready,
      S_AXI_wstrb(3 downto 0) => S_AXI_wstrb(3 downto 0),
      S_AXI_wvalid => S_AXI_wvalid,
      ip2intc_irpt_0 => ip2intc_irpt_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
Pmod_ENC_pin10_iobuf: component IOBUF
     port map (
      I => Pmod_ENC_pin10_o,
      IO => Pmod_ENC_pin10_io,
      O => Pmod_ENC_pin10_i,
      T => Pmod_ENC_pin10_t
    );
Pmod_ENC_pin1_iobuf: component IOBUF
     port map (
      I => Pmod_ENC_pin1_o,
      IO => Pmod_ENC_pin1_io,
      O => Pmod_ENC_pin1_i,
      T => Pmod_ENC_pin1_t
    );
Pmod_ENC_pin2_iobuf: component IOBUF
     port map (
      I => Pmod_ENC_pin2_o,
      IO => Pmod_ENC_pin2_io,
      O => Pmod_ENC_pin2_i,
      T => Pmod_ENC_pin2_t
    );
Pmod_ENC_pin3_iobuf: component IOBUF
     port map (
      I => Pmod_ENC_pin3_o,
      IO => Pmod_ENC_pin3_io,
      O => Pmod_ENC_pin3_i,
      T => Pmod_ENC_pin3_t
    );
Pmod_ENC_pin4_iobuf: component IOBUF
     port map (
      I => Pmod_ENC_pin4_o,
      IO => Pmod_ENC_pin4_io,
      O => Pmod_ENC_pin4_i,
      T => Pmod_ENC_pin4_t
    );
Pmod_ENC_pin7_iobuf: component IOBUF
     port map (
      I => Pmod_ENC_pin7_o,
      IO => Pmod_ENC_pin7_io,
      O => Pmod_ENC_pin7_i,
      T => Pmod_ENC_pin7_t
    );
Pmod_ENC_pin8_iobuf: component IOBUF
     port map (
      I => Pmod_ENC_pin8_o,
      IO => Pmod_ENC_pin8_io,
      O => Pmod_ENC_pin8_i,
      T => Pmod_ENC_pin8_t
    );
Pmod_ENC_pin9_iobuf: component IOBUF
     port map (
      I => Pmod_ENC_pin9_o,
      IO => Pmod_ENC_pin9_io,
      O => Pmod_ENC_pin9_i,
      T => Pmod_ENC_pin9_t
    );
end STRUCTURE;
