
library ieee;                       
use ieee.std_logic_1164.all; 

entity test is

port (

	BCDin				:	in		std_logic_vector(3 downto 0);
	SEVEN_SEGout	:	out	std_logic_vector(6 downto 0);
	BCDout			:	out	std_logic_vector(3 downto 0)
);

end entity;





architecture structural of test is 

component bcd_to_7s is

port (

	bcd	:	in	std_logic_vector(3 downto 0);
	seg	:	out	std_logic_vector(6 downto 0)
);

end component;

-- Declara aquí la entidad test_bcd_to_7s como componente
-- Inicio


component ss_to_bcd is

	port(

		seven_seg	:		in 	std_logic_vector(6 downto 0);
		bcd			:		out	std_logic_vector(3 downto 0)

	);
	
end component;


-- Fin

signal	SEVEN_SEG 	: 	std_logic_vector (6 downto 0);

begin

u1: bcd_to_7s

	port map 
	(
		bcd => BCDin,
		seg => SEVEN_SEG
	);

-- Haz aquí la instanciación con el mapeo de puertos del componente test_bcd_to_7s
-- Inicio

u2: ss_to_bcd

	port map(
	
		seven_seg => SEVEN_SEG ,
		bcd	 	 => BCDout
	
	);





-- Fin

SEVEN_SEGout <= SEVEN_SEG;
	
end architecture;