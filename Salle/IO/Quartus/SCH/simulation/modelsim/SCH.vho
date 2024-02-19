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

-- DATE "02/19/2024 08:58:39"

-- 
-- Device: Altera 10M50DAF484I7G Package FBGA484
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

ENTITY 	SCH IS
    PORT (
	Greater : OUT std_logic;
	BN : IN std_logic_vector(5 DOWNTO 0);
	Validate : IN std_logic;
	Lower : OUT std_logic;
	D00 : OUT std_logic;
	D01 : OUT std_logic;
	D02 : OUT std_logic;
	D03 : OUT std_logic;
	D04 : OUT std_logic;
	D05 : OUT std_logic;
	D06 : OUT std_logic;
	D012 : OUT std_logic;
	D10 : OUT std_logic;
	D11 : OUT std_logic;
	D13 : OUT std_logic;
	D14 : OUT std_logic;
	D15 : OUT std_logic;
	D16 : OUT std_logic
	);
END SCH;

-- Design Ports Information
-- Greater	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lower	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D00	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D01	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D02	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D03	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D04	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D05	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D06	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D012	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D10	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D13	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D14	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D15	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D16	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Validate	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SCH IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Greater : std_logic;
SIGNAL ww_BN : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Validate : std_logic;
SIGNAL ww_Lower : std_logic;
SIGNAL ww_D00 : std_logic;
SIGNAL ww_D01 : std_logic;
SIGNAL ww_D02 : std_logic;
SIGNAL ww_D03 : std_logic;
SIGNAL ww_D04 : std_logic;
SIGNAL ww_D05 : std_logic;
SIGNAL ww_D06 : std_logic;
SIGNAL ww_D012 : std_logic;
SIGNAL ww_D10 : std_logic;
SIGNAL ww_D11 : std_logic;
SIGNAL ww_D13 : std_logic;
SIGNAL ww_D14 : std_logic;
SIGNAL ww_D15 : std_logic;
SIGNAL ww_D16 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Greater~output_o\ : std_logic;
SIGNAL \Lower~output_o\ : std_logic;
SIGNAL \D00~output_o\ : std_logic;
SIGNAL \D01~output_o\ : std_logic;
SIGNAL \D02~output_o\ : std_logic;
SIGNAL \D03~output_o\ : std_logic;
SIGNAL \D04~output_o\ : std_logic;
SIGNAL \D05~output_o\ : std_logic;
SIGNAL \D06~output_o\ : std_logic;
SIGNAL \D012~output_o\ : std_logic;
SIGNAL \D10~output_o\ : std_logic;
SIGNAL \D11~output_o\ : std_logic;
SIGNAL \D13~output_o\ : std_logic;
SIGNAL \D14~output_o\ : std_logic;
SIGNAL \D15~output_o\ : std_logic;
SIGNAL \D16~output_o\ : std_logic;
SIGNAL \BN[1]~input_o\ : std_logic;
SIGNAL \inst31|sub|84~combout\ : std_logic;
SIGNAL \BN[5]~input_o\ : std_logic;
SIGNAL \BN[3]~input_o\ : std_logic;
SIGNAL \inst24~1_combout\ : std_logic;
SIGNAL \BN[4]~input_o\ : std_logic;
SIGNAL \BN[2]~input_o\ : std_logic;
SIGNAL \BN[0]~input_o\ : std_logic;
SIGNAL \inst24~0_combout\ : std_logic;
SIGNAL \inst32|sub|84~combout\ : std_logic;
SIGNAL \Validate~input_o\ : std_logic;
SIGNAL \inst24~2_combout\ : std_logic;
SIGNAL \inst34|sub|84~combout\ : std_logic;
SIGNAL \inst35|sub|87~0_combout\ : std_logic;
SIGNAL \inst35|sub|84~combout\ : std_logic;
SIGNAL \inst35|sub|109~0_combout\ : std_logic;
SIGNAL \inst29~0_combout\ : std_logic;
SIGNAL \inst|81~1_combout\ : std_logic;
SIGNAL \inst|81~0_combout\ : std_logic;
SIGNAL \inst|81~2_combout\ : std_logic;
SIGNAL \inst|82~0_combout\ : std_logic;
SIGNAL \inst|48~combout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst18~0_combout\ : std_logic;
SIGNAL \inst19~0_combout\ : std_logic;
SIGNAL \inst20~0_combout\ : std_logic;
SIGNAL \inst21~0_combout\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst23~combout\ : std_logic;
SIGNAL \inst|43~1_combout\ : std_logic;
SIGNAL \inst|43~0_combout\ : std_logic;
SIGNAL \inst|43~2_combout\ : std_logic;
SIGNAL \inst|41~0_combout\ : std_logic;
SIGNAL \inst|41~1_combout\ : std_logic;
SIGNAL \inst|41~2_combout\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst15~1_combout\ : std_logic;
SIGNAL \inst15~2_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst15~3_combout\ : std_logic;
SIGNAL \inst15~4_combout\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \inst16~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Greater <= ww_Greater;
ww_BN <= BN;
ww_Validate <= Validate;
Lower <= ww_Lower;
D00 <= ww_D00;
D01 <= ww_D01;
D02 <= ww_D02;
D03 <= ww_D03;
D04 <= ww_D04;
D05 <= ww_D05;
D06 <= ww_D06;
D012 <= ww_D012;
D10 <= ww_D10;
D11 <= ww_D11;
D13 <= ww_D13;
D14 <= ww_D14;
D15 <= ww_D15;
D16 <= ww_D16;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N8
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

-- Location: IOOBUF_X29_Y39_N9
\Greater~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24~2_combout\,
	devoe => ww_devoe,
	o => \Greater~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\Lower~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29~0_combout\,
	devoe => ww_devoe,
	o => \Lower~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\D00~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~0_combout\,
	devoe => ww_devoe,
	o => \D00~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\D01~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~0_combout\,
	devoe => ww_devoe,
	o => \D01~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\D02~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~0_combout\,
	devoe => ww_devoe,
	o => \D02~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\D03~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20~0_combout\,
	devoe => ww_devoe,
	o => \D03~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\D04~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21~0_combout\,
	devoe => ww_devoe,
	o => \D04~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\D05~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22~0_combout\,
	devoe => ww_devoe,
	o => \D05~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\D06~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23~combout\,
	devoe => ww_devoe,
	o => \D06~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\D012~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~combout\,
	devoe => ww_devoe,
	o => \D012~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\D10~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~1_combout\,
	devoe => ww_devoe,
	o => \D10~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\D11~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~0_combout\,
	devoe => ww_devoe,
	o => \D11~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\D13~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~0_combout\,
	devoe => ww_devoe,
	o => \D13~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\D14~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~0_combout\,
	devoe => ww_devoe,
	o => \D14~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\D15~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~4_combout\,
	devoe => ww_devoe,
	o => \D15~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\D16~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~1_combout\,
	devoe => ww_devoe,
	o => \D16~output_o\);

-- Location: IOIBUF_X31_Y39_N15
\BN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BN(1),
	o => \BN[1]~input_o\);

-- Location: LCCOMB_X31_Y35_N6
\inst31|sub|84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|sub|84~combout\ = LCELL(\BN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BN[1]~input_o\,
	combout => \inst31|sub|84~combout\);

-- Location: IOIBUF_X31_Y39_N1
\BN[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BN(5),
	o => \BN[5]~input_o\);

-- Location: IOIBUF_X34_Y39_N8
\BN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BN(3),
	o => \BN[3]~input_o\);

-- Location: LCCOMB_X31_Y35_N26
\inst24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24~1_combout\ = (\inst31|sub|84~combout\ & (!\BN[5]~input_o\ & \BN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|sub|84~combout\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst24~1_combout\);

-- Location: IOIBUF_X31_Y39_N22
\BN[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BN(4),
	o => \BN[4]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\BN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BN(2),
	o => \BN[2]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\BN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BN(0),
	o => \BN[0]~input_o\);

-- Location: LCCOMB_X31_Y35_N16
\inst24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24~0_combout\ = (\BN[4]~input_o\ & (!\BN[2]~input_o\ & ((\BN[1]~input_o\) # (!\BN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[4]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[0]~input_o\,
	combout => \inst24~0_combout\);

-- Location: LCCOMB_X31_Y35_N4
\inst32|sub|84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|sub|84~combout\ = LCELL((\BN[5]~input_o\) # ((\BN[4]~input_o\ & (\BN[2]~input_o\ & \BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[4]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst32|sub|84~combout\);

-- Location: IOIBUF_X31_Y39_N8
\Validate~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Validate,
	o => \Validate~input_o\);

-- Location: LCCOMB_X31_Y35_N12
\inst24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24~2_combout\ = (\Validate~input_o\ & ((\inst32|sub|84~combout\) # ((\inst24~1_combout\ & \inst24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24~1_combout\,
	datab => \inst24~0_combout\,
	datac => \inst32|sub|84~combout\,
	datad => \Validate~input_o\,
	combout => \inst24~2_combout\);

-- Location: LCCOMB_X31_Y36_N22
\inst34|sub|84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|sub|84~combout\ = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst34|sub|84~combout\);

-- Location: LCCOMB_X31_Y36_N10
\inst35|sub|87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35|sub|87~0_combout\ = (\inst34|sub|84~combout\) # ((\BN[1]~input_o\ & \BN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datac => \inst34|sub|84~combout\,
	datad => \BN[0]~input_o\,
	combout => \inst35|sub|87~0_combout\);

-- Location: LCCOMB_X31_Y36_N20
\inst35|sub|84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35|sub|84~combout\ = LCELL((\BN[5]~input_o\) # (\BN[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BN[5]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \inst35|sub|84~combout\);

-- Location: LCCOMB_X31_Y36_N8
\inst35|sub|109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35|sub|109~0_combout\ = (!\BN[4]~input_o\ & (\BN[2]~input_o\ & (!\BN[5]~input_o\ & \BN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[4]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst35|sub|109~0_combout\);

-- Location: LCCOMB_X31_Y36_N28
\inst29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29~0_combout\ = (\Validate~input_o\ & ((\inst35|sub|109~0_combout\ & (!\inst35|sub|87~0_combout\)) # (!\inst35|sub|109~0_combout\ & ((!\inst35|sub|84~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|sub|87~0_combout\,
	datab => \inst35|sub|84~combout\,
	datac => \inst35|sub|109~0_combout\,
	datad => \Validate~input_o\,
	combout => \inst29~0_combout\);

-- Location: LCCOMB_X31_Y35_N10
\inst|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|81~1_combout\ = (\BN[5]~input_o\ & ((!\BN[3]~input_o\))) # (!\BN[5]~input_o\ & (\BN[1]~input_o\ & \BN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BN[1]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|81~1_combout\);

-- Location: LCCOMB_X31_Y35_N24
\inst|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|81~0_combout\ = (\BN[1]~input_o\ & (\BN[5]~input_o\ & !\BN[3]~input_o\)) # (!\BN[1]~input_o\ & (!\BN[5]~input_o\ & \BN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BN[1]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|81~0_combout\);

-- Location: LCCOMB_X31_Y35_N20
\inst|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|81~2_combout\ = (\inst|81~0_combout\ & (!\inst|81~1_combout\ & ((\BN[4]~input_o\) # (!\BN[2]~input_o\)))) # (!\inst|81~0_combout\ & (\inst|81~1_combout\ $ (((\BN[2]~input_o\) # (!\BN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~1_combout\,
	datab => \inst|81~0_combout\,
	datac => \BN[2]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \inst|81~2_combout\);

-- Location: LCCOMB_X31_Y35_N22
\inst|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|82~0_combout\ = (\BN[4]~input_o\ & ((\BN[2]~input_o\ & ((\BN[3]~input_o\) # (!\BN[5]~input_o\))) # (!\BN[2]~input_o\ & (!\BN[5]~input_o\ & \BN[3]~input_o\)))) # (!\BN[4]~input_o\ & (((\BN[5]~input_o\ & !\BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[4]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|82~0_combout\);

-- Location: LCCOMB_X31_Y35_N30
\inst|48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|48~combout\ = ((!\BN[4]~input_o\ & !\BN[3]~input_o\)) # (!\BN[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[4]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|48~combout\);

-- Location: LCCOMB_X31_Y36_N14
\inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17~0_combout\ = (\Validate~input_o\ & ((\inst|82~0_combout\) # ((\inst|81~2_combout\ & !\inst|48~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~2_combout\,
	datab => \inst|82~0_combout\,
	datac => \inst|48~combout\,
	datad => \Validate~input_o\,
	combout => \inst17~0_combout\);

-- Location: LCCOMB_X31_Y36_N24
\inst18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18~0_combout\ = (\Validate~input_o\ & ((\inst|82~0_combout\) # ((!\inst|81~2_combout\ & !\inst|48~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~2_combout\,
	datab => \inst|82~0_combout\,
	datac => \inst|48~combout\,
	datad => \Validate~input_o\,
	combout => \inst18~0_combout\);

-- Location: LCCOMB_X31_Y36_N18
\inst19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19~0_combout\ = (\Validate~input_o\ & (((\inst|81~2_combout\ & \inst|82~0_combout\)) # (!\inst|48~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~2_combout\,
	datab => \inst|82~0_combout\,
	datac => \inst|48~combout\,
	datad => \Validate~input_o\,
	combout => \inst19~0_combout\);

-- Location: LCCOMB_X31_Y36_N4
\inst20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20~0_combout\ = (\Validate~input_o\ & ((\inst|81~2_combout\ & (!\inst|82~0_combout\ & !\inst|48~combout\)) # (!\inst|81~2_combout\ & (\inst|82~0_combout\ $ (\inst|48~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~2_combout\,
	datab => \inst|82~0_combout\,
	datac => \inst|48~combout\,
	datad => \Validate~input_o\,
	combout => \inst20~0_combout\);

-- Location: LCCOMB_X31_Y36_N6
\inst21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21~0_combout\ = (\Validate~input_o\ & (((!\inst|82~0_combout\ & !\inst|48~combout\)) # (!\inst|81~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~2_combout\,
	datab => \inst|82~0_combout\,
	datac => \inst|48~combout\,
	datad => \Validate~input_o\,
	combout => \inst21~0_combout\);

-- Location: LCCOMB_X31_Y36_N16
\inst22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = (\inst|82~0_combout\ & (\Validate~input_o\ & ((\inst|48~combout\) # (!\inst|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~2_combout\,
	datab => \inst|82~0_combout\,
	datac => \inst|48~combout\,
	datad => \Validate~input_o\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X31_Y36_N26
inst23 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23~combout\ = (!\inst|81~2_combout\ & (\inst|82~0_combout\ & (!\inst|48~combout\ & \Validate~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~2_combout\,
	datab => \inst|82~0_combout\,
	datac => \inst|48~combout\,
	datad => \Validate~input_o\,
	combout => \inst23~combout\);

-- Location: LCCOMB_X31_Y35_N14
\inst|43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|43~1_combout\ = (\BN[4]~input_o\ & (!\BN[2]~input_o\ & ((\BN[3]~input_o\) # (!\BN[1]~input_o\)))) # (!\BN[4]~input_o\ & (\BN[2]~input_o\ & ((\BN[1]~input_o\) # (!\BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[4]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|43~1_combout\);

-- Location: LCCOMB_X31_Y35_N28
\inst|43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|43~0_combout\ = (\BN[4]~input_o\ & ((\BN[1]~input_o\ & (\BN[2]~input_o\ & !\BN[3]~input_o\)) # (!\BN[1]~input_o\ & (!\BN[2]~input_o\ & \BN[3]~input_o\)))) # (!\BN[4]~input_o\ & (\BN[2]~input_o\ $ (((\BN[1]~input_o\ & !\BN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[4]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|43~0_combout\);

-- Location: LCCOMB_X32_Y35_N18
\inst|43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|43~2_combout\ = (\BN[5]~input_o\ & ((\inst|43~0_combout\))) # (!\BN[5]~input_o\ & (\inst|43~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|43~1_combout\,
	datab => \inst|43~0_combout\,
	datac => \BN[5]~input_o\,
	combout => \inst|43~2_combout\);

-- Location: LCCOMB_X31_Y35_N8
\inst|41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|41~0_combout\ = (\BN[1]~input_o\ & (\BN[3]~input_o\ & ((\BN[2]~input_o\) # (!\BN[4]~input_o\)))) # (!\BN[1]~input_o\ & (\BN[3]~input_o\ $ (((\BN[2]~input_o\) # (!\BN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[4]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|41~0_combout\);

-- Location: LCCOMB_X31_Y35_N2
\inst|41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|41~1_combout\ = (\BN[1]~input_o\ & (\BN[3]~input_o\ $ (((\BN[2]~input_o\) # (!\BN[4]~input_o\))))) # (!\BN[1]~input_o\ & ((\BN[4]~input_o\ & (!\BN[2]~input_o\ & !\BN[3]~input_o\)) # (!\BN[4]~input_o\ & (\BN[2]~input_o\ & \BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[4]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|41~1_combout\);

-- Location: LCCOMB_X32_Y35_N8
\inst|41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|41~2_combout\ = (\BN[5]~input_o\ & (\inst|41~0_combout\)) # (!\BN[5]~input_o\ & ((\inst|41~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|41~0_combout\,
	datac => \BN[5]~input_o\,
	datad => \inst|41~1_combout\,
	combout => \inst|41~2_combout\);

-- Location: LCCOMB_X32_Y35_N20
inst12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12~combout\ = (\Validate~input_o\ & (!\inst|43~2_combout\ & (\inst|41~2_combout\ & !\BN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Validate~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \BN[0]~input_o\,
	combout => \inst12~combout\);

-- Location: LCCOMB_X31_Y35_N0
\inst15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = (\BN[2]~input_o\ & ((\BN[5]~input_o\ & ((\BN[4]~input_o\) # (!\BN[1]~input_o\))) # (!\BN[5]~input_o\ & ((\BN[1]~input_o\) # (!\BN[4]~input_o\))))) # (!\BN[2]~input_o\ & (\BN[4]~input_o\ $ (((\BN[5]~input_o\) # (\BN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \inst15~0_combout\);

-- Location: LCCOMB_X31_Y35_N18
\inst15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~1_combout\ = (\BN[2]~input_o\ & (\BN[5]~input_o\ & (\BN[1]~input_o\ & !\BN[4]~input_o\))) # (!\BN[2]~input_o\ & (\BN[4]~input_o\ & (\BN[5]~input_o\ $ (\BN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \inst15~1_combout\);

-- Location: LCCOMB_X32_Y35_N30
\inst15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~2_combout\ = (!\inst|43~2_combout\ & ((\inst15~0_combout\ & ((!\inst15~1_combout\) # (!\BN[3]~input_o\))) # (!\inst15~0_combout\ & (\BN[3]~input_o\ $ (!\inst15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15~0_combout\,
	datab => \inst|43~2_combout\,
	datac => \BN[3]~input_o\,
	datad => \inst15~1_combout\,
	combout => \inst15~2_combout\);

-- Location: LCCOMB_X32_Y35_N24
\inst10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\Validate~input_o\ & (!\inst|41~2_combout\ & (\inst15~2_combout\ & \BN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Validate~input_o\,
	datab => \inst|41~2_combout\,
	datac => \inst15~2_combout\,
	datad => \BN[0]~input_o\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X32_Y35_N26
\inst10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\inst10~0_combout\) # ((\Validate~input_o\ & (\inst|43~2_combout\ & !\BN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Validate~input_o\,
	datab => \inst10~0_combout\,
	datac => \inst|43~2_combout\,
	datad => \BN[0]~input_o\,
	combout => \inst10~1_combout\);

-- Location: LCCOMB_X32_Y35_N12
\inst11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\Validate~input_o\ & (\inst|43~2_combout\ & (\inst|41~2_combout\ $ (\BN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Validate~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \BN[0]~input_o\,
	combout => \inst11~0_combout\);

-- Location: LCCOMB_X32_Y35_N6
\inst13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (\Validate~input_o\ & ((\inst|43~2_combout\ & (\inst|41~2_combout\ $ (!\BN[0]~input_o\))) # (!\inst|43~2_combout\ & (!\inst|41~2_combout\ & \BN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Validate~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \BN[0]~input_o\,
	combout => \inst13~0_combout\);

-- Location: LCCOMB_X32_Y35_N16
\inst14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\Validate~input_o\ & ((\BN[0]~input_o\) # ((\inst|43~2_combout\ & !\inst|41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Validate~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \BN[0]~input_o\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X32_Y35_N10
\inst15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~3_combout\ = (\Validate~input_o\ & (\inst|41~2_combout\ & ((\BN[0]~input_o\) # (!\inst|43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Validate~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \BN[0]~input_o\,
	combout => \inst15~3_combout\);

-- Location: LCCOMB_X32_Y35_N28
\inst15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~4_combout\ = (\inst15~3_combout\) # ((\Validate~input_o\ & (\BN[0]~input_o\ & \inst15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Validate~input_o\,
	datab => \BN[0]~input_o\,
	datac => \inst15~2_combout\,
	datad => \inst15~3_combout\,
	combout => \inst15~4_combout\);

-- Location: LCCOMB_X32_Y35_N22
\inst16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = (\inst|43~2_combout\ & (\inst|41~2_combout\ & \BN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \BN[0]~input_o\,
	combout => \inst16~0_combout\);

-- Location: LCCOMB_X32_Y35_N0
\inst16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16~1_combout\ = (\Validate~input_o\ & ((\inst16~0_combout\) # ((\inst15~2_combout\ & !\inst|41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15~2_combout\,
	datab => \inst|41~2_combout\,
	datac => \inst16~0_combout\,
	datad => \Validate~input_o\,
	combout => \inst16~1_combout\);

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

ww_Greater <= \Greater~output_o\;

ww_Lower <= \Lower~output_o\;

ww_D00 <= \D00~output_o\;

ww_D01 <= \D01~output_o\;

ww_D02 <= \D02~output_o\;

ww_D03 <= \D03~output_o\;

ww_D04 <= \D04~output_o\;

ww_D05 <= \D05~output_o\;

ww_D06 <= \D06~output_o\;

ww_D012 <= \D012~output_o\;

ww_D10 <= \D10~output_o\;

ww_D11 <= \D11~output_o\;

ww_D13 <= \D13~output_o\;

ww_D14 <= \D14~output_o\;

ww_D15 <= \D15~output_o\;

ww_D16 <= \D16~output_o\;
END structure;


