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
-- Generated on "02/06/2024 23:02:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          comp_and
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY comp_and_vhd_vec_tst IS
END comp_and_vhd_vec_tst;
ARCHITECTURE comp_and_arch OF comp_and_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT comp_and
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : comp_and
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	y => y
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
	WAIT FOR 300000 ps;
	a <= '1';
	WAIT FOR 200000 ps;
	a <= '0';
	WAIT FOR 100000 ps;
	a <= '1';
	WAIT FOR 100000 ps;
	a <= '0';
	WAIT FOR 100000 ps;
	a <= '1';
	WAIT FOR 100000 ps;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '0';
	WAIT FOR 100000 ps;
	b <= '1';
	WAIT FOR 200000 ps;
	b <= '0';
	WAIT FOR 100000 ps;
	b <= '1';
	WAIT FOR 500000 ps;
	b <= '0';
WAIT;
END PROCESS t_prcs_b;
END comp_and_arch;
