library IEEE;
use IEEE.std_logic_1164.all;


entity v_system is

	port(
			
		BN					:	in		std_logic_vector(5 downto 0);
		validate			:	in		std_logic;
			
		
		D1					:	out	std_logic_vector(6 downto 0);
		D0					:	out	std_logic_vector(6 downto 0);
		greater			:	out	std_logic;
		lower				:	out	std_logic
	);
	
end v_system;





architecture arch of v_system is


---------------------COMPONENT-----------------------

-- AND

	component and_1 is
		port(
			
			a_1			:	in		std_logic_vector(6 downto 0); -- DIG[1]
			
			b_1 			:	in	 	std_logic;		-- val
		
			and_out_1 	: 	out 	std_logic_vector(6 downto 0)	-- D_1
		
		);
	end component;
	
	
	
	
	component and_2 is
		port(
			
			a_2			: 	in		std_logic_vector(6 downto 0); --- DIG[0]
			
			b_2 			: 	in		std_logic;		-- val
		
			and_out_2 	: 	out 	std_logic_vector(6 downto 0)		-- D_0
		
		);
		
	end component;

	
	
	
	component and_3 is
		port(
			
			a_3, b_3 	:	in		std_logic;		-- a-> comparator // b -> val
		
			and_out_3 	: 	out 	std_logic	--	Grater
		
		
		);
	end component;
	
	
	
	
	component and_4 is
		port(
		
			a_4, b_4 	: 	in		std_logic;
		
			and_out_4 	: 	out 	std_logic
		
		);
	end component;


	
--BN - BCD

	component BN_to_BCD is
		port(
		
			BN		:		in			std_logic_vector(5 downto 0);
			
			Dig_1	:		out 		std_logic_vector(3 downto 0);
			Dig_2	:		out 		std_logic_vector(3 downto 0)
		
		);
	end component;
	

-- BCD - 7s

	component BCD_to_7s_1 is
		port(
		
			bcd_1	:		in			std_logic_vector(3 downto 0);
			
			seg_1	:		out		std_logic_vector(6 downto 0)
		
		);
	end component;
		
	
	component BCD_to_7s_2 is
		port(
			
			bcd_2 : 		in 		std_logic_vector(3 downto 0);
			
			seg_2 : 		out 		std_logic_vector(6 downto 0)
		
		);
		
	end component;
	
	
	
-- Comparator
	
	
	component comparator_25 is
		port(
        
		  c_a_25, c_b_25 : in  std_logic_vector(5 downto 0);
		  
        AGB_25   : out std_logic;
        AEB_25   : out std_logic;
        ALB_25   : out std_logic
		
		
		);
		
	end component;
	
	
	component comparator_15 is
		port(
		  
		  c_a_15, c_b_15 : in  std_logic_vector(5 downto 0);
		  
        AGB_15   : out std_logic;
        AEB_15   : out std_logic;
        ALB_15   : out std_logic
		
		);
		
	end component;
	
---------------------SIGNAL-----------------------------

	signal sig_d1		:		std_logic_vector(3 downto 0);
	signal sig_d0		:		std_logic_vector(3 downto 0);
	
	signal sig_7_1		:		std_logic_vector(6 downto 0);
	signal sig_7_2		: 		std_logic_vector(6 downto 0);
	
	signal sig_comp_1	:		std_logic;
	signal sig_comp_2	:		std_logic;
	
	signal quinze	:			std_logic_vector(5 downto 0);
	signal v_cinc	:			std_logic_vector(5 downto 0);	
	
	signal sig_out_d1	:		std_logic_vector(6 downto 0);
	signal sig_out_d0	:		std_logic_vector(6 downto 0);
	signal sig_l		:		std_logic;
	signal sig_g		:		std_logic;

---------------------PORT MAP----------------------------
	begin

		quinze <= "001111";
		v_cinc <= "011001";
	
		--BN -> D0 & D1
		
		u1:	BN_to_BCD
			port map(
			
				BN 	=> BN,
				Dig_1 => sig_d1,
				Dig_2 =>	sig_d0
			
			);
			
			
		u2: BCD_to_7s_1
			port map(
			
				bcd_1	=> sig_d1,
				seg_1 => sig_7_1
			
			);

		u3: BCD_to_7s_2
			port map(
			
				bcd_2 => sig_d0,
				seg_2 =>	sig_7_2
			
			);
			
			
		
		-- BN -> Greater && lower
		
		u4: comparator_25
			port map(
			
				c_a_25 => BN,
				c_b_25 => v_cinc,
				
				AGB_25 => sig_comp_1
			
			);
			
		u5: comparator_15
			port map(
			
				c_a_15 => BN,
				c_b_15 => quinze,
				
				ALB_15 => sig_comp_2 
			
			);
			
-- and's
			
		u6: and_1
			port map(
			
				a_1 => sig_7_1,
				b_1 => validate,
				
				and_out_1 => sig_out_d1
			
			);
		
		
		u7: and_2
			port map(
				
				a_2 => sig_7_2,
				b_2 => validate,
				
				and_out_2 => sig_out_d0
			
			);
			
		u8: and_3
			port map(
			
				a_3 => sig_comp_1,
				b_3 => validate,
				
				and_out_3 => sig_g
			
			);
			
		u9: and_4
			port map(
			
				a_4 => sig_comp_2,
				b_4 => validate,
				
				and_out_4 => sig_l
			
			);			
			
			
	
		
		D1 <= sig_out_d1;			-- and de 1bit y 7bit
		D0 <= sig_out_d0;			-- and de 1bit y 7bit
		
		greater <= sig_g; 
		lower   <= sig_l;
		
	
end arch;
