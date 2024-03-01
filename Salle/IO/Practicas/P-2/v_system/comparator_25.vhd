library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_25 is
    port (
        c_a_25, c_b_25 : in  std_logic_vector(5 downto 0);
		  
        AGB_25   : out std_logic;
        AEB_25   : out std_logic;
        ALB_25   : out std_logic
    );   
end comparator_25;

architecture dataflow of comparator_25 is

begin
    AGB_25 <= '1' when c_a_25 > c_b_25 else '0';
    AEB_25 <= '1' when c_a_25 = c_b_25 else '0';
    ALB_25 <= '1' when c_a_25 < c_b_25 else '0';
	 
end dataflow;
