library ieee;                       
use ieee.std_logic_1164.all; 

entity bcd_to_7s_1 is
    port (
        bcd_1 : in std_logic_vector(3 downto 0);
        seg_1 : out std_logic_vector(6 downto 0)
    );
end entity;

architecture rtl of bcd_to_7s_1 is 
begin
    seg_1(6) <= (not bcd_1(3) and not bcd_1(2) and not bcd_1(1) and not bcd_1(0)) or 
                (not bcd_1(3) and not bcd_1(2) and not bcd_1(1) and bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and bcd_1(1) and bcd_1(0));
    seg_1(5) <= (not bcd_1(3) and not bcd_1(2) and not bcd_1(1) and bcd_1(0)) or 
                (not bcd_1(3) and not bcd_1(2) and bcd_1(1) and not bcd_1(0)) or 
                (not bcd_1(3) and not bcd_1(2) and bcd_1(1) and bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and bcd_1(1) and bcd_1(0));
    seg_1(4) <= (not bcd_1(3) and not bcd_1(2) and not bcd_1(1) and bcd_1(0)) or 
                (not bcd_1(3) and not bcd_1(2) and bcd_1(1) and bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and not bcd_1(1) and not bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and not bcd_1(1) and bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and bcd_1(1) and bcd_1(0)) or 
                (bcd_1(3) and not bcd_1(2) and not bcd_1(1) and bcd_1(0));
    seg_1(3) <= (not bcd_1(3) and not bcd_1(2) and not bcd_1(1) and bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and not bcd_1(1) and not bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and bcd_1(1) and bcd_1(0)) or 
                (bcd_1(3) and not bcd_1(2) and not bcd_1(1) and bcd_1(0));
    seg_1(2) <= (not bcd_1(3) and not bcd_1(2) and bcd_1(1) and not bcd_1(0));
    seg_1(1) <= (not bcd_1(3) and bcd_1(2) and not bcd_1(1) and bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and bcd_1(1) and not bcd_1(0));
    seg_1(0) <= (not bcd_1(3) and not bcd_1(2) and not bcd_1(1) and bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and not bcd_1(1) and not bcd_1(0)) or 
                (not bcd_1(3) and bcd_1(2) and bcd_1(1) and not bcd_1(0));
end architecture;
