library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Encoder is
    port (
        clk: in STD_LOGIC;
        -- signals from the pmod
        A : in  STD_LOGIC;	
        B : in  STD_LOGIC;
        BTN : in  STD_LOGIC;
        -- Counter
        counter: out STD_LOGIC_VECTOR(3 downto 0)
    );
end Encoder;

architecture Behavioral of Encoder is

    type stateType is ( idle, R1, R2, R3, L1, L2, L3, add, sub);
    signal curState, nextState: stateType;
    signal read_counter : UNSIGNED(3 downto 0);

begin

counter <= STD_LOGIC_VECTOR(read_counter);

--clk and button
clock: process (clk, BTN)

begin
    -- if the rotary button is pressed the count resets
    if (BTN='1') then
        curState <= idle;
        read_counter <= "0000";
    elsif (clk'event and clk = '1') then
    -- detect if the shaft is rotated to right or left
    -- right: add 1 to the position at each click
    -- left: subtract 1 from the position at each click
        if curState /= nextState then
            if (curState = add) then
                read_counter <= read_counter + 1;
            elsif (curState = sub) then
                read_counter <= read_counter - 1;
            else
                read_counter <= read_counter;
            end if;
        else
            read_counter <= read_counter;
        end if;
        curState <= nextState;
    end if;
end process; 

next_state: process (curState, A, B)

begin
    case curState is
        --detent position
        when idle =>
            if B = '0' then
                nextState <= R1;
            elsif A = '0' then
                nextState <= L1;
            else
                nextState <= idle;
            end if;
        -- start of right cycle
        --R1
        when R1 =>
            if B='1' then
                nextState <= idle;
            elsif A = '0' then
                nextState <= R2;
            else
                nextState <= R1;
            end if;
        --R2  					
        when R2 =>				
            if A ='1' then
                nextState <= R1;
            elsif B = '1' then
                nextState <= R3;
            else
                nextState <= R2;
            end if;
        --R3	
        when R3 =>
            if B ='0' then
                nextState <= R2;
            elsif A = '1' then
                nextState <= add;
            else
                nextState <= R3;
            end if;
        when add =>	
            nextState <= idle;
        -- start of left cycle
        --L1 
        when L1 =>					
            if A ='1' then
                nextState <= idle;
            elsif B = '0' then
                nextState <= L2;
            else
                nextState <= L1;
            end if;
        --L2	
        when L2 =>
            if B ='1' then
                nextState <= L1;
            elsif A = '1' then
                nextState <= L3;
            else
                nextState <= L2;
            end if;
        --L3
        when L3 =>
            if A ='0' then
                nextState <= L2;
            elsif B = '1' then
                nextState <= sub;
            else
                nextState <= L3;
            end if;
        when sub =>	
            nextState <= idle;
        when others =>
            nextState <= idle;
    end case;
end process; 	

end Behavioral;

