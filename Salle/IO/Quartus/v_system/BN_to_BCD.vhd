library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BN_to_BCD is
    Port (
        BN 		: in  STD_LOGIC_VECTOR(5 downto 0);  
        Dig_1  : out STD_LOGIC_VECTOR(3 downto 0); 
        Dig_2  : out STD_LOGIC_VECTOR(3 downto 0)  
    );
end BN_to_BCD;

architecture Behavioral of BN_to_BCD is
begin
    process(BN)
    begin

        case BN is
            when "000000" =>
                Dig_1 <= "0000";
                Dig_2 <= "0000";
            when "000001" =>
                Dig_1 <= "0000";
                Dig_2 <= "0001";
            when "000010" =>
                Dig_1 <= "0000";
                Dig_2 <= "0010";
            when "000011" =>
                Dig_1 <= "0000";
                Dig_2 <= "0011";
            when "000100" =>
                Dig_1 <= "0000";
                Dig_2 <= "0100";
            when "000101" =>
                Dig_1 <= "0000";
                Dig_2 <= "0101";
            when "000110" =>
                Dig_1 <= "0000";
                Dig_2 <= "0110";
            when "000111" =>
                Dig_1 <= "0000";
                Dig_2 <= "0111";
            when "001000" =>
                Dig_1 <= "0000";
                Dig_2 <= "1000";
            when "001001" =>
                Dig_1 <= "0000";
                Dig_2 <= "1001";
            when "001010" =>
                Dig_1 <= "0000";
                Dig_2 <= "1010";
            when "001011" =>
                Dig_1 <= "0000";
                Dig_2 <= "1011";
            when "001100" =>
                Dig_1 <= "0000";
                Dig_2 <= "1100";
            when "001101" =>
                Dig_1 <= "0000";
                Dig_2 <= "1101";
            when "001110" =>
                Dig_1 <= "0000";
                Dig_2 <= "1110";
            when "001111" =>
                Dig_1 <= "0000";
                Dig_2 <= "1111";
            when "010000" =>
                Dig_1 <= "0001";
                Dig_2 <= "0000";
            when "010001" =>
                Dig_1 <= "0001";
                Dig_2 <= "0001";
            when "010010" =>
                Dig_1 <= "0001";
                Dig_2 <= "0010";
            when "010011" =>
                Dig_1 <= "0001";
                Dig_2 <= "0011";
            when "010100" =>
                Dig_1 <= "0001";
                Dig_2 <= "0100";
            when "010101" =>
                Dig_1 <= "0001";
                Dig_2 <= "0101";
            when "010110" =>
                Dig_1 <= "0001";
                Dig_2 <= "0110";
            when "010111" =>
                Dig_1 <= "0001";
                Dig_2 <= "0111";
            when "011000" =>
                Dig_1 <= "0001";
                Dig_2 <= "1000";
            when "011001" =>
                Dig_1 <= "0001";
                Dig_2 <= "1001";
            when "011010" =>
                Dig_1 <= "0001";
                Dig_2 <= "1010";
            when "011011" =>
                Dig_1 <= "0001";
                Dig_2 <= "1011";
            when "011100" =>
                Dig_1 <= "0001";
                Dig_2 <= "1100";
            when "011101" =>
                Dig_1 <= "0001";
                Dig_2 <= "1101";
            when "011110" =>
                Dig_1 <= "0001";
                Dig_2 <= "1110";
            when "011111" =>
                Dig_1 <= "0001";
                Dig_2 <= "1111";
            when "100000" =>
                Dig_1 <= "0010";
                Dig_2 <= "0000";
            when "100001" =>
                Dig_1 <= "0010";
                Dig_2 <= "0001";
            when "100010" =>
                Dig_1 <= "0010";
                Dig_2 <= "0010";
            when "100011" =>
                Dig_1 <= "0010";
                Dig_2 <= "0011";
            when "100100" =>
                Dig_1 <= "0010";
                Dig_2 <= "0100";
            when "100101" =>
                Dig_1 <= "0010";
                Dig_2 <= "0101";
            when "100110" =>
                Dig_1 <= "0010";
                Dig_2 <= "0110";
            when "100111" =>
                Dig_1 <= "0010";
                Dig_2 <= "0111";
            when "101000" =>
                Dig_1 <= "0010";
                Dig_2 <= "1000";
            when "101001" =>
                Dig_1 <= "0010";
                Dig_2 <= "1001";
            when "101010" =>
                Dig_1 <= "0010";
                Dig_2 <= "1010";
            when "101011" =>
                Dig_1 <= "0010";
                Dig_2 <= "1011";
            when "101100" =>
                Dig_1 <= "0010";
                Dig_2 <= "1100";
            when "101101" =>
                Dig_1 <= "0010";
                Dig_2 <= "1101";
            when "101110" =>
                Dig_1 <= "0010";
                Dig_2 <= "1110";
            when "101111" =>
                Dig_1 <= "0010";
                Dig_2 <= "1111";
            when "110000" =>
                Dig_1 <= "0011";
                Dig_2 <= "0000";
            when "110001" =>
                Dig_1 <= "0011";
                Dig_2 <= "0001";
            when "110010" =>
                Dig_1 <= "0011";
                Dig_2 <= "0010";
            when "110011" =>
                Dig_1 <= "0011";
                Dig_2 <= "0011";
            when "110100" =>
                Dig_1 <= "0011";
                Dig_2 <= "0100";
            when "110101" =>
                Dig_1 <= "0011";
                Dig_2 <= "0101";
            when "110110" =>
                Dig_1 <= "0011";
                Dig_2 <= "0110";
            when "110111" =>
                Dig_1 <= "0011";
                Dig_2 <= "0111";
            when "111000" =>
                Dig_1 <= "0011";
                Dig_2 <= "1000";
            when "111001" =>
                Dig_1 <= "0011";
                Dig_2 <= "1001";
            when "111010" =>
                Dig_1 <= "0011";
                Dig_2 <= "1010";
            when "111011" =>
                Dig_1 <= "0011";
                Dig_2 <= "1011";
            when "111100" =>
                Dig_1 <= "0011";
                Dig_2 <= "1100";
            when "111101" =>
                Dig_1 <= "0011";
                Dig_2 <= "1101";
            when "111110" =>
                Dig_1 <= "0011";
                Dig_2 <= "1110";
            when "111111" =>
                Dig_1 <= "0011";
                Dig_2 <= "1111";
            when others =>
                Dig_1 <= (others => '0');
                Dig_2 <= (others => '0');
        end case;
    end process;
end Behavioral;
