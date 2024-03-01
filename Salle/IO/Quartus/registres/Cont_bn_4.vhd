library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Cont_bn_4 is

	port 	(
		Clk, Reset 	: in	std_logic;
		Q		: out	std_logic_vector(3 downto 0));

end Cont_bn_4;

architecture arithmetic of Cont_bn_4 is

signal Q_reg, Q_next	: unsigned(3 downto 0);

begin

process(Clk, Reset) is

begin
	if Reset = '1' then
		Q_reg <= (others => '0');
	elsif (Clk'event and Clk = '1') then
		Q_reg <= Q_next;
	end if;
	
end process;

Q_next <= Q_reg + 1;

Q <= std_logic_vector(Q_reg);

end arithmetic;
