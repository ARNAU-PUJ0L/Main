library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_L is
    port (
        A1, B1 : in  std_logic_vector(5 downto 0);
		  
        AGB1   : out std_logic;
        AEB1   : out std_logic;
        ALB1   : out std_logic
    );   
end comparator_LOWER1;

architecture dataflow of comparator_LOWER1 is

begin
    AGB1 <= '1' when A > B else '0';
    AEB1 <= '1' when A = B else '0';
    ALB1 <= '1' when A < B else '0';
	 
end dataflow;