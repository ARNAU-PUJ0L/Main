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
-- Generated on "02/07/2024 08:37:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BN_conv
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BN_conv_vhd_vec_tst IS
END BN_conv_vhd_vec_tst;
ARCHITECTURE BN_conv_arch OF BN_conv_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BN : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
COMPONENT BN_conv
	PORT (
	BN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BN_conv
	PORT MAP (
-- list connections between master ports and signals
	BN => BN,
	data_out => data_out,
	sel => sel
	);
-- BN[2]
t_prcs_BN_2: PROCESS
BEGIN
LOOP
	BN(2) <= '0';
	WAIT FOR 400000 ps;
	BN(2) <= '1';
	WAIT FOR 400000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BN_2;
-- BN[1]
t_prcs_BN_1: PROCESS
BEGIN
	BN(1) <= '0';
	WAIT FOR 200000 ps;
	BN(1) <= '1';
	WAIT FOR 200000 ps;
	BN(1) <= '0';
	WAIT FOR 200000 ps;
	BN(1) <= '1';
WAIT;
END PROCESS t_prcs_BN_1;
-- BN[0]
t_prcs_BN_0: PROCESS
BEGIN
	BN(0) <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 3
	LOOP
		BN(0) <= '0';
		WAIT FOR 100000 ps;
		BN(0) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	BN(0) <= '0';
WAIT;
END PROCESS t_prcs_BN_0;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
	WAIT FOR 200000 ps;
	sel <= '1';
	WAIT FOR 300000 ps;
	sel <= '0';
	WAIT FOR 100000 ps;
	sel <= '1';
	WAIT FOR 100000 ps;
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;
END BN_conv_arch;
