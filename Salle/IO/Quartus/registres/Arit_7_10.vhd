
library ieee;
use ieee. std_logic_1164.all;
use ieee.numeric_std.all;
 
entity Arit_7_10 is

port( N1, N2, N3 			: 	in  	std_logic_vector(7 downto 0);
		Op						:	in		std_logic_vector(1 downto 0);
		
      Result  				: 	out 	std_logic_vector(8 downto 0));
end Arit_7_10;
 
architecture behavioral of Arit_7_10 is

signal signed_N1, signed_N2, signed_N3, signed_max, signed_min	:	signed(7 downto 0);
signal signed_max_ext, signed_min_ext, signed_suma, signed_suma_2, signed_resta, signed_result : signed(8 downto 0);

begin

signed_N1 <= signed(N1);
signed_N2 <= signed(N2);
signed_N3 <= signed(N3);

signed_max <= 	signed_N1 when (signed_N1>signed_N2 and signed_N1>signed_N3) else
					signed_N2 when (signed_N2>signed_N1 and signed_N2>signed_N3) else
					signed_N3;
					
signed_max_ext <= signed_max(7) & signed_max(7 downto 0);
					
signed_min <= 	signed_N1 when (signed_N1<signed_N2 and signed_N1<signed_N3) else
					signed_N2 when (signed_N2<signed_N1 and signed_N2<signed_N3) else
					signed_N3;
					
signed_min_ext <= signed_min(7) & signed_min(7 downto 0);

signed_suma <= signed_max_ext + signed_min_ext;

signed_suma_2 <= signed_suma(8) & signed_suma(8 downto 1);

signed_resta <= signed_max_ext - signed_min_ext;

signed_result <=	signed_max_ext when Op = "00" else
						signed_min_ext when Op = "01" else
						signed_suma_2 	when Op = "10" else
						signed_resta;

Result <= std_logic_vector(signed_result);


end behavioral;
