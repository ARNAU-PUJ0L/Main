library IEEE;
use IEEE.std_logic_1164.all;


entity mux_2a1 is

	port(
	
		a,b 	:	in 	std_logic_vector(3 downto 0);
		sel	:	in		std_logic;
		q		:	out	std_logic_vector(3 downto 0)
	);
	
end mux_2a1;


architecture arch_mux of mux_2a1 is

	begin

		q <= a when sel = '0' else
			  b; 
	
end arch_mux;