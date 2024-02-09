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

-- DATE "02/09/2024 20:46:12"

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
-- D1[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- greater	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lower	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validate	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BN[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \BN[1]~input_o\ : std_logic;
SIGNAL \BN[3]~input_o\ : std_logic;
SIGNAL \BN[4]~input_o\ : std_logic;
SIGNAL \BN[2]~input_o\ : std_logic;
SIGNAL \u1|Mux2~1_combout\ : std_logic;
SIGNAL \BN[5]~input_o\ : std_logic;
SIGNAL \u1|Mux2~0_combout\ : std_logic;
SIGNAL \u1|Mux2~2_combout\ : std_logic;
SIGNAL \u1|Mux1~0_combout\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL \u6|and_out_1[0]~30_combout\ : std_logic;
SIGNAL \u6|and_out_1[1]~3_combout\ : std_logic;
SIGNAL \u6|and_out_1[1]~34_combout\ : std_logic;
SIGNAL \u6|and_out_1[2]~16_combout\ : std_logic;
SIGNAL \u6|and_out_1[2]~35_combout\ : std_logic;
SIGNAL \u6|and_out_1[3]~31_combout\ : std_logic;
SIGNAL \u6|and_out_1[4]~32_combout\ : std_logic;
SIGNAL \u6|and_out_1[5]~33_combout\ : std_logic;
SIGNAL \u6|and_out_1[6]~24_combout\ : std_logic;
SIGNAL \u6|and_out_1[6]~36_combout\ : std_logic;
SIGNAL \u1|Mux5~1_combout\ : std_logic;
SIGNAL \u1|Mux5~0_combout\ : std_logic;
SIGNAL \u1|Mux5~2_combout\ : std_logic;
SIGNAL \BN[0]~input_o\ : std_logic;
SIGNAL \u1|Mux3~1_combout\ : std_logic;
SIGNAL \u1|Mux3~0_combout\ : std_logic;
SIGNAL \u7|and_out_2[1]~24_combout\ : std_logic;
SIGNAL \u1|Mux4~1_combout\ : std_logic;
SIGNAL \u1|Mux4~0_combout\ : std_logic;
SIGNAL \u1|Mux4~2_combout\ : std_logic;
SIGNAL \u7|and_out_2[0]~19_combout\ : std_logic;
SIGNAL \u7|and_out_2[1]~20_combout\ : std_logic;
SIGNAL \u7|and_out_2[2]~21_combout\ : std_logic;
SIGNAL \u7|and_out_2[3]~16_combout\ : std_logic;
SIGNAL \u7|and_out_2[3]~15_combout\ : std_logic;
SIGNAL \u7|and_out_2[3]~14_combout\ : std_logic;
SIGNAL \u7|and_out_2[4]~4_combout\ : std_logic;
SIGNAL \u7|and_out_2[4]~3_combout\ : std_logic;
SIGNAL \u7|and_out_2[3]~26_combout\ : std_logic;
SIGNAL \u7|and_out_2[4]~25_combout\ : std_logic;
SIGNAL \u7|and_out_2[5]~22_combout\ : std_logic;
SIGNAL \u7|and_out_2[6]~23_combout\ : std_logic;
SIGNAL \u8|and_out_3~0_combout\ : std_logic;
SIGNAL \u8|and_out_3~1_combout\ : std_logic;
SIGNAL \u5|LessThan1~0_combout\ : std_logic;
SIGNAL \u9|and_out_4~combout\ : std_logic;
SIGNAL \u6|ALT_INV_and_out_1[1]~34_combout\ : std_logic;
SIGNAL \u7|ALT_INV_and_out_2[2]~21_combout\ : std_logic;

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
\u6|ALT_INV_and_out_1[1]~34_combout\ <= NOT \u6|and_out_1[1]~34_combout\;
\u7|ALT_INV_and_out_2[2]~21_combout\ <= NOT \u7|and_out_2[2]~21_combout\;
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

-- Location: IOOBUF_X78_Y44_N9
\D1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[0]~30_combout\,
	devoe => ww_devoe,
	o => \D1[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\D1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|ALT_INV_and_out_1[1]~34_combout\,
	devoe => ww_devoe,
	o => \D1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\D1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[2]~35_combout\,
	devoe => ww_devoe,
	o => \D1[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\D1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[3]~31_combout\,
	devoe => ww_devoe,
	o => \D1[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\D1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[4]~32_combout\,
	devoe => ww_devoe,
	o => \D1[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\D1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[5]~33_combout\,
	devoe => ww_devoe,
	o => \D1[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\D1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|and_out_1[6]~36_combout\,
	devoe => ww_devoe,
	o => \D1[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\D0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[0]~19_combout\,
	devoe => ww_devoe,
	o => \D0[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\D0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[1]~20_combout\,
	devoe => ww_devoe,
	o => \D0[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\D0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|ALT_INV_and_out_2[2]~21_combout\,
	devoe => ww_devoe,
	o => \D0[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\D0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[3]~26_combout\,
	devoe => ww_devoe,
	o => \D0[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\D0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[4]~25_combout\,
	devoe => ww_devoe,
	o => \D0[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\D0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[5]~22_combout\,
	devoe => ww_devoe,
	o => \D0[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\D0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|and_out_2[6]~23_combout\,
	devoe => ww_devoe,
	o => \D0[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\greater~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8|and_out_3~1_combout\,
	devoe => ww_devoe,
	o => \greater~output_o\);

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X65_Y53_N26
\u1|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux2~1_combout\ = (\BN[3]~input_o\ & (((\BN[2]~input_o\) # (!\BN[4]~input_o\)))) # (!\BN[3]~input_o\ & (!\BN[1]~input_o\ & (\BN[4]~input_o\ & !\BN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[3]~input_o\,
	datac => \BN[4]~input_o\,
	datad => \BN[2]~input_o\,
	combout => \u1|Mux2~1_combout\);

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

-- Location: LCCOMB_X65_Y53_N24
\u1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux2~0_combout\ = (\BN[3]~input_o\ & ((\BN[1]~input_o\ & ((\BN[2]~input_o\) # (!\BN[4]~input_o\))) # (!\BN[1]~input_o\ & (!\BN[4]~input_o\ & \BN[2]~input_o\)))) # (!\BN[3]~input_o\ & (((\BN[4]~input_o\ & !\BN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[3]~input_o\,
	datac => \BN[4]~input_o\,
	datad => \BN[2]~input_o\,
	combout => \u1|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y53_N20
\u1|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux2~2_combout\ = (\BN[5]~input_o\ & (!\u1|Mux2~1_combout\)) # (!\BN[5]~input_o\ & ((\u1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux2~1_combout\,
	datab => \BN[5]~input_o\,
	datad => \u1|Mux2~0_combout\,
	combout => \u1|Mux2~2_combout\);

-- Location: LCCOMB_X65_Y53_N8
\u1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux1~0_combout\ = (\BN[4]~input_o\ & ((\BN[2]~input_o\ & ((\BN[3]~input_o\) # (!\BN[5]~input_o\))) # (!\BN[2]~input_o\ & (\BN[3]~input_o\ & !\BN[5]~input_o\)))) # (!\BN[4]~input_o\ & (((!\BN[3]~input_o\ & \BN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datab => \BN[4]~input_o\,
	datac => \BN[3]~input_o\,
	datad => \BN[5]~input_o\,
	combout => \u1|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y53_N30
\u1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = ((!\BN[4]~input_o\ & !\BN[3]~input_o\)) # (!\BN[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BN[4]~input_o\,
	datac => \BN[3]~input_o\,
	datad => \BN[5]~input_o\,
	combout => \u1|Mux0~0_combout\);

-- Location: LCCOMB_X72_Y48_N24
\u6|and_out_1[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[0]~30_combout\ = (\validate~input_o\ & ((\u1|Mux2~2_combout\ & (!\u1|Mux1~0_combout\ & \u1|Mux0~0_combout\)) # (!\u1|Mux2~2_combout\ & ((!\u1|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \validate~input_o\,
	datab => \u1|Mux2~2_combout\,
	datac => \u1|Mux1~0_combout\,
	datad => \u1|Mux0~0_combout\,
	combout => \u6|and_out_1[0]~30_combout\);

-- Location: LCCOMB_X65_Y53_N16
\u6|and_out_1[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[1]~3_combout\ = (!\BN[2]~input_o\ & (!\BN[3]~input_o\ & !\BN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datac => \BN[3]~input_o\,
	datad => \BN[1]~input_o\,
	combout => \u6|and_out_1[1]~3_combout\);

-- Location: LCCOMB_X65_Y53_N14
\u6|and_out_1[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[1]~34_combout\ = (((\u6|and_out_1[1]~3_combout\) # (!\BN[4]~input_o\)) # (!\BN[5]~input_o\)) # (!\validate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \validate~input_o\,
	datab => \BN[5]~input_o\,
	datac => \BN[4]~input_o\,
	datad => \u6|and_out_1[1]~3_combout\,
	combout => \u6|and_out_1[1]~34_combout\);

-- Location: LCCOMB_X65_Y53_N10
\u6|and_out_1[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[2]~16_combout\ = (\BN[2]~input_o\ & ((!\BN[1]~input_o\) # (!\BN[3]~input_o\))) # (!\BN[2]~input_o\ & (\BN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datac => \BN[3]~input_o\,
	datad => \BN[1]~input_o\,
	combout => \u6|and_out_1[2]~16_combout\);

-- Location: LCCOMB_X65_Y53_N4
\u6|and_out_1[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[2]~35_combout\ = (\validate~input_o\ & (!\BN[5]~input_o\ & (\BN[4]~input_o\ & \u6|and_out_1[2]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \validate~input_o\,
	datab => \BN[5]~input_o\,
	datac => \BN[4]~input_o\,
	datad => \u6|and_out_1[2]~16_combout\,
	combout => \u6|and_out_1[2]~35_combout\);

-- Location: LCCOMB_X72_Y48_N2
\u6|and_out_1[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[3]~31_combout\ = (\validate~input_o\ & ((\u1|Mux2~2_combout\ & (\u1|Mux1~0_combout\ $ (\u1|Mux0~0_combout\))) # (!\u1|Mux2~2_combout\ & (!\u1|Mux1~0_combout\ & !\u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \validate~input_o\,
	datab => \u1|Mux2~2_combout\,
	datac => \u1|Mux1~0_combout\,
	datad => \u1|Mux0~0_combout\,
	combout => \u6|and_out_1[3]~31_combout\);

-- Location: LCCOMB_X72_Y48_N20
\u6|and_out_1[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[4]~32_combout\ = (\validate~input_o\ & ((\u1|Mux2~2_combout\) # ((!\u1|Mux1~0_combout\ & !\u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \validate~input_o\,
	datab => \u1|Mux2~2_combout\,
	datac => \u1|Mux1~0_combout\,
	datad => \u1|Mux0~0_combout\,
	combout => \u6|and_out_1[4]~32_combout\);

-- Location: LCCOMB_X72_Y48_N6
\u6|and_out_1[5]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[5]~33_combout\ = (\validate~input_o\ & ((\u1|Mux2~2_combout\ & ((\u1|Mux1~0_combout\) # (\u1|Mux0~0_combout\))) # (!\u1|Mux2~2_combout\ & (\u1|Mux1~0_combout\ & \u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \validate~input_o\,
	datab => \u1|Mux2~2_combout\,
	datac => \u1|Mux1~0_combout\,
	datad => \u1|Mux0~0_combout\,
	combout => \u6|and_out_1[5]~33_combout\);

-- Location: LCCOMB_X56_Y50_N28
\u6|and_out_1[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[6]~24_combout\ = (!\BN[2]~input_o\ & !\BN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BN[2]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \u6|and_out_1[6]~24_combout\);

-- Location: LCCOMB_X56_Y50_N30
\u6|and_out_1[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|and_out_1[6]~36_combout\ = (!\BN[5]~input_o\ & (\validate~input_o\ & ((\u6|and_out_1[6]~24_combout\) # (!\BN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \validate~input_o\,
	datac => \BN[4]~input_o\,
	datad => \u6|and_out_1[6]~24_combout\,
	combout => \u6|and_out_1[6]~36_combout\);

-- Location: LCCOMB_X65_Y53_N18
\u1|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux5~1_combout\ = (\BN[1]~input_o\ & (((\BN[4]~input_o\ & !\BN[2]~input_o\)) # (!\BN[3]~input_o\))) # (!\BN[1]~input_o\ & (\BN[3]~input_o\ $ (((\BN[4]~input_o\ & !\BN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[3]~input_o\,
	datac => \BN[4]~input_o\,
	datad => \BN[2]~input_o\,
	combout => \u1|Mux5~1_combout\);

-- Location: LCCOMB_X65_Y53_N0
\u1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux5~0_combout\ = (\BN[1]~input_o\ & (\BN[3]~input_o\ $ (((\BN[2]~input_o\) # (!\BN[4]~input_o\))))) # (!\BN[1]~input_o\ & ((\BN[3]~input_o\ & (!\BN[4]~input_o\ & \BN[2]~input_o\)) # (!\BN[3]~input_o\ & (\BN[4]~input_o\ & !\BN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[3]~input_o\,
	datac => \BN[4]~input_o\,
	datad => \BN[2]~input_o\,
	combout => \u1|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y53_N28
\u1|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux5~2_combout\ = (\BN[5]~input_o\ & (!\u1|Mux5~1_combout\)) # (!\BN[5]~input_o\ & ((\u1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BN[5]~input_o\,
	datac => \u1|Mux5~1_combout\,
	datad => \u1|Mux5~0_combout\,
	combout => \u1|Mux5~2_combout\);

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

-- Location: LCCOMB_X56_Y50_N26
\u1|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux3~1_combout\ = (\BN[1]~input_o\ & (!\BN[2]~input_o\ & (\BN[5]~input_o\ $ (!\BN[3]~input_o\)))) # (!\BN[1]~input_o\ & ((\BN[2]~input_o\ & (!\BN[5]~input_o\ & \BN[3]~input_o\)) # (!\BN[2]~input_o\ & (\BN[5]~input_o\ & !\BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \u1|Mux3~1_combout\);

-- Location: LCCOMB_X56_Y50_N24
\u1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux3~0_combout\ = (\BN[1]~input_o\ & (\BN[2]~input_o\ & (\BN[5]~input_o\ & !\BN[3]~input_o\))) # (!\BN[1]~input_o\ & (!\BN[2]~input_o\ & (!\BN[5]~input_o\ & \BN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \u1|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y50_N12
\u7|and_out_2[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[1]~24_combout\ = (\validate~input_o\ & ((\BN[4]~input_o\ & (!\u1|Mux3~1_combout\)) # (!\BN[4]~input_o\ & ((!\u1|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux3~1_combout\,
	datab => \validate~input_o\,
	datac => \BN[4]~input_o\,
	datad => \u1|Mux3~0_combout\,
	combout => \u7|and_out_2[1]~24_combout\);

-- Location: LCCOMB_X65_Y53_N22
\u1|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux4~1_combout\ = (\BN[2]~input_o\ & (((\BN[3]~input_o\) # (!\BN[1]~input_o\)) # (!\BN[5]~input_o\))) # (!\BN[2]~input_o\ & ((\BN[5]~input_o\ & ((\BN[1]~input_o\) # (!\BN[3]~input_o\))) # (!\BN[5]~input_o\ & (!\BN[3]~input_o\ & \BN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datab => \BN[5]~input_o\,
	datac => \BN[3]~input_o\,
	datad => \BN[1]~input_o\,
	combout => \u1|Mux4~1_combout\);

-- Location: LCCOMB_X65_Y53_N12
\u1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux4~0_combout\ = (\BN[5]~input_o\ & (\BN[2]~input_o\ $ (((!\BN[3]~input_o\ & \BN[1]~input_o\))))) # (!\BN[5]~input_o\ & (\BN[2]~input_o\ & ((\BN[1]~input_o\) # (!\BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[2]~input_o\,
	datab => \BN[5]~input_o\,
	datac => \BN[3]~input_o\,
	datad => \BN[1]~input_o\,
	combout => \u1|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y53_N2
\u1|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux4~2_combout\ = (\BN[4]~input_o\ & (!\u1|Mux4~1_combout\)) # (!\BN[4]~input_o\ & ((\u1|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux4~1_combout\,
	datac => \BN[4]~input_o\,
	datad => \u1|Mux4~0_combout\,
	combout => \u1|Mux4~2_combout\);

-- Location: LCCOMB_X67_Y53_N24
\u7|and_out_2[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[0]~19_combout\ = (\u7|and_out_2[1]~24_combout\ & ((\BN[0]~input_o\ & (!\u1|Mux5~2_combout\ & !\u1|Mux4~2_combout\)) # (!\BN[0]~input_o\ & ((\u1|Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux5~2_combout\,
	datab => \BN[0]~input_o\,
	datac => \u7|and_out_2[1]~24_combout\,
	datad => \u1|Mux4~2_combout\,
	combout => \u7|and_out_2[0]~19_combout\);

-- Location: LCCOMB_X67_Y53_N26
\u7|and_out_2[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[1]~20_combout\ = (\u7|and_out_2[1]~24_combout\ & (\u1|Mux4~2_combout\ & (\u1|Mux5~2_combout\ $ (\BN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux5~2_combout\,
	datab => \BN[0]~input_o\,
	datac => \u7|and_out_2[1]~24_combout\,
	datad => \u1|Mux4~2_combout\,
	combout => \u7|and_out_2[1]~20_combout\);

-- Location: LCCOMB_X67_Y53_N20
\u7|and_out_2[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[2]~21_combout\ = ((\BN[0]~input_o\) # ((\u1|Mux4~2_combout\) # (!\u7|and_out_2[1]~24_combout\))) # (!\u1|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux5~2_combout\,
	datab => \BN[0]~input_o\,
	datac => \u7|and_out_2[1]~24_combout\,
	datad => \u1|Mux4~2_combout\,
	combout => \u7|and_out_2[2]~21_combout\);

-- Location: LCCOMB_X56_Y50_N14
\u7|and_out_2[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[3]~16_combout\ = (\BN[1]~input_o\ & (((!\BN[5]~input_o\ & \BN[3]~input_o\)) # (!\BN[2]~input_o\))) # (!\BN[1]~input_o\ & ((\BN[2]~input_o\ & ((\BN[3]~input_o\) # (!\BN[5]~input_o\))) # (!\BN[2]~input_o\ & ((\BN[5]~input_o\) # 
-- (!\BN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \u7|and_out_2[3]~16_combout\);

-- Location: LCCOMB_X56_Y50_N20
\u7|and_out_2[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[3]~15_combout\ = \BN[2]~input_o\ $ (((\BN[1]~input_o\ & (!\BN[5]~input_o\ & \BN[3]~input_o\)) # (!\BN[1]~input_o\ & ((\BN[3]~input_o\) # (!\BN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \u7|and_out_2[3]~15_combout\);

-- Location: LCCOMB_X56_Y50_N16
\u7|and_out_2[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[3]~14_combout\ = (\BN[4]~input_o\ & (\u7|and_out_2[3]~16_combout\)) # (!\BN[4]~input_o\ & ((\u7|and_out_2[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BN[4]~input_o\,
	datac => \u7|and_out_2[3]~16_combout\,
	datad => \u7|and_out_2[3]~15_combout\,
	combout => \u7|and_out_2[3]~14_combout\);

-- Location: LCCOMB_X56_Y50_N22
\u7|and_out_2[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[4]~4_combout\ = (\BN[1]~input_o\ & ((\BN[2]~input_o\ & (!\BN[5]~input_o\ & \BN[3]~input_o\)) # (!\BN[2]~input_o\ & (\BN[5]~input_o\ & !\BN[3]~input_o\)))) # (!\BN[1]~input_o\ & (\BN[2]~input_o\ & (\BN[5]~input_o\ $ (!\BN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[5]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \u7|and_out_2[4]~4_combout\);

-- Location: LCCOMB_X56_Y50_N0
\u7|and_out_2[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[4]~3_combout\ = (\BN[4]~input_o\ & ((\u1|Mux3~0_combout\))) # (!\BN[4]~input_o\ & (\u7|and_out_2[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|and_out_2[4]~4_combout\,
	datac => \BN[4]~input_o\,
	datad => \u1|Mux3~0_combout\,
	combout => \u7|and_out_2[4]~3_combout\);

-- Location: LCCOMB_X56_Y50_N18
\u7|and_out_2[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[3]~26_combout\ = (\validate~input_o\ & ((\BN[0]~input_o\ & (\u7|and_out_2[3]~14_combout\)) # (!\BN[0]~input_o\ & ((\u7|and_out_2[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|and_out_2[3]~14_combout\,
	datab => \u7|and_out_2[4]~3_combout\,
	datac => \BN[0]~input_o\,
	datad => \validate~input_o\,
	combout => \u7|and_out_2[3]~26_combout\);

-- Location: LCCOMB_X56_Y50_N10
\u7|and_out_2[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[4]~25_combout\ = (\validate~input_o\ & ((\BN[0]~input_o\) # (\u7|and_out_2[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \validate~input_o\,
	datac => \BN[0]~input_o\,
	datad => \u7|and_out_2[4]~3_combout\,
	combout => \u7|and_out_2[4]~25_combout\);

-- Location: LCCOMB_X67_Y53_N6
\u7|and_out_2[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[5]~22_combout\ = (\u7|and_out_2[1]~24_combout\ & ((\u1|Mux5~2_combout\ & ((\BN[0]~input_o\) # (!\u1|Mux4~2_combout\))) # (!\u1|Mux5~2_combout\ & (\BN[0]~input_o\ & !\u1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux5~2_combout\,
	datab => \BN[0]~input_o\,
	datac => \u7|and_out_2[1]~24_combout\,
	datad => \u1|Mux4~2_combout\,
	combout => \u7|and_out_2[5]~22_combout\);

-- Location: LCCOMB_X67_Y53_N0
\u7|and_out_2[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|and_out_2[6]~23_combout\ = (\u7|and_out_2[1]~24_combout\ & ((\u1|Mux5~2_combout\ & (\BN[0]~input_o\ & \u1|Mux4~2_combout\)) # (!\u1|Mux5~2_combout\ & ((!\u1|Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux5~2_combout\,
	datab => \BN[0]~input_o\,
	datac => \u7|and_out_2[1]~24_combout\,
	datad => \u1|Mux4~2_combout\,
	combout => \u7|and_out_2[6]~23_combout\);

-- Location: LCCOMB_X56_Y50_N4
\u8|and_out_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|and_out_3~0_combout\ = (\BN[4]~input_o\ & (\BN[3]~input_o\ & ((\BN[1]~input_o\) # (\BN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[4]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \u8|and_out_3~0_combout\);

-- Location: LCCOMB_X56_Y50_N6
\u8|and_out_3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|and_out_3~1_combout\ = (\validate~input_o\ & ((\BN[5]~input_o\) # (\u8|and_out_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \validate~input_o\,
	datac => \u8|and_out_3~0_combout\,
	combout => \u8|and_out_3~1_combout\);

-- Location: LCCOMB_X56_Y50_N8
\u5|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5|LessThan1~0_combout\ = (((!\BN[3]~input_o\) # (!\BN[0]~input_o\)) # (!\BN[2]~input_o\)) # (!\BN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[1]~input_o\,
	datab => \BN[2]~input_o\,
	datac => \BN[0]~input_o\,
	datad => \BN[3]~input_o\,
	combout => \u5|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y50_N2
\u9|and_out_4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|and_out_4~combout\ = (!\BN[5]~input_o\ & (\u5|LessThan1~0_combout\ & (!\BN[4]~input_o\ & \validate~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BN[5]~input_o\,
	datab => \u5|LessThan1~0_combout\,
	datac => \BN[4]~input_o\,
	datad => \validate~input_o\,
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


