library ieee;                       
use ieee.std_logic_1164.all; 

entity bcd_to_7s_2 is
    port (
        bcd_2 : in std_logic_vector(3 downto 0);
        seg_2 : out std_logic_vector(6 downto 0)
    );
end entity;

architecture rtl of bcd_to_7s_2 is 
begin
    seg_2(6) <= (not bcd_2(3) and not bcd_2(2) and not bcd_2(1) and not bcd_2(0)) or 
                (not bcd_2(3) and not bcd_2(2) and not bcd_2(1) and bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and bcd_2(1) and bcd_2(0));
    seg_2(5) <= (not bcd_2(3) and not bcd_2(2) and not bcd_2(1) and bcd_2(0)) or 
                (not bcd_2(3) and not bcd_2(2) and bcd_2(1) and not bcd_2(0)) or 
                (not bcd_2(3) and not bcd_2(2) and bcd_2(1) and bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and bcd_2(1) and bcd_2(0));
    seg_2(4) <= (not bcd_2(3) and not bcd_2(2) and not bcd_2(1) and bcd_2(0)) or 
                (not bcd_2(3) and not bcd_2(2) and bcd_2(1) and bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and not bcd_2(1) and not bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and not bcd_2(1) and bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and bcd_2(1) and bcd_2(0)) or 
                (bcd_2(3) and not bcd_2(2) and not bcd_2(1) and bcd_2(0));
    seg_2(3) <= (not bcd_2(3) and not bcd_2(2) and not bcd_2(1) and bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and not bcd_2(1) and not bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and bcd_2(1) and bcd_2(0)) or 
                (bcd_2(3) and not bcd_2(2) and not bcd_2(1) and bcd_2(0));
    seg_2(2) <= (not bcd_2(3) and not bcd_2(2) and bcd_2(1) and not bcd_2(0));
    seg_2(1) <= (not bcd_2(3) and bcd_2(2) and not bcd_2(1) and bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and bcd_2(1) and not bcd_2(0));
    seg_2(0) <= (not bcd_2(3) and not bcd_2(2) and not bcd_2(1) and bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and not bcd_2(1) and not bcd_2(0)) or 
                (not bcd_2(3) and bcd_2(2) and bcd_2(1) and not bcd_2(0));
end architecture;
