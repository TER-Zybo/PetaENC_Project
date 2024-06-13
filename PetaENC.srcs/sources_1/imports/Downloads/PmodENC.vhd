library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity PmodENC is
    port (
        clk: in std_logic;
        Pmod_top : in STD_LOGIC_VECTOR (3 downto 0);  	-- the pmod is plugged in to the upper row of JE
        counter: out STD_LOGIC_VECTOR (3 downto 0)		-- Counter 
    );
end PmodENC;

architecture Behavioral of PmodENC is
    signal AO, BO: std_logic;
begin
	
    C0: entity work.Debouncer 
        port map ( 
           clk=>clk, 
           Ain=>Pmod_top(0), 
           Bin=>Pmod_top(1), 
           Aout=> AO, 
           Bout=> BO 
        );
	   
    C1: entity work.Encoder 
        port map (
            clk=>clk, 
            A=>AO, 
            B=>BO, 
            BTN=>Pmod_top(2), 
            counter=>counter
        );

end Behavioral;

