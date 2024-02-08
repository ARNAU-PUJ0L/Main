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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/07/2024 13:06:05"

-- 
-- Device: Altera 10M50DAF484I7P Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test IS
    PORT (
	BCDin : IN std_logic_vector(3 DOWNTO 0);
	SEVEN_SEGout : OUT std_logic_vector(6 DOWNTO 0);
	BCDout : OUT std_logic_vector(3 DOWNTO 0)
	);
END test;

-- Design Ports Information
-- SEVEN_SEGout[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVEN_SEGout[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVEN_SEGout[2]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVEN_SEGout[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVEN_SEGout[4]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVEN_SEGout[5]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVEN_SEGout[6]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDout[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDout[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDout[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDout[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDin[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDin[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDin[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDin[3]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BCDin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEVEN_SEGout : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCDout : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SEVEN_SEGout[0]~output_o\ : std_logic;
SIGNAL \SEVEN_SEGout[1]~output_o\ : std_logic;
SIGNAL \SEVEN_SEGout[2]~output_o\ : std_logic;
SIGNAL \SEVEN_SEGout[3]~output_o\ : std_logic;
SIGNAL \SEVEN_SEGout[4]~output_o\ : std_logic;
SIGNAL \SEVEN_SEGout[5]~output_o\ : std_logic;
SIGNAL \SEVEN_SEGout[6]~output_o\ : std_logic;
SIGNAL \BCDout[0]~output_o\ : std_logic;
SIGNAL \BCDout[1]~output_o\ : std_logic;
SIGNAL \BCDout[2]~output_o\ : std_logic;
SIGNAL \BCDout[3]~output_o\ : std_logic;
SIGNAL \BCDin[3]~input_o\ : std_logic;
SIGNAL \BCDin[1]~input_o\ : std_logic;
SIGNAL \BCDin[0]~input_o\ : std_logic;
SIGNAL \BCDin[2]~input_o\ : std_logic;
SIGNAL \u1|seg[1]~0_combout\ : std_logic;
SIGNAL \u1|seg[3]~1_combout\ : std_logic;
SIGNAL \u1|seg[4]~2_combout\ : std_logic;
SIGNAL \u2|bcd[0]~0_combout\ : std_logic;
SIGNAL \u1|seg~3_combout\ : std_logic;
SIGNAL \u1|seg[4]~4_combout\ : std_logic;
SIGNAL \u1|seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|ALT_INV_seg\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \u1|ALT_INV_seg[1]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_BCDin <= BCDin;
SEVEN_SEGout <= ww_SEVEN_SEGout;
BCDout <= ww_BCDout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\u1|ALT_INV_seg\(2) <= NOT \u1|seg\(2);
\u1|ALT_INV_seg[1]~0_combout\ <= NOT \u1|seg[1]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X22_Y0_N30
\SEVEN_SEGout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|seg\(0),
	devoe => ww_devoe,
	o => \SEVEN_SEGout[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\SEVEN_SEGout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_seg[1]~0_combout\,
	devoe => ww_devoe,
	o => \SEVEN_SEGout[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\SEVEN_SEGout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_seg\(2),
	devoe => ww_devoe,
	o => \SEVEN_SEGout[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\SEVEN_SEGout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|seg[3]~1_combout\,
	devoe => ww_devoe,
	o => \SEVEN_SEGout[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\SEVEN_SEGout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|seg[4]~2_combout\,
	devoe => ww_devoe,
	o => \SEVEN_SEGout[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\SEVEN_SEGout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|seg\(5),
	devoe => ww_devoe,
	o => \SEVEN_SEGout[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\SEVEN_SEGout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|seg\(6),
	devoe => ww_devoe,
	o => \SEVEN_SEGout[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\BCDout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|bcd[0]~0_combout\,
	devoe => ww_devoe,
	o => \BCDout[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\BCDout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|seg~3_combout\,
	devoe => ww_devoe,
	o => \BCDout[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\BCDout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \BCDout[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\BCDout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDin[3]~input_o\,
	devoe => ww_devoe,
	o => \BCDout[3]~output_o\);

-- Location: IOIBUF_X18_Y0_N8
\BCDin[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDin(3),
	o => \BCDin[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\BCDin[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDin(1),
	o => \BCDin[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\BCDin[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDin(0),
	o => \BCDin[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\BCDin[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDin(2),
	o => \BCDin[2]~input_o\);

-- Location: LCCOMB_X21_Y1_N8
\u1|seg[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|seg\(0) = (!\BCDin[3]~input_o\ & ((\BCDin[0]~input_o\ & (!\BCDin[1]~input_o\ & !\BCDin[2]~input_o\)) # (!\BCDin[0]~input_o\ & ((\BCDin[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[0]~input_o\,
	datad => \BCDin[2]~input_o\,
	combout => \u1|seg\(0));

-- Location: LCCOMB_X21_Y1_N10
\u1|seg[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|seg[1]~0_combout\ = (\BCDin[3]~input_o\) # ((\BCDin[1]~input_o\ $ (!\BCDin[0]~input_o\)) # (!\BCDin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[0]~input_o\,
	datad => \BCDin[2]~input_o\,
	combout => \u1|seg[1]~0_combout\);

-- Location: LCCOMB_X21_Y1_N4
\u1|seg[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|seg\(2) = (\BCDin[3]~input_o\) # (((\BCDin[0]~input_o\) # (\BCDin[2]~input_o\)) # (!\BCDin[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[0]~input_o\,
	datad => \BCDin[2]~input_o\,
	combout => \u1|seg\(2));

-- Location: LCCOMB_X21_Y1_N14
\u1|seg[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|seg[3]~1_combout\ = (\BCDin[2]~input_o\ & (!\BCDin[3]~input_o\ & (\BCDin[1]~input_o\ $ (!\BCDin[0]~input_o\)))) # (!\BCDin[2]~input_o\ & (((!\BCDin[1]~input_o\ & \BCDin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[0]~input_o\,
	datad => \BCDin[2]~input_o\,
	combout => \u1|seg[3]~1_combout\);

-- Location: LCCOMB_X21_Y1_N0
\u1|seg[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|seg[4]~2_combout\ = (\BCDin[1]~input_o\ & (!\BCDin[3]~input_o\ & (\BCDin[0]~input_o\))) # (!\BCDin[1]~input_o\ & ((\BCDin[2]~input_o\ & (!\BCDin[3]~input_o\)) # (!\BCDin[2]~input_o\ & ((\BCDin[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[0]~input_o\,
	datad => \BCDin[2]~input_o\,
	combout => \u1|seg[4]~2_combout\);

-- Location: LCCOMB_X21_Y1_N2
\u1|seg[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|seg\(5) = (!\BCDin[3]~input_o\ & ((\BCDin[1]~input_o\ & ((\BCDin[0]~input_o\) # (!\BCDin[2]~input_o\))) # (!\BCDin[1]~input_o\ & (\BCDin[0]~input_o\ & !\BCDin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[0]~input_o\,
	datad => \BCDin[2]~input_o\,
	combout => \u1|seg\(5));

-- Location: LCCOMB_X21_Y1_N12
\u1|seg[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|seg\(6) = (!\BCDin[3]~input_o\ & ((\BCDin[1]~input_o\ & (\BCDin[0]~input_o\ & \BCDin[2]~input_o\)) # (!\BCDin[1]~input_o\ & ((!\BCDin[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[0]~input_o\,
	datad => \BCDin[2]~input_o\,
	combout => \u1|seg\(6));

-- Location: LCCOMB_X21_Y1_N22
\u2|bcd[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|bcd[0]~0_combout\ = (\BCDin[0]~input_o\ & (((!\BCDin[1]~input_o\ & !\BCDin[2]~input_o\)) # (!\BCDin[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[0]~input_o\,
	datad => \BCDin[2]~input_o\,
	combout => \u2|bcd[0]~0_combout\);

-- Location: LCCOMB_X21_Y1_N24
\u1|seg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|seg~3_combout\ = (!\BCDin[3]~input_o\ & \BCDin[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datac => \BCDin[1]~input_o\,
	combout => \u1|seg~3_combout\);

-- Location: LCCOMB_X21_Y1_N18
\u1|seg[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|seg[4]~4_combout\ = (!\BCDin[3]~input_o\ & \BCDin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[3]~input_o\,
	datad => \BCDin[2]~input_o\,
	combout => \u1|seg[4]~4_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_SEVEN_SEGout(0) <= \SEVEN_SEGout[0]~output_o\;

ww_SEVEN_SEGout(1) <= \SEVEN_SEGout[1]~output_o\;

ww_SEVEN_SEGout(2) <= \SEVEN_SEGout[2]~output_o\;

ww_SEVEN_SEGout(3) <= \SEVEN_SEGout[3]~output_o\;

ww_SEVEN_SEGout(4) <= \SEVEN_SEGout[4]~output_o\;

ww_SEVEN_SEGout(5) <= \SEVEN_SEGout[5]~output_o\;

ww_SEVEN_SEGout(6) <= \SEVEN_SEGout[6]~output_o\;

ww_BCDout(0) <= \BCDout[0]~output_o\;

ww_BCDout(1) <= \BCDout[1]~output_o\;

ww_BCDout(2) <= \BCDout[2]~output_o\;

ww_BCDout(3) <= \BCDout[3]~output_o\;
END structure;


