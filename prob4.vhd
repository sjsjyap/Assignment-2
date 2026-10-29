library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity prob4 is
    port(
        vt     : in std_logic_vector(25 downto 1);
        result : out std_logic
    );
end entity prob4;

architecture bhv of prob4 is
begin
    process(vt)
        variable sum: integer range 0 to 25;
    begin
        sum := 0;
        for i in 1 to 25 loop
            if (vt(i) = '1') then
                sum := sum + 1;
            end if;
        end loop;
        
        if sum >= 13 then
            result <= '1';
        else
            result <= '0';
        end if;
    end process;
end architecture bhv;