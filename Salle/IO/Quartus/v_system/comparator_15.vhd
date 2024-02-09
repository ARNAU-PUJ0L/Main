library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_15 is
    port (
        c_a_15, c_b_15 : in  std_logic_vector(5 downto 0);
		  
        AGB_15   : out std_logic;
        AEB_15   : out std_logic;
        ALB_15   : out std_logic
    );   
end comparator_15;

architecture dataflow of comparator_15 is

begin
    AGB_15 <= '1' when c_a_15 > c_b_15 else '0';
    AEB_15 <= '1' when c_a_15 = c_b_15 else '0';
    ALB_15 <= '1' when c_a_15 < c_b_15 else '0';
	 
end dataflow;