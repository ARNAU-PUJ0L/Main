library ieee;
use ieee.std_logic_1164.all;

entity and_2 is
    port(
        a_2         :   in      std_logic_vector(6 downto 0);
        b_2         :   in      std_logic;
        and_out_2   :   out     std_logic_vector(6 downto 0)
    );
end and_2;

architecture logic of and_2 is
    signal num_0   :   std_logic_vector(6 downto 0);
begin
    num_0 <= "0000000";
    
    process(a_2, b_2)
    begin
        if a_2 = "00000000" then
            and_out_2 <= num_0;
        elsif b_2 = '0' then
            and_out_2 <= "1111111";
        else
            and_out_2 <= a_2;
        end if;
    end process;
end logic;
