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

-- DATE "02/28/2024 09:39:51"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	registres IS
    PORT (
	DataOut : OUT std_logic;
	PCI : IN std_logic;
	Send : IN std_logic;
	Enter : IN std_logic;
	DataIn : IN std_logic_vector(7 DOWNTO 0);
	Op : IN std_logic_vector(1 DOWNTO 0);
	Tx : OUT std_logic;
	Aux_1_N1 : OUT std_logic_vector(7 DOWNTO 0);
	Aux_1_N2 : OUT std_logic_vector(7 DOWNTO 0);
	Aux_1_N3 : OUT std_logic_vector(7 DOWNTO 0);
	Aux_Result : OUT std_logic_vector(8 DOWNTO 0)
	);
END registres;

-- Design Ports Information
-- DataOut	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N1[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N1[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N1[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N1[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N1[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N1[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N1[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N1[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N2[7]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N2[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N2[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N2[4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N2[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N2[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N2[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N2[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N3[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N3[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N3[5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N3[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N3[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N3[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N3[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_1_N3[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_Result[8]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_Result[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_Result[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_Result[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_Result[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_Result[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_Result[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_Result[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aux_Result[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Send	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCI	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enter	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[1]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registres IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DataOut : std_logic;
SIGNAL ww_PCI : std_logic;
SIGNAL ww_Send : std_logic;
SIGNAL ww_Enter : std_logic;
SIGNAL ww_DataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Tx : std_logic;
SIGNAL ww_Aux_1_N1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Aux_1_N2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Aux_1_N3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Aux_Result : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PCI~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Send~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Enter~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DataOut~output_o\ : std_logic;
SIGNAL \Tx~output_o\ : std_logic;
SIGNAL \Aux_1_N1[7]~output_o\ : std_logic;
SIGNAL \Aux_1_N1[6]~output_o\ : std_logic;
SIGNAL \Aux_1_N1[5]~output_o\ : std_logic;
SIGNAL \Aux_1_N1[4]~output_o\ : std_logic;
SIGNAL \Aux_1_N1[3]~output_o\ : std_logic;
SIGNAL \Aux_1_N1[2]~output_o\ : std_logic;
SIGNAL \Aux_1_N1[1]~output_o\ : std_logic;
SIGNAL \Aux_1_N1[0]~output_o\ : std_logic;
SIGNAL \Aux_1_N2[7]~output_o\ : std_logic;
SIGNAL \Aux_1_N2[6]~output_o\ : std_logic;
SIGNAL \Aux_1_N2[5]~output_o\ : std_logic;
SIGNAL \Aux_1_N2[4]~output_o\ : std_logic;
SIGNAL \Aux_1_N2[3]~output_o\ : std_logic;
SIGNAL \Aux_1_N2[2]~output_o\ : std_logic;
SIGNAL \Aux_1_N2[1]~output_o\ : std_logic;
SIGNAL \Aux_1_N2[0]~output_o\ : std_logic;
SIGNAL \Aux_1_N3[7]~output_o\ : std_logic;
SIGNAL \Aux_1_N3[6]~output_o\ : std_logic;
SIGNAL \Aux_1_N3[5]~output_o\ : std_logic;
SIGNAL \Aux_1_N3[4]~output_o\ : std_logic;
SIGNAL \Aux_1_N3[3]~output_o\ : std_logic;
SIGNAL \Aux_1_N3[2]~output_o\ : std_logic;
SIGNAL \Aux_1_N3[1]~output_o\ : std_logic;
SIGNAL \Aux_1_N3[0]~output_o\ : std_logic;
SIGNAL \Aux_Result[8]~output_o\ : std_logic;
SIGNAL \Aux_Result[7]~output_o\ : std_logic;
SIGNAL \Aux_Result[6]~output_o\ : std_logic;
SIGNAL \Aux_Result[5]~output_o\ : std_logic;
SIGNAL \Aux_Result[4]~output_o\ : std_logic;
SIGNAL \Aux_Result[3]~output_o\ : std_logic;
SIGNAL \Aux_Result[2]~output_o\ : std_logic;
SIGNAL \Aux_Result[1]~output_o\ : std_logic;
SIGNAL \Aux_Result[0]~output_o\ : std_logic;
SIGNAL \Send~input_o\ : std_logic;
SIGNAL \Send~inputclkctrl_outclk\ : std_logic;
SIGNAL \Op[1]~input_o\ : std_logic;
SIGNAL \Op[0]~input_o\ : std_logic;
SIGNAL \Enter~input_o\ : std_logic;
SIGNAL \Enter~inputclkctrl_outclk\ : std_logic;
SIGNAL \DataIn[7]~input_o\ : std_logic;
SIGNAL \PCI~input_o\ : std_logic;
SIGNAL \PCI~inputclkctrl_outclk\ : std_logic;
SIGNAL \DataIn[6]~input_o\ : std_logic;
SIGNAL \DataIn[5]~input_o\ : std_logic;
SIGNAL \DataIn[4]~input_o\ : std_logic;
SIGNAL \DataIn[3]~input_o\ : std_logic;
SIGNAL \DataIn[2]~input_o\ : std_logic;
SIGNAL \DataIn[1]~input_o\ : std_logic;
SIGNAL \DataIn[0]~input_o\ : std_logic;
SIGNAL \inst3|LessThan1~1_cout\ : std_logic;
SIGNAL \inst3|LessThan1~3_cout\ : std_logic;
SIGNAL \inst3|LessThan1~5_cout\ : std_logic;
SIGNAL \inst3|LessThan1~7_cout\ : std_logic;
SIGNAL \inst3|LessThan1~9_cout\ : std_logic;
SIGNAL \inst3|LessThan1~11_cout\ : std_logic;
SIGNAL \inst3|LessThan1~13_cout\ : std_logic;
SIGNAL \inst3|LessThan1~14_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_cout\ : std_logic;
SIGNAL \inst3|LessThan0~3_cout\ : std_logic;
SIGNAL \inst3|LessThan0~5_cout\ : std_logic;
SIGNAL \inst3|LessThan0~7_cout\ : std_logic;
SIGNAL \inst3|LessThan0~9_cout\ : std_logic;
SIGNAL \inst3|LessThan0~11_cout\ : std_logic;
SIGNAL \inst3|LessThan0~13_cout\ : std_logic;
SIGNAL \inst3|LessThan0~14_combout\ : std_logic;
SIGNAL \inst3|LessThan5~1_cout\ : std_logic;
SIGNAL \inst3|LessThan5~3_cout\ : std_logic;
SIGNAL \inst3|LessThan5~5_cout\ : std_logic;
SIGNAL \inst3|LessThan5~7_cout\ : std_logic;
SIGNAL \inst3|LessThan5~9_cout\ : std_logic;
SIGNAL \inst3|LessThan5~11_cout\ : std_logic;
SIGNAL \inst3|LessThan5~13_cout\ : std_logic;
SIGNAL \inst3|LessThan5~14_combout\ : std_logic;
SIGNAL \inst3|Result[8]~1_combout\ : std_logic;
SIGNAL \inst3|LessThan4~1_cout\ : std_logic;
SIGNAL \inst3|LessThan4~3_cout\ : std_logic;
SIGNAL \inst3|LessThan4~5_cout\ : std_logic;
SIGNAL \inst3|LessThan4~7_cout\ : std_logic;
SIGNAL \inst3|LessThan4~9_cout\ : std_logic;
SIGNAL \inst3|LessThan4~11_cout\ : std_logic;
SIGNAL \inst3|LessThan4~13_cout\ : std_logic;
SIGNAL \inst3|LessThan4~14_combout\ : std_logic;
SIGNAL \inst3|LessThan3~1_cout\ : std_logic;
SIGNAL \inst3|LessThan3~3_cout\ : std_logic;
SIGNAL \inst3|LessThan3~5_cout\ : std_logic;
SIGNAL \inst3|LessThan3~7_cout\ : std_logic;
SIGNAL \inst3|LessThan3~9_cout\ : std_logic;
SIGNAL \inst3|LessThan3~11_cout\ : std_logic;
SIGNAL \inst3|LessThan3~13_cout\ : std_logic;
SIGNAL \inst3|LessThan3~14_combout\ : std_logic;
SIGNAL \inst3|LessThan2~1_cout\ : std_logic;
SIGNAL \inst3|LessThan2~3_cout\ : std_logic;
SIGNAL \inst3|LessThan2~5_cout\ : std_logic;
SIGNAL \inst3|LessThan2~7_cout\ : std_logic;
SIGNAL \inst3|LessThan2~9_cout\ : std_logic;
SIGNAL \inst3|LessThan2~11_cout\ : std_logic;
SIGNAL \inst3|LessThan2~13_cout\ : std_logic;
SIGNAL \inst3|LessThan2~14_combout\ : std_logic;
SIGNAL \inst3|Result[8]~2_combout\ : std_logic;
SIGNAL \inst3|Result[8]~3_combout\ : std_logic;
SIGNAL \inst3|Result[8]~4_combout\ : std_logic;
SIGNAL \inst3|Result[8]~5_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg[7]~1_combout\ : std_logic;
SIGNAL \inst3|signed_max_ext[7]~0_combout\ : std_logic;
SIGNAL \inst3|signed_max_ext[7]~1_combout\ : std_logic;
SIGNAL \inst3|signed_min_ext[7]~0_combout\ : std_logic;
SIGNAL \inst3|signed_min_ext[7]~1_combout\ : std_logic;
SIGNAL \inst3|signed_min[6]~0_combout\ : std_logic;
SIGNAL \inst3|signed_min[6]~1_combout\ : std_logic;
SIGNAL \inst3|signed_max[6]~0_combout\ : std_logic;
SIGNAL \inst3|signed_max[6]~1_combout\ : std_logic;
SIGNAL \inst3|signed_min[5]~2_combout\ : std_logic;
SIGNAL \inst3|signed_min[5]~3_combout\ : std_logic;
SIGNAL \inst3|signed_max[5]~2_combout\ : std_logic;
SIGNAL \inst3|signed_max[5]~3_combout\ : std_logic;
SIGNAL \inst3|signed_min[4]~4_combout\ : std_logic;
SIGNAL \inst3|signed_min[4]~5_combout\ : std_logic;
SIGNAL \inst3|signed_max[4]~4_combout\ : std_logic;
SIGNAL \inst3|signed_max[4]~5_combout\ : std_logic;
SIGNAL \inst3|signed_min[3]~6_combout\ : std_logic;
SIGNAL \inst3|signed_min[3]~7_combout\ : std_logic;
SIGNAL \inst3|signed_max[3]~6_combout\ : std_logic;
SIGNAL \inst3|signed_max[3]~7_combout\ : std_logic;
SIGNAL \inst3|signed_min[2]~8_combout\ : std_logic;
SIGNAL \inst3|signed_min[2]~9_combout\ : std_logic;
SIGNAL \inst3|signed_max[2]~8_combout\ : std_logic;
SIGNAL \inst3|signed_max[2]~9_combout\ : std_logic;
SIGNAL \inst3|signed_max[1]~10_combout\ : std_logic;
SIGNAL \inst3|signed_max[1]~11_combout\ : std_logic;
SIGNAL \inst3|signed_min[1]~10_combout\ : std_logic;
SIGNAL \inst3|signed_min[1]~11_combout\ : std_logic;
SIGNAL \inst3|signed_min[0]~12_combout\ : std_logic;
SIGNAL \inst3|signed_min[0]~13_combout\ : std_logic;
SIGNAL \inst3|signed_max[0]~12_combout\ : std_logic;
SIGNAL \inst3|signed_max[0]~13_combout\ : std_logic;
SIGNAL \inst3|Add0~1_cout\ : std_logic;
SIGNAL \inst3|signed_suma[1]~1\ : std_logic;
SIGNAL \inst3|signed_suma[2]~3\ : std_logic;
SIGNAL \inst3|signed_suma[3]~5\ : std_logic;
SIGNAL \inst3|signed_suma[4]~7\ : std_logic;
SIGNAL \inst3|signed_suma[5]~9\ : std_logic;
SIGNAL \inst3|signed_suma[6]~11\ : std_logic;
SIGNAL \inst3|signed_suma[7]~13\ : std_logic;
SIGNAL \inst3|signed_suma_2[7]~0_combout\ : std_logic;
SIGNAL \inst3|signed_resta[0]~1\ : std_logic;
SIGNAL \inst3|signed_resta[1]~3\ : std_logic;
SIGNAL \inst3|signed_resta[2]~5\ : std_logic;
SIGNAL \inst3|signed_resta[3]~7\ : std_logic;
SIGNAL \inst3|signed_resta[4]~9\ : std_logic;
SIGNAL \inst3|signed_resta[5]~11\ : std_logic;
SIGNAL \inst3|signed_resta[6]~13\ : std_logic;
SIGNAL \inst3|signed_resta[7]~14_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg[7]~0_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|Q_reg[0]~3_combout\ : std_logic;
SIGNAL \inst|inst|inst|Q_reg[3]~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst|inst|inst|Q_reg[1]~2_combout\ : std_logic;
SIGNAL \inst|inst|inst|Q_reg[2]~1_combout\ : std_logic;
SIGNAL \inst|inst|inst4~0_combout\ : std_logic;
SIGNAL \inst3|signed_resta[7]~15\ : std_logic;
SIGNAL \inst3|signed_resta[8]~16_combout\ : std_logic;
SIGNAL \inst3|Result[8]~0_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg~9_combout\ : std_logic;
SIGNAL \inst3|Result[6]~7_combout\ : std_logic;
SIGNAL \inst3|signed_suma[7]~12_combout\ : std_logic;
SIGNAL \inst3|signed_resta[6]~12_combout\ : std_logic;
SIGNAL \inst3|Result[6]~8_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg~8_combout\ : std_logic;
SIGNAL \inst3|Result[5]~9_combout\ : std_logic;
SIGNAL \inst3|signed_resta[5]~10_combout\ : std_logic;
SIGNAL \inst3|signed_suma[6]~10_combout\ : std_logic;
SIGNAL \inst3|Result[5]~10_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg~7_combout\ : std_logic;
SIGNAL \inst3|signed_resta[4]~8_combout\ : std_logic;
SIGNAL \inst3|signed_suma[5]~8_combout\ : std_logic;
SIGNAL \inst3|Result[4]~11_combout\ : std_logic;
SIGNAL \inst3|Result[4]~12_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg~6_combout\ : std_logic;
SIGNAL \inst3|Result[3]~13_combout\ : std_logic;
SIGNAL \inst3|signed_resta[3]~6_combout\ : std_logic;
SIGNAL \inst3|signed_suma[4]~6_combout\ : std_logic;
SIGNAL \inst3|Result[3]~14_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg~5_combout\ : std_logic;
SIGNAL \inst3|signed_resta[2]~4_combout\ : std_logic;
SIGNAL \inst3|signed_suma[3]~4_combout\ : std_logic;
SIGNAL \inst3|Result[2]~15_combout\ : std_logic;
SIGNAL \inst3|Result[2]~16_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg~4_combout\ : std_logic;
SIGNAL \inst3|Result[1]~17_combout\ : std_logic;
SIGNAL \inst3|signed_suma[2]~2_combout\ : std_logic;
SIGNAL \inst3|signed_resta[1]~2_combout\ : std_logic;
SIGNAL \inst3|Result[1]~18_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg~3_combout\ : std_logic;
SIGNAL \inst3|signed_resta[0]~0_combout\ : std_logic;
SIGNAL \inst3|signed_suma[1]~0_combout\ : std_logic;
SIGNAL \inst3|Result[0]~19_combout\ : std_logic;
SIGNAL \inst3|Result[0]~20_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg~2_combout\ : std_logic;
SIGNAL \inst3|Result[8]~6_combout\ : std_logic;
SIGNAL \inst|inst2|Q_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst|inst|Q_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_PCI~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst|ALT_INV_inst2~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DataOut <= ww_DataOut;
ww_PCI <= PCI;
ww_Send <= Send;
ww_Enter <= Enter;
ww_DataIn <= DataIn;
ww_Op <= Op;
Tx <= ww_Tx;
Aux_1_N1 <= ww_Aux_1_N1;
Aux_1_N2 <= ww_Aux_1_N2;
Aux_1_N3 <= ww_Aux_1_N3;
Aux_Result <= ww_Aux_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\PCI~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PCI~input_o\);

\Send~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Send~input_o\);

\Enter~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Enter~input_o\);
\ALT_INV_PCI~inputclkctrl_outclk\ <= NOT \PCI~inputclkctrl_outclk\;
\inst|inst|ALT_INV_inst2~combout\ <= NOT \inst|inst|inst2~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X34_Y0_N9
\DataOut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|Q_reg\(0),
	devoe => ww_devoe,
	o => \DataOut~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\Tx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst4~0_combout\,
	devoe => ww_devoe,
	o => \Tx~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\Aux_1_N1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|Q\(7),
	devoe => ww_devoe,
	o => \Aux_1_N1[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\Aux_1_N1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|Q\(6),
	devoe => ww_devoe,
	o => \Aux_1_N1[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\Aux_1_N1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|Q\(5),
	devoe => ww_devoe,
	o => \Aux_1_N1[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\Aux_1_N1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|Q\(4),
	devoe => ww_devoe,
	o => \Aux_1_N1[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\Aux_1_N1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|Q\(3),
	devoe => ww_devoe,
	o => \Aux_1_N1[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\Aux_1_N1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|Q\(2),
	devoe => ww_devoe,
	o => \Aux_1_N1[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\Aux_1_N1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|Q\(1),
	devoe => ww_devoe,
	o => \Aux_1_N1[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\Aux_1_N1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|Q\(0),
	devoe => ww_devoe,
	o => \Aux_1_N1[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\Aux_1_N2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Q\(7),
	devoe => ww_devoe,
	o => \Aux_1_N2[7]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\Aux_1_N2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Q\(6),
	devoe => ww_devoe,
	o => \Aux_1_N2[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Aux_1_N2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Q\(5),
	devoe => ww_devoe,
	o => \Aux_1_N2[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\Aux_1_N2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Q\(4),
	devoe => ww_devoe,
	o => \Aux_1_N2[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\Aux_1_N2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Q\(3),
	devoe => ww_devoe,
	o => \Aux_1_N2[3]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\Aux_1_N2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Q\(2),
	devoe => ww_devoe,
	o => \Aux_1_N2[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\Aux_1_N2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Q\(1),
	devoe => ww_devoe,
	o => \Aux_1_N2[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\Aux_1_N2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Q\(0),
	devoe => ww_devoe,
	o => \Aux_1_N2[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\Aux_1_N3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|Q\(7),
	devoe => ww_devoe,
	o => \Aux_1_N3[7]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\Aux_1_N3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|Q\(6),
	devoe => ww_devoe,
	o => \Aux_1_N3[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\Aux_1_N3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|Q\(5),
	devoe => ww_devoe,
	o => \Aux_1_N3[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\Aux_1_N3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|Q\(4),
	devoe => ww_devoe,
	o => \Aux_1_N3[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\Aux_1_N3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|Q\(3),
	devoe => ww_devoe,
	o => \Aux_1_N3[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\Aux_1_N3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|Q\(2),
	devoe => ww_devoe,
	o => \Aux_1_N3[2]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\Aux_1_N3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|Q\(1),
	devoe => ww_devoe,
	o => \Aux_1_N3[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\Aux_1_N3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|Q\(0),
	devoe => ww_devoe,
	o => \Aux_1_N3[0]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\Aux_Result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Result[8]~6_combout\,
	devoe => ww_devoe,
	o => \Aux_Result[8]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\Aux_Result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|Q_reg[7]~0_combout\,
	devoe => ww_devoe,
	o => \Aux_Result[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\Aux_Result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Result[6]~8_combout\,
	devoe => ww_devoe,
	o => \Aux_Result[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Aux_Result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Result[5]~10_combout\,
	devoe => ww_devoe,
	o => \Aux_Result[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\Aux_Result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Result[4]~12_combout\,
	devoe => ww_devoe,
	o => \Aux_Result[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\Aux_Result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Result[3]~14_combout\,
	devoe => ww_devoe,
	o => \Aux_Result[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Aux_Result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Result[2]~16_combout\,
	devoe => ww_devoe,
	o => \Aux_Result[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\Aux_Result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Result[1]~18_combout\,
	devoe => ww_devoe,
	o => \Aux_Result[1]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\Aux_Result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Result[0]~20_combout\,
	devoe => ww_devoe,
	o => \Aux_Result[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N22
\Send~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Send,
	o => \Send~input_o\);

-- Location: CLKCTRL_G4
\Send~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Send~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Send~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y39_N8
\Op[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(1),
	o => \Op[1]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\Op[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(0),
	o => \Op[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\Enter~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enter,
	o => \Enter~input_o\);

-- Location: CLKCTRL_G3
\Enter~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Enter~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Enter~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N1
\DataIn[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(7),
	o => \DataIn[7]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\PCI~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCI,
	o => \PCI~input_o\);

-- Location: CLKCTRL_G2
\PCI~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PCI~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PCI~inputclkctrl_outclk\);

-- Location: FF_X36_Y37_N15
\inst2|inst|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \DataIn[7]~input_o\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|Q\(7));

-- Location: FF_X37_Y37_N31
\inst2|inst1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst|Q\(7),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Q\(7));

-- Location: FF_X37_Y37_N15
\inst2|inst2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst1|Q\(7),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|Q\(7));

-- Location: IOIBUF_X46_Y54_N8
\DataIn[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(6),
	o => \DataIn[6]~input_o\);

-- Location: FF_X38_Y37_N5
\inst2|inst|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \DataIn[6]~input_o\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|Q\(6));

-- Location: FF_X37_Y37_N13
\inst2|inst1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst|Q\(6),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Q\(6));

-- Location: FF_X37_Y37_N29
\inst2|inst2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst1|Q\(6),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|Q\(6));

-- Location: IOIBUF_X51_Y54_N1
\DataIn[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(5),
	o => \DataIn[5]~input_o\);

-- Location: FF_X36_Y37_N11
\inst2|inst|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \DataIn[5]~input_o\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|Q\(5));

-- Location: FF_X37_Y37_N27
\inst2|inst1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst|Q\(5),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Q\(5));

-- Location: FF_X37_Y37_N11
\inst2|inst2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst1|Q\(5),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|Q\(5));

-- Location: IOIBUF_X31_Y39_N29
\DataIn[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(4),
	o => \DataIn[4]~input_o\);

-- Location: FF_X38_Y37_N7
\inst2|inst|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \DataIn[4]~input_o\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|Q\(4));

-- Location: FF_X37_Y37_N9
\inst2|inst1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst|Q\(4),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Q\(4));

-- Location: FF_X37_Y37_N25
\inst2|inst2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst1|Q\(4),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|Q\(4));

-- Location: IOIBUF_X36_Y0_N8
\DataIn[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(3),
	o => \DataIn[3]~input_o\);

-- Location: FF_X36_Y37_N17
\inst2|inst|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \DataIn[3]~input_o\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|Q\(3));

-- Location: FF_X37_Y37_N23
\inst2|inst1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst|Q\(3),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Q\(3));

-- Location: FF_X37_Y37_N7
\inst2|inst2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst1|Q\(3),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|Q\(3));

-- Location: IOIBUF_X46_Y54_N15
\DataIn[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(2),
	o => \DataIn[2]~input_o\);

-- Location: FF_X38_Y37_N13
\inst2|inst|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \DataIn[2]~input_o\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|Q\(2));

-- Location: FF_X37_Y37_N5
\inst2|inst1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst|Q\(2),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Q\(2));

-- Location: FF_X37_Y37_N21
\inst2|inst2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst1|Q\(2),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|Q\(2));

-- Location: IOIBUF_X78_Y37_N1
\DataIn[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(1),
	o => \DataIn[1]~input_o\);

-- Location: FF_X36_Y37_N23
\inst2|inst|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \DataIn[1]~input_o\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|Q\(1));

-- Location: FF_X37_Y37_N19
\inst2|inst1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst|Q\(1),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Q\(1));

-- Location: FF_X37_Y37_N3
\inst2|inst2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst1|Q\(1),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|Q\(1));

-- Location: IOIBUF_X46_Y54_N1
\DataIn[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(0),
	o => \DataIn[0]~input_o\);

-- Location: FF_X38_Y37_N9
\inst2|inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \DataIn[0]~input_o\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|Q\(0));

-- Location: FF_X37_Y37_N1
\inst2|inst1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst|Q\(0),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Q\(0));

-- Location: FF_X37_Y37_N17
\inst2|inst2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	asdata => \inst2|inst1|Q\(0),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|Q\(0));

-- Location: LCCOMB_X37_Y37_N16
\inst3|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~1_cout\ = CARRY((\inst2|inst1|Q\(0) & !\inst2|inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(0),
	datab => \inst2|inst2|Q\(0),
	datad => VCC,
	cout => \inst3|LessThan1~1_cout\);

-- Location: LCCOMB_X37_Y37_N18
\inst3|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~3_cout\ = CARRY((\inst2|inst1|Q\(1) & (\inst2|inst2|Q\(1) & !\inst3|LessThan1~1_cout\)) # (!\inst2|inst1|Q\(1) & ((\inst2|inst2|Q\(1)) # (!\inst3|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(1),
	datab => \inst2|inst2|Q\(1),
	datad => VCC,
	cin => \inst3|LessThan1~1_cout\,
	cout => \inst3|LessThan1~3_cout\);

-- Location: LCCOMB_X37_Y37_N20
\inst3|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~5_cout\ = CARRY((\inst2|inst2|Q\(2) & (\inst2|inst1|Q\(2) & !\inst3|LessThan1~3_cout\)) # (!\inst2|inst2|Q\(2) & ((\inst2|inst1|Q\(2)) # (!\inst3|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(2),
	datab => \inst2|inst1|Q\(2),
	datad => VCC,
	cin => \inst3|LessThan1~3_cout\,
	cout => \inst3|LessThan1~5_cout\);

-- Location: LCCOMB_X37_Y37_N22
\inst3|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~7_cout\ = CARRY((\inst2|inst1|Q\(3) & (\inst2|inst2|Q\(3) & !\inst3|LessThan1~5_cout\)) # (!\inst2|inst1|Q\(3) & ((\inst2|inst2|Q\(3)) # (!\inst3|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(3),
	datab => \inst2|inst2|Q\(3),
	datad => VCC,
	cin => \inst3|LessThan1~5_cout\,
	cout => \inst3|LessThan1~7_cout\);

-- Location: LCCOMB_X37_Y37_N24
\inst3|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~9_cout\ = CARRY((\inst2|inst2|Q\(4) & (\inst2|inst1|Q\(4) & !\inst3|LessThan1~7_cout\)) # (!\inst2|inst2|Q\(4) & ((\inst2|inst1|Q\(4)) # (!\inst3|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(4),
	datab => \inst2|inst1|Q\(4),
	datad => VCC,
	cin => \inst3|LessThan1~7_cout\,
	cout => \inst3|LessThan1~9_cout\);

-- Location: LCCOMB_X37_Y37_N26
\inst3|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~11_cout\ = CARRY((\inst2|inst1|Q\(5) & (\inst2|inst2|Q\(5) & !\inst3|LessThan1~9_cout\)) # (!\inst2|inst1|Q\(5) & ((\inst2|inst2|Q\(5)) # (!\inst3|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(5),
	datab => \inst2|inst2|Q\(5),
	datad => VCC,
	cin => \inst3|LessThan1~9_cout\,
	cout => \inst3|LessThan1~11_cout\);

-- Location: LCCOMB_X37_Y37_N28
\inst3|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~13_cout\ = CARRY((\inst2|inst1|Q\(6) & ((!\inst3|LessThan1~11_cout\) # (!\inst2|inst2|Q\(6)))) # (!\inst2|inst1|Q\(6) & (!\inst2|inst2|Q\(6) & !\inst3|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(6),
	datab => \inst2|inst2|Q\(6),
	datad => VCC,
	cin => \inst3|LessThan1~11_cout\,
	cout => \inst3|LessThan1~13_cout\);

-- Location: LCCOMB_X37_Y37_N30
\inst3|LessThan1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~14_combout\ = (\inst2|inst1|Q\(7) & (\inst2|inst2|Q\(7) & \inst3|LessThan1~13_cout\)) # (!\inst2|inst1|Q\(7) & ((\inst2|inst2|Q\(7)) # (\inst3|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(7),
	datab => \inst2|inst2|Q\(7),
	cin => \inst3|LessThan1~13_cout\,
	combout => \inst3|LessThan1~14_combout\);

-- Location: LCCOMB_X38_Y37_N8
\inst3|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_cout\ = CARRY((\inst2|inst1|Q\(0) & !\inst2|inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(0),
	datab => \inst2|inst|Q\(0),
	datad => VCC,
	cout => \inst3|LessThan0~1_cout\);

-- Location: LCCOMB_X38_Y37_N10
\inst3|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_cout\ = CARRY((\inst2|inst|Q\(1) & ((!\inst3|LessThan0~1_cout\) # (!\inst2|inst1|Q\(1)))) # (!\inst2|inst|Q\(1) & (!\inst2|inst1|Q\(1) & !\inst3|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(1),
	datab => \inst2|inst1|Q\(1),
	datad => VCC,
	cin => \inst3|LessThan0~1_cout\,
	cout => \inst3|LessThan0~3_cout\);

-- Location: LCCOMB_X38_Y37_N12
\inst3|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_cout\ = CARRY((\inst2|inst|Q\(2) & (\inst2|inst1|Q\(2) & !\inst3|LessThan0~3_cout\)) # (!\inst2|inst|Q\(2) & ((\inst2|inst1|Q\(2)) # (!\inst3|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(2),
	datab => \inst2|inst1|Q\(2),
	datad => VCC,
	cin => \inst3|LessThan0~3_cout\,
	cout => \inst3|LessThan0~5_cout\);

-- Location: LCCOMB_X38_Y37_N14
\inst3|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~7_cout\ = CARRY((\inst2|inst|Q\(3) & ((!\inst3|LessThan0~5_cout\) # (!\inst2|inst1|Q\(3)))) # (!\inst2|inst|Q\(3) & (!\inst2|inst1|Q\(3) & !\inst3|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(3),
	datab => \inst2|inst1|Q\(3),
	datad => VCC,
	cin => \inst3|LessThan0~5_cout\,
	cout => \inst3|LessThan0~7_cout\);

-- Location: LCCOMB_X38_Y37_N16
\inst3|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~9_cout\ = CARRY((\inst2|inst|Q\(4) & (\inst2|inst1|Q\(4) & !\inst3|LessThan0~7_cout\)) # (!\inst2|inst|Q\(4) & ((\inst2|inst1|Q\(4)) # (!\inst3|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(4),
	datab => \inst2|inst1|Q\(4),
	datad => VCC,
	cin => \inst3|LessThan0~7_cout\,
	cout => \inst3|LessThan0~9_cout\);

-- Location: LCCOMB_X38_Y37_N18
\inst3|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~11_cout\ = CARRY((\inst2|inst1|Q\(5) & (\inst2|inst|Q\(5) & !\inst3|LessThan0~9_cout\)) # (!\inst2|inst1|Q\(5) & ((\inst2|inst|Q\(5)) # (!\inst3|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(5),
	datab => \inst2|inst|Q\(5),
	datad => VCC,
	cin => \inst3|LessThan0~9_cout\,
	cout => \inst3|LessThan0~11_cout\);

-- Location: LCCOMB_X38_Y37_N20
\inst3|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~13_cout\ = CARRY((\inst2|inst1|Q\(6) & ((!\inst3|LessThan0~11_cout\) # (!\inst2|inst|Q\(6)))) # (!\inst2|inst1|Q\(6) & (!\inst2|inst|Q\(6) & !\inst3|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(6),
	datab => \inst2|inst|Q\(6),
	datad => VCC,
	cin => \inst3|LessThan0~11_cout\,
	cout => \inst3|LessThan0~13_cout\);

-- Location: LCCOMB_X38_Y37_N22
\inst3|LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~14_combout\ = (\inst2|inst|Q\(7) & ((\inst3|LessThan0~13_cout\) # (!\inst2|inst1|Q\(7)))) # (!\inst2|inst|Q\(7) & (\inst3|LessThan0~13_cout\ & !\inst2|inst1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(7),
	datad => \inst2|inst1|Q\(7),
	cin => \inst3|LessThan0~13_cout\,
	combout => \inst3|LessThan0~14_combout\);

-- Location: LCCOMB_X35_Y37_N14
\inst3|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~1_cout\ = CARRY((\inst2|inst2|Q\(0) & !\inst2|inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(0),
	datab => \inst2|inst|Q\(0),
	datad => VCC,
	cout => \inst3|LessThan5~1_cout\);

-- Location: LCCOMB_X35_Y37_N16
\inst3|LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~3_cout\ = CARRY((\inst2|inst2|Q\(1) & (\inst2|inst|Q\(1) & !\inst3|LessThan5~1_cout\)) # (!\inst2|inst2|Q\(1) & ((\inst2|inst|Q\(1)) # (!\inst3|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(1),
	datab => \inst2|inst|Q\(1),
	datad => VCC,
	cin => \inst3|LessThan5~1_cout\,
	cout => \inst3|LessThan5~3_cout\);

-- Location: LCCOMB_X35_Y37_N18
\inst3|LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~5_cout\ = CARRY((\inst2|inst|Q\(2) & (\inst2|inst2|Q\(2) & !\inst3|LessThan5~3_cout\)) # (!\inst2|inst|Q\(2) & ((\inst2|inst2|Q\(2)) # (!\inst3|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(2),
	datab => \inst2|inst2|Q\(2),
	datad => VCC,
	cin => \inst3|LessThan5~3_cout\,
	cout => \inst3|LessThan5~5_cout\);

-- Location: LCCOMB_X35_Y37_N20
\inst3|LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~7_cout\ = CARRY((\inst2|inst2|Q\(3) & (\inst2|inst|Q\(3) & !\inst3|LessThan5~5_cout\)) # (!\inst2|inst2|Q\(3) & ((\inst2|inst|Q\(3)) # (!\inst3|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(3),
	datab => \inst2|inst|Q\(3),
	datad => VCC,
	cin => \inst3|LessThan5~5_cout\,
	cout => \inst3|LessThan5~7_cout\);

-- Location: LCCOMB_X35_Y37_N22
\inst3|LessThan5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~9_cout\ = CARRY((\inst2|inst|Q\(4) & (\inst2|inst2|Q\(4) & !\inst3|LessThan5~7_cout\)) # (!\inst2|inst|Q\(4) & ((\inst2|inst2|Q\(4)) # (!\inst3|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(4),
	datab => \inst2|inst2|Q\(4),
	datad => VCC,
	cin => \inst3|LessThan5~7_cout\,
	cout => \inst3|LessThan5~9_cout\);

-- Location: LCCOMB_X35_Y37_N24
\inst3|LessThan5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~11_cout\ = CARRY((\inst2|inst2|Q\(5) & (\inst2|inst|Q\(5) & !\inst3|LessThan5~9_cout\)) # (!\inst2|inst2|Q\(5) & ((\inst2|inst|Q\(5)) # (!\inst3|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(5),
	datab => \inst2|inst|Q\(5),
	datad => VCC,
	cin => \inst3|LessThan5~9_cout\,
	cout => \inst3|LessThan5~11_cout\);

-- Location: LCCOMB_X35_Y37_N26
\inst3|LessThan5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~13_cout\ = CARRY((\inst2|inst2|Q\(6) & ((!\inst3|LessThan5~11_cout\) # (!\inst2|inst|Q\(6)))) # (!\inst2|inst2|Q\(6) & (!\inst2|inst|Q\(6) & !\inst3|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(6),
	datab => \inst2|inst|Q\(6),
	datad => VCC,
	cin => \inst3|LessThan5~11_cout\,
	cout => \inst3|LessThan5~13_cout\);

-- Location: LCCOMB_X35_Y37_N28
\inst3|LessThan5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~14_combout\ = (\inst2|inst|Q\(7) & ((\inst3|LessThan5~13_cout\) # (!\inst2|inst2|Q\(7)))) # (!\inst2|inst|Q\(7) & (\inst3|LessThan5~13_cout\ & !\inst2|inst2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(7),
	datad => \inst2|inst2|Q\(7),
	cin => \inst3|LessThan5~13_cout\,
	combout => \inst3|LessThan5~14_combout\);

-- Location: LCCOMB_X34_Y37_N8
\inst3|Result[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[8]~1_combout\ = (\inst3|LessThan0~14_combout\ & ((\Op[0]~input_o\ & ((\inst3|LessThan5~14_combout\))) # (!\Op[0]~input_o\ & (\inst3|LessThan1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[0]~input_o\,
	datab => \inst3|LessThan1~14_combout\,
	datac => \inst3|LessThan0~14_combout\,
	datad => \inst3|LessThan5~14_combout\,
	combout => \inst3|Result[8]~1_combout\);

-- Location: LCCOMB_X37_Y37_N0
\inst3|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~1_cout\ = CARRY((!\inst2|inst1|Q\(0) & \inst2|inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(0),
	datab => \inst2|inst2|Q\(0),
	datad => VCC,
	cout => \inst3|LessThan4~1_cout\);

-- Location: LCCOMB_X37_Y37_N2
\inst3|LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~3_cout\ = CARRY((\inst2|inst1|Q\(1) & ((!\inst3|LessThan4~1_cout\) # (!\inst2|inst2|Q\(1)))) # (!\inst2|inst1|Q\(1) & (!\inst2|inst2|Q\(1) & !\inst3|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(1),
	datab => \inst2|inst2|Q\(1),
	datad => VCC,
	cin => \inst3|LessThan4~1_cout\,
	cout => \inst3|LessThan4~3_cout\);

-- Location: LCCOMB_X37_Y37_N4
\inst3|LessThan4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~5_cout\ = CARRY((\inst2|inst2|Q\(2) & ((!\inst3|LessThan4~3_cout\) # (!\inst2|inst1|Q\(2)))) # (!\inst2|inst2|Q\(2) & (!\inst2|inst1|Q\(2) & !\inst3|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(2),
	datab => \inst2|inst1|Q\(2),
	datad => VCC,
	cin => \inst3|LessThan4~3_cout\,
	cout => \inst3|LessThan4~5_cout\);

-- Location: LCCOMB_X37_Y37_N6
\inst3|LessThan4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~7_cout\ = CARRY((\inst2|inst1|Q\(3) & ((!\inst3|LessThan4~5_cout\) # (!\inst2|inst2|Q\(3)))) # (!\inst2|inst1|Q\(3) & (!\inst2|inst2|Q\(3) & !\inst3|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(3),
	datab => \inst2|inst2|Q\(3),
	datad => VCC,
	cin => \inst3|LessThan4~5_cout\,
	cout => \inst3|LessThan4~7_cout\);

-- Location: LCCOMB_X37_Y37_N8
\inst3|LessThan4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~9_cout\ = CARRY((\inst2|inst2|Q\(4) & ((!\inst3|LessThan4~7_cout\) # (!\inst2|inst1|Q\(4)))) # (!\inst2|inst2|Q\(4) & (!\inst2|inst1|Q\(4) & !\inst3|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(4),
	datab => \inst2|inst1|Q\(4),
	datad => VCC,
	cin => \inst3|LessThan4~7_cout\,
	cout => \inst3|LessThan4~9_cout\);

-- Location: LCCOMB_X37_Y37_N10
\inst3|LessThan4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~11_cout\ = CARRY((\inst2|inst1|Q\(5) & ((!\inst3|LessThan4~9_cout\) # (!\inst2|inst2|Q\(5)))) # (!\inst2|inst1|Q\(5) & (!\inst2|inst2|Q\(5) & !\inst3|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(5),
	datab => \inst2|inst2|Q\(5),
	datad => VCC,
	cin => \inst3|LessThan4~9_cout\,
	cout => \inst3|LessThan4~11_cout\);

-- Location: LCCOMB_X37_Y37_N12
\inst3|LessThan4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~13_cout\ = CARRY((\inst2|inst1|Q\(6) & (\inst2|inst2|Q\(6) & !\inst3|LessThan4~11_cout\)) # (!\inst2|inst1|Q\(6) & ((\inst2|inst2|Q\(6)) # (!\inst3|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(6),
	datab => \inst2|inst2|Q\(6),
	datad => VCC,
	cin => \inst3|LessThan4~11_cout\,
	cout => \inst3|LessThan4~13_cout\);

-- Location: LCCOMB_X37_Y37_N14
\inst3|LessThan4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~14_combout\ = (\inst2|inst1|Q\(7) & ((\inst3|LessThan4~13_cout\) # (!\inst2|inst2|Q\(7)))) # (!\inst2|inst1|Q\(7) & (!\inst2|inst2|Q\(7) & \inst3|LessThan4~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(7),
	datab => \inst2|inst2|Q\(7),
	cin => \inst3|LessThan4~13_cout\,
	combout => \inst3|LessThan4~14_combout\);

-- Location: LCCOMB_X39_Y37_N12
\inst3|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~1_cout\ = CARRY((\inst2|inst|Q\(0) & !\inst2|inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(0),
	datab => \inst2|inst2|Q\(0),
	datad => VCC,
	cout => \inst3|LessThan3~1_cout\);

-- Location: LCCOMB_X39_Y37_N14
\inst3|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~3_cout\ = CARRY((\inst2|inst|Q\(1) & (\inst2|inst2|Q\(1) & !\inst3|LessThan3~1_cout\)) # (!\inst2|inst|Q\(1) & ((\inst2|inst2|Q\(1)) # (!\inst3|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(1),
	datab => \inst2|inst2|Q\(1),
	datad => VCC,
	cin => \inst3|LessThan3~1_cout\,
	cout => \inst3|LessThan3~3_cout\);

-- Location: LCCOMB_X39_Y37_N16
\inst3|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~5_cout\ = CARRY((\inst2|inst|Q\(2) & ((!\inst3|LessThan3~3_cout\) # (!\inst2|inst2|Q\(2)))) # (!\inst2|inst|Q\(2) & (!\inst2|inst2|Q\(2) & !\inst3|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(2),
	datab => \inst2|inst2|Q\(2),
	datad => VCC,
	cin => \inst3|LessThan3~3_cout\,
	cout => \inst3|LessThan3~5_cout\);

-- Location: LCCOMB_X39_Y37_N18
\inst3|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~7_cout\ = CARRY((\inst2|inst|Q\(3) & (\inst2|inst2|Q\(3) & !\inst3|LessThan3~5_cout\)) # (!\inst2|inst|Q\(3) & ((\inst2|inst2|Q\(3)) # (!\inst3|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(3),
	datab => \inst2|inst2|Q\(3),
	datad => VCC,
	cin => \inst3|LessThan3~5_cout\,
	cout => \inst3|LessThan3~7_cout\);

-- Location: LCCOMB_X39_Y37_N20
\inst3|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~9_cout\ = CARRY((\inst2|inst2|Q\(4) & (\inst2|inst|Q\(4) & !\inst3|LessThan3~7_cout\)) # (!\inst2|inst2|Q\(4) & ((\inst2|inst|Q\(4)) # (!\inst3|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(4),
	datab => \inst2|inst|Q\(4),
	datad => VCC,
	cin => \inst3|LessThan3~7_cout\,
	cout => \inst3|LessThan3~9_cout\);

-- Location: LCCOMB_X39_Y37_N22
\inst3|LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~11_cout\ = CARRY((\inst2|inst|Q\(5) & (\inst2|inst2|Q\(5) & !\inst3|LessThan3~9_cout\)) # (!\inst2|inst|Q\(5) & ((\inst2|inst2|Q\(5)) # (!\inst3|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(5),
	datab => \inst2|inst2|Q\(5),
	datad => VCC,
	cin => \inst3|LessThan3~9_cout\,
	cout => \inst3|LessThan3~11_cout\);

-- Location: LCCOMB_X39_Y37_N24
\inst3|LessThan3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~13_cout\ = CARRY((\inst2|inst2|Q\(6) & (\inst2|inst|Q\(6) & !\inst3|LessThan3~11_cout\)) # (!\inst2|inst2|Q\(6) & ((\inst2|inst|Q\(6)) # (!\inst3|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(6),
	datab => \inst2|inst|Q\(6),
	datad => VCC,
	cin => \inst3|LessThan3~11_cout\,
	cout => \inst3|LessThan3~13_cout\);

-- Location: LCCOMB_X39_Y37_N26
\inst3|LessThan3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~14_combout\ = (\inst2|inst|Q\(7) & (\inst3|LessThan3~13_cout\ & \inst2|inst2|Q\(7))) # (!\inst2|inst|Q\(7) & ((\inst3|LessThan3~13_cout\) # (\inst2|inst2|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(7),
	datad => \inst2|inst2|Q\(7),
	cin => \inst3|LessThan3~13_cout\,
	combout => \inst3|LessThan3~14_combout\);

-- Location: LCCOMB_X36_Y37_N0
\inst3|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~1_cout\ = CARRY((\inst2|inst|Q\(0) & !\inst2|inst1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(0),
	datab => \inst2|inst1|Q\(0),
	datad => VCC,
	cout => \inst3|LessThan2~1_cout\);

-- Location: LCCOMB_X36_Y37_N2
\inst3|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~3_cout\ = CARRY((\inst2|inst|Q\(1) & (\inst2|inst1|Q\(1) & !\inst3|LessThan2~1_cout\)) # (!\inst2|inst|Q\(1) & ((\inst2|inst1|Q\(1)) # (!\inst3|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(1),
	datab => \inst2|inst1|Q\(1),
	datad => VCC,
	cin => \inst3|LessThan2~1_cout\,
	cout => \inst3|LessThan2~3_cout\);

-- Location: LCCOMB_X36_Y37_N4
\inst3|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~5_cout\ = CARRY((\inst2|inst1|Q\(2) & (\inst2|inst|Q\(2) & !\inst3|LessThan2~3_cout\)) # (!\inst2|inst1|Q\(2) & ((\inst2|inst|Q\(2)) # (!\inst3|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(2),
	datab => \inst2|inst|Q\(2),
	datad => VCC,
	cin => \inst3|LessThan2~3_cout\,
	cout => \inst3|LessThan2~5_cout\);

-- Location: LCCOMB_X36_Y37_N6
\inst3|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~7_cout\ = CARRY((\inst2|inst1|Q\(3) & ((!\inst3|LessThan2~5_cout\) # (!\inst2|inst|Q\(3)))) # (!\inst2|inst1|Q\(3) & (!\inst2|inst|Q\(3) & !\inst3|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(3),
	datab => \inst2|inst|Q\(3),
	datad => VCC,
	cin => \inst3|LessThan2~5_cout\,
	cout => \inst3|LessThan2~7_cout\);

-- Location: LCCOMB_X36_Y37_N8
\inst3|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~9_cout\ = CARRY((\inst2|inst|Q\(4) & ((!\inst3|LessThan2~7_cout\) # (!\inst2|inst1|Q\(4)))) # (!\inst2|inst|Q\(4) & (!\inst2|inst1|Q\(4) & !\inst3|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(4),
	datab => \inst2|inst1|Q\(4),
	datad => VCC,
	cin => \inst3|LessThan2~7_cout\,
	cout => \inst3|LessThan2~9_cout\);

-- Location: LCCOMB_X36_Y37_N10
\inst3|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~11_cout\ = CARRY((\inst2|inst|Q\(5) & (\inst2|inst1|Q\(5) & !\inst3|LessThan2~9_cout\)) # (!\inst2|inst|Q\(5) & ((\inst2|inst1|Q\(5)) # (!\inst3|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(5),
	datab => \inst2|inst1|Q\(5),
	datad => VCC,
	cin => \inst3|LessThan2~9_cout\,
	cout => \inst3|LessThan2~11_cout\);

-- Location: LCCOMB_X36_Y37_N12
\inst3|LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~13_cout\ = CARRY((\inst2|inst|Q\(6) & ((!\inst3|LessThan2~11_cout\) # (!\inst2|inst1|Q\(6)))) # (!\inst2|inst|Q\(6) & (!\inst2|inst1|Q\(6) & !\inst3|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(6),
	datab => \inst2|inst1|Q\(6),
	datad => VCC,
	cin => \inst3|LessThan2~11_cout\,
	cout => \inst3|LessThan2~13_cout\);

-- Location: LCCOMB_X36_Y37_N14
\inst3|LessThan2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~14_combout\ = (\inst2|inst1|Q\(7) & ((\inst3|LessThan2~13_cout\) # (!\inst2|inst|Q\(7)))) # (!\inst2|inst1|Q\(7) & (\inst3|LessThan2~13_cout\ & !\inst2|inst|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(7),
	datad => \inst2|inst|Q\(7),
	cin => \inst3|LessThan2~13_cout\,
	combout => \inst3|LessThan2~14_combout\);

-- Location: LCCOMB_X34_Y37_N10
\inst3|Result[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[8]~2_combout\ = (\inst3|LessThan2~14_combout\ & ((\Op[0]~input_o\ & (\inst3|LessThan4~14_combout\)) # (!\Op[0]~input_o\ & ((\inst3|LessThan3~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan4~14_combout\,
	datab => \Op[0]~input_o\,
	datac => \inst3|LessThan3~14_combout\,
	datad => \inst3|LessThan2~14_combout\,
	combout => \inst3|Result[8]~2_combout\);

-- Location: LCCOMB_X34_Y37_N4
\inst3|Result[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[8]~3_combout\ = (\inst3|Result[8]~1_combout\ & (((\Op[0]~input_o\) # (\inst3|Result[8]~2_combout\)))) # (!\inst3|Result[8]~1_combout\ & ((\inst3|Result[8]~2_combout\ & ((!\Op[0]~input_o\))) # (!\inst3|Result[8]~2_combout\ & 
-- (\inst2|inst2|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(7),
	datab => \Op[0]~input_o\,
	datac => \inst3|Result[8]~1_combout\,
	datad => \inst3|Result[8]~2_combout\,
	combout => \inst3|Result[8]~3_combout\);

-- Location: LCCOMB_X34_Y37_N18
\inst3|Result[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[8]~4_combout\ = (\inst3|Result[8]~1_combout\) # (\inst3|Result[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Result[8]~1_combout\,
	datad => \inst3|Result[8]~2_combout\,
	combout => \inst3|Result[8]~4_combout\);

-- Location: LCCOMB_X34_Y37_N28
\inst3|Result[8]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[8]~5_combout\ = (\inst3|Result[8]~3_combout\ & (((\inst2|inst|Q\(7)) # (!\inst3|Result[8]~4_combout\)))) # (!\inst3|Result[8]~3_combout\ & (\inst2|inst1|Q\(7) & ((\inst3|Result[8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(7),
	datab => \inst2|inst|Q\(7),
	datac => \inst3|Result[8]~3_combout\,
	datad => \inst3|Result[8]~4_combout\,
	combout => \inst3|Result[8]~5_combout\);

-- Location: LCCOMB_X38_Y36_N30
\inst|inst2|Q_reg[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg[7]~1_combout\ = (\Op[1]~input_o\ & (!\Op[0]~input_o\)) # (!\Op[1]~input_o\ & ((\inst3|Result[8]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datad => \inst3|Result[8]~5_combout\,
	combout => \inst|inst2|Q_reg[7]~1_combout\);

-- Location: LCCOMB_X38_Y37_N24
\inst3|signed_max_ext[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max_ext[7]~0_combout\ = (\inst3|LessThan0~14_combout\ & ((\inst3|LessThan1~14_combout\ & (\inst2|inst1|Q\(7))) # (!\inst3|LessThan1~14_combout\ & ((\inst2|inst2|Q\(7)))))) # (!\inst3|LessThan0~14_combout\ & (((\inst2|inst2|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(7),
	datab => \inst2|inst2|Q\(7),
	datac => \inst3|LessThan0~14_combout\,
	datad => \inst3|LessThan1~14_combout\,
	combout => \inst3|signed_max_ext[7]~0_combout\);

-- Location: LCCOMB_X38_Y37_N30
\inst3|signed_max_ext[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max_ext[7]~1_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan3~14_combout\ & (\inst2|inst|Q\(7))) # (!\inst3|LessThan3~14_combout\ & ((\inst3|signed_max_ext[7]~0_combout\))))) # (!\inst3|LessThan2~14_combout\ & 
-- (((\inst3|signed_max_ext[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(7),
	datab => \inst3|LessThan2~14_combout\,
	datac => \inst3|LessThan3~14_combout\,
	datad => \inst3|signed_max_ext[7]~0_combout\,
	combout => \inst3|signed_max_ext[7]~1_combout\);

-- Location: LCCOMB_X35_Y37_N8
\inst3|signed_min_ext[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min_ext[7]~0_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan4~14_combout\ & (\inst2|inst1|Q\(7))) # (!\inst3|LessThan4~14_combout\ & ((\inst2|inst2|Q\(7)))))) # (!\inst3|LessThan2~14_combout\ & (((\inst2|inst2|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(7),
	datab => \inst2|inst2|Q\(7),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|LessThan4~14_combout\,
	combout => \inst3|signed_min_ext[7]~0_combout\);

-- Location: LCCOMB_X35_Y37_N2
\inst3|signed_min_ext[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min_ext[7]~1_combout\ = (\inst3|LessThan5~14_combout\ & ((\inst3|LessThan0~14_combout\ & (\inst2|inst|Q\(7))) # (!\inst3|LessThan0~14_combout\ & ((\inst3|signed_min_ext[7]~0_combout\))))) # (!\inst3|LessThan5~14_combout\ & 
-- (((\inst3|signed_min_ext[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(7),
	datab => \inst3|LessThan5~14_combout\,
	datac => \inst3|signed_min_ext[7]~0_combout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|signed_min_ext[7]~1_combout\);

-- Location: LCCOMB_X35_Y37_N4
\inst3|signed_min[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[6]~0_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan4~14_combout\ & ((\inst2|inst1|Q\(6)))) # (!\inst3|LessThan4~14_combout\ & (\inst2|inst2|Q\(6))))) # (!\inst3|LessThan2~14_combout\ & (\inst2|inst2|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(6),
	datab => \inst2|inst1|Q\(6),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|LessThan4~14_combout\,
	combout => \inst3|signed_min[6]~0_combout\);

-- Location: LCCOMB_X35_Y37_N6
\inst3|signed_min[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[6]~1_combout\ = (\inst3|LessThan5~14_combout\ & ((\inst3|LessThan0~14_combout\ & (\inst2|inst|Q\(6))) # (!\inst3|LessThan0~14_combout\ & ((\inst3|signed_min[6]~0_combout\))))) # (!\inst3|LessThan5~14_combout\ & 
-- (((\inst3|signed_min[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(6),
	datab => \inst3|LessThan5~14_combout\,
	datac => \inst3|signed_min[6]~0_combout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|signed_min[6]~1_combout\);

-- Location: LCCOMB_X38_Y37_N0
\inst3|signed_max[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[6]~0_combout\ = (\inst3|LessThan0~14_combout\ & ((\inst3|LessThan1~14_combout\ & (\inst2|inst1|Q\(6))) # (!\inst3|LessThan1~14_combout\ & ((\inst2|inst2|Q\(6)))))) # (!\inst3|LessThan0~14_combout\ & (((\inst2|inst2|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(6),
	datab => \inst2|inst2|Q\(6),
	datac => \inst3|LessThan0~14_combout\,
	datad => \inst3|LessThan1~14_combout\,
	combout => \inst3|signed_max[6]~0_combout\);

-- Location: LCCOMB_X38_Y37_N4
\inst3|signed_max[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[6]~1_combout\ = (\inst3|LessThan3~14_combout\ & ((\inst3|LessThan2~14_combout\ & (\inst2|inst|Q\(6))) # (!\inst3|LessThan2~14_combout\ & ((\inst3|signed_max[6]~0_combout\))))) # (!\inst3|LessThan3~14_combout\ & 
-- (((\inst3|signed_max[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan3~14_combout\,
	datab => \inst3|LessThan2~14_combout\,
	datac => \inst2|inst|Q\(6),
	datad => \inst3|signed_max[6]~0_combout\,
	combout => \inst3|signed_max[6]~1_combout\);

-- Location: LCCOMB_X35_Y37_N12
\inst3|signed_min[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[5]~2_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan4~14_combout\ & (\inst2|inst1|Q\(5))) # (!\inst3|LessThan4~14_combout\ & ((\inst2|inst2|Q\(5)))))) # (!\inst3|LessThan2~14_combout\ & (((\inst2|inst2|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(5),
	datab => \inst2|inst2|Q\(5),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|LessThan4~14_combout\,
	combout => \inst3|signed_min[5]~2_combout\);

-- Location: LCCOMB_X35_Y37_N10
\inst3|signed_min[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[5]~3_combout\ = (\inst3|LessThan5~14_combout\ & ((\inst3|LessThan0~14_combout\ & (\inst2|inst|Q\(5))) # (!\inst3|LessThan0~14_combout\ & ((\inst3|signed_min[5]~2_combout\))))) # (!\inst3|LessThan5~14_combout\ & 
-- (((\inst3|signed_min[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(5),
	datab => \inst3|LessThan5~14_combout\,
	datac => \inst3|LessThan0~14_combout\,
	datad => \inst3|signed_min[5]~2_combout\,
	combout => \inst3|signed_min[5]~3_combout\);

-- Location: LCCOMB_X38_Y37_N26
\inst3|signed_max[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[5]~2_combout\ = (\inst3|LessThan0~14_combout\ & ((\inst3|LessThan1~14_combout\ & ((\inst2|inst1|Q\(5)))) # (!\inst3|LessThan1~14_combout\ & (\inst2|inst2|Q\(5))))) # (!\inst3|LessThan0~14_combout\ & (\inst2|inst2|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(5),
	datab => \inst2|inst1|Q\(5),
	datac => \inst3|LessThan0~14_combout\,
	datad => \inst3|LessThan1~14_combout\,
	combout => \inst3|signed_max[5]~2_combout\);

-- Location: LCCOMB_X38_Y37_N28
\inst3|signed_max[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[5]~3_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan3~14_combout\ & (\inst2|inst|Q\(5))) # (!\inst3|LessThan3~14_combout\ & ((\inst3|signed_max[5]~2_combout\))))) # (!\inst3|LessThan2~14_combout\ & 
-- (((\inst3|signed_max[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(5),
	datab => \inst3|LessThan2~14_combout\,
	datac => \inst3|signed_max[5]~2_combout\,
	datad => \inst3|LessThan3~14_combout\,
	combout => \inst3|signed_max[5]~3_combout\);

-- Location: LCCOMB_X35_Y37_N0
\inst3|signed_min[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[4]~4_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan4~14_combout\ & (\inst2|inst1|Q\(4))) # (!\inst3|LessThan4~14_combout\ & ((\inst2|inst2|Q\(4)))))) # (!\inst3|LessThan2~14_combout\ & (((\inst2|inst2|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(4),
	datab => \inst2|inst2|Q\(4),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|LessThan4~14_combout\,
	combout => \inst3|signed_min[4]~4_combout\);

-- Location: LCCOMB_X35_Y37_N30
\inst3|signed_min[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[4]~5_combout\ = (\inst3|LessThan5~14_combout\ & ((\inst3|LessThan0~14_combout\ & (\inst2|inst|Q\(4))) # (!\inst3|LessThan0~14_combout\ & ((\inst3|signed_min[4]~4_combout\))))) # (!\inst3|LessThan5~14_combout\ & 
-- (((\inst3|signed_min[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(4),
	datab => \inst3|LessThan5~14_combout\,
	datac => \inst3|LessThan0~14_combout\,
	datad => \inst3|signed_min[4]~4_combout\,
	combout => \inst3|signed_min[4]~5_combout\);

-- Location: LCCOMB_X38_Y37_N2
\inst3|signed_max[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[4]~4_combout\ = (\inst3|LessThan0~14_combout\ & ((\inst3|LessThan1~14_combout\ & ((\inst2|inst1|Q\(4)))) # (!\inst3|LessThan1~14_combout\ & (\inst2|inst2|Q\(4))))) # (!\inst3|LessThan0~14_combout\ & (\inst2|inst2|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(4),
	datab => \inst2|inst1|Q\(4),
	datac => \inst3|LessThan0~14_combout\,
	datad => \inst3|LessThan1~14_combout\,
	combout => \inst3|signed_max[4]~4_combout\);

-- Location: LCCOMB_X38_Y37_N6
\inst3|signed_max[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[4]~5_combout\ = (\inst3|LessThan3~14_combout\ & ((\inst3|LessThan2~14_combout\ & (\inst2|inst|Q\(4))) # (!\inst3|LessThan2~14_combout\ & ((\inst3|signed_max[4]~4_combout\))))) # (!\inst3|LessThan3~14_combout\ & 
-- (((\inst3|signed_max[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan3~14_combout\,
	datab => \inst3|LessThan2~14_combout\,
	datac => \inst2|inst|Q\(4),
	datad => \inst3|signed_max[4]~4_combout\,
	combout => \inst3|signed_max[4]~5_combout\);

-- Location: LCCOMB_X36_Y37_N24
\inst3|signed_min[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[3]~6_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan4~14_combout\ & ((\inst2|inst1|Q\(3)))) # (!\inst3|LessThan4~14_combout\ & (\inst2|inst2|Q\(3))))) # (!\inst3|LessThan2~14_combout\ & (\inst2|inst2|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(3),
	datab => \inst2|inst1|Q\(3),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|LessThan4~14_combout\,
	combout => \inst3|signed_min[3]~6_combout\);

-- Location: LCCOMB_X36_Y37_N16
\inst3|signed_min[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[3]~7_combout\ = (\inst3|LessThan0~14_combout\ & ((\inst3|LessThan5~14_combout\ & (\inst2|inst|Q\(3))) # (!\inst3|LessThan5~14_combout\ & ((\inst3|signed_min[3]~6_combout\))))) # (!\inst3|LessThan0~14_combout\ & 
-- (((\inst3|signed_min[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~14_combout\,
	datab => \inst3|LessThan5~14_combout\,
	datac => \inst2|inst|Q\(3),
	datad => \inst3|signed_min[3]~6_combout\,
	combout => \inst3|signed_min[3]~7_combout\);

-- Location: LCCOMB_X39_Y37_N4
\inst3|signed_max[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[3]~6_combout\ = (\inst3|LessThan1~14_combout\ & ((\inst3|LessThan0~14_combout\ & ((\inst2|inst1|Q\(3)))) # (!\inst3|LessThan0~14_combout\ & (\inst2|inst2|Q\(3))))) # (!\inst3|LessThan1~14_combout\ & (\inst2|inst2|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(3),
	datab => \inst2|inst1|Q\(3),
	datac => \inst3|LessThan1~14_combout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|signed_max[3]~6_combout\);

-- Location: LCCOMB_X39_Y37_N10
\inst3|signed_max[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[3]~7_combout\ = (\inst3|LessThan3~14_combout\ & ((\inst3|LessThan2~14_combout\ & (\inst2|inst|Q\(3))) # (!\inst3|LessThan2~14_combout\ & ((\inst3|signed_max[3]~6_combout\))))) # (!\inst3|LessThan3~14_combout\ & 
-- (((\inst3|signed_max[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan3~14_combout\,
	datab => \inst2|inst|Q\(3),
	datac => \inst3|signed_max[3]~6_combout\,
	datad => \inst3|LessThan2~14_combout\,
	combout => \inst3|signed_max[3]~7_combout\);

-- Location: LCCOMB_X36_Y37_N26
\inst3|signed_min[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[2]~8_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan4~14_combout\ & (\inst2|inst1|Q\(2))) # (!\inst3|LessThan4~14_combout\ & ((\inst2|inst2|Q\(2)))))) # (!\inst3|LessThan2~14_combout\ & (((\inst2|inst2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(2),
	datab => \inst2|inst2|Q\(2),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|LessThan4~14_combout\,
	combout => \inst3|signed_min[2]~8_combout\);

-- Location: LCCOMB_X36_Y37_N20
\inst3|signed_min[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[2]~9_combout\ = (\inst3|LessThan0~14_combout\ & ((\inst3|LessThan5~14_combout\ & (\inst2|inst|Q\(2))) # (!\inst3|LessThan5~14_combout\ & ((\inst3|signed_min[2]~8_combout\))))) # (!\inst3|LessThan0~14_combout\ & 
-- (((\inst3|signed_min[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~14_combout\,
	datab => \inst2|inst|Q\(2),
	datac => \inst3|signed_min[2]~8_combout\,
	datad => \inst3|LessThan5~14_combout\,
	combout => \inst3|signed_min[2]~9_combout\);

-- Location: LCCOMB_X39_Y37_N8
\inst3|signed_max[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[2]~8_combout\ = (\inst3|LessThan1~14_combout\ & ((\inst3|LessThan0~14_combout\ & ((\inst2|inst1|Q\(2)))) # (!\inst3|LessThan0~14_combout\ & (\inst2|inst2|Q\(2))))) # (!\inst3|LessThan1~14_combout\ & (\inst2|inst2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(2),
	datab => \inst2|inst1|Q\(2),
	datac => \inst3|LessThan1~14_combout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|signed_max[2]~8_combout\);

-- Location: LCCOMB_X39_Y37_N2
\inst3|signed_max[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[2]~9_combout\ = (\inst3|LessThan3~14_combout\ & ((\inst3|LessThan2~14_combout\ & (\inst2|inst|Q\(2))) # (!\inst3|LessThan2~14_combout\ & ((\inst3|signed_max[2]~8_combout\))))) # (!\inst3|LessThan3~14_combout\ & 
-- (((\inst3|signed_max[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan3~14_combout\,
	datab => \inst2|inst|Q\(2),
	datac => \inst3|signed_max[2]~8_combout\,
	datad => \inst3|LessThan2~14_combout\,
	combout => \inst3|signed_max[2]~9_combout\);

-- Location: LCCOMB_X39_Y37_N28
\inst3|signed_max[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[1]~10_combout\ = (\inst3|LessThan1~14_combout\ & ((\inst3|LessThan0~14_combout\ & (\inst2|inst1|Q\(1))) # (!\inst3|LessThan0~14_combout\ & ((\inst2|inst2|Q\(1)))))) # (!\inst3|LessThan1~14_combout\ & (((\inst2|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(1),
	datab => \inst2|inst2|Q\(1),
	datac => \inst3|LessThan1~14_combout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|signed_max[1]~10_combout\);

-- Location: LCCOMB_X39_Y37_N6
\inst3|signed_max[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[1]~11_combout\ = (\inst3|LessThan3~14_combout\ & ((\inst3|LessThan2~14_combout\ & (\inst2|inst|Q\(1))) # (!\inst3|LessThan2~14_combout\ & ((\inst3|signed_max[1]~10_combout\))))) # (!\inst3|LessThan3~14_combout\ & 
-- (((\inst3|signed_max[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan3~14_combout\,
	datab => \inst2|inst|Q\(1),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|signed_max[1]~10_combout\,
	combout => \inst3|signed_max[1]~11_combout\);

-- Location: LCCOMB_X36_Y37_N18
\inst3|signed_min[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[1]~10_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan4~14_combout\ & (\inst2|inst1|Q\(1))) # (!\inst3|LessThan4~14_combout\ & ((\inst2|inst2|Q\(1)))))) # (!\inst3|LessThan2~14_combout\ & (((\inst2|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(1),
	datab => \inst2|inst2|Q\(1),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|LessThan4~14_combout\,
	combout => \inst3|signed_min[1]~10_combout\);

-- Location: LCCOMB_X36_Y37_N22
\inst3|signed_min[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[1]~11_combout\ = (\inst3|LessThan0~14_combout\ & ((\inst3|LessThan5~14_combout\ & (\inst2|inst|Q\(1))) # (!\inst3|LessThan5~14_combout\ & ((\inst3|signed_min[1]~10_combout\))))) # (!\inst3|LessThan0~14_combout\ & 
-- (((\inst3|signed_min[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~14_combout\,
	datab => \inst3|LessThan5~14_combout\,
	datac => \inst2|inst|Q\(1),
	datad => \inst3|signed_min[1]~10_combout\,
	combout => \inst3|signed_min[1]~11_combout\);

-- Location: LCCOMB_X36_Y37_N28
\inst3|signed_min[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[0]~12_combout\ = (\inst3|LessThan2~14_combout\ & ((\inst3|LessThan4~14_combout\ & ((\inst2|inst1|Q\(0)))) # (!\inst3|LessThan4~14_combout\ & (\inst2|inst2|Q\(0))))) # (!\inst3|LessThan2~14_combout\ & (\inst2|inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Q\(0),
	datab => \inst2|inst1|Q\(0),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|LessThan4~14_combout\,
	combout => \inst3|signed_min[0]~12_combout\);

-- Location: LCCOMB_X36_Y37_N30
\inst3|signed_min[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_min[0]~13_combout\ = (\inst3|LessThan5~14_combout\ & ((\inst3|LessThan0~14_combout\ & (\inst2|inst|Q\(0))) # (!\inst3|LessThan0~14_combout\ & ((\inst3|signed_min[0]~12_combout\))))) # (!\inst3|LessThan5~14_combout\ & 
-- (((\inst3|signed_min[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Q\(0),
	datab => \inst3|LessThan5~14_combout\,
	datac => \inst3|LessThan0~14_combout\,
	datad => \inst3|signed_min[0]~12_combout\,
	combout => \inst3|signed_min[0]~13_combout\);

-- Location: LCCOMB_X39_Y37_N0
\inst3|signed_max[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[0]~12_combout\ = (\inst3|LessThan1~14_combout\ & ((\inst3|LessThan0~14_combout\ & (\inst2|inst1|Q\(0))) # (!\inst3|LessThan0~14_combout\ & ((\inst2|inst2|Q\(0)))))) # (!\inst3|LessThan1~14_combout\ & (((\inst2|inst2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|Q\(0),
	datab => \inst2|inst2|Q\(0),
	datac => \inst3|LessThan1~14_combout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|signed_max[0]~12_combout\);

-- Location: LCCOMB_X39_Y37_N30
\inst3|signed_max[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_max[0]~13_combout\ = (\inst3|LessThan3~14_combout\ & ((\inst3|LessThan2~14_combout\ & (\inst2|inst|Q\(0))) # (!\inst3|LessThan2~14_combout\ & ((\inst3|signed_max[0]~12_combout\))))) # (!\inst3|LessThan3~14_combout\ & 
-- (((\inst3|signed_max[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan3~14_combout\,
	datab => \inst2|inst|Q\(0),
	datac => \inst3|LessThan2~14_combout\,
	datad => \inst3|signed_max[0]~12_combout\,
	combout => \inst3|signed_max[0]~13_combout\);

-- Location: LCCOMB_X37_Y36_N10
\inst3|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_cout\ = CARRY((\inst3|signed_min[0]~13_combout\ & \inst3|signed_max[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[0]~13_combout\,
	datab => \inst3|signed_max[0]~13_combout\,
	datad => VCC,
	cout => \inst3|Add0~1_cout\);

-- Location: LCCOMB_X37_Y36_N12
\inst3|signed_suma[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_suma[1]~0_combout\ = (\inst3|signed_max[1]~11_combout\ & ((\inst3|signed_min[1]~11_combout\ & (\inst3|Add0~1_cout\ & VCC)) # (!\inst3|signed_min[1]~11_combout\ & (!\inst3|Add0~1_cout\)))) # (!\inst3|signed_max[1]~11_combout\ & 
-- ((\inst3|signed_min[1]~11_combout\ & (!\inst3|Add0~1_cout\)) # (!\inst3|signed_min[1]~11_combout\ & ((\inst3|Add0~1_cout\) # (GND)))))
-- \inst3|signed_suma[1]~1\ = CARRY((\inst3|signed_max[1]~11_combout\ & (!\inst3|signed_min[1]~11_combout\ & !\inst3|Add0~1_cout\)) # (!\inst3|signed_max[1]~11_combout\ & ((!\inst3|Add0~1_cout\) # (!\inst3|signed_min[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_max[1]~11_combout\,
	datab => \inst3|signed_min[1]~11_combout\,
	datad => VCC,
	cin => \inst3|Add0~1_cout\,
	combout => \inst3|signed_suma[1]~0_combout\,
	cout => \inst3|signed_suma[1]~1\);

-- Location: LCCOMB_X37_Y36_N14
\inst3|signed_suma[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_suma[2]~2_combout\ = ((\inst3|signed_min[2]~9_combout\ $ (\inst3|signed_max[2]~9_combout\ $ (!\inst3|signed_suma[1]~1\)))) # (GND)
-- \inst3|signed_suma[2]~3\ = CARRY((\inst3|signed_min[2]~9_combout\ & ((\inst3|signed_max[2]~9_combout\) # (!\inst3|signed_suma[1]~1\))) # (!\inst3|signed_min[2]~9_combout\ & (\inst3|signed_max[2]~9_combout\ & !\inst3|signed_suma[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[2]~9_combout\,
	datab => \inst3|signed_max[2]~9_combout\,
	datad => VCC,
	cin => \inst3|signed_suma[1]~1\,
	combout => \inst3|signed_suma[2]~2_combout\,
	cout => \inst3|signed_suma[2]~3\);

-- Location: LCCOMB_X37_Y36_N16
\inst3|signed_suma[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_suma[3]~4_combout\ = (\inst3|signed_min[3]~7_combout\ & ((\inst3|signed_max[3]~7_combout\ & (\inst3|signed_suma[2]~3\ & VCC)) # (!\inst3|signed_max[3]~7_combout\ & (!\inst3|signed_suma[2]~3\)))) # (!\inst3|signed_min[3]~7_combout\ & 
-- ((\inst3|signed_max[3]~7_combout\ & (!\inst3|signed_suma[2]~3\)) # (!\inst3|signed_max[3]~7_combout\ & ((\inst3|signed_suma[2]~3\) # (GND)))))
-- \inst3|signed_suma[3]~5\ = CARRY((\inst3|signed_min[3]~7_combout\ & (!\inst3|signed_max[3]~7_combout\ & !\inst3|signed_suma[2]~3\)) # (!\inst3|signed_min[3]~7_combout\ & ((!\inst3|signed_suma[2]~3\) # (!\inst3|signed_max[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[3]~7_combout\,
	datab => \inst3|signed_max[3]~7_combout\,
	datad => VCC,
	cin => \inst3|signed_suma[2]~3\,
	combout => \inst3|signed_suma[3]~4_combout\,
	cout => \inst3|signed_suma[3]~5\);

-- Location: LCCOMB_X37_Y36_N18
\inst3|signed_suma[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_suma[4]~6_combout\ = ((\inst3|signed_min[4]~5_combout\ $ (\inst3|signed_max[4]~5_combout\ $ (!\inst3|signed_suma[3]~5\)))) # (GND)
-- \inst3|signed_suma[4]~7\ = CARRY((\inst3|signed_min[4]~5_combout\ & ((\inst3|signed_max[4]~5_combout\) # (!\inst3|signed_suma[3]~5\))) # (!\inst3|signed_min[4]~5_combout\ & (\inst3|signed_max[4]~5_combout\ & !\inst3|signed_suma[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[4]~5_combout\,
	datab => \inst3|signed_max[4]~5_combout\,
	datad => VCC,
	cin => \inst3|signed_suma[3]~5\,
	combout => \inst3|signed_suma[4]~6_combout\,
	cout => \inst3|signed_suma[4]~7\);

-- Location: LCCOMB_X37_Y36_N20
\inst3|signed_suma[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_suma[5]~8_combout\ = (\inst3|signed_min[5]~3_combout\ & ((\inst3|signed_max[5]~3_combout\ & (\inst3|signed_suma[4]~7\ & VCC)) # (!\inst3|signed_max[5]~3_combout\ & (!\inst3|signed_suma[4]~7\)))) # (!\inst3|signed_min[5]~3_combout\ & 
-- ((\inst3|signed_max[5]~3_combout\ & (!\inst3|signed_suma[4]~7\)) # (!\inst3|signed_max[5]~3_combout\ & ((\inst3|signed_suma[4]~7\) # (GND)))))
-- \inst3|signed_suma[5]~9\ = CARRY((\inst3|signed_min[5]~3_combout\ & (!\inst3|signed_max[5]~3_combout\ & !\inst3|signed_suma[4]~7\)) # (!\inst3|signed_min[5]~3_combout\ & ((!\inst3|signed_suma[4]~7\) # (!\inst3|signed_max[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[5]~3_combout\,
	datab => \inst3|signed_max[5]~3_combout\,
	datad => VCC,
	cin => \inst3|signed_suma[4]~7\,
	combout => \inst3|signed_suma[5]~8_combout\,
	cout => \inst3|signed_suma[5]~9\);

-- Location: LCCOMB_X37_Y36_N22
\inst3|signed_suma[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_suma[6]~10_combout\ = ((\inst3|signed_min[6]~1_combout\ $ (\inst3|signed_max[6]~1_combout\ $ (!\inst3|signed_suma[5]~9\)))) # (GND)
-- \inst3|signed_suma[6]~11\ = CARRY((\inst3|signed_min[6]~1_combout\ & ((\inst3|signed_max[6]~1_combout\) # (!\inst3|signed_suma[5]~9\))) # (!\inst3|signed_min[6]~1_combout\ & (\inst3|signed_max[6]~1_combout\ & !\inst3|signed_suma[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[6]~1_combout\,
	datab => \inst3|signed_max[6]~1_combout\,
	datad => VCC,
	cin => \inst3|signed_suma[5]~9\,
	combout => \inst3|signed_suma[6]~10_combout\,
	cout => \inst3|signed_suma[6]~11\);

-- Location: LCCOMB_X37_Y36_N24
\inst3|signed_suma[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_suma[7]~12_combout\ = (\inst3|signed_max_ext[7]~1_combout\ & ((\inst3|signed_min_ext[7]~1_combout\ & (\inst3|signed_suma[6]~11\ & VCC)) # (!\inst3|signed_min_ext[7]~1_combout\ & (!\inst3|signed_suma[6]~11\)))) # 
-- (!\inst3|signed_max_ext[7]~1_combout\ & ((\inst3|signed_min_ext[7]~1_combout\ & (!\inst3|signed_suma[6]~11\)) # (!\inst3|signed_min_ext[7]~1_combout\ & ((\inst3|signed_suma[6]~11\) # (GND)))))
-- \inst3|signed_suma[7]~13\ = CARRY((\inst3|signed_max_ext[7]~1_combout\ & (!\inst3|signed_min_ext[7]~1_combout\ & !\inst3|signed_suma[6]~11\)) # (!\inst3|signed_max_ext[7]~1_combout\ & ((!\inst3|signed_suma[6]~11\) # 
-- (!\inst3|signed_min_ext[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_max_ext[7]~1_combout\,
	datab => \inst3|signed_min_ext[7]~1_combout\,
	datad => VCC,
	cin => \inst3|signed_suma[6]~11\,
	combout => \inst3|signed_suma[7]~12_combout\,
	cout => \inst3|signed_suma[7]~13\);

-- Location: LCCOMB_X37_Y36_N26
\inst3|signed_suma_2[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_suma_2[7]~0_combout\ = \inst3|signed_max_ext[7]~1_combout\ $ (\inst3|signed_suma[7]~13\ $ (!\inst3|signed_min_ext[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_max_ext[7]~1_combout\,
	datad => \inst3|signed_min_ext[7]~1_combout\,
	cin => \inst3|signed_suma[7]~13\,
	combout => \inst3|signed_suma_2[7]~0_combout\);

-- Location: LCCOMB_X39_Y36_N6
\inst3|signed_resta[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_resta[0]~0_combout\ = (\inst3|signed_max[0]~13_combout\ & ((GND) # (!\inst3|signed_min[0]~13_combout\))) # (!\inst3|signed_max[0]~13_combout\ & (\inst3|signed_min[0]~13_combout\ $ (GND)))
-- \inst3|signed_resta[0]~1\ = CARRY((\inst3|signed_max[0]~13_combout\) # (!\inst3|signed_min[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_max[0]~13_combout\,
	datab => \inst3|signed_min[0]~13_combout\,
	datad => VCC,
	combout => \inst3|signed_resta[0]~0_combout\,
	cout => \inst3|signed_resta[0]~1\);

-- Location: LCCOMB_X39_Y36_N8
\inst3|signed_resta[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_resta[1]~2_combout\ = (\inst3|signed_max[1]~11_combout\ & ((\inst3|signed_min[1]~11_combout\ & (!\inst3|signed_resta[0]~1\)) # (!\inst3|signed_min[1]~11_combout\ & (\inst3|signed_resta[0]~1\ & VCC)))) # (!\inst3|signed_max[1]~11_combout\ & 
-- ((\inst3|signed_min[1]~11_combout\ & ((\inst3|signed_resta[0]~1\) # (GND))) # (!\inst3|signed_min[1]~11_combout\ & (!\inst3|signed_resta[0]~1\))))
-- \inst3|signed_resta[1]~3\ = CARRY((\inst3|signed_max[1]~11_combout\ & (\inst3|signed_min[1]~11_combout\ & !\inst3|signed_resta[0]~1\)) # (!\inst3|signed_max[1]~11_combout\ & ((\inst3|signed_min[1]~11_combout\) # (!\inst3|signed_resta[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_max[1]~11_combout\,
	datab => \inst3|signed_min[1]~11_combout\,
	datad => VCC,
	cin => \inst3|signed_resta[0]~1\,
	combout => \inst3|signed_resta[1]~2_combout\,
	cout => \inst3|signed_resta[1]~3\);

-- Location: LCCOMB_X39_Y36_N10
\inst3|signed_resta[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_resta[2]~4_combout\ = ((\inst3|signed_min[2]~9_combout\ $ (\inst3|signed_max[2]~9_combout\ $ (\inst3|signed_resta[1]~3\)))) # (GND)
-- \inst3|signed_resta[2]~5\ = CARRY((\inst3|signed_min[2]~9_combout\ & (\inst3|signed_max[2]~9_combout\ & !\inst3|signed_resta[1]~3\)) # (!\inst3|signed_min[2]~9_combout\ & ((\inst3|signed_max[2]~9_combout\) # (!\inst3|signed_resta[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[2]~9_combout\,
	datab => \inst3|signed_max[2]~9_combout\,
	datad => VCC,
	cin => \inst3|signed_resta[1]~3\,
	combout => \inst3|signed_resta[2]~4_combout\,
	cout => \inst3|signed_resta[2]~5\);

-- Location: LCCOMB_X39_Y36_N12
\inst3|signed_resta[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_resta[3]~6_combout\ = (\inst3|signed_min[3]~7_combout\ & ((\inst3|signed_max[3]~7_combout\ & (!\inst3|signed_resta[2]~5\)) # (!\inst3|signed_max[3]~7_combout\ & ((\inst3|signed_resta[2]~5\) # (GND))))) # (!\inst3|signed_min[3]~7_combout\ & 
-- ((\inst3|signed_max[3]~7_combout\ & (\inst3|signed_resta[2]~5\ & VCC)) # (!\inst3|signed_max[3]~7_combout\ & (!\inst3|signed_resta[2]~5\))))
-- \inst3|signed_resta[3]~7\ = CARRY((\inst3|signed_min[3]~7_combout\ & ((!\inst3|signed_resta[2]~5\) # (!\inst3|signed_max[3]~7_combout\))) # (!\inst3|signed_min[3]~7_combout\ & (!\inst3|signed_max[3]~7_combout\ & !\inst3|signed_resta[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[3]~7_combout\,
	datab => \inst3|signed_max[3]~7_combout\,
	datad => VCC,
	cin => \inst3|signed_resta[2]~5\,
	combout => \inst3|signed_resta[3]~6_combout\,
	cout => \inst3|signed_resta[3]~7\);

-- Location: LCCOMB_X39_Y36_N14
\inst3|signed_resta[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_resta[4]~8_combout\ = ((\inst3|signed_min[4]~5_combout\ $ (\inst3|signed_max[4]~5_combout\ $ (\inst3|signed_resta[3]~7\)))) # (GND)
-- \inst3|signed_resta[4]~9\ = CARRY((\inst3|signed_min[4]~5_combout\ & (\inst3|signed_max[4]~5_combout\ & !\inst3|signed_resta[3]~7\)) # (!\inst3|signed_min[4]~5_combout\ & ((\inst3|signed_max[4]~5_combout\) # (!\inst3|signed_resta[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[4]~5_combout\,
	datab => \inst3|signed_max[4]~5_combout\,
	datad => VCC,
	cin => \inst3|signed_resta[3]~7\,
	combout => \inst3|signed_resta[4]~8_combout\,
	cout => \inst3|signed_resta[4]~9\);

-- Location: LCCOMB_X39_Y36_N16
\inst3|signed_resta[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_resta[5]~10_combout\ = (\inst3|signed_min[5]~3_combout\ & ((\inst3|signed_max[5]~3_combout\ & (!\inst3|signed_resta[4]~9\)) # (!\inst3|signed_max[5]~3_combout\ & ((\inst3|signed_resta[4]~9\) # (GND))))) # (!\inst3|signed_min[5]~3_combout\ & 
-- ((\inst3|signed_max[5]~3_combout\ & (\inst3|signed_resta[4]~9\ & VCC)) # (!\inst3|signed_max[5]~3_combout\ & (!\inst3|signed_resta[4]~9\))))
-- \inst3|signed_resta[5]~11\ = CARRY((\inst3|signed_min[5]~3_combout\ & ((!\inst3|signed_resta[4]~9\) # (!\inst3|signed_max[5]~3_combout\))) # (!\inst3|signed_min[5]~3_combout\ & (!\inst3|signed_max[5]~3_combout\ & !\inst3|signed_resta[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[5]~3_combout\,
	datab => \inst3|signed_max[5]~3_combout\,
	datad => VCC,
	cin => \inst3|signed_resta[4]~9\,
	combout => \inst3|signed_resta[5]~10_combout\,
	cout => \inst3|signed_resta[5]~11\);

-- Location: LCCOMB_X39_Y36_N18
\inst3|signed_resta[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_resta[6]~12_combout\ = ((\inst3|signed_min[6]~1_combout\ $ (\inst3|signed_max[6]~1_combout\ $ (\inst3|signed_resta[5]~11\)))) # (GND)
-- \inst3|signed_resta[6]~13\ = CARRY((\inst3|signed_min[6]~1_combout\ & (\inst3|signed_max[6]~1_combout\ & !\inst3|signed_resta[5]~11\)) # (!\inst3|signed_min[6]~1_combout\ & ((\inst3|signed_max[6]~1_combout\) # (!\inst3|signed_resta[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[6]~1_combout\,
	datab => \inst3|signed_max[6]~1_combout\,
	datad => VCC,
	cin => \inst3|signed_resta[5]~11\,
	combout => \inst3|signed_resta[6]~12_combout\,
	cout => \inst3|signed_resta[6]~13\);

-- Location: LCCOMB_X39_Y36_N20
\inst3|signed_resta[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_resta[7]~14_combout\ = (\inst3|signed_max_ext[7]~1_combout\ & ((\inst3|signed_min_ext[7]~1_combout\ & (!\inst3|signed_resta[6]~13\)) # (!\inst3|signed_min_ext[7]~1_combout\ & (\inst3|signed_resta[6]~13\ & VCC)))) # 
-- (!\inst3|signed_max_ext[7]~1_combout\ & ((\inst3|signed_min_ext[7]~1_combout\ & ((\inst3|signed_resta[6]~13\) # (GND))) # (!\inst3|signed_min_ext[7]~1_combout\ & (!\inst3|signed_resta[6]~13\))))
-- \inst3|signed_resta[7]~15\ = CARRY((\inst3|signed_max_ext[7]~1_combout\ & (\inst3|signed_min_ext[7]~1_combout\ & !\inst3|signed_resta[6]~13\)) # (!\inst3|signed_max_ext[7]~1_combout\ & ((\inst3|signed_min_ext[7]~1_combout\) # 
-- (!\inst3|signed_resta[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_max_ext[7]~1_combout\,
	datab => \inst3|signed_min_ext[7]~1_combout\,
	datad => VCC,
	cin => \inst3|signed_resta[6]~13\,
	combout => \inst3|signed_resta[7]~14_combout\,
	cout => \inst3|signed_resta[7]~15\);

-- Location: LCCOMB_X38_Y36_N16
\inst|inst2|Q_reg[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg[7]~0_combout\ = (\inst|inst2|Q_reg[7]~1_combout\ & (((\inst3|signed_suma_2[7]~0_combout\)) # (!\Op[1]~input_o\))) # (!\inst|inst2|Q_reg[7]~1_combout\ & (\Op[1]~input_o\ & ((\inst3|signed_resta[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Q_reg[7]~1_combout\,
	datab => \Op[1]~input_o\,
	datac => \inst3|signed_suma_2[7]~0_combout\,
	datad => \inst3|signed_resta[7]~14_combout\,
	combout => \inst|inst2|Q_reg[7]~0_combout\);

-- Location: LCCOMB_X38_Y36_N22
\inst|inst2|Q_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg[7]~feeder_combout\ = \inst|inst2|Q_reg[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|Q_reg[7]~0_combout\,
	combout => \inst|inst2|Q_reg[7]~feeder_combout\);

-- Location: LCCOMB_X38_Y36_N18
\inst|inst|inst|Q_reg[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst|Q_reg[0]~3_combout\ = !\inst|inst|inst|Q_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|Q_reg\(0),
	combout => \inst|inst|inst|Q_reg[0]~3_combout\);

-- Location: LCCOMB_X38_Y36_N8
\inst|inst|inst|Q_reg[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst|Q_reg[3]~0_combout\ = \inst|inst|inst|Q_reg\(3) $ (((\inst|inst|inst|Q_reg\(1) & (\inst|inst|inst|Q_reg\(0) & \inst|inst|inst|Q_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|Q_reg\(1),
	datab => \inst|inst|inst|Q_reg\(0),
	datac => \inst|inst|inst|Q_reg\(3),
	datad => \inst|inst|inst|Q_reg\(2),
	combout => \inst|inst|inst|Q_reg[3]~0_combout\);

-- Location: FF_X38_Y36_N9
\inst|inst|inst|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst|inst|Q_reg[3]~0_combout\,
	clrn => \inst|inst|ALT_INV_inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|Q_reg\(3));

-- Location: LCCOMB_X38_Y36_N4
\inst|inst|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst2~combout\ = (\PCI~input_o\) # ((\inst|inst|inst|Q_reg\(3) & \inst|inst|inst|Q_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCI~input_o\,
	datac => \inst|inst|inst|Q_reg\(3),
	datad => \inst|inst|inst|Q_reg\(0),
	combout => \inst|inst|inst2~combout\);

-- Location: FF_X38_Y36_N19
\inst|inst|inst|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst|inst|Q_reg[0]~3_combout\,
	clrn => \inst|inst|ALT_INV_inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|Q_reg\(0));

-- Location: LCCOMB_X38_Y36_N0
\inst|inst|inst|Q_reg[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst|Q_reg[1]~2_combout\ = \inst|inst|inst|Q_reg\(0) $ (\inst|inst|inst|Q_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|Q_reg\(0),
	datac => \inst|inst|inst|Q_reg\(1),
	combout => \inst|inst|inst|Q_reg[1]~2_combout\);

-- Location: FF_X38_Y36_N1
\inst|inst|inst|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst|inst|Q_reg[1]~2_combout\,
	clrn => \inst|inst|ALT_INV_inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|Q_reg\(1));

-- Location: LCCOMB_X38_Y36_N26
\inst|inst|inst|Q_reg[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst|Q_reg[2]~1_combout\ = \inst|inst|inst|Q_reg\(2) $ (((\inst|inst|inst|Q_reg\(1) & \inst|inst|inst|Q_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|Q_reg\(1),
	datac => \inst|inst|inst|Q_reg\(2),
	datad => \inst|inst|inst|Q_reg\(0),
	combout => \inst|inst|inst|Q_reg[2]~1_combout\);

-- Location: FF_X38_Y36_N27
\inst|inst|inst|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst|inst|Q_reg[2]~1_combout\,
	clrn => \inst|inst|ALT_INV_inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|Q_reg\(2));

-- Location: LCCOMB_X38_Y36_N28
\inst|inst|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst4~0_combout\ = (\inst|inst|inst|Q_reg\(2)) # ((\inst|inst|inst|Q_reg\(1)) # ((\inst|inst|inst|Q_reg\(3)) # (\inst|inst|inst|Q_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|Q_reg\(2),
	datab => \inst|inst|inst|Q_reg\(1),
	datac => \inst|inst|inst|Q_reg\(3),
	datad => \inst|inst|inst|Q_reg\(0),
	combout => \inst|inst|inst4~0_combout\);

-- Location: LCCOMB_X39_Y36_N22
\inst3|signed_resta[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|signed_resta[8]~16_combout\ = \inst3|signed_max_ext[7]~1_combout\ $ (\inst3|signed_resta[7]~15\ $ (\inst3|signed_min_ext[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_max_ext[7]~1_combout\,
	datad => \inst3|signed_min_ext[7]~1_combout\,
	cin => \inst3|signed_resta[7]~15\,
	combout => \inst3|signed_resta[8]~16_combout\);

-- Location: LCCOMB_X37_Y36_N0
\inst3|Result[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[8]~0_combout\ = (\Op[1]~input_o\ & ((\Op[0]~input_o\ & ((\inst3|signed_resta[8]~16_combout\))) # (!\Op[0]~input_o\ & (\inst3|signed_suma_2[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[0]~input_o\,
	datab => \Op[1]~input_o\,
	datac => \inst3|signed_suma_2[7]~0_combout\,
	datad => \inst3|signed_resta[8]~16_combout\,
	combout => \inst3|Result[8]~0_combout\);

-- Location: LCCOMB_X37_Y36_N4
\inst|inst2|Q_reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg~9_combout\ = (!\inst|inst|inst4~0_combout\ & ((\inst3|Result[8]~0_combout\) # ((\inst3|Result[8]~5_combout\ & !\Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[8]~5_combout\,
	datab => \Op[1]~input_o\,
	datac => \inst|inst|inst4~0_combout\,
	datad => \inst3|Result[8]~0_combout\,
	combout => \inst|inst2|Q_reg~9_combout\);

-- Location: FF_X37_Y36_N5
\inst|inst2|Q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst2|Q_reg~9_combout\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|Q_reg\(8));

-- Location: FF_X38_Y36_N23
\inst|inst2|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst2|Q_reg[7]~feeder_combout\,
	asdata => \inst|inst2|Q_reg\(8),
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	sload => \inst|inst|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|Q_reg\(7));

-- Location: LCCOMB_X38_Y36_N24
\inst3|Result[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[6]~7_combout\ = (\Op[1]~input_o\ & (\Op[0]~input_o\)) # (!\Op[1]~input_o\ & ((\Op[0]~input_o\ & (\inst3|signed_min[6]~1_combout\)) # (!\Op[0]~input_o\ & ((\inst3|signed_max[6]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \inst3|signed_min[6]~1_combout\,
	datad => \inst3|signed_max[6]~1_combout\,
	combout => \inst3|Result[6]~7_combout\);

-- Location: LCCOMB_X38_Y36_N6
\inst3|Result[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[6]~8_combout\ = (\Op[1]~input_o\ & ((\inst3|Result[6]~7_combout\ & ((\inst3|signed_resta[6]~12_combout\))) # (!\inst3|Result[6]~7_combout\ & (\inst3|signed_suma[7]~12_combout\)))) # (!\Op[1]~input_o\ & (\inst3|Result[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \inst3|Result[6]~7_combout\,
	datac => \inst3|signed_suma[7]~12_combout\,
	datad => \inst3|signed_resta[6]~12_combout\,
	combout => \inst3|Result[6]~8_combout\);

-- Location: LCCOMB_X38_Y36_N20
\inst|inst2|Q_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg~8_combout\ = (\inst|inst|inst4~0_combout\ & (\inst|inst2|Q_reg\(7))) # (!\inst|inst|inst4~0_combout\ & ((\inst3|Result[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Q_reg\(7),
	datac => \inst|inst|inst4~0_combout\,
	datad => \inst3|Result[6]~8_combout\,
	combout => \inst|inst2|Q_reg~8_combout\);

-- Location: FF_X38_Y36_N21
\inst|inst2|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst2|Q_reg~8_combout\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|Q_reg\(6));

-- Location: LCCOMB_X38_Y36_N12
\inst3|Result[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[5]~9_combout\ = (\Op[1]~input_o\ & (\Op[0]~input_o\)) # (!\Op[1]~input_o\ & ((\Op[0]~input_o\ & ((\inst3|signed_min[5]~3_combout\))) # (!\Op[0]~input_o\ & (\inst3|signed_max[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \inst3|signed_max[5]~3_combout\,
	datad => \inst3|signed_min[5]~3_combout\,
	combout => \inst3|Result[5]~9_combout\);

-- Location: LCCOMB_X38_Y36_N2
\inst3|Result[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[5]~10_combout\ = (\inst3|Result[5]~9_combout\ & ((\inst3|signed_resta[5]~10_combout\) # ((!\Op[1]~input_o\)))) # (!\inst3|Result[5]~9_combout\ & (((\Op[1]~input_o\ & \inst3|signed_suma[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[5]~9_combout\,
	datab => \inst3|signed_resta[5]~10_combout\,
	datac => \Op[1]~input_o\,
	datad => \inst3|signed_suma[6]~10_combout\,
	combout => \inst3|Result[5]~10_combout\);

-- Location: LCCOMB_X38_Y36_N10
\inst|inst2|Q_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg~7_combout\ = (\inst|inst|inst4~0_combout\ & (\inst|inst2|Q_reg\(6))) # (!\inst|inst|inst4~0_combout\ & ((\inst3|Result[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Q_reg\(6),
	datac => \inst|inst|inst4~0_combout\,
	datad => \inst3|Result[5]~10_combout\,
	combout => \inst|inst2|Q_reg~7_combout\);

-- Location: FF_X38_Y36_N11
\inst|inst2|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst2|Q_reg~7_combout\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|Q_reg\(5));

-- Location: LCCOMB_X37_Y36_N28
\inst3|Result[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[4]~11_combout\ = (\Op[0]~input_o\ & (((\Op[1]~input_o\)))) # (!\Op[0]~input_o\ & ((\Op[1]~input_o\ & ((\inst3|signed_suma[5]~8_combout\))) # (!\Op[1]~input_o\ & (\inst3|signed_max[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[0]~input_o\,
	datab => \inst3|signed_max[4]~5_combout\,
	datac => \Op[1]~input_o\,
	datad => \inst3|signed_suma[5]~8_combout\,
	combout => \inst3|Result[4]~11_combout\);

-- Location: LCCOMB_X37_Y36_N6
\inst3|Result[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[4]~12_combout\ = (\Op[0]~input_o\ & ((\inst3|Result[4]~11_combout\ & ((\inst3|signed_resta[4]~8_combout\))) # (!\inst3|Result[4]~11_combout\ & (\inst3|signed_min[4]~5_combout\)))) # (!\Op[0]~input_o\ & (((\inst3|Result[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[4]~5_combout\,
	datab => \Op[0]~input_o\,
	datac => \inst3|signed_resta[4]~8_combout\,
	datad => \inst3|Result[4]~11_combout\,
	combout => \inst3|Result[4]~12_combout\);

-- Location: LCCOMB_X37_Y36_N8
\inst|inst2|Q_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg~6_combout\ = (\inst|inst|inst4~0_combout\ & (\inst|inst2|Q_reg\(5))) # (!\inst|inst|inst4~0_combout\ & ((\inst3|Result[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Q_reg\(5),
	datac => \inst|inst|inst4~0_combout\,
	datad => \inst3|Result[4]~12_combout\,
	combout => \inst|inst2|Q_reg~6_combout\);

-- Location: FF_X37_Y36_N9
\inst|inst2|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst2|Q_reg~6_combout\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|Q_reg\(4));

-- Location: LCCOMB_X36_Y36_N14
\inst3|Result[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[3]~13_combout\ = (\Op[0]~input_o\ & ((\inst3|signed_min[3]~7_combout\) # ((\Op[1]~input_o\)))) # (!\Op[0]~input_o\ & (((\inst3|signed_max[3]~7_combout\ & !\Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[3]~7_combout\,
	datab => \Op[0]~input_o\,
	datac => \inst3|signed_max[3]~7_combout\,
	datad => \Op[1]~input_o\,
	combout => \inst3|Result[3]~13_combout\);

-- Location: LCCOMB_X36_Y36_N4
\inst3|Result[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[3]~14_combout\ = (\Op[1]~input_o\ & ((\inst3|Result[3]~13_combout\ & (\inst3|signed_resta[3]~6_combout\)) # (!\inst3|Result[3]~13_combout\ & ((\inst3|signed_suma[4]~6_combout\))))) # (!\Op[1]~input_o\ & (\inst3|Result[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \inst3|Result[3]~13_combout\,
	datac => \inst3|signed_resta[3]~6_combout\,
	datad => \inst3|signed_suma[4]~6_combout\,
	combout => \inst3|Result[3]~14_combout\);

-- Location: LCCOMB_X36_Y36_N22
\inst|inst2|Q_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg~5_combout\ = (\inst|inst|inst4~0_combout\ & (\inst|inst2|Q_reg\(4))) # (!\inst|inst|inst4~0_combout\ & ((\inst3|Result[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Q_reg\(4),
	datac => \inst3|Result[3]~14_combout\,
	datad => \inst|inst|inst4~0_combout\,
	combout => \inst|inst2|Q_reg~5_combout\);

-- Location: FF_X36_Y36_N23
\inst|inst2|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst2|Q_reg~5_combout\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|Q_reg\(3));

-- Location: LCCOMB_X36_Y36_N2
\inst3|Result[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[2]~15_combout\ = (\Op[1]~input_o\ & ((\Op[0]~input_o\) # ((\inst3|signed_suma[3]~4_combout\)))) # (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & (\inst3|signed_max[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \inst3|signed_max[2]~9_combout\,
	datad => \inst3|signed_suma[3]~4_combout\,
	combout => \inst3|Result[2]~15_combout\);

-- Location: LCCOMB_X36_Y36_N20
\inst3|Result[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[2]~16_combout\ = (\Op[0]~input_o\ & ((\inst3|Result[2]~15_combout\ & ((\inst3|signed_resta[2]~4_combout\))) # (!\inst3|Result[2]~15_combout\ & (\inst3|signed_min[2]~9_combout\)))) # (!\Op[0]~input_o\ & (((\inst3|Result[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[0]~input_o\,
	datab => \inst3|signed_min[2]~9_combout\,
	datac => \inst3|signed_resta[2]~4_combout\,
	datad => \inst3|Result[2]~15_combout\,
	combout => \inst3|Result[2]~16_combout\);

-- Location: LCCOMB_X36_Y36_N24
\inst|inst2|Q_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg~4_combout\ = (\inst|inst|inst4~0_combout\ & (\inst|inst2|Q_reg\(3))) # (!\inst|inst|inst4~0_combout\ & ((\inst3|Result[2]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Q_reg\(3),
	datac => \inst|inst|inst4~0_combout\,
	datad => \inst3|Result[2]~16_combout\,
	combout => \inst|inst2|Q_reg~4_combout\);

-- Location: FF_X36_Y36_N25
\inst|inst2|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst2|Q_reg~4_combout\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|Q_reg\(2));

-- Location: LCCOMB_X36_Y36_N26
\inst3|Result[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[1]~17_combout\ = (\Op[1]~input_o\ & (\Op[0]~input_o\)) # (!\Op[1]~input_o\ & ((\Op[0]~input_o\ & (\inst3|signed_min[1]~11_combout\)) # (!\Op[0]~input_o\ & ((\inst3|signed_max[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \inst3|signed_min[1]~11_combout\,
	datad => \inst3|signed_max[1]~11_combout\,
	combout => \inst3|Result[1]~17_combout\);

-- Location: LCCOMB_X36_Y36_N8
\inst3|Result[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[1]~18_combout\ = (\inst3|Result[1]~17_combout\ & (((\inst3|signed_resta[1]~2_combout\)) # (!\Op[1]~input_o\))) # (!\inst3|Result[1]~17_combout\ & (\Op[1]~input_o\ & (\inst3|signed_suma[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[1]~17_combout\,
	datab => \Op[1]~input_o\,
	datac => \inst3|signed_suma[2]~2_combout\,
	datad => \inst3|signed_resta[1]~2_combout\,
	combout => \inst3|Result[1]~18_combout\);

-- Location: LCCOMB_X36_Y36_N30
\inst|inst2|Q_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg~3_combout\ = (\inst|inst|inst4~0_combout\ & (\inst|inst2|Q_reg\(2))) # (!\inst|inst|inst4~0_combout\ & ((\inst3|Result[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Q_reg\(2),
	datac => \inst3|Result[1]~18_combout\,
	datad => \inst|inst|inst4~0_combout\,
	combout => \inst|inst2|Q_reg~3_combout\);

-- Location: FF_X36_Y36_N31
\inst|inst2|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst2|Q_reg~3_combout\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|Q_reg\(1));

-- Location: LCCOMB_X36_Y36_N18
\inst3|Result[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[0]~19_combout\ = (\Op[1]~input_o\ & ((\Op[0]~input_o\) # ((\inst3|signed_suma[1]~0_combout\)))) # (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & ((\inst3|signed_max[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \inst3|signed_suma[1]~0_combout\,
	datad => \inst3|signed_max[0]~13_combout\,
	combout => \inst3|Result[0]~19_combout\);

-- Location: LCCOMB_X36_Y36_N16
\inst3|Result[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[0]~20_combout\ = (\Op[0]~input_o\ & ((\inst3|Result[0]~19_combout\ & ((\inst3|signed_resta[0]~0_combout\))) # (!\inst3|Result[0]~19_combout\ & (\inst3|signed_min[0]~13_combout\)))) # (!\Op[0]~input_o\ & (((\inst3|Result[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|signed_min[0]~13_combout\,
	datab => \Op[0]~input_o\,
	datac => \inst3|signed_resta[0]~0_combout\,
	datad => \inst3|Result[0]~19_combout\,
	combout => \inst3|Result[0]~20_combout\);

-- Location: LCCOMB_X36_Y36_N28
\inst|inst2|Q_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Q_reg~2_combout\ = (\inst|inst|inst4~0_combout\ & (\inst|inst2|Q_reg\(1))) # (!\inst|inst|inst4~0_combout\ & ((\inst3|Result[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Q_reg\(1),
	datac => \inst|inst|inst4~0_combout\,
	datad => \inst3|Result[0]~20_combout\,
	combout => \inst|inst2|Q_reg~2_combout\);

-- Location: FF_X36_Y36_N29
\inst|inst2|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Send~inputclkctrl_outclk\,
	d => \inst|inst2|Q_reg~2_combout\,
	clrn => \ALT_INV_PCI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|Q_reg\(0));

-- Location: LCCOMB_X37_Y36_N30
\inst3|Result[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Result[8]~6_combout\ = (\inst3|Result[8]~0_combout\) # ((\inst3|Result[8]~5_combout\ & !\Op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[8]~5_combout\,
	datab => \Op[1]~input_o\,
	datac => \inst3|Result[8]~0_combout\,
	combout => \inst3|Result[8]~6_combout\);

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

ww_DataOut <= \DataOut~output_o\;

ww_Tx <= \Tx~output_o\;

ww_Aux_1_N1(7) <= \Aux_1_N1[7]~output_o\;

ww_Aux_1_N1(6) <= \Aux_1_N1[6]~output_o\;

ww_Aux_1_N1(5) <= \Aux_1_N1[5]~output_o\;

ww_Aux_1_N1(4) <= \Aux_1_N1[4]~output_o\;

ww_Aux_1_N1(3) <= \Aux_1_N1[3]~output_o\;

ww_Aux_1_N1(2) <= \Aux_1_N1[2]~output_o\;

ww_Aux_1_N1(1) <= \Aux_1_N1[1]~output_o\;

ww_Aux_1_N1(0) <= \Aux_1_N1[0]~output_o\;

ww_Aux_1_N2(7) <= \Aux_1_N2[7]~output_o\;

ww_Aux_1_N2(6) <= \Aux_1_N2[6]~output_o\;

ww_Aux_1_N2(5) <= \Aux_1_N2[5]~output_o\;

ww_Aux_1_N2(4) <= \Aux_1_N2[4]~output_o\;

ww_Aux_1_N2(3) <= \Aux_1_N2[3]~output_o\;

ww_Aux_1_N2(2) <= \Aux_1_N2[2]~output_o\;

ww_Aux_1_N2(1) <= \Aux_1_N2[1]~output_o\;

ww_Aux_1_N2(0) <= \Aux_1_N2[0]~output_o\;

ww_Aux_1_N3(7) <= \Aux_1_N3[7]~output_o\;

ww_Aux_1_N3(6) <= \Aux_1_N3[6]~output_o\;

ww_Aux_1_N3(5) <= \Aux_1_N3[5]~output_o\;

ww_Aux_1_N3(4) <= \Aux_1_N3[4]~output_o\;

ww_Aux_1_N3(3) <= \Aux_1_N3[3]~output_o\;

ww_Aux_1_N3(2) <= \Aux_1_N3[2]~output_o\;

ww_Aux_1_N3(1) <= \Aux_1_N3[1]~output_o\;

ww_Aux_1_N3(0) <= \Aux_1_N3[0]~output_o\;

ww_Aux_Result(8) <= \Aux_Result[8]~output_o\;

ww_Aux_Result(7) <= \Aux_Result[7]~output_o\;

ww_Aux_Result(6) <= \Aux_Result[6]~output_o\;

ww_Aux_Result(5) <= \Aux_Result[5]~output_o\;

ww_Aux_Result(4) <= \Aux_Result[4]~output_o\;

ww_Aux_Result(3) <= \Aux_Result[3]~output_o\;

ww_Aux_Result(2) <= \Aux_Result[2]~output_o\;

ww_Aux_Result(1) <= \Aux_Result[1]~output_o\;

ww_Aux_Result(0) <= \Aux_Result[0]~output_o\;
END structure;


