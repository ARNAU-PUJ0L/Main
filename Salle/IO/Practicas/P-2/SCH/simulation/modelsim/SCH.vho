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

-- DATE "03/05/2024 10:00:39"

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
	Validate : IN std_logic;
	BN : IN std_logic_vector(5 DOWNTO 0);
	Lower : OUT std_logic;
	D0 : OUT std_logic_vector(6 DOWNTO 0);
	D1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END SCH;

-- Design Ports Information
-- Greater	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lower	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[6]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Validate	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Validate : std_logic;
SIGNAL ww_BN : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Lower : std_logic;
SIGNAL ww_D0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_D1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Greater~output_o\ : std_logic;
SIGNAL \Lower~output_o\ : std_logic;
SIGNAL \D0[6]~output_o\ : std_logic;
SIGNAL \D0[5]~output_o\ : std_logic;
SIGNAL \D0[4]~output_o\ : std_logic;
SIGNAL \D0[3]~output_o\ : std_logic;
SIGNAL \D0[2]~output_o\ : std_logic;
SIGNAL \D0[1]~output_o\ : std_logic;
SIGNAL \D0[0]~output_o\ : std_logic;
SIGNAL \D1[6]~output_o\ : std_logic;
SIGNAL \D1[5]~output_o\ : std_logic;
SIGNAL \D1[4]~output_o\ : std_logic;
SIGNAL \D1[3]~output_o\ : std_logic;
SIGNAL \D1[2]~output_o\ : std_logic;
SIGNAL \D1[1]~output_o\ : std_logic;
SIGNAL \D1[0]~output_o\ : std_logic;
SIGNAL \Validate~input_o\ : std_logic;
SIGNAL \BN[3]~input_o\ : std_logic;
SIGNAL \BN[1]~input_o\ : std_logic;
SIGNAL \inst31|sub|84~combout\ : std_logic;
SIGNAL \BN[5]~input_o\ : std_logic;
SIGNAL \inst22~1_combout\ : std_logic;
SIGNAL \BN[4]~input_o\ : std_logic;
SIGNAL \BN[2]~input_o\ : std_logic;
SIGNAL \inst32|sub|84~combout\ : std_logic;
SIGNAL \BN[0]~input_o\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst22~2_combout\ : std_logic;
SIGNAL \inst34|sub|84~combout\ : std_logic;
SIGNAL \inst35|sub|87~0_combout\ : std_logic;
SIGNAL \inst35|sub|84~combout\ : std_logic;
SIGNAL \inst35|sub|109~0_combout\ : std_logic;
SIGNAL \inst23~combout\ : std_logic;
SIGNAL \inst|48~combout\ : std_logic;
SIGNAL \inst|81~0_combout\ : std_logic;
SIGNAL \inst|81~1_combout\ : std_logic;
SIGNAL \inst|81~2_combout\ : std_logic;
SIGNAL \inst|82~0_combout\ : std_logic;
SIGNAL \inst21~combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst18~0_combout\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \inst16~combout\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \inst|41~0_combout\ : std_logic;
SIGNAL \inst|41~1_combout\ : std_logic;
SIGNAL \inst|41~2_combout\ : std_logic;
SIGNAL \inst|45~0_combout\ : std_logic;
SIGNAL \inst|45~1_combout\ : std_logic;
SIGNAL \inst8|38~0_combout\ : std_logic;
SIGNAL \inst8|38~1_combout\ : std_logic;
SIGNAL \inst|43~0_combout\ : std_logic;
SIGNAL \inst|43~1_combout\ : std_logic;
SIGNAL \inst|43~2_combout\ : std_logic;
SIGNAL \inst8|38~2_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst8|38~3_combout\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst13~1_combout\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \inst11~1_combout\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Greater <= ww_Greater;
ww_Validate <= Validate;
ww_BN <= BN;
Lower <= ww_Lower;
D0 <= ww_D0;
D1 <= ww_D1;
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

-- Location: IOOBUF_X46_Y54_N2
\Greater~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22~2_combout\,
	devoe => ww_devoe,
	o => \Greater~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\Lower~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23~combout\,
	devoe => ww_devoe,
	o => \Lower~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\D0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21~combout\,
	devoe => ww_devoe,
	o => \D0[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\D0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20~combout\,
	devoe => ww_devoe,
	o => \D0[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\D0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~combout\,
	devoe => ww_devoe,
	o => \D0[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\D0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~0_combout\,
	devoe => ww_devoe,
	o => \D0[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\D0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~combout\,
	devoe => ww_devoe,
	o => \D0[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\D0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~combout\,
	devoe => ww_devoe,
	o => \D0[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\D0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~combout\,
	devoe => ww_devoe,
	o => \D0[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\D1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~combout\,
	devoe => ww_devoe,
	o => \D1[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\D1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~1_combout\,
	devoe => ww_devoe,
	o => \D1[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\D1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~combout\,
	devoe => ww_devoe,
	o => \D1[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\D1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~1_combout\,
	devoe => ww_devoe,
	o => \D1[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\D1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~combout\,
	devoe => ww_devoe,
	o => \D1[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\D1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~0_combout\,
	devoe => ww_devoe,
	o => \D1[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\D1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~combout\,
	devoe => ww_devoe,
	o => \D1[0]~output_o\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X50_Y53_N18
\inst31|sub|84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|sub|84~combout\ = LCELL(\BN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BN[1]~input_o\,
	combout => \inst31|sub|84~combout\);

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: LCCOMB_X50_Y53_N8
\inst22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22~1_combout\ = (\BN[3]~input_o\ & (\inst31|sub|84~combout\ & !\BN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[3]~input_o\,
	datab => \inst31|sub|84~combout\,
	datac => \BN[5]~input_o\,
	combout => \inst22~1_combout\);

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: LCCOMB_X51_Y53_N22
\inst32|sub|84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|sub|84~combout\ = LCELL((\BN[5]~input_o\) # ((\BN[4]~input_o\ & (\BN[2]~input_o\ & \BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \BN[4]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst32|sub|84~combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: LCCOMB_X51_Y53_N0
\inst22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = (!\BN[2]~input_o\ & (\BN[4]~input_o\ & ((\BN[1]~input_o\) # (!\BN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\inst22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22~2_combout\ = (\Validate~input_o\) # ((\inst32|sub|84~combout\) # ((\inst22~1_combout\ & \inst22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Validate~input_o\,
	datab => \inst22~1_combout\,
	datac => \inst32|sub|84~combout\,
	datad => \inst22~0_combout\,
	combout => \inst22~2_combout\);

-- Location: LCCOMB_X50_Y53_N28
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

-- Location: LCCOMB_X50_Y53_N26
\inst35|sub|87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35|sub|87~0_combout\ = (\inst34|sub|84~combout\) # ((\BN[1]~input_o\ & \BN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|sub|84~combout\,
	datac => \BN[1]~input_o\,
	datad => \BN[0]~input_o\,
	combout => \inst35|sub|87~0_combout\);

-- Location: LCCOMB_X50_Y53_N24
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

-- Location: LCCOMB_X51_Y53_N4
\inst35|sub|109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35|sub|109~0_combout\ = (!\BN[5]~input_o\ & (!\BN[4]~input_o\ & (\BN[2]~input_o\ & \BN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \BN[4]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst35|sub|109~0_combout\);

-- Location: LCCOMB_X50_Y53_N12
inst23 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23~combout\ = (\Validate~input_o\) # ((\inst35|sub|109~0_combout\ & (!\inst35|sub|87~0_combout\)) # (!\inst35|sub|109~0_combout\ & ((!\inst35|sub|84~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|sub|87~0_combout\,
	datab => \inst35|sub|84~combout\,
	datac => \Validate~input_o\,
	datad => \inst35|sub|109~0_combout\,
	combout => \inst23~combout\);

-- Location: LCCOMB_X51_Y53_N8
\inst|48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|48~combout\ = ((!\BN[4]~input_o\ & !\BN[3]~input_o\)) # (!\BN[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BN[4]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|48~combout\);

-- Location: LCCOMB_X51_Y53_N10
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

-- Location: LCCOMB_X51_Y53_N28
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

-- Location: LCCOMB_X51_Y53_N6
\inst|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|81~2_combout\ = (\inst|81~0_combout\ & (!\inst|81~1_combout\ & ((\BN[4]~input_o\) # (!\BN[2]~input_o\)))) # (!\inst|81~0_combout\ & (\inst|81~1_combout\ $ (((\BN[2]~input_o\) # (!\BN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~0_combout\,
	datab => \inst|81~1_combout\,
	datac => \BN[2]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \inst|81~2_combout\);

-- Location: LCCOMB_X51_Y53_N14
\inst|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|82~0_combout\ = (\BN[5]~input_o\ & ((\BN[4]~input_o\ & (\BN[2]~input_o\ & \BN[3]~input_o\)) # (!\BN[4]~input_o\ & ((!\BN[3]~input_o\))))) # (!\BN[5]~input_o\ & (\BN[4]~input_o\ & ((\BN[2]~input_o\) # (\BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \BN[4]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|82~0_combout\);

-- Location: LCCOMB_X52_Y53_N24
inst21 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21~combout\ = (\Validate~input_o\) # ((!\inst|48~combout\ & (!\inst|81~2_combout\ & \inst|82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|48~combout\,
	datab => \Validate~input_o\,
	datac => \inst|81~2_combout\,
	datad => \inst|82~0_combout\,
	combout => \inst21~combout\);

-- Location: LCCOMB_X52_Y53_N2
inst20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20~combout\ = (\Validate~input_o\) # ((\inst|82~0_combout\ & ((\inst|48~combout\) # (!\inst|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|48~combout\,
	datab => \Validate~input_o\,
	datac => \inst|81~2_combout\,
	datad => \inst|82~0_combout\,
	combout => \inst20~combout\);

-- Location: LCCOMB_X52_Y53_N12
inst19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19~combout\ = (\Validate~input_o\) # (((!\inst|48~combout\ & !\inst|82~0_combout\)) # (!\inst|81~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|48~combout\,
	datab => \Validate~input_o\,
	datac => \inst|81~2_combout\,
	datad => \inst|82~0_combout\,
	combout => \inst19~combout\);

-- Location: LCCOMB_X52_Y53_N14
\inst18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18~0_combout\ = (\Validate~input_o\) # ((\inst|48~combout\ & (!\inst|81~2_combout\ & !\inst|82~0_combout\)) # (!\inst|48~combout\ & (\inst|81~2_combout\ $ (\inst|82~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|48~combout\,
	datab => \Validate~input_o\,
	datac => \inst|81~2_combout\,
	datad => \inst|82~0_combout\,
	combout => \inst18~0_combout\);

-- Location: LCCOMB_X52_Y53_N8
inst17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17~combout\ = ((\Validate~input_o\) # ((\inst|81~2_combout\ & \inst|82~0_combout\))) # (!\inst|48~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|48~combout\,
	datab => \Validate~input_o\,
	datac => \inst|81~2_combout\,
	datad => \inst|82~0_combout\,
	combout => \inst17~combout\);

-- Location: LCCOMB_X52_Y53_N26
inst16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16~combout\ = (\Validate~input_o\) # ((\inst|82~0_combout\) # ((!\inst|48~combout\ & !\inst|81~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|48~combout\,
	datab => \Validate~input_o\,
	datac => \inst|81~2_combout\,
	datad => \inst|82~0_combout\,
	combout => \inst16~combout\);

-- Location: LCCOMB_X52_Y53_N28
inst15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~combout\ = (\Validate~input_o\) # ((\inst|82~0_combout\) # ((!\inst|48~combout\ & \inst|81~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|48~combout\,
	datab => \Validate~input_o\,
	datac => \inst|81~2_combout\,
	datad => \inst|82~0_combout\,
	combout => \inst15~combout\);

-- Location: LCCOMB_X51_Y53_N2
\inst|41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|41~0_combout\ = (\BN[1]~input_o\ & (\BN[3]~input_o\ & ((\BN[2]~input_o\) # (!\BN[4]~input_o\)))) # (!\BN[1]~input_o\ & (\BN[3]~input_o\ $ (((\BN[2]~input_o\) # (!\BN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[4]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|41~0_combout\);

-- Location: LCCOMB_X51_Y53_N12
\inst|41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|41~1_combout\ = (\BN[1]~input_o\ & (\BN[3]~input_o\ $ (((\BN[2]~input_o\) # (!\BN[4]~input_o\))))) # (!\BN[1]~input_o\ & ((\BN[4]~input_o\ & (!\BN[2]~input_o\ & !\BN[3]~input_o\)) # (!\BN[4]~input_o\ & (\BN[2]~input_o\ & \BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[4]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|41~1_combout\);

-- Location: LCCOMB_X52_Y53_N22
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

-- Location: LCCOMB_X51_Y53_N20
\inst|45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|45~0_combout\ = (\BN[4]~input_o\ & (!\BN[2]~input_o\ & (\BN[5]~input_o\ $ (!\BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \BN[4]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|45~0_combout\);

-- Location: LCCOMB_X50_Y53_N0
\inst|45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|45~1_combout\ = (\BN[1]~input_o\ & \inst|45~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BN[1]~input_o\,
	datac => \inst|45~0_combout\,
	combout => \inst|45~1_combout\);

-- Location: LCCOMB_X51_Y53_N16
\inst8|38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|38~0_combout\ = (\BN[1]~input_o\ & (((\BN[2]~input_o\ & !\BN[4]~input_o\)) # (!\BN[5]~input_o\))) # (!\BN[1]~input_o\ & ((\BN[2]~input_o\ & (!\BN[5]~input_o\ & !\BN[4]~input_o\)) # (!\BN[2]~input_o\ & ((\BN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[1]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \inst8|38~0_combout\);

-- Location: LCCOMB_X50_Y53_N22
\inst8|38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|38~1_combout\ = (\BN[3]~input_o\ & ((\inst8|38~0_combout\) # (\BN[5]~input_o\))) # (!\BN[3]~input_o\ & ((!\BN[5]~input_o\) # (!\inst8|38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[3]~input_o\,
	datab => \inst8|38~0_combout\,
	datac => \BN[5]~input_o\,
	combout => \inst8|38~1_combout\);

-- Location: LCCOMB_X51_Y53_N30
\inst|43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|43~0_combout\ = (\BN[4]~input_o\ & ((\BN[1]~input_o\ & (\BN[2]~input_o\ & !\BN[3]~input_o\)) # (!\BN[1]~input_o\ & (!\BN[2]~input_o\ & \BN[3]~input_o\)))) # (!\BN[4]~input_o\ & (\BN[2]~input_o\ $ (((\BN[1]~input_o\ & !\BN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[4]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|43~0_combout\);

-- Location: LCCOMB_X51_Y53_N24
\inst|43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|43~1_combout\ = (\BN[4]~input_o\ & (!\BN[2]~input_o\ & ((\BN[3]~input_o\) # (!\BN[1]~input_o\)))) # (!\BN[4]~input_o\ & (\BN[2]~input_o\ & ((\BN[1]~input_o\) # (!\BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[4]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \inst|43~1_combout\);

-- Location: LCCOMB_X51_Y53_N18
\inst|43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|43~2_combout\ = (\BN[5]~input_o\ & (\inst|43~0_combout\)) # (!\BN[5]~input_o\ & ((\inst|43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|43~0_combout\,
	datac => \BN[5]~input_o\,
	datad => \inst|43~1_combout\,
	combout => \inst|43~2_combout\);

-- Location: LCCOMB_X50_Y53_N10
\inst8|38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|38~2_combout\ = (!\inst|41~2_combout\ & (!\inst|45~1_combout\ & (\inst8|38~1_combout\ & !\inst|43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|41~2_combout\,
	datab => \inst|45~1_combout\,
	datac => \inst8|38~1_combout\,
	datad => \inst|43~2_combout\,
	combout => \inst8|38~2_combout\);

-- Location: LCCOMB_X52_Y53_N0
\inst11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (!\Validate~input_o\ & (((!\inst|41~2_combout\) # (!\inst|43~2_combout\)) # (!\BN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \Validate~input_o\,
	combout => \inst11~0_combout\);

-- Location: LCCOMB_X54_Y53_N24
inst14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~combout\ = (\inst8|38~2_combout\) # (!\inst11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|38~2_combout\,
	datad => \inst11~0_combout\,
	combout => \inst14~combout\);

-- Location: LCCOMB_X50_Y53_N20
\inst8|38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|38~3_combout\ = (!\inst|43~2_combout\ & (\inst8|38~1_combout\ & ((!\BN[1]~input_o\) # (!\inst|45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|45~0_combout\,
	datab => \inst|43~2_combout\,
	datac => \BN[1]~input_o\,
	datad => \inst8|38~1_combout\,
	combout => \inst8|38~3_combout\);

-- Location: LCCOMB_X52_Y53_N18
\inst13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (\Validate~input_o\) # ((\inst|41~2_combout\ & ((\BN[0]~input_o\) # (!\inst|43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \Validate~input_o\,
	combout => \inst13~0_combout\);

-- Location: LCCOMB_X52_Y53_N20
\inst13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~1_combout\ = (\inst13~0_combout\) # ((\BN[0]~input_o\ & \inst8|38~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datac => \inst8|38~3_combout\,
	datad => \inst13~0_combout\,
	combout => \inst13~1_combout\);

-- Location: LCCOMB_X52_Y53_N6
inst12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12~combout\ = (\BN[0]~input_o\) # ((\Validate~input_o\) # ((\inst|43~2_combout\ & !\inst|41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \Validate~input_o\,
	combout => \inst12~combout\);

-- Location: LCCOMB_X50_Y53_N6
\inst11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11~1_combout\ = (\Validate~input_o\) # ((\inst|41~2_combout\ & (\inst|43~2_combout\ & \BN[0]~input_o\)) # (!\inst|41~2_combout\ & (\inst|43~2_combout\ $ (\BN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|41~2_combout\,
	datab => \inst|43~2_combout\,
	datac => \Validate~input_o\,
	datad => \BN[0]~input_o\,
	combout => \inst11~1_combout\);

-- Location: LCCOMB_X52_Y53_N16
inst10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (\Validate~input_o\) # ((!\BN[0]~input_o\ & (!\inst|43~2_combout\ & \inst|41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \Validate~input_o\,
	combout => \inst10~combout\);

-- Location: LCCOMB_X52_Y53_N10
\inst7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = (\Validate~input_o\) # ((\inst|43~2_combout\ & (\BN[0]~input_o\ $ (\inst|41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \inst|43~2_combout\,
	datac => \inst|41~2_combout\,
	datad => \Validate~input_o\,
	combout => \inst7~0_combout\);

-- Location: LCCOMB_X52_Y53_N4
inst6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\Validate~input_o\) # ((\BN[0]~input_o\ & (\inst8|38~2_combout\)) # (!\BN[0]~input_o\ & ((\inst|43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \inst8|38~2_combout\,
	datac => \inst|43~2_combout\,
	datad => \Validate~input_o\,
	combout => \inst6~combout\);

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

ww_D0(6) <= \D0[6]~output_o\;

ww_D0(5) <= \D0[5]~output_o\;

ww_D0(4) <= \D0[4]~output_o\;

ww_D0(3) <= \D0[3]~output_o\;

ww_D0(2) <= \D0[2]~output_o\;

ww_D0(1) <= \D0[1]~output_o\;

ww_D0(0) <= \D0[0]~output_o\;

ww_D1(6) <= \D1[6]~output_o\;

ww_D1(5) <= \D1[5]~output_o\;

ww_D1(4) <= \D1[4]~output_o\;

ww_D1(3) <= \D1[3]~output_o\;

ww_D1(2) <= \D1[2]~output_o\;

ww_D1(1) <= \D1[1]~output_o\;

ww_D1(0) <= \D1[0]~output_o\;
END structure;


