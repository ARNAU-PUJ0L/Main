
library ieee;                       
use ieee.std_logic_1164.all; 

entity bcd_to_7s is

port (

	bcd	:	in	std_logic_vector(3 downto 0);
	seg	:	out	std_logic_vector(6 downto 0)
);

end entity;

architecture rtl of bcd_to_7s is 

begin

seg(6) <= (not bcd(3) and not bcd(2) and not bcd(1) and not bcd(0)) or (not bcd(3) and not bcd(2) and not bcd(1) and bcd(0))
				or (not bcd(3) and bcd(2) and bcd(1) and bcd(0));
seg(5) <= (not bcd(3) and not bcd(2) and not bcd(1) and bcd(0)) or (not bcd(3) and not bcd(2) and bcd(1) and not bcd(0))
				or (not bcd(3) and not bcd(2) and bcd(1) and bcd(0)) or (not bcd(3) and bcd(2) and bcd(1) and bcd(0));
seg(4) <= (not bcd(3) and not bcd(2) and not bcd(1) and bcd(0)) or (not bcd(3) and not bcd(2) and bcd(1) and bcd(0))
				or (not bcd(3) and bcd(2) and not bcd(1) and not bcd(0)) or (not bcd(3) and bcd(2) and not bcd(1) and bcd(0))
				or (not bcd(3) and bcd(2) and bcd(1) and bcd(0)) or (bcd(3) and not bcd(2) and not bcd(1) and bcd(0));
seg(3) <= (not bcd(3) and not bcd(2) and not bcd(1) and bcd(0)) or (not bcd(3) and bcd(2) and not bcd(1) and not bcd(0))
				or (not bcd(3) and bcd(2) and bcd(1) and bcd(0)) or (bcd(3) and not bcd(2) and not bcd(1) and bcd(0));
seg(2) <= (not bcd(3) and not bcd(2) and bcd(1) and not bcd(0));
seg(1) <= (not bcd(3) and bcd(2) and not bcd(1) and bcd(0)) or (not bcd(3) and bcd(2) and bcd(1) and not bcd(0));
seg(0) <= (not bcd(3) and not bcd(2) and not bcd(1) and bcd(0)) or (not bcd(3) and bcd(2) and not bcd(1) and not bcd(0))
				or (not bcd(3) and bcd(2) and bcd(1) and not bcd(0));
				
end architecture;

