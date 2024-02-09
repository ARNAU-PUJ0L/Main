library ieee;
use ieee.std_logic_1164.all;

entity and_1 is
    port(
        a_1         :   in      std_logic_vector(6 downto 0);
        b_1         :   in      std_logic;
        and_out_1   :   out     std_logic_vector(6 downto 0)
    );
end and_1;

architecture logic of and_1 is
    signal num_0   :   std_logic_vector(6 downto 0);
begin
    num_0 <= "0000000";
    
    process(a_1, b_1)
    begin
        if a_1 = "00000000" then
            and_out_1 <= num_0;
        elsif b_1 = '0' then
            and_out_1 <= num_0;
        else
            and_out_1 <= a_1;
        end if;
    end process;
end logic;
