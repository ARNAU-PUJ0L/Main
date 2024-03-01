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
	 process(a_4, b_4)
    begin
        if a_4 = '0' then
            and_out_4 <= '0' ;
				
				
        elsif b_4 = '1' then -- val -> off
            and_out_4 <=  '0'; --led off 
        else
            and_out_4 <= a_4;
        end if;
    end process;

		
	end logic;