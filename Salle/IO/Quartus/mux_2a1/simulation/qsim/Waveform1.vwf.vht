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
-- Generated on "02/06/2024 23:32:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_2a1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_2a1_vhd_vec_tst IS
END mux_2a1_vhd_vec_tst;
ARCHITECTURE mux_2a1_arch OF mux_2a1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL c : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT mux_2a1
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	c : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux_2a1
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	s => s,
	y => y
	);
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '1';
	WAIT FOR 300000 ps;
	a(3) <= '0';
	WAIT FOR 100000 ps;
	a(3) <= '1';
	WAIT FOR 100000 ps;
	a(3) <= '0';
	WAIT FOR 100000 ps;
	a(3) <= '1';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '1';
	WAIT FOR 300000 ps;
	a(2) <= '0';
	WAIT FOR 100000 ps;
	a(2) <= '1';
	WAIT FOR 300000 ps;
	a(2) <= '0';
	WAIT FOR 200000 ps;
	a(2) <= '1';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
	WAIT FOR 100000 ps;
	a(1) <= '1';
	WAIT FOR 600000 ps;
	a(1) <= '0';
	WAIT FOR 100000 ps;
	a(1) <= '1';
	WAIT FOR 100000 ps;
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '0';
	WAIT FOR 200000 ps;
	a(0) <= '1';
	WAIT FOR 100000 ps;
	a(0) <= '0';
	WAIT FOR 400000 ps;
	a(0) <= '1';
	WAIT FOR 100000 ps;
	a(0) <= '0';
WAIT;
END PROCESS t_prcs_a_0;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '1';
	WAIT FOR 200000 ps;
	b(3) <= '0';
	WAIT FOR 100000 ps;
	b(3) <= '1';
	WAIT FOR 200000 ps;
	b(3) <= '0';
	WAIT FOR 300000 ps;
	b(3) <= '1';
	WAIT FOR 100000 ps;
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 200000 ps;
	b(2) <= '1';
	WAIT FOR 200000 ps;
	b(2) <= '0';
	WAIT FOR 100000 ps;
	b(2) <= '1';
	WAIT FOR 100000 ps;
	b(2) <= '0';
	WAIT FOR 200000 ps;
	b(2) <= '1';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '1';
	WAIT FOR 200000 ps;
	b(1) <= '0';
	WAIT FOR 200000 ps;
	b(1) <= '1';
	WAIT FOR 200000 ps;
	b(1) <= '0';
	WAIT FOR 100000 ps;
	b(1) <= '1';
	WAIT FOR 100000 ps;
	b(1) <= '0';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	b(0) <= '1';
	WAIT FOR 100000 ps;
	b(0) <= '0';
	WAIT FOR 100000 ps;
	b(0) <= '1';
	WAIT FOR 100000 ps;
	b(0) <= '0';
	WAIT FOR 300000 ps;
	b(0) <= '1';
	WAIT FOR 100000 ps;
	b(0) <= '0';
WAIT;
END PROCESS t_prcs_b_0;
-- c[3]
t_prcs_c_3: PROCESS
BEGIN
	c(3) <= '0';
	WAIT FOR 200000 ps;
	c(3) <= '1';
	WAIT FOR 100000 ps;
	c(3) <= '0';
	WAIT FOR 200000 ps;
	c(3) <= '1';
	WAIT FOR 200000 ps;
	c(3) <= '0';
	WAIT FOR 100000 ps;
	c(3) <= '1';
WAIT;
END PROCESS t_prcs_c_3;
-- c[2]
t_prcs_c_2: PROCESS
BEGIN
	c(2) <= '1';
	WAIT FOR 200000 ps;
	c(2) <= '0';
	WAIT FOR 100000 ps;
	c(2) <= '1';
	WAIT FOR 200000 ps;
	c(2) <= '0';
	WAIT FOR 100000 ps;
	c(2) <= '1';
	WAIT FOR 100000 ps;
	c(2) <= '0';
	WAIT FOR 100000 ps;
	c(2) <= '1';
	WAIT FOR 100000 ps;
	c(2) <= '0';
WAIT;
END PROCESS t_prcs_c_2;
-- c[1]
t_prcs_c_1: PROCESS
BEGIN
	c(1) <= '0';
	WAIT FOR 200000 ps;
	c(1) <= '1';
	WAIT FOR 100000 ps;
	c(1) <= '0';
	WAIT FOR 100000 ps;
	c(1) <= '1';
	WAIT FOR 100000 ps;
	c(1) <= '0';
	WAIT FOR 100000 ps;
	c(1) <= '1';
WAIT;
END PROCESS t_prcs_c_1;
-- c[0]
t_prcs_c_0: PROCESS
BEGIN
	c(0) <= '1';
	WAIT FOR 100000 ps;
	c(0) <= '0';
	WAIT FOR 100000 ps;
	c(0) <= '1';
	WAIT FOR 100000 ps;
	c(0) <= '0';
	WAIT FOR 300000 ps;
	c(0) <= '1';
	WAIT FOR 100000 ps;
	c(0) <= '0';
	WAIT FOR 200000 ps;
	c(0) <= '1';
WAIT;
END PROCESS t_prcs_c_0;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	d(3) <= '0';
	WAIT FOR 100000 ps;
	d(3) <= '1';
	WAIT FOR 100000 ps;
	d(3) <= '0';
	WAIT FOR 100000 ps;
	d(3) <= '1';
	WAIT FOR 100000 ps;
	d(3) <= '0';
	WAIT FOR 100000 ps;
	d(3) <= '1';
	WAIT FOR 100000 ps;
	d(3) <= '0';
	WAIT FOR 100000 ps;
	d(3) <= '1';
	WAIT FOR 100000 ps;
	d(3) <= '0';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	d(2) <= '1';
	WAIT FOR 300000 ps;
	d(2) <= '0';
	WAIT FOR 100000 ps;
	d(2) <= '1';
	WAIT FOR 100000 ps;
	d(2) <= '0';
	WAIT FOR 100000 ps;
	d(2) <= '1';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	d(1) <= '0';
	WAIT FOR 200000 ps;
	d(1) <= '1';
	WAIT FOR 500000 ps;
	d(1) <= '0';
	WAIT FOR 200000 ps;
	d(1) <= '1';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	d(0) <= '0';
	WAIT FOR 100000 ps;
	d(0) <= '1';
	WAIT FOR 100000 ps;
	d(0) <= '0';
	WAIT FOR 200000 ps;
	d(0) <= '1';
	WAIT FOR 200000 ps;
	d(0) <= '0';
	WAIT FOR 300000 ps;
	d(0) <= '1';
WAIT;
END PROCESS t_prcs_d_0;
-- s[3]
t_prcs_s_3: PROCESS
BEGIN
	s(3) <= '1';
	WAIT FOR 100000 ps;
	s(3) <= '0';
	WAIT FOR 300000 ps;
	s(3) <= '1';
	WAIT FOR 100000 ps;
	s(3) <= '0';
WAIT;
END PROCESS t_prcs_s_3;
-- s[2]
t_prcs_s_2: PROCESS
BEGIN
	s(2) <= '1';
	WAIT FOR 800000 ps;
	s(2) <= '0';
WAIT;
END PROCESS t_prcs_s_2;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	s(1) <= '0';
	WAIT FOR 100000 ps;
	s(1) <= '1';
	WAIT FOR 200000 ps;
	s(1) <= '0';
	WAIT FOR 600000 ps;
	s(1) <= '1';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	s(0) <= '0';
	WAIT FOR 200000 ps;
	s(0) <= '1';
	WAIT FOR 100000 ps;
	s(0) <= '0';
	WAIT FOR 200000 ps;
	s(0) <= '1';
	WAIT FOR 200000 ps;
	s(0) <= '0';
	WAIT FOR 100000 ps;
	s(0) <= '1';
	WAIT FOR 100000 ps;
	s(0) <= '0';
WAIT;
END PROCESS t_prcs_s_0;
END mux_2a1_arch;
