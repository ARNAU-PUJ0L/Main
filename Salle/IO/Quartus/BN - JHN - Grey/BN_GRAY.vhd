library IEEE;
use IEEE.std_logic_1164.all;

entity BN_GRAY is
	port(
	
			BN		: 		in 	std_logic_vector(2 downto 0);
			Gray	:		out	std_logic_vector(3 downto 0)
	
	);
	
end BN_GRAY;


architecture arch of BN_GRAY is 

begin

	Gray <= "0000" when BN = "000" else
			  "0001" when BN = "001" else
			  "0011" when BN = "010" else
			  "0010" when BN = "011" else
			  "0110" when BN = "100" else
			  "0111" when BN = "101" else
			  "0101" when BN = "110" else
			  "0100" when BN = "111" else
			  "0000";
			  
end arch;