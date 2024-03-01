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
-- Generated on "02/09/2024 11:16:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          v_system
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY v_system_vhd_vec_tst IS
END v_system_vhd_vec_tst;
ARCHITECTURE v_system_arch OF v_system_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BN : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL D0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL D1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL greater : STD_LOGIC;
SIGNAL lower : STD_LOGIC;
SIGNAL validate : STD_LOGIC;
COMPONENT v_system
	PORT (
	BN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	D0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	D1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	greater : BUFFER STD_LOGIC;
	lower : BUFFER STD_LOGIC;
	validate : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : v_system
	PORT MAP (
-- list connections between master ports and signals
	BN => BN,
	D0 => D0,
	D1 => D1,
	greater => greater,
	lower => lower,
	validate => validate
	);
-- BN[5]
t_prcs_BN_5: PROCESS
BEGIN
	BN(5) <= '0';
	WAIT FOR 100000 ps;
	BN(5) <= '1';
	WAIT FOR 200000 ps;
	BN(5) <= '0';
	WAIT FOR 100000 ps;
	BN(5) <= '1';
	WAIT FOR 100000 ps;
	BN(5) <= '0';
	WAIT FOR 400000 ps;
	BN(5) <= '1';
	WAIT FOR 200000 ps;
	BN(5) <= '0';
WAIT;
END PROCESS t_prcs_BN_5;
-- BN[4]
t_prcs_BN_4: PROCESS
BEGIN
	BN(4) <= '1';
	WAIT FOR 100000 ps;
	BN(4) <= '0';
	WAIT FOR 300000 ps;
	BN(4) <= '1';
	WAIT FOR 200000 ps;
	BN(4) <= '0';
	WAIT FOR 400000 ps;
	BN(4) <= '1';
	WAIT FOR 100000 ps;
	BN(4) <= '0';
WAIT;
END PROCESS t_prcs_BN_4;
-- BN[3]
t_prcs_BN_3: PROCESS
BEGIN
	BN(3) <= '0';
	WAIT FOR 100000 ps;
	BN(3) <= '1';
	WAIT FOR 100000 ps;
	BN(3) <= '0';
	WAIT FOR 100000 ps;
	BN(3) <= '1';
	WAIT FOR 300000 ps;
	BN(3) <= '0';
	WAIT FOR 100000 ps;
	BN(3) <= '1';
	WAIT FOR 100000 ps;
	BN(3) <= '0';
	WAIT FOR 100000 ps;
	BN(3) <= '1';
	WAIT FOR 100000 ps;
	BN(3) <= '0';
	WAIT FOR 100000 ps;
	BN(3) <= '1';
WAIT;
END PROCESS t_prcs_BN_3;
-- BN[2]
t_prcs_BN_2: PROCESS
BEGIN
	BN(2) <= '1';
	WAIT FOR 500000 ps;
	BN(2) <= '0';
	WAIT FOR 200000 ps;
	BN(2) <= '1';
	WAIT FOR 300000 ps;
	BN(2) <= '0';
WAIT;
END PROCESS t_prcs_BN_2;
-- BN[1]
t_prcs_BN_1: PROCESS
BEGIN
	BN(1) <= '1';
	WAIT FOR 300000 ps;
	BN(1) <= '0';
	WAIT FOR 100000 ps;
	BN(1) <= '1';
	WAIT FOR 100000 ps;
	BN(1) <= '0';
	WAIT FOR 200000 ps;
	BN(1) <= '1';
	WAIT FOR 100000 ps;
	BN(1) <= '0';
	WAIT FOR 100000 ps;
	BN(1) <= '1';
	WAIT FOR 100000 ps;
	BN(1) <= '0';
WAIT;
END PROCESS t_prcs_BN_1;
-- BN[0]
t_prcs_BN_0: PROCESS
BEGIN
	BN(0) <= '0';
	WAIT FOR 100000 ps;
	BN(0) <= '1';
	WAIT FOR 200000 ps;
	BN(0) <= '0';
	WAIT FOR 100000 ps;
	BN(0) <= '1';
	WAIT FOR 200000 ps;
	BN(0) <= '0';
	WAIT FOR 100000 ps;
	BN(0) <= '1';
	WAIT FOR 200000 ps;
	BN(0) <= '0';
	WAIT FOR 100000 ps;
	BN(0) <= '1';
WAIT;
END PROCESS t_prcs_BN_0;

-- validate
t_prcs_validate: PROCESS
BEGIN
	validate <= '1';
	WAIT FOR 120000 ps;
	validate <= '0';
	WAIT FOR 760000 ps;
	validate <= '1';
	WAIT FOR 140000 ps;
	validate <= '0';
WAIT;
END PROCESS t_prcs_validate;
END v_system_arch;
