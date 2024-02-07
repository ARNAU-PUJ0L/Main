library IEEE;
use IEEE.std_logic_1164.all;


entity mux_4a1 is

	port(
	
		a,b,c,d: in 	std_logic_vector (3 downto 0);
		s 		 :	in		std_logic_vector (2 downto 0);
		q		 : out	std_logic_vector (3 downto 0)
	
	);
	
end mux_4a1;


architecture arch_mux of mux_4a1 is

	begin
	
		q <= a when s = "00" else
			  b when s = "01" else
			  c when s = "10" else
			  d;

		-- otra forma de condicional
		
		
		---with s select 
			
			---	y <= a when "00",
				---	  b when "01",
					---  c when "10",
					 --- d when others;
			


			  
end arch_mux;




