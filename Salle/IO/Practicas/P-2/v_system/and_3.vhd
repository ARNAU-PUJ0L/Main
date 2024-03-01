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
    
	 process(a_3, b_3)
    begin
        if a_3 = '0' then
            and_out_3 <= '0' ;
				
				
        elsif b_3 = '1' then -- val -> off
            and_out_3 <=  '0'; --led off 
        else
            and_out_3 <= a_3;
        end if;
    end process;
	end logic;