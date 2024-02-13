library ieee;
use ieee.std_logic_1164.all;

entity and_3 is
	port(
		a_3, b_3 	:	in		std_logic;
		
		and_out_3 	: 	out 	std_logic
		
		);
		
	end and_3;
	
architecture logic of and_3 is

	begin
	
		and_out_3 <= not (a_3 and b_3);
		
	end logic;