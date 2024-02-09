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

-- DATE "02/09/2024 11:16:45"

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

ENTITY 	v_system IS
    PORT (
	BN : IN std_logic_vector(5 DOWNTO 0);
	validate : IN std_logic;
	D1 : BUFFER std_logic_vector(6 DOWNTO 0);
	D0 : BUFFER std_logic_vector(6 DOWNTO 0);
	greater : BUFFER std_logic;
	lower : BUFFER std_logic
	);
END v_system;

-- Design Ports Information
-- D1[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[6]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- greater	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lower	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validate	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF v_system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BN : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_validate : std_logic;
SIGNAL ww_D1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_D0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_greater : std_logic;
SIGNAL ww_lower : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \D1[0]~output_o\ : std_logic;
SIGNAL \D1[1]~output_o\ : std_logic;
SIGNAL \D1[2]~output_o\ : std_logic;
SIGNAL \D1[3]~output_o\ : std_logic;
SIGNAL \D1[4]~output_o\ : std_logic;
SIGNAL \D1[5]~output_o\ : std_logic;
SIGNAL \D1[6]~output_o\ : std_logic;
SIGNAL \D0[0]~output_o\ : std_logic;
SIGNAL \D0[1]~output_o\ : std_logic;
SIGNAL \D0[2]~output_o\ : std_logic;
SIGNAL \D0[3]~output_o\ : std_logic;
SIGNAL \D0[4]~output_o\ : std_logic;
SIGNAL \D0[5]~output_o\ : std_logic;
SIGNAL \D0[6]~output_o\ : std_logic;
SIGNAL \greater~output_o\ : std_logic;
SIGNAL \lower~output_o\ : std_logic;
SIGNAL \validate~input_o\ : std_logic;
SIGNAL \BN[5]~input_o\ : std_logic;
SIGNAL \BN[4]~input_o\ : std_logic;
SIGNAL \u6|and_out_1[0]~0_combout\ : std_logic;
SIGNAL \u6|and_out_1[2]~1_combout\ : std_logic;
SIGNAL \u6|and_out_1[4]~2_combout\ : std_logic;
SIGNAL \u6|and_out_1[5]~3_combout\ : std_logic;
SIGNAL \u9|and_out_4~0_combout\ : std_logic;
SIGNAL \BN[2]~input_o\ : std_logic;
SIGNAL \BN[1]~input_o\ : std_logic;
SIGNAL \BN[0]~input_o\ : std_logic;
SIGNAL \BN[3]~input_o\ : std_logic;
SIGNAL \u7|and_out_2[1]~2_combout\ : std_logic;
SIGNAL \u7|and_out_2[0]~3_combout\ : std_logic;
SIGNAL \u7|and_out_2[1]~4_combout\ : std_logic;
SIGNAL \u7|and_out_2[2]~5_combout\ : std_logic;
SIGNAL \u7|and_out_2[3]~6_combout\ : std_logic;
SIGNAL \u7|and_out_2[3]~7_combout\ : std_logic;
SIGNAL \u7|and_out_2[4]~9_combout\ : std_logic;
SIGNAL \u7|and_out_2[4]~8_combout\ : std_logic;
SIGNAL \u7|and_out_2[4]~10_combout\ : std_logic;
SIGNAL \u7|and_out_2[5]~11_combout\ : std_logic;
SIGNAL \u7|and_out_2[6]~13_combout\ : std_logic;
SIGNAL \u8|and_out_3~0_combout\ : std_logic;
SIGNAL \u7|and_out_2[6]~12_combout\ : std_logic;
SIGNAL \u9|and_out_4~combout\ : std_logic;
SIGNAL \u7|ALT_INV_and_out_2[2]~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_BN <= BN;
ww_validate <= validate;
D1 <= ww_D1;
D0 <= ww_D0;
greater <= ww_greater;
lower <= ww_lower;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\u7|ALT_INV_and_out_2[2]~5_combout\ <= NOT \u7|and_out_2[2]~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X26_Y39_N16
\D1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[0]~0_combout\,
	devoe => ww_devoe,
	o => \D1[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\D1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D1[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\D1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[2]~1_combout\,
	devoe => ww_devoe,
	o => \D1[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\D1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[0]~0_combout\,
	devoe => ww_devoe,
	o => \D1[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\D1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[4]~2_combout\,
	devoe => ww_devoe,
	o => \D1[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\D1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[5]~3_combout\,
	devoe => ww_devoe,
	o => \D1[5]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\D1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|and_out_4~0_combout\,
	devoe => ww_devoe,
	o => \D1[6]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\D0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[0]~3_combout\,
	devoe => ww_devoe,
	o => \D0[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\D0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[1]~4_combout\,
	devoe => ww_devoe,
	o => \D0[1]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\D0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|ALT_INV_and_out_2[2]~5_combout\,
	devoe => ww_devoe,
	o => \D0[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\D0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[3]~7_combout\,
	devoe => ww_devoe,
	o => \D0[3]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\D0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[4]~10_combout\,
	devoe => ww_devoe,
	o => \D0[4]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\D0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[5]~11_combout\,
	devoe => ww_devoe,
	o => \D0[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\D0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[6]~13_combout\,
	devoe => ww_devoe,
	o => \D0[6]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\greater~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8|and_out_3~0_combout\,
	devoe => ww_devoe,
	o => \greater~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\lower~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|and_out_4~combout\,
	devoe => ww_devoe,
	o => \lower~output_o\);

-- Location: IOIBUF_X24_Y39_N15
\validate~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_validate,
	o => \validate~input_o\);

-- Location: IOIBUF_X24_Y39_N8
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

-- Location: IOIBUF_X26_Y39_N29
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

-- Location: LCCOMB_X24_Y38_N24
\u6|and_out_1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[0]~0_combout\ = (\validate~input_o\ & (!\BN[5]~input_o\ & \BN[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \validate~input_o\,
	datab => \BN[5]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \u6|and_out_1[0]~0_combout\);

-- Location: LCCOMB_X24_Y38_N18
\u6|and_out_1[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[2]~1_combout\ = (\validate~input_o\ & (\BN[5]~input_o\ & !\BN[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \validate~input_o\,
	datab => \BN[5]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \u6|and_out_1[2]~1_combout\);

-- Location: LCCOMB_X24_Y38_N28
\u6|and_out_1[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[4]~2_combout\ = (\BN[4]~input_o\ & \validate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BN[4]~input_o\,
	datad => \validate~input_o\,
	combout => \u6|and_out_1[4]~2_combout\);

-- Location: LCCOMB_X24_Y38_N22
\u6|and_out_1[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[5]~3_combout\ = (\validate~input_o\ & ((\BN[5]~input_o\) # (\BN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \validate~input_o\,
	datab => \BN[5]~input_o\,
	datad => \BN[4]~input_o\,
	combout => \u6|and_out_1[5]~3_combout\);

-- Location: LCCOMB_X21_Y36_N16
\u9|and_out_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|and_out_4~0_combout\ = (!\BN[5]~input_o\ & \validate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datad => \validate~input_o\,
	combout => \u9|and_out_4~0_combout\);

-- Location: IOIBUF_X22_Y39_N15
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

-- Location: IOIBUF_X22_Y39_N22
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

-- Location: IOIBUF_X22_Y39_N29
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

-- Location: IOIBUF_X24_Y39_N1
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

-- Location: LCCOMB_X21_Y36_N10
\u7|and_out_2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[1]~2_combout\ = (!\BN[3]~input_o\ & \validate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BN[3]~input_o\,
	datad => \validate~input_o\,
	combout => \u7|and_out_2[1]~2_combout\);

-- Location: LCCOMB_X21_Y36_N28
\u7|and_out_2[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[0]~3_combout\ = (\u7|and_out_2[1]~2_combout\ & ((\BN[2]~input_o\ & ((!\BN[0]~input_o\))) # (!\BN[2]~input_o\ & (!\BN[1]~input_o\ & \BN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[0]~input_o\,
	datad => \u7|and_out_2[1]~2_combout\,
	combout => \u7|and_out_2[0]~3_combout\);

-- Location: LCCOMB_X21_Y36_N6
\u7|and_out_2[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[1]~4_combout\ = (\BN[2]~input_o\ & (\u7|and_out_2[1]~2_combout\ & (\BN[1]~input_o\ $ (\BN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[0]~input_o\,
	datad => \u7|and_out_2[1]~2_combout\,
	combout => \u7|and_out_2[1]~4_combout\);

-- Location: LCCOMB_X21_Y36_N8
\u7|and_out_2[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[2]~5_combout\ = (\BN[2]~input_o\) # (((\BN[0]~input_o\) # (!\u7|and_out_2[1]~2_combout\)) # (!\BN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[0]~input_o\,
	datad => \u7|and_out_2[1]~2_combout\,
	combout => \u7|and_out_2[2]~5_combout\);

-- Location: LCCOMB_X21_Y36_N18
\u7|and_out_2[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[3]~6_combout\ = (\BN[2]~input_o\ & (!\BN[3]~input_o\ & (\BN[0]~input_o\ $ (!\BN[1]~input_o\)))) # (!\BN[2]~input_o\ & (\BN[0]~input_o\ & (!\BN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[3]~input_o\,
	datad => \BN[2]~input_o\,
	combout => \u7|and_out_2[3]~6_combout\);

-- Location: LCCOMB_X21_Y36_N20
\u7|and_out_2[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[3]~7_combout\ = (\u7|and_out_2[3]~6_combout\ & \validate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|and_out_2[3]~6_combout\,
	datad => \validate~input_o\,
	combout => \u7|and_out_2[3]~7_combout\);

-- Location: LCCOMB_X21_Y36_N24
\u7|and_out_2[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[4]~9_combout\ = (\BN[3]~input_o\ & ((\BN[1]~input_o\) # (\BN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[3]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	combout => \u7|and_out_2[4]~9_combout\);

-- Location: LCCOMB_X21_Y36_N22
\u7|and_out_2[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[4]~8_combout\ = (!\BN[3]~input_o\ & (!\BN[1]~input_o\ & (\BN[2]~input_o\ & \validate~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[3]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	datad => \validate~input_o\,
	combout => \u7|and_out_2[4]~8_combout\);

-- Location: LCCOMB_X21_Y36_N26
\u7|and_out_2[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[4]~10_combout\ = (\u7|and_out_2[4]~8_combout\) # ((\BN[0]~input_o\ & (!\u7|and_out_2[4]~9_combout\ & \validate~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \u7|and_out_2[4]~9_combout\,
	datac => \u7|and_out_2[4]~8_combout\,
	datad => \validate~input_o\,
	combout => \u7|and_out_2[4]~10_combout\);

-- Location: LCCOMB_X21_Y36_N12
\u7|and_out_2[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[5]~11_combout\ = (\u7|and_out_2[1]~2_combout\ & ((\BN[2]~input_o\ & (\BN[1]~input_o\ & \BN[0]~input_o\)) # (!\BN[2]~input_o\ & ((\BN[1]~input_o\) # (\BN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[0]~input_o\,
	datad => \u7|and_out_2[1]~2_combout\,
	combout => \u7|and_out_2[5]~11_combout\);

-- Location: LCCOMB_X21_Y36_N4
\u7|and_out_2[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[6]~13_combout\ = (\u7|and_out_2[1]~2_combout\ & ((\BN[2]~input_o\ & (\BN[1]~input_o\ & \BN[0]~input_o\)) # (!\BN[2]~input_o\ & (!\BN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[0]~input_o\,
	datad => \u7|and_out_2[1]~2_combout\,
	combout => \u7|and_out_2[6]~13_combout\);

-- Location: LCCOMB_X21_Y36_N0
\u8|and_out_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|and_out_3~0_combout\ = (\validate~input_o\ & ((\BN[5]~input_o\) # ((\u7|and_out_2[4]~9_combout\ & \BN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \u7|and_out_2[4]~9_combout\,
	datac => \validate~input_o\,
	datad => \BN[4]~input_o\,
	combout => \u8|and_out_3~0_combout\);

-- Location: LCCOMB_X21_Y36_N30
\u7|and_out_2[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[6]~12_combout\ = (\BN[0]~input_o\ & (\BN[1]~input_o\ & \BN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[0]~input_o\,
	datab => \BN[1]~input_o\,
	datac => \BN[2]~input_o\,
	combout => \u7|and_out_2[6]~12_combout\);

-- Location: LCCOMB_X21_Y36_N2
\u9|and_out_4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|and_out_4~combout\ = (\u9|and_out_4~0_combout\ & (!\BN[4]~input_o\ & ((!\u7|and_out_2[6]~12_combout\) # (!\BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[3]~input_o\,
	datab => \u9|and_out_4~0_combout\,
	datac => \u7|and_out_2[6]~12_combout\,
	datad => \BN[4]~input_o\,
	combout => \u9|and_out_4~combout\);

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

ww_D1(0) <= \D1[0]~output_o\;

ww_D1(1) <= \D1[1]~output_o\;

ww_D1(2) <= \D1[2]~output_o\;

ww_D1(3) <= \D1[3]~output_o\;

ww_D1(4) <= \D1[4]~output_o\;

ww_D1(5) <= \D1[5]~output_o\;

ww_D1(6) <= \D1[6]~output_o\;

ww_D0(0) <= \D0[0]~output_o\;

ww_D0(1) <= \D0[1]~output_o\;

ww_D0(2) <= \D0[2]~output_o\;

ww_D0(3) <= \D0[3]~output_o\;

ww_D0(4) <= \D0[4]~output_o\;

ww_D0(5) <= \D0[5]~output_o\;

ww_D0(6) <= \D0[6]~output_o\;

ww_greater <= \greater~output_o\;

ww_lower <= \lower~output_o\;
END structure;


