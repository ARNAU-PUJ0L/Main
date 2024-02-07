library IEEE;
use IEEE.std_logic_1164.all;


entity BN_conv is
	port(

		BN				: 		in		std_logic_vector(2 downto 0);
		sel			:		in 	std_logic;
		data_out		:		out 	std_logic_vector(3 downto 0)
		
	);

end BN_conv;

architecture arch_main of BN_conv is


	signal D0,D1	: 		std_logic_vector(3 downto 0);


	component BN_GRAY is
		port(
		
			BN		: 		in 	std_logic_vector(2 downto 0);
			Gray	:		out	std_logic_vector(3 downto 0)
		
		);
	
	end component;
	
	
	
	component BN_JOHN is
		port(
		
			BN		: 		in 	std_logic_vector(2 downto 0);
			Jhn	:		out	std_logic_vector(3 downto 0)
		
		);
	
	end component;


	
begin

	
	B1:	BN_GRAY
		port map(
		
				BN 	=> 	BN,
				GRAY 	=>		D0
		
		);
	
	B2: 	BN_JOHN
		port map(
		
				BN		=> 	BN,
				JHn	=> 	D1
		
		);
	
	
	data_out <= D0	when sel = '0' else
					D1;


end arch_main;
	