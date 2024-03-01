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
-- Generated on "02/28/2024 09:39:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          registres
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY registres_vhd_vec_tst IS
END registres_vhd_vec_tst;
ARCHITECTURE registres_arch OF registres_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Aux_1_N1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Aux_1_N2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Aux_1_N3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Aux_Result : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL DataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DataOut : STD_LOGIC;
SIGNAL Enter : STD_LOGIC;
SIGNAL Op : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL PCI : STD_LOGIC;
SIGNAL Send : STD_LOGIC;
SIGNAL Tx : STD_LOGIC;
COMPONENT registres
	PORT (
	Aux_1_N1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Aux_1_N2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Aux_1_N3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Aux_Result : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	DataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DataOut : OUT STD_LOGIC;
	Enter : IN STD_LOGIC;
	Op : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	PCI : IN STD_LOGIC;
	Send : IN STD_LOGIC;
	Tx : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : registres
	PORT MAP (
-- list connections between master ports and signals
	Aux_1_N1 => Aux_1_N1,
	Aux_1_N2 => Aux_1_N2,
	Aux_1_N3 => Aux_1_N3,
	Aux_Result => Aux_Result,
	DataIn => DataIn,
	DataOut => DataOut,
	Enter => Enter,
	Op => Op,
	PCI => PCI,
	Send => Send,
	Tx => Tx
	);
-- DataIn[7]
t_prcs_DataIn_7: PROCESS
BEGIN
	DataIn(7) <= '0';
	WAIT FOR 50000 ps;
	DataIn(7) <= '1';
	WAIT FOR 30000 ps;
	DataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_7;
-- DataIn[6]
t_prcs_DataIn_6: PROCESS
BEGIN
	DataIn(6) <= '0';
	WAIT FOR 50000 ps;
	DataIn(6) <= '1';
	WAIT FOR 30000 ps;
	DataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_6;
-- DataIn[5]
t_prcs_DataIn_5: PROCESS
BEGIN
	DataIn(5) <= '0';
	WAIT FOR 10000 ps;
	DataIn(5) <= '1';
	WAIT FOR 100000 ps;
	DataIn(5) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_5;
-- DataIn[4]
t_prcs_DataIn_4: PROCESS
BEGIN
	DataIn(4) <= '0';
	WAIT FOR 10000 ps;
	DataIn(4) <= '1';
	WAIT FOR 70000 ps;
	DataIn(4) <= '0';
	WAIT FOR 80000 ps;
	DataIn(4) <= '1';
	WAIT FOR 60000 ps;
	DataIn(4) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_4;
-- DataIn[3]
t_prcs_DataIn_3: PROCESS
BEGIN
	DataIn(3) <= '0';
	WAIT FOR 10000 ps;
	DataIn(3) <= '1';
	WAIT FOR 40000 ps;
	DataIn(3) <= '0';
	WAIT FOR 60000 ps;
	DataIn(3) <= '1';
	WAIT FOR 50000 ps;
	DataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_3;
-- DataIn[2]
t_prcs_DataIn_2: PROCESS
BEGIN
	DataIn(2) <= '0';
	WAIT FOR 80000 ps;
	DataIn(2) <= '1';
	WAIT FOR 30000 ps;
	DataIn(2) <= '0';
	WAIT FOR 10000 ps;
	DataIn(2) <= '1';
	WAIT FOR 40000 ps;
	DataIn(2) <= '0';
	WAIT FOR 40000 ps;
	DataIn(2) <= '1';
	WAIT FOR 20000 ps;
	DataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_2;
-- DataIn[1]
t_prcs_DataIn_1: PROCESS
BEGIN
	DataIn(1) <= '0';
	WAIT FOR 50000 ps;
	DataIn(1) <= '1';
	WAIT FOR 30000 ps;
	DataIn(1) <= '0';
	WAIT FOR 30000 ps;
	DataIn(1) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 2
	LOOP
		DataIn(1) <= '0';
		WAIT FOR 20000 ps;
		DataIn(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	DataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_1;
-- DataIn[0]
t_prcs_DataIn_0: PROCESS
BEGIN
	DataIn(0) <= '0';
	WAIT FOR 80000 ps;
	DataIn(0) <= '1';
	WAIT FOR 40000 ps;
	DataIn(0) <= '0';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 3
	LOOP
		DataIn(0) <= '1';
		WAIT FOR 10000 ps;
		DataIn(0) <= '0';
		WAIT FOR 10000 ps;
	END LOOP;
	DataIn(0) <= '1';
	WAIT FOR 10000 ps;
	DataIn(0) <= '0';
	WAIT FOR 10000 ps;
	DataIn(0) <= '1';
	WAIT FOR 10000 ps;
	DataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_0;

-- PCI
t_prcs_PCI: PROCESS
BEGIN
	PCI <= '1';
	WAIT FOR 10000 ps;
	PCI <= '0';
WAIT;
END PROCESS t_prcs_PCI;
-- Op[1]
t_prcs_Op_1: PROCESS
BEGIN
	Op(1) <= '0';
WAIT;
END PROCESS t_prcs_Op_1;
-- Op[0]
t_prcs_Op_0: PROCESS
BEGIN
	Op(0) <= '0';
WAIT;
END PROCESS t_prcs_Op_0;

-- Enter
t_prcs_Enter: PROCESS
BEGIN
	Enter <= '0';
	WAIT FOR 30000 ps;
	Enter <= '1';
	WAIT FOR 10000 ps;
	Enter <= '0';
	WAIT FOR 20000 ps;
	Enter <= '1';
	WAIT FOR 10000 ps;
	Enter <= '0';
	WAIT FOR 20000 ps;
	Enter <= '1';
	WAIT FOR 10000 ps;
	Enter <= '0';
WAIT;
END PROCESS t_prcs_Enter;

-- Send
t_prcs_Send: PROCESS
BEGIN
	Send <= '0';
	WAIT FOR 120000 ps;
	Send <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 8
	LOOP
		Send <= '0';
		WAIT FOR 10000 ps;
		Send <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	Send <= '0';
WAIT;
END PROCESS t_prcs_Send;
END registres_arch;
