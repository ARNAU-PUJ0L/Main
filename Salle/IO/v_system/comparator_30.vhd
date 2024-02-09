library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_30 is
    port (
        c_a_30, c_b_30 : in  std_logic_vector(5 downto 0);
		  
        AGB_30   : out std_logic;
        AEB_30   : out std_logic;
        ALB_30   : out std_logic
    );   
end comparator_30;

architecture dataflow of comparator_30 is

begin
    AGB1 <= '1' when c_a_30 > c_b_30 else '0';
    AEB1 <= '1' when c_a_30 = c_b_30 else '0';
    ALB1 <= '1' when c_a_30 < c_b_30 else '0';
	 
end dataflow;