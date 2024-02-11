library ieee;                       
use ieee.std_logic_1164.all; 

entity bcd_to_7s_1 is
    port (
        bcd_1 : in std_logic_vector(3 downto 0);
        seg_1 : out std_logic_vector(6 downto 0)
    );
end entity;

architecture rtl of bcd_to_7s_1 is 
begin
    process(bcd_1)
    begin
        case bcd_1 is
            when "0000" =>
                seg_1 <= "1000000"; -- 0      g -> a (negative logic)
            when "0001" =>
                seg_1 <= "1111001"; -- 1
            when "0010" =>
                seg_1 <= "0100100"; -- 2
            when "0011" =>
                seg_1 <= "0110000"; -- 3
            when "0100" =>
                seg_1 <= "0011001"; -- 4
            when "0101" =>
                seg_1 <= "0010010"; -- 5
            when "0110" =>
                seg_1 <= "0000010"; -- 6
            when "0111" =>
                seg_1 <= "1111000"; -- 7
            when "1000" =>
                seg_1 <= "0000000"; -- 8
            when "1001" =>
                seg_1 <= "0011000"; -- 9
            when others =>
                seg_1 <= "0000000"; -- All segments off (invalid BCD)
        end case;
    end process;



end architecture;
