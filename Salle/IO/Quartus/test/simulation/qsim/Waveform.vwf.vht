-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/07/2024 13:17:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test_vhd_vec_tst IS
END test_vhd_vec_tst;
ARCHITECTURE test_arch OF test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BCDin : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BCDout : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SEVEN_SEGout : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT test
	PORT (
	BCDin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BCDout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SEVEN_SEGout : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : test
	PORT MAP (
-- list connections between master ports and signals
	BCDin => BCDin,
	BCDout => BCDout,
	SEVEN_SEGout => SEVEN_SEGout
	);
-- BCDin[3]
t_prcs_BCDin_3: PROCESS
BEGIN
	BCDin(3) <= '0';
	WAIT FOR 768000 ps;
	BCDin(3) <= '1';
WAIT;
END PROCESS t_prcs_BCDin_3;
-- BCDin[2]
t_prcs_BCDin_2: PROCESS
BEGIN
	BCDin(2) <= '0';
	WAIT FOR 384000 ps;
	BCDin(2) <= '1';
	WAIT FOR 384000 ps;
	BCDin(2) <= '0';
WAIT;
END PROCESS t_prcs_BCDin_2;
-- BCDin[1]
t_prcs_BCDin_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		BCDin(1) <= '0';
		WAIT FOR 192000 ps;
		BCDin(1) <= '1';
		WAIT FOR 192000 ps;
	END LOOP;
	BCDin(1) <= '0';
WAIT;
END PROCESS t_prcs_BCDin_1;
-- BCDin[0]
t_prcs_BCDin_0: PROCESS
BEGIN
LOOP
	BCDin(0) <= '0';
	WAIT FOR 96000 ps;
	BCDin(0) <= '1';
	WAIT FOR 96000 ps;
	IF (NOW >= 960000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BCDin_0;
END test_arch;
