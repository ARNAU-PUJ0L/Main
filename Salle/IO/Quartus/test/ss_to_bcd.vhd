library ieee;                       
use ieee.std_logic_1164.all; 


entity ss_to_bcd is
	port(

		seven_seg	:		in 	std_logic_vector(6 downto 0);
		bcd			:		out	std_logic_vector(3 downto 0)

	);

end ss_to_bcd;


architecture arch of ss_to_bcd is


begin

	bcd <= "0000" when seven_seg = "1000000" else
			 "0001" when seven_seg = "1111001" else
			 "0010" when seven_seg = "0100100" else
			 "0011" when seven_seg = "0110000" else
			 "0100" when seven_seg = "0011001" else
			 "0101" when seven_seg = "0010010" else
			 "0110" when seven_seg = "0000011" else
			 "0111" when seven_seg = "1111000" else
			 "1000" when seven_seg = "0000000" else
			 "1001" when seven_seg = "0011000" else

			 "0000";


end arch;

