// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"
// CREATED		"Sun Oct 29 14:07:12 2023"

module Practica101(
	BN1,
	BN0,
	BN2,
	J0,
	J1,
	J2,
	J3
);


input wire	BN1;
input wire	BN0;
input wire	BN2;
output wire	J0;
output wire	J1;
output wire	J2;
output wire	J3;

wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;




assign	SYNTHESIZED_WIRE_11 = BN2 & BN1 & BN0;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_38 & BN1 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_22 = BN2 & BN1 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_20 = BN0 & SYNTHESIZED_WIRE_41 & BN2;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_28 = BN2 & SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_31 = BN0 & SYNTHESIZED_WIRE_42 & BN2;

assign	SYNTHESIZED_WIRE_29 = BN2 & BN1 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_30 = BN2 & BN1 & BN0;

assign	J0 = SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14;

assign	J1 = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16 | SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18;

assign	J2 = SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_39 & SYNTHESIZED_WIRE_44 & BN0;

assign	SYNTHESIZED_WIRE_44 =  ~BN1;

assign	SYNTHESIZED_WIRE_38 =  ~BN0;

assign	SYNTHESIZED_WIRE_39 =  ~BN2;

assign	SYNTHESIZED_WIRE_45 =  ~BN0;

assign	SYNTHESIZED_WIRE_46 =  ~BN2;

assign	SYNTHESIZED_WIRE_47 =  ~BN1;

assign	SYNTHESIZED_WIRE_41 =  ~BN1;

assign	SYNTHESIZED_WIRE_40 =  ~BN0;

assign	SYNTHESIZED_WIRE_4 =  ~BN2;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_44 & SYNTHESIZED_WIRE_39 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_42 =  ~BN1;

assign	SYNTHESIZED_WIRE_43 =  ~BN0;

assign	J3 = SYNTHESIZED_WIRE_28 | SYNTHESIZED_WIRE_29 | SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_31;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_45 & BN1 & SYNTHESIZED_WIRE_46;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_46 & BN1 & BN0;

assign	SYNTHESIZED_WIRE_16 = BN2 & SYNTHESIZED_WIRE_47 & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_17 = BN2 & SYNTHESIZED_WIRE_47 & BN0;

assign	SYNTHESIZED_WIRE_19 = BN2 & BN1 & BN0;


endmodule
