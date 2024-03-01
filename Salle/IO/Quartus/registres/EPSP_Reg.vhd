
library ieee;
use ieee. std_logic_1164.all;
 
entity EPSP_Reg is

port( R, Clk   			: 	in  	std_logic;
		D						:	in		std_logic_vector(7 downto 0);
		
      Q	    				: 	out 	std_logic_vector(7 downto 0));
end EPSP_Reg;
 
architecture behavioral of EPSP_Reg is

begin
	process(Clk,R)

	begin
		if (R = '1') then
			Q <= (others => '0');
		elsif (clk'event and clk = '1') then

			Q <= D;
			
		end if;	

	end process;


end behavioral;
