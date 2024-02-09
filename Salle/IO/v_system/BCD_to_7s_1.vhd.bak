library IEEE;
use IEEE.std_logic_1164.all;


entity BCD_to_7s_1 is

	port(
	
		BCD	:	in		std_logic_vector(3 downto 0);
		seg	:	out	std_logic_vector(6 downto 0)
	);
	
end BCD_to_7s_1;

architecture arch of BCD_to_7s_1 is

	begin
	
	seg <= "1000000" when BCD = "0000" else
			 "1111001" when BCD = "0001" else
			 "0100100" when BCD = "0010" else
			 "0110000" when BCD = "0011" else
			 "0011001" when BCD = "0100" else
			 "0010010" when BCD = "0101" else
			 "0000011" when BCD = "0110" else
			 "1111000" when BCD = "0111" else
			 "0000000" when BCD = "1000" else
			 "0011000" when BCD = "1001" else
			 "0000000";
	
	
	
end arch;