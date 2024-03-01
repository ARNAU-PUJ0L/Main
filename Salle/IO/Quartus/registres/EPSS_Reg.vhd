
library ieee;
use ieee. std_logic_1164.all;
 
entity EPSS_Reg is

port( R, Load, Clk   	: 	in  	std_logic;
		D						:	in		std_logic_vector(8 downto 0);
		
      Q	    				: 	out 	std_logic);
end EPSS_Reg;
 
architecture behavioral of EPSS_Reg is

signal Q_reg, Q_next	:	std_logic_vector(8 downto 0);

begin
	process(Clk,R)

	begin
		if (R = '1') then
			Q_reg <= (others => '0');
		elsif (clk'event and clk = '1') then

			if (Load = '1') then
				Q_reg <= D;
			else 
				Q_reg <= Q_next;
			end if;
			
		end if;	

	end process;

Q_next <= '0' & Q_reg (8 downto 1);
Q  <= Q_reg(0);

end behavioral;
