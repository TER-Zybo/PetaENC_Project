library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity TestPetaENC is
--  Port ( );
end TestPetaENC;

architecture Behavioral of TestPetaENC is

    constant clkpulse : Time := 10 ns;
    constant timeout : Time := 1000 ms;

    signal E_CLK : std_logic;
    signal E_PMOD : std_logic_vector(3 downto 0);
    signal E_COUNTER : std_logic_vector(3 downto 0);

begin

E_PMOD(3) <= '0';

P_E_CLK: process
begin
	E_CLK <= '1';
	wait for clkpulse;
	E_CLK <= '0';
	wait for clkpulse;
end process P_E_CLK;

p_enc : entity work.PmodENC(Behavioral)
    port map(E_CLK,E_PMOD,E_COUNTER);

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
    
    E_PMOD(0) <= '1';
    wait for 10 us;
    E_PMOD(1) <= '1';
    wait for 10 us;
    E_PMOD(0) <= '0';
    wait for 10 us;
    E_PMOD(1) <= '0';
    wait for 10 us;
end process P_PMOD;

P_TEST: process
begin
    E_PMOD(2) <= '1';
    wait for clkpulse;
    E_PMOD(2) <= '0';
    wait for timeout;
    assert FALSE report "SIMULATION TIMEOUT" severity FAILURE;
end process P_TEST;

end Behavioral;
