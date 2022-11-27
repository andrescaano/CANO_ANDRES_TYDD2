-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/18/2022 16:57:34"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Parte_B IS
    PORT (
	input_A : IN std_logic;
	input_B : IN std_logic;
	input_Cin : IN std_logic;
	clk : IN std_logic;
	output_Cout : OUT std_logic;
	output_S : OUT std_logic
	);
END Parte_B;

-- Design Ports Information
-- output_Cout	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_S	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_A	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_B	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_Cin	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Parte_B IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_A : std_logic;
SIGNAL ww_input_B : std_logic;
SIGNAL ww_input_Cin : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_output_Cout : std_logic;
SIGNAL ww_output_S : std_logic;
SIGNAL \D3|Q~q\ : std_logic;
SIGNAL \input_Cin~input_o\ : std_logic;
SIGNAL \D3|Q~feeder_combout\ : std_logic;
SIGNAL \output_Cout~output_o\ : std_logic;
SIGNAL \output_S~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \input_B~input_o\ : std_logic;
SIGNAL \D2|Q~feeder_combout\ : std_logic;
SIGNAL \D2|Q~q\ : std_logic;
SIGNAL \input_A~input_o\ : std_logic;
SIGNAL \D1|Q~feeder_combout\ : std_logic;
SIGNAL \D1|Q~q\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \D4|Q~q\ : std_logic;
SIGNAL \S~combout\ : std_logic;
SIGNAL \D5|Q~q\ : std_logic;

BEGIN

ww_input_A <= input_A;
ww_input_B <= input_B;
ww_input_Cin <= input_Cin;
ww_clk <= clk;
output_Cout <= ww_output_Cout;
output_S <= ww_output_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: FF_X94_Y1_N13
\D3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \D3|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|Q~q\);

-- Location: IOIBUF_X56_Y0_N22
\input_Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_Cin,
	o => \input_Cin~input_o\);

-- Location: LCCOMB_X94_Y1_N12
\D3|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Q~feeder_combout\ = \input_Cin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_Cin~input_o\,
	combout => \D3|Q~feeder_combout\);

-- Location: IOOBUF_X72_Y0_N9
\output_Cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Q~q\,
	devoe => ww_devoe,
	o => \output_Cout~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\output_S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5|Q~q\,
	devoe => ww_devoe,
	o => \output_S~output_o\);

-- Location: IOIBUF_X94_Y0_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\input_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_B,
	o => \input_B~input_o\);

-- Location: LCCOMB_X94_Y1_N26
\D2|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Q~feeder_combout\ = \input_B~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_B~input_o\,
	combout => \D2|Q~feeder_combout\);

-- Location: FF_X94_Y1_N27
\D2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \D2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|Q~q\);

-- Location: IOIBUF_X85_Y0_N8
\input_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_A,
	o => \input_A~input_o\);

-- Location: LCCOMB_X94_Y1_N24
\D1|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Q~feeder_combout\ = \input_A~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_A~input_o\,
	combout => \D1|Q~feeder_combout\);

-- Location: FF_X94_Y1_N25
\D1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \D1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|Q~q\);

-- Location: LCCOMB_X94_Y1_N28
\Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = \D2|Q~q\ $ (\D1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D2|Q~q\,
	datad => \D1|Q~q\,
	combout => \Cout~0_combout\);

-- Location: FF_X94_Y1_N29
\D4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|Q~q\);

-- Location: LCCOMB_X94_Y1_N22
S : cycloneiii_lcell_comb
-- Equation(s):
-- \S~combout\ = \D3|Q~q\ $ (\D2|Q~q\ $ (\D1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Q~q\,
	datac => \D2|Q~q\,
	datad => \D1|Q~q\,
	combout => \S~combout\);

-- Location: FF_X94_Y1_N23
\D5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|Q~q\);

ww_output_Cout <= \output_Cout~output_o\;

ww_output_S <= \output_S~output_o\;
END structure;


