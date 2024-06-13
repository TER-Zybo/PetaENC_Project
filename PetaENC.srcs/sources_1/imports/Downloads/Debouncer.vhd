library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Debouncer is
    port ( 
        clk : in  STD_LOGIC;
        -- signals from the pmod
        Ain : in  STD_LOGIC; 
        Bin : in  STD_LOGIC;
        -- debounced signals 
        Aout: out STD_LOGIC;
        Bout: out STD_LOGIC
    );
end Debouncer;

architecture Behavioral of Debouncer is

    signal sclk: unsigned (6 downto 0) := "0000000";
    signal sampledA, sampledB : std_logic := '0';
begin

    process(clk)
    begin 
        if clk'event and clk = '1' then
            sampledA <= Ain;
            sampledB <= Bin;
            -- clock is divided to 1MHz
            -- samples every 1uS to check if the input is the same as the sample
            -- if the signal is stable, the debouncer should output the signal
            if sclk = "1100100" then
                if sampledA = Ain then 
                    Aout <= Ain;
                end if;
                if sampledB = Bin then 
                    Bout <= Bin;
                end if;
                sclk <="0000000";
            else
                sclk <= sclk +1;
            end if;
        end if;
    end process;
	
end Behavioral;

