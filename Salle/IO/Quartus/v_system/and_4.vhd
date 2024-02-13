library ieee;
use ieee.std_logic_1164.all;

entity and_4 is
	port(
		a_4, b_4 	: 	in		std_logic;
		
		and_out_4 	: 	out 	std_logic
		
		);
		
	end and_4;
	
architecture logic of and_4 is

	begin
	
		and_out_4 <= not (a_4 and b_4);
		
	end logic;