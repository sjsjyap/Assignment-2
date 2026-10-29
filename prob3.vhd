library ieee;
use ieee.std_logic_1164.all;

entity prob3 is
    port(
        sel     : in std_logic_vector(2 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity prob3;

architecture bhv of prob3 is
begin
    process(sel)
    begin
        -- 7-segment 순서: a,b,c,d,e,f,g,dp
        case sel is
            when "000" => display <= "11101110"; -- A
            when "001" => display <= "00111110"; -- b
            when "010" => display <= "10011100"; -- C
            when "011" => display <= "01111010"; -- d
            when "100" => display <= "10001110"; -- F
            when "101" => display <= "10111110"; -- g (또는 9)
            when others => display <= "00000000"; -- OFF
        end case;
    end process;
end architecture bhv;