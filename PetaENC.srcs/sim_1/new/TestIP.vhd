----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/11/2024 11:06:50 AM
-- Design Name: 
-- Module Name: TestIP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TestIP is
--  Port ( );
end TestIP;

architecture Behavioral of TestIP is
    constant clkpulse : Time := 10 ns;
    constant timeout : Time := 1000 ms;
  
    signal E_Pmod_ENC_pin10_io : STD_LOGIC;
    signal E_Pmod_ENC_pin1_io : STD_LOGIC;
    signal E_Pmod_ENC_pin2_io : STD_LOGIC;
    signal E_Pmod_ENC_pin3_io : STD_LOGIC;
    signal E_Pmod_ENC_pin4_io : STD_LOGIC;
    signal E_Pmod_ENC_pin7_io : STD_LOGIC;
    signal E_Pmod_ENC_pin8_io : STD_LOGIC;
    signal E_Pmod_ENC_pin9_io : STD_LOGIC;
    signal E_S_AXI_araddr : STD_LOGIC_VECTOR ( 8 downto 0 );
    signal E_S_AXI_arready : STD_LOGIC;
    signal E_S_AXI_arvalid : STD_LOGIC;
    signal E_S_AXI_awaddr : STD_LOGIC_VECTOR ( 8 downto 0 );
    signal E_S_AXI_awready : STD_LOGIC;
    signal E_S_AXI_awvalid : STD_LOGIC;
    signal E_S_AXI_bready : STD_LOGIC;
    signal E_S_AXI_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
    signal E_S_AXI_bvalid : STD_LOGIC;
    signal E_S_AXI_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal E_S_AXI_rready : STD_LOGIC;
    signal E_S_AXI_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
    signal E_S_AXI_rvalid : STD_LOGIC;
    signal E_S_AXI_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal E_S_AXI_wready : STD_LOGIC;
    signal E_S_AXI_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal E_S_AXI_wvalid : STD_LOGIC;
    signal E_s_axi_aclk : STD_LOGIC;
    signal E_s_axi_aresetn : STD_LOGIC;
    
begin

P_E_s_axi_aclk: process
begin
	E_s_axi_aclk <= '1';
	wait for clkpulse;
	E_s_axi_aclk <= '0';
	wait for clkpulse;
end process P_E_s_axi_aclk;

p_ipenc : entity work.PetaENC_wrapper
    port map (
        Pmod_ENC_pin10_io => E_Pmod_ENC_pin10_io,
        Pmod_ENC_pin1_io => E_Pmod_ENC_pin1_io,
        Pmod_ENC_pin2_io => E_Pmod_ENC_pin2_io,
        Pmod_ENC_pin3_io => E_Pmod_ENC_pin3_io,
        Pmod_ENC_pin4_io => E_Pmod_ENC_pin4_io,
        Pmod_ENC_pin7_io => E_Pmod_ENC_pin7_io,
        Pmod_ENC_pin8_io => E_Pmod_ENC_pin8_io,
        Pmod_ENC_pin9_io => E_Pmod_ENC_pin9_io,
        S_AXI_araddr => E_S_AXI_araddr,
        S_AXI_arready => E_S_AXI_arready,
        S_AXI_arvalid => E_S_AXI_arvalid,
        S_AXI_awaddr => E_S_AXI_awaddr,
        S_AXI_awready => E_S_AXI_awready,
        S_AXI_awvalid => E_S_AXI_awvalid,
        S_AXI_bready => E_S_AXI_bready,
        S_AXI_bresp => E_S_AXI_bresp,
        S_AXI_bvalid => E_S_AXI_bvalid,
        S_AXI_rdata => E_S_AXI_rdata,
        S_AXI_rready => E_S_AXI_rready,
        S_AXI_rresp => E_S_AXI_rresp,
        S_AXI_rvalid => E_S_AXI_rvalid,
        S_AXI_wdata => E_S_AXI_wdata,
        S_AXI_wready => E_S_AXI_wready,
        S_AXI_wstrb => E_S_AXI_wstrb,
        S_AXI_wvalid => E_S_AXI_wvalid,
        s_axi_aclk => E_s_axi_aclk,
        s_axi_aresetn => E_s_axi_aresetn
    );
        
P_PMOD: process
begin
--    E_PMOD(0) <= '0';
--    wait for clkpulse*100;
--    E_PMOD(1) <= '0';
--    wait for clkpulse*100;
--    E_PMOD(0) <= '1';
--    wait for clkpulse*200;
--    E_PMOD(1) <= '1';
--    wait for clkpulse*200;
    
    E_Pmod_ENC_pin1_io <= '1';
    wait for 10 us;
    E_Pmod_ENC_pin2_io <= '1';
    wait for 10 us;
    E_Pmod_ENC_pin1_io <= '0';
    wait for 10 us;
    E_Pmod_ENC_pin2_io <= '0';
    wait for 10 us;
end process P_PMOD;

P_TEST: process
begin
    E_Pmod_ENC_pin3_io <= '1';
    wait for clkpulse;
    E_Pmod_ENC_pin3_io <= '0';
    wait for timeout;
    assert FALSE report "SIMULATION TIMEOUT" severity FAILURE;
end process P_TEST;

end Behavioral;
