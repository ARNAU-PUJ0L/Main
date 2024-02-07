library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2a1 is

	port(
	
		a,b,s:	in 	std_logic;
		y:			out	std_logic	
	
	);
end mux_2a1;
	
 architecture arch of mux_2a1 is
	
	signal and_out1, and_out2: 	std_logic;
	
	begin
	
		and_out1 <= (a and not s);
		and_out2 <= s and b;
		y <= and_out1 or and_out2;
		
	end arch;
	
		