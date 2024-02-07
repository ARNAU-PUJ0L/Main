library IEEE;
use IEEE.std_logic_1164.all;

entity comp_and is

	port(
	
		a,b: in STD_LOGIC;
		y: out STD_LOGIC

);

end comp_and;

architecture arch_and of comp_and is
begin

	y <= a AND b; 
	
end arch_and;