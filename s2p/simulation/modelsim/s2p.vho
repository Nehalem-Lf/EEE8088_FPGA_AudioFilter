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

-- DATE "03/02/2020 11:45:37"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	s2p IS
    PORT (
	ADCDAT : OUT std_logic_vector(15 DOWNTO 0);
	DACDAT : IN std_logic_vector(15 DOWNTO 0);
	DACrdy : OUT std_logic;
	ADCrdy : IN std_logic;
	DACstb : IN std_logic;
	ADCstb : OUT std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_ADCLRCK : IN std_logic;
	AUD_DACLRCK : IN std_logic;
	AUD_BCLK : IN std_logic;
	CLOCK_50 : IN std_logic;
	RST_N : IN std_logic
	);
END s2p;

-- Design Ports Information
-- ADCDAT[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[3]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[5]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[6]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[7]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[8]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[9]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[10]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[11]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[12]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[13]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[14]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[15]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[0]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[1]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[4]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[6]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[7]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[8]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[9]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[10]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[11]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[12]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[13]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[14]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[15]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACrdy	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCrdy	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACstb	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCstb	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_N	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF s2p IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADCDAT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DACDAT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DACrdy : std_logic;
SIGNAL ww_ADCrdy : std_logic;
SIGNAL ww_DACstb : std_logic;
SIGNAL ww_ADCstb : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_RST_N : std_logic;
SIGNAL \DACDAT[0]~input_o\ : std_logic;
SIGNAL \DACDAT[1]~input_o\ : std_logic;
SIGNAL \DACDAT[2]~input_o\ : std_logic;
SIGNAL \DACDAT[3]~input_o\ : std_logic;
SIGNAL \DACDAT[4]~input_o\ : std_logic;
SIGNAL \DACDAT[5]~input_o\ : std_logic;
SIGNAL \DACDAT[6]~input_o\ : std_logic;
SIGNAL \DACDAT[7]~input_o\ : std_logic;
SIGNAL \DACDAT[8]~input_o\ : std_logic;
SIGNAL \DACDAT[9]~input_o\ : std_logic;
SIGNAL \DACDAT[10]~input_o\ : std_logic;
SIGNAL \DACDAT[11]~input_o\ : std_logic;
SIGNAL \DACDAT[12]~input_o\ : std_logic;
SIGNAL \DACDAT[13]~input_o\ : std_logic;
SIGNAL \DACDAT[14]~input_o\ : std_logic;
SIGNAL \DACDAT[15]~input_o\ : std_logic;
SIGNAL \ADCrdy~input_o\ : std_logic;
SIGNAL \DACstb~input_o\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \bit_ADC~3_combout\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \old_BCLK~q\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \bit_ADC[3]~1_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \bit_ADC~4_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \bit_ADC~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \bit_ADC~2_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \bit_ADC[3]~6_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \bit_ADC~5_combout\ : std_logic;
SIGNAL \ADCDAT_reg~1_combout\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \ADCDAT_reg~0_combout\ : std_logic;
SIGNAL \ADCDAT_reg~2_combout\ : std_logic;
SIGNAL \ADCDAT_reg~3_combout\ : std_logic;
SIGNAL \ADCDAT_reg~4_combout\ : std_logic;
SIGNAL \ADCDAT_reg~5_combout\ : std_logic;
SIGNAL \ADCDAT_reg~6_combout\ : std_logic;
SIGNAL \ADCDAT_reg~7_combout\ : std_logic;
SIGNAL \ADCDAT_reg~8_combout\ : std_logic;
SIGNAL \ADCDAT_reg~9_combout\ : std_logic;
SIGNAL \ADCDAT_reg~10_combout\ : std_logic;
SIGNAL \ADCDAT_reg~11_combout\ : std_logic;
SIGNAL \ADCDAT_reg~12_combout\ : std_logic;
SIGNAL \ADCDAT_reg~13_combout\ : std_logic;
SIGNAL \ADCDAT_reg~14_combout\ : std_logic;
SIGNAL \ADCDAT_reg~15_combout\ : std_logic;
SIGNAL \ADCDAT_reg~16_combout\ : std_logic;
SIGNAL \ADCDAT_reg~17_combout\ : std_logic;
SIGNAL \ADCDAT_reg~18_combout\ : std_logic;
SIGNAL \ADCDAT_reg~19_combout\ : std_logic;
SIGNAL \ADCDAT_reg~20_combout\ : std_logic;
SIGNAL \ADCDAT_reg~21_combout\ : std_logic;
SIGNAL ADCDAT_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL bit_ADC : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_RST_N~input_o\ : std_logic;
SIGNAL \ALT_INV_AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \ALT_INV_AUD_BCLK~input_o\ : std_logic;
SIGNAL \ALT_INV_AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT_reg~20_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT_reg~16_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT_reg~11_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT_reg~6_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT_reg~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_bit_ADC : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_old_BCLK~q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT_reg~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_ADCDAT_reg : std_logic_vector(15 DOWNTO 0);

BEGIN

ADCDAT <= ww_ADCDAT;
ww_DACDAT <= DACDAT;
DACrdy <= ww_DACrdy;
ww_ADCrdy <= ADCrdy;
ww_DACstb <= DACstb;
ADCstb <= ww_ADCstb;
AUD_DACDAT <= ww_AUD_DACDAT;
ww_AUD_ADCDAT <= AUD_ADCDAT;
ww_AUD_ADCLRCK <= AUD_ADCLRCK;
ww_AUD_DACLRCK <= AUD_DACLRCK;
ww_AUD_BCLK <= AUD_BCLK;
ww_CLOCK_50 <= CLOCK_50;
ww_RST_N <= RST_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST_N~input_o\ <= NOT \RST_N~input_o\;
\ALT_INV_AUD_ADCLRCK~input_o\ <= NOT \AUD_ADCLRCK~input_o\;
\ALT_INV_AUD_BCLK~input_o\ <= NOT \AUD_BCLK~input_o\;
\ALT_INV_AUD_ADCDAT~input_o\ <= NOT \AUD_ADCDAT~input_o\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_ADCDAT_reg~20_combout\ <= NOT \ADCDAT_reg~20_combout\;
\ALT_INV_ADCDAT_reg~16_combout\ <= NOT \ADCDAT_reg~16_combout\;
\ALT_INV_ADCDAT_reg~11_combout\ <= NOT \ADCDAT_reg~11_combout\;
\ALT_INV_ADCDAT_reg~6_combout\ <= NOT \ADCDAT_reg~6_combout\;
\ALT_INV_ADCDAT_reg~1_combout\ <= NOT \ADCDAT_reg~1_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_bit_ADC(31) <= NOT bit_ADC(31);
\ALT_INV_old_BCLK~q\ <= NOT \old_BCLK~q\;
ALT_INV_bit_ADC(1) <= NOT bit_ADC(1);
ALT_INV_bit_ADC(0) <= NOT bit_ADC(0);
\ALT_INV_ADCDAT_reg~0_combout\ <= NOT \ADCDAT_reg~0_combout\;
ALT_INV_bit_ADC(3) <= NOT bit_ADC(3);
ALT_INV_bit_ADC(2) <= NOT bit_ADC(2);
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_bit_ADC(26) <= NOT bit_ADC(26);
ALT_INV_bit_ADC(21) <= NOT bit_ADC(21);
ALT_INV_bit_ADC(28) <= NOT bit_ADC(28);
ALT_INV_bit_ADC(29) <= NOT bit_ADC(29);
ALT_INV_bit_ADC(30) <= NOT bit_ADC(30);
ALT_INV_bit_ADC(4) <= NOT bit_ADC(4);
ALT_INV_bit_ADC(5) <= NOT bit_ADC(5);
ALT_INV_bit_ADC(27) <= NOT bit_ADC(27);
ALT_INV_bit_ADC(6) <= NOT bit_ADC(6);
ALT_INV_bit_ADC(7) <= NOT bit_ADC(7);
ALT_INV_bit_ADC(19) <= NOT bit_ADC(19);
ALT_INV_bit_ADC(20) <= NOT bit_ADC(20);
ALT_INV_bit_ADC(22) <= NOT bit_ADC(22);
ALT_INV_bit_ADC(23) <= NOT bit_ADC(23);
ALT_INV_bit_ADC(24) <= NOT bit_ADC(24);
ALT_INV_bit_ADC(25) <= NOT bit_ADC(25);
ALT_INV_bit_ADC(13) <= NOT bit_ADC(13);
ALT_INV_bit_ADC(14) <= NOT bit_ADC(14);
ALT_INV_bit_ADC(15) <= NOT bit_ADC(15);
ALT_INV_bit_ADC(16) <= NOT bit_ADC(16);
ALT_INV_bit_ADC(17) <= NOT bit_ADC(17);
ALT_INV_bit_ADC(18) <= NOT bit_ADC(18);
ALT_INV_bit_ADC(8) <= NOT bit_ADC(8);
ALT_INV_bit_ADC(9) <= NOT bit_ADC(9);
ALT_INV_bit_ADC(10) <= NOT bit_ADC(10);
ALT_INV_bit_ADC(11) <= NOT bit_ADC(11);
ALT_INV_bit_ADC(12) <= NOT bit_ADC(12);
ALT_INV_ADCDAT_reg(15) <= NOT ADCDAT_reg(15);
ALT_INV_ADCDAT_reg(14) <= NOT ADCDAT_reg(14);
ALT_INV_ADCDAT_reg(13) <= NOT ADCDAT_reg(13);
ALT_INV_ADCDAT_reg(12) <= NOT ADCDAT_reg(12);
ALT_INV_ADCDAT_reg(11) <= NOT ADCDAT_reg(11);
ALT_INV_ADCDAT_reg(10) <= NOT ADCDAT_reg(10);
ALT_INV_ADCDAT_reg(9) <= NOT ADCDAT_reg(9);
ALT_INV_ADCDAT_reg(8) <= NOT ADCDAT_reg(8);
ALT_INV_ADCDAT_reg(7) <= NOT ADCDAT_reg(7);
ALT_INV_ADCDAT_reg(6) <= NOT ADCDAT_reg(6);
ALT_INV_ADCDAT_reg(5) <= NOT ADCDAT_reg(5);
ALT_INV_ADCDAT_reg(4) <= NOT ADCDAT_reg(4);
ALT_INV_ADCDAT_reg(3) <= NOT ADCDAT_reg(3);
ALT_INV_ADCDAT_reg(2) <= NOT ADCDAT_reg(2);
ALT_INV_ADCDAT_reg(1) <= NOT ADCDAT_reg(1);
ALT_INV_ADCDAT_reg(0) <= NOT ADCDAT_reg(0);

-- Location: IOOBUF_X89_Y23_N22
\ADCDAT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(0),
	devoe => ww_devoe,
	o => ww_ADCDAT(0));

-- Location: IOOBUF_X89_Y21_N56
\ADCDAT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(1),
	devoe => ww_devoe,
	o => ww_ADCDAT(1));

-- Location: IOOBUF_X89_Y16_N22
\ADCDAT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(2),
	devoe => ww_devoe,
	o => ww_ADCDAT(2));

-- Location: IOOBUF_X89_Y16_N39
\ADCDAT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(3),
	devoe => ww_devoe,
	o => ww_ADCDAT(3));

-- Location: IOOBUF_X89_Y25_N5
\ADCDAT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(4),
	devoe => ww_devoe,
	o => ww_ADCDAT(4));

-- Location: IOOBUF_X89_Y23_N56
\ADCDAT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(5),
	devoe => ww_devoe,
	o => ww_ADCDAT(5));

-- Location: IOOBUF_X89_Y23_N39
\ADCDAT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(6),
	devoe => ww_devoe,
	o => ww_ADCDAT(6));

-- Location: IOOBUF_X89_Y16_N5
\ADCDAT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(7),
	devoe => ww_devoe,
	o => ww_ADCDAT(7));

-- Location: IOOBUF_X89_Y21_N22
\ADCDAT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(8),
	devoe => ww_devoe,
	o => ww_ADCDAT(8));

-- Location: IOOBUF_X89_Y20_N62
\ADCDAT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(9),
	devoe => ww_devoe,
	o => ww_ADCDAT(9));

-- Location: IOOBUF_X89_Y20_N45
\ADCDAT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(10),
	devoe => ww_devoe,
	o => ww_ADCDAT(10));

-- Location: IOOBUF_X89_Y20_N79
\ADCDAT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(11),
	devoe => ww_devoe,
	o => ww_ADCDAT(11));

-- Location: IOOBUF_X89_Y21_N39
\ADCDAT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(12),
	devoe => ww_devoe,
	o => ww_ADCDAT(12));

-- Location: IOOBUF_X89_Y21_N5
\ADCDAT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(13),
	devoe => ww_devoe,
	o => ww_ADCDAT(13));

-- Location: IOOBUF_X89_Y20_N96
\ADCDAT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(14),
	devoe => ww_devoe,
	o => ww_ADCDAT(14));

-- Location: IOOBUF_X89_Y16_N56
\ADCDAT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ADCDAT_reg(15),
	devoe => ww_devoe,
	o => ww_ADCDAT(15));

-- Location: IOOBUF_X89_Y4_N79
\DACrdy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DACrdy);

-- Location: IOOBUF_X6_Y81_N36
\ADCstb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADCstb);

-- Location: IOOBUF_X26_Y81_N76
\AUD_DACDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOIBUF_X89_Y25_N21
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y25_N38
\RST_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_N,
	o => \RST_N~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\AUD_ADCLRCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: LABCELL_X81_Y25_N0
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !bit_ADC(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~10\ = CARRY(( !bit_ADC(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(0),
	cin => GND,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X81_Y24_N42
\bit_ADC~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_ADC~3_combout\ = ( !\AUD_ADCLRCK~input_o\ & ( !\Add0~9_sumout\ & ( \RST_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RST_N~input_o\,
	datae => \ALT_INV_AUD_ADCLRCK~input_o\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \bit_ADC~3_combout\);

-- Location: IOIBUF_X89_Y15_N55
\AUD_BCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: FF_X82_Y24_N50
old_BCLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_BCLK~input_o\,
	sload => VCC,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \old_BCLK~q\);

-- Location: LABCELL_X81_Y24_N39
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( !bit_ADC(29) & ( !bit_ADC(26) & ( (!bit_ADC(28) & (!bit_ADC(30) & (!bit_ADC(4) & !bit_ADC(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(28),
	datab => ALT_INV_bit_ADC(30),
	datac => ALT_INV_bit_ADC(4),
	datad => ALT_INV_bit_ADC(21),
	datae => ALT_INV_bit_ADC(29),
	dataf => ALT_INV_bit_ADC(26),
	combout => \LessThan0~3_combout\);

-- Location: MLABCELL_X82_Y24_N6
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !bit_ADC(7) & ( !bit_ADC(1) & ( (!bit_ADC(27) & (!bit_ADC(6) & (bit_ADC(0) & !bit_ADC(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(27),
	datab => ALT_INV_bit_ADC(6),
	datac => ALT_INV_bit_ADC(0),
	datad => ALT_INV_bit_ADC(5),
	datae => ALT_INV_bit_ADC(7),
	dataf => ALT_INV_bit_ADC(1),
	combout => \LessThan0~2_combout\);

-- Location: MLABCELL_X82_Y24_N15
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !bit_ADC(8) & ( !bit_ADC(11) & ( (!bit_ADC(9) & (!bit_ADC(10) & (!bit_ADC(3) & !bit_ADC(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(9),
	datab => ALT_INV_bit_ADC(10),
	datac => ALT_INV_bit_ADC(3),
	datad => ALT_INV_bit_ADC(12),
	datae => ALT_INV_bit_ADC(8),
	dataf => ALT_INV_bit_ADC(11),
	combout => \LessThan0~5_combout\);

-- Location: MLABCELL_X82_Y25_N45
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !bit_ADC(14) & ( !bit_ADC(17) & ( (!bit_ADC(16) & (!bit_ADC(18) & (!bit_ADC(13) & !bit_ADC(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(16),
	datab => ALT_INV_bit_ADC(18),
	datac => ALT_INV_bit_ADC(13),
	datad => ALT_INV_bit_ADC(15),
	datae => ALT_INV_bit_ADC(14),
	dataf => ALT_INV_bit_ADC(17),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X81_Y24_N54
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !bit_ADC(19) & ( !bit_ADC(25) & ( (!bit_ADC(20) & (!bit_ADC(22) & (!bit_ADC(23) & !bit_ADC(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(20),
	datab => ALT_INV_bit_ADC(22),
	datac => ALT_INV_bit_ADC(23),
	datad => ALT_INV_bit_ADC(24),
	datae => ALT_INV_bit_ADC(19),
	dataf => ALT_INV_bit_ADC(25),
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X82_Y24_N18
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \LessThan0~0_combout\ & ( \LessThan0~1_combout\ & ( (\LessThan0~3_combout\ & (\LessThan0~2_combout\ & (!bit_ADC(2) & \LessThan0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => ALT_INV_bit_ADC(2),
	datad => \ALT_INV_LessThan0~5_combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: MLABCELL_X82_Y24_N48
\bit_ADC[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_ADC[3]~1_combout\ = ( bit_ADC(31) & ( \LessThan0~4_combout\ & ( (!\RST_N~input_o\) # ((\AUD_ADCLRCK~input_o\ & (!\old_BCLK~q\ & \AUD_BCLK~input_o\))) ) ) ) # ( !bit_ADC(31) & ( \LessThan0~4_combout\ & ( (!\RST_N~input_o\) # ((\AUD_ADCLRCK~input_o\ & 
-- (!\old_BCLK~q\ & \AUD_BCLK~input_o\))) ) ) ) # ( bit_ADC(31) & ( !\LessThan0~4_combout\ & ( (!\RST_N~input_o\) # ((!\old_BCLK~q\ & \AUD_BCLK~input_o\)) ) ) ) # ( !bit_ADC(31) & ( !\LessThan0~4_combout\ & ( (!\RST_N~input_o\) # ((\AUD_ADCLRCK~input_o\ & 
-- (!\old_BCLK~q\ & \AUD_BCLK~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011100110011001111110011001100110111001100110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	datac => \ALT_INV_old_BCLK~q\,
	datad => \ALT_INV_AUD_BCLK~input_o\,
	datae => ALT_INV_bit_ADC(31),
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \bit_ADC[3]~1_combout\);

-- Location: FF_X82_Y24_N41
\bit_ADC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \bit_ADC~3_combout\,
	sload => VCC,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(0));

-- Location: LABCELL_X81_Y25_N3
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( bit_ADC(1) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( bit_ADC(1) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ADC(1),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X82_Y25_N57
\bit_ADC~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_ADC~4_combout\ = ( \Add0~13_sumout\ ) # ( !\Add0~13_sumout\ & ( (!\RST_N~input_o\) # (\AUD_ADCLRCK~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \bit_ADC~4_combout\);

-- Location: FF_X82_Y25_N59
\bit_ADC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bit_ADC~4_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(1));

-- Location: LABCELL_X81_Y25_N6
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( bit_ADC(2) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~2\ = CARRY(( bit_ADC(2) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ADC(2),
	cin => \Add0~14\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X82_Y25_N54
\bit_ADC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_ADC~0_combout\ = ( \Add0~1_sumout\ ) # ( !\Add0~1_sumout\ & ( (!\RST_N~input_o\) # (\AUD_ADCLRCK~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \bit_ADC~0_combout\);

-- Location: FF_X81_Y25_N2
\bit_ADC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \bit_ADC~0_combout\,
	sload => VCC,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(2));

-- Location: LABCELL_X81_Y25_N9
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( bit_ADC(3) ) + ( VCC ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( bit_ADC(3) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ADC(3),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X82_Y24_N42
\bit_ADC~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_ADC~2_combout\ = ( \Add0~5_sumout\ ) # ( !\Add0~5_sumout\ & ( (!\RST_N~input_o\) # (\AUD_ADCLRCK~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \bit_ADC~2_combout\);

-- Location: FF_X82_Y24_N44
\bit_ADC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bit_ADC~2_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(3));

-- Location: LABCELL_X81_Y25_N12
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( bit_ADC(4) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~106\ = CARRY(( bit_ADC(4) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_ADC(4),
	cin => \Add0~6\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: MLABCELL_X82_Y24_N45
\bit_ADC[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_ADC[3]~6_combout\ = (!\RST_N~input_o\) # (\AUD_ADCLRCK~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	combout => \bit_ADC[3]~6_combout\);

-- Location: FF_X81_Y25_N14
\bit_ADC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(4));

-- Location: LABCELL_X81_Y25_N15
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( bit_ADC(5) ) + ( VCC ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( bit_ADC(5) ) + ( VCC ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(5),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X81_Y25_N17
\bit_ADC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(5));

-- Location: LABCELL_X81_Y25_N18
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( bit_ADC(6) ) + ( VCC ) + ( \Add0~102\ ))
-- \Add0~94\ = CARRY(( bit_ADC(6) ) + ( VCC ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(6),
	cin => \Add0~102\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X81_Y25_N20
\bit_ADC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(6));

-- Location: LABCELL_X81_Y25_N21
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( bit_ADC(7) ) + ( VCC ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( bit_ADC(7) ) + ( VCC ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ADC(7),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X81_Y25_N23
\bit_ADC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(7));

-- Location: LABCELL_X81_Y25_N24
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( bit_ADC(8) ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~38\ = CARRY(( bit_ADC(8) ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(8),
	cin => \Add0~90\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X81_Y25_N26
\bit_ADC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(8));

-- Location: LABCELL_X81_Y25_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( bit_ADC(9) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( bit_ADC(9) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ADC(9),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X81_Y25_N29
\bit_ADC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(9));

-- Location: LABCELL_X81_Y25_N30
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( bit_ADC(10) ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( bit_ADC(10) ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_ADC(10),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X81_Y25_N32
\bit_ADC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(10));

-- Location: LABCELL_X81_Y25_N33
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( bit_ADC(11) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( bit_ADC(11) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(11),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X81_Y25_N35
\bit_ADC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(11));

-- Location: LABCELL_X81_Y25_N36
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( bit_ADC(12) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( bit_ADC(12) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(12),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X81_Y25_N38
\bit_ADC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(12));

-- Location: LABCELL_X81_Y25_N39
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( bit_ADC(13) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~62\ = CARRY(( bit_ADC(13) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(13),
	cin => \Add0~22\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X81_Y25_N41
\bit_ADC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(13));

-- Location: LABCELL_X81_Y25_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( bit_ADC(14) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( bit_ADC(14) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_ADC(14),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X81_Y25_N44
\bit_ADC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(14));

-- Location: LABCELL_X81_Y25_N45
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( bit_ADC(15) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( bit_ADC(15) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(15),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X81_Y25_N47
\bit_ADC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(15));

-- Location: LABCELL_X81_Y25_N48
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( bit_ADC(16) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( bit_ADC(16) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(16),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X81_Y25_N50
\bit_ADC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(16));

-- Location: LABCELL_X81_Y25_N51
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( bit_ADC(17) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( bit_ADC(17) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(17),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X81_Y25_N53
\bit_ADC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(17));

-- Location: LABCELL_X81_Y25_N54
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( bit_ADC(18) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( bit_ADC(18) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(18),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X81_Y25_N56
\bit_ADC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(18));

-- Location: LABCELL_X81_Y25_N57
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( bit_ADC(19) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~86\ = CARRY(( bit_ADC(19) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(19),
	cin => \Add0~42\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X81_Y25_N59
\bit_ADC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(19));

-- Location: LABCELL_X81_Y24_N0
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( bit_ADC(20) ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( bit_ADC(20) ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(20),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X81_Y24_N2
\bit_ADC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(20));

-- Location: LABCELL_X81_Y24_N3
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( bit_ADC(21) ) + ( VCC ) + ( \Add0~82\ ))
-- \Add0~122\ = CARRY(( bit_ADC(21) ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ADC(21),
	cin => \Add0~82\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X81_Y24_N5
\bit_ADC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(21));

-- Location: LABCELL_X81_Y24_N6
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( bit_ADC(22) ) + ( VCC ) + ( \Add0~122\ ))
-- \Add0~78\ = CARRY(( bit_ADC(22) ) + ( VCC ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_ADC(22),
	cin => \Add0~122\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X81_Y24_N8
\bit_ADC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(22));

-- Location: LABCELL_X81_Y24_N9
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( bit_ADC(23) ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( bit_ADC(23) ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(23),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X81_Y24_N11
\bit_ADC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(23));

-- Location: LABCELL_X81_Y24_N12
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( bit_ADC(24) ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( bit_ADC(24) ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_ADC(24),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X81_Y24_N14
\bit_ADC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(24));

-- Location: LABCELL_X81_Y24_N15
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( bit_ADC(25) ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( bit_ADC(25) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(25),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X81_Y24_N17
\bit_ADC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(25));

-- Location: LABCELL_X81_Y24_N18
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( bit_ADC(26) ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~126\ = CARRY(( bit_ADC(26) ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(26),
	cin => \Add0~66\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X81_Y24_N20
\bit_ADC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(26));

-- Location: LABCELL_X81_Y24_N21
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( bit_ADC(27) ) + ( VCC ) + ( \Add0~126\ ))
-- \Add0~98\ = CARRY(( bit_ADC(27) ) + ( VCC ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ADC(27),
	cin => \Add0~126\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X81_Y24_N23
\bit_ADC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(27));

-- Location: LABCELL_X81_Y24_N24
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( bit_ADC(28) ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~118\ = CARRY(( bit_ADC(28) ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(28),
	cin => \Add0~98\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X81_Y24_N26
\bit_ADC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(28));

-- Location: LABCELL_X81_Y24_N27
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( bit_ADC(29) ) + ( VCC ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( bit_ADC(29) ) + ( VCC ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ADC(29),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X81_Y24_N29
\bit_ADC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(29));

-- Location: LABCELL_X81_Y24_N30
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( bit_ADC(30) ) + ( VCC ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( bit_ADC(30) ) + ( VCC ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_ADC(30),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X81_Y24_N32
\bit_ADC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \bit_ADC[3]~6_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(30));

-- Location: LABCELL_X81_Y24_N33
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !bit_ADC(31) ) + ( VCC ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(31),
	cin => \Add0~110\,
	sumout => \Add0~17_sumout\);

-- Location: LABCELL_X81_Y24_N48
\bit_ADC~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_ADC~5_combout\ = ( \AUD_ADCLRCK~input_o\ & ( \Add0~17_sumout\ ) ) # ( !\AUD_ADCLRCK~input_o\ & ( \Add0~17_sumout\ & ( !\RST_N~input_o\ ) ) ) # ( \AUD_ADCLRCK~input_o\ & ( !\Add0~17_sumout\ ) ) # ( !\AUD_ADCLRCK~input_o\ & ( !\Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RST_N~input_o\,
	datae => \ALT_INV_AUD_ADCLRCK~input_o\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \bit_ADC~5_combout\);

-- Location: FF_X81_Y24_N50
\bit_ADC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bit_ADC~5_combout\,
	ena => \bit_ADC[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ADC(31));

-- Location: MLABCELL_X82_Y24_N36
\ADCDAT_reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~1_combout\ = ( !\AUD_ADCLRCK~input_o\ & ( !\old_BCLK~q\ & ( (bit_ADC(31) & (\AUD_BCLK~input_o\ & !\LessThan0~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(31),
	datab => \ALT_INV_AUD_BCLK~input_o\,
	datac => \ALT_INV_LessThan0~4_combout\,
	datae => \ALT_INV_AUD_ADCLRCK~input_o\,
	dataf => \ALT_INV_old_BCLK~q\,
	combout => \ADCDAT_reg~1_combout\);

-- Location: IOIBUF_X89_Y23_N4
\AUD_ADCDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: LABCELL_X83_Y24_N12
\ADCDAT_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~0_combout\ = ( !bit_ADC(2) & ( !bit_ADC(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_bit_ADC(2),
	dataf => ALT_INV_bit_ADC(3),
	combout => \ADCDAT_reg~0_combout\);

-- Location: LABCELL_X83_Y24_N48
\ADCDAT_reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~2_combout\ = ( ADCDAT_reg(0) & ( \ADCDAT_reg~0_combout\ & ( (!\ADCDAT_reg~1_combout\) # (((!bit_ADC(0)) # (\AUD_ADCDAT~input_o\)) # (bit_ADC(1))) ) ) ) # ( !ADCDAT_reg(0) & ( \ADCDAT_reg~0_combout\ & ( (\ADCDAT_reg~1_combout\ & (!bit_ADC(1) & 
-- (\AUD_ADCDAT~input_o\ & bit_ADC(0)))) ) ) ) # ( ADCDAT_reg(0) & ( !\ADCDAT_reg~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCDAT_reg~1_combout\,
	datab => ALT_INV_bit_ADC(1),
	datac => \ALT_INV_AUD_ADCDAT~input_o\,
	datad => ALT_INV_bit_ADC(0),
	datae => ALT_INV_ADCDAT_reg(0),
	dataf => \ALT_INV_ADCDAT_reg~0_combout\,
	combout => \ADCDAT_reg~2_combout\);

-- Location: FF_X83_Y24_N49
\ADCDAT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~2_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(0));

-- Location: LABCELL_X83_Y24_N30
\ADCDAT_reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~3_combout\ = ( ADCDAT_reg(1) & ( \ADCDAT_reg~0_combout\ & ( (((!\ADCDAT_reg~1_combout\) # (bit_ADC(1))) # (bit_ADC(0))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(1) & ( \ADCDAT_reg~0_combout\ & ( (\AUD_ADCDAT~input_o\ & (!bit_ADC(0) & 
-- (\ADCDAT_reg~1_combout\ & !bit_ADC(1)))) ) ) ) # ( ADCDAT_reg(1) & ( !\ADCDAT_reg~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => \ALT_INV_ADCDAT_reg~1_combout\,
	datad => ALT_INV_bit_ADC(1),
	datae => ALT_INV_ADCDAT_reg(1),
	dataf => \ALT_INV_ADCDAT_reg~0_combout\,
	combout => \ADCDAT_reg~3_combout\);

-- Location: FF_X83_Y24_N31
\ADCDAT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~3_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(1));

-- Location: LABCELL_X83_Y24_N24
\ADCDAT_reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~4_combout\ = ( ADCDAT_reg(2) & ( \ADCDAT_reg~0_combout\ & ( ((!bit_ADC(0)) # ((!\ADCDAT_reg~1_combout\) # (!bit_ADC(1)))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(2) & ( \ADCDAT_reg~0_combout\ & ( (\AUD_ADCDAT~input_o\ & (bit_ADC(0) & 
-- (\ADCDAT_reg~1_combout\ & bit_ADC(1)))) ) ) ) # ( ADCDAT_reg(2) & ( !\ADCDAT_reg~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => \ALT_INV_ADCDAT_reg~1_combout\,
	datad => ALT_INV_bit_ADC(1),
	datae => ALT_INV_ADCDAT_reg(2),
	dataf => \ALT_INV_ADCDAT_reg~0_combout\,
	combout => \ADCDAT_reg~4_combout\);

-- Location: FF_X83_Y24_N25
\ADCDAT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~4_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(2));

-- Location: MLABCELL_X82_Y24_N24
\ADCDAT_reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~5_combout\ = ( ADCDAT_reg(3) & ( bit_ADC(0) ) ) # ( ADCDAT_reg(3) & ( !bit_ADC(0) & ( ((!\ADCDAT_reg~0_combout\) # ((!\ADCDAT_reg~1_combout\) # (!bit_ADC(1)))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(3) & ( !bit_ADC(0) & ( 
-- (\AUD_ADCDAT~input_o\ & (\ADCDAT_reg~0_combout\ & (\ADCDAT_reg~1_combout\ & bit_ADC(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => \ALT_INV_ADCDAT_reg~0_combout\,
	datac => \ALT_INV_ADCDAT_reg~1_combout\,
	datad => ALT_INV_bit_ADC(1),
	datae => ALT_INV_ADCDAT_reg(3),
	dataf => ALT_INV_bit_ADC(0),
	combout => \ADCDAT_reg~5_combout\);

-- Location: FF_X82_Y24_N25
\ADCDAT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~5_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(3));

-- Location: MLABCELL_X82_Y24_N30
\ADCDAT_reg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~6_combout\ = ( !bit_ADC(3) & ( bit_ADC(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ADC(2),
	dataf => ALT_INV_bit_ADC(3),
	combout => \ADCDAT_reg~6_combout\);

-- Location: LABCELL_X83_Y24_N6
\ADCDAT_reg~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~7_combout\ = ( ADCDAT_reg(4) & ( \ADCDAT_reg~6_combout\ & ( ((!bit_ADC(0)) # ((!\ADCDAT_reg~1_combout\) # (bit_ADC(1)))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(4) & ( \ADCDAT_reg~6_combout\ & ( (\AUD_ADCDAT~input_o\ & (bit_ADC(0) & 
-- (\ADCDAT_reg~1_combout\ & !bit_ADC(1)))) ) ) ) # ( ADCDAT_reg(4) & ( !\ADCDAT_reg~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => \ALT_INV_ADCDAT_reg~1_combout\,
	datad => ALT_INV_bit_ADC(1),
	datae => ALT_INV_ADCDAT_reg(4),
	dataf => \ALT_INV_ADCDAT_reg~6_combout\,
	combout => \ADCDAT_reg~7_combout\);

-- Location: FF_X83_Y24_N7
\ADCDAT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~7_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(4));

-- Location: LABCELL_X83_Y24_N36
\ADCDAT_reg~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~8_combout\ = ( ADCDAT_reg(5) & ( \ADCDAT_reg~6_combout\ & ( (((!\ADCDAT_reg~1_combout\) # (bit_ADC(1))) # (bit_ADC(0))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(5) & ( \ADCDAT_reg~6_combout\ & ( (\AUD_ADCDAT~input_o\ & (!bit_ADC(0) & 
-- (\ADCDAT_reg~1_combout\ & !bit_ADC(1)))) ) ) ) # ( ADCDAT_reg(5) & ( !\ADCDAT_reg~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => \ALT_INV_ADCDAT_reg~1_combout\,
	datad => ALT_INV_bit_ADC(1),
	datae => ALT_INV_ADCDAT_reg(5),
	dataf => \ALT_INV_ADCDAT_reg~6_combout\,
	combout => \ADCDAT_reg~8_combout\);

-- Location: FF_X83_Y24_N38
\ADCDAT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~8_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(5));

-- Location: LABCELL_X83_Y24_N54
\ADCDAT_reg~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~9_combout\ = ( ADCDAT_reg(6) & ( \ADCDAT_reg~6_combout\ & ( ((!bit_ADC(0)) # ((!\ADCDAT_reg~1_combout\) # (!bit_ADC(1)))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(6) & ( \ADCDAT_reg~6_combout\ & ( (\AUD_ADCDAT~input_o\ & (bit_ADC(0) & 
-- (\ADCDAT_reg~1_combout\ & bit_ADC(1)))) ) ) ) # ( ADCDAT_reg(6) & ( !\ADCDAT_reg~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => \ALT_INV_ADCDAT_reg~1_combout\,
	datad => ALT_INV_bit_ADC(1),
	datae => ALT_INV_ADCDAT_reg(6),
	dataf => \ALT_INV_ADCDAT_reg~6_combout\,
	combout => \ADCDAT_reg~9_combout\);

-- Location: FF_X83_Y24_N55
\ADCDAT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~9_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(6));

-- Location: MLABCELL_X82_Y24_N57
\ADCDAT_reg~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~10_combout\ = ( ADCDAT_reg(7) & ( \ADCDAT_reg~6_combout\ & ( ((!bit_ADC(1)) # ((!\ADCDAT_reg~1_combout\) # (bit_ADC(0)))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(7) & ( \ADCDAT_reg~6_combout\ & ( (\AUD_ADCDAT~input_o\ & (bit_ADC(1) & 
-- (!bit_ADC(0) & \ADCDAT_reg~1_combout\))) ) ) ) # ( ADCDAT_reg(7) & ( !\ADCDAT_reg~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(1),
	datac => ALT_INV_bit_ADC(0),
	datad => \ALT_INV_ADCDAT_reg~1_combout\,
	datae => ALT_INV_ADCDAT_reg(7),
	dataf => \ALT_INV_ADCDAT_reg~6_combout\,
	combout => \ADCDAT_reg~10_combout\);

-- Location: FF_X82_Y24_N58
\ADCDAT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~10_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(7));

-- Location: LABCELL_X83_Y24_N42
\ADCDAT_reg~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~11_combout\ = ( bit_ADC(3) & ( !bit_ADC(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(2),
	dataf => ALT_INV_bit_ADC(3),
	combout => \ADCDAT_reg~11_combout\);

-- Location: LABCELL_X83_Y24_N9
\ADCDAT_reg~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~12_combout\ = ( ADCDAT_reg(8) & ( \ADCDAT_reg~11_combout\ & ( ((!bit_ADC(0)) # ((!\ADCDAT_reg~1_combout\) # (bit_ADC(1)))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(8) & ( \ADCDAT_reg~11_combout\ & ( (\AUD_ADCDAT~input_o\ & (bit_ADC(0) & 
-- (!bit_ADC(1) & \ADCDAT_reg~1_combout\))) ) ) ) # ( ADCDAT_reg(8) & ( !\ADCDAT_reg~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => ALT_INV_bit_ADC(1),
	datad => \ALT_INV_ADCDAT_reg~1_combout\,
	datae => ALT_INV_ADCDAT_reg(8),
	dataf => \ALT_INV_ADCDAT_reg~11_combout\,
	combout => \ADCDAT_reg~12_combout\);

-- Location: FF_X83_Y24_N10
\ADCDAT_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~12_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(8));

-- Location: LABCELL_X83_Y24_N39
\ADCDAT_reg~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~13_combout\ = ( ADCDAT_reg(9) & ( \ADCDAT_reg~11_combout\ & ( (((!\ADCDAT_reg~1_combout\) # (bit_ADC(1))) # (bit_ADC(0))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(9) & ( \ADCDAT_reg~11_combout\ & ( (\AUD_ADCDAT~input_o\ & (!bit_ADC(0) & 
-- (!bit_ADC(1) & \ADCDAT_reg~1_combout\))) ) ) ) # ( ADCDAT_reg(9) & ( !\ADCDAT_reg~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => ALT_INV_bit_ADC(1),
	datad => \ALT_INV_ADCDAT_reg~1_combout\,
	datae => ALT_INV_ADCDAT_reg(9),
	dataf => \ALT_INV_ADCDAT_reg~11_combout\,
	combout => \ADCDAT_reg~13_combout\);

-- Location: FF_X83_Y24_N40
\ADCDAT_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~13_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(9));

-- Location: LABCELL_X83_Y24_N57
\ADCDAT_reg~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~14_combout\ = ( ADCDAT_reg(10) & ( \ADCDAT_reg~11_combout\ & ( ((!bit_ADC(0)) # ((!bit_ADC(1)) # (!\ADCDAT_reg~1_combout\))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(10) & ( \ADCDAT_reg~11_combout\ & ( (\AUD_ADCDAT~input_o\ & (bit_ADC(0) 
-- & (bit_ADC(1) & \ADCDAT_reg~1_combout\))) ) ) ) # ( ADCDAT_reg(10) & ( !\ADCDAT_reg~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => ALT_INV_bit_ADC(1),
	datad => \ALT_INV_ADCDAT_reg~1_combout\,
	datae => ALT_INV_ADCDAT_reg(10),
	dataf => \ALT_INV_ADCDAT_reg~11_combout\,
	combout => \ADCDAT_reg~14_combout\);

-- Location: FF_X83_Y24_N58
\ADCDAT_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~14_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(10));

-- Location: LABCELL_X83_Y24_N0
\ADCDAT_reg~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~15_combout\ = ( ADCDAT_reg(11) & ( \ADCDAT_reg~11_combout\ & ( (!\ADCDAT_reg~1_combout\) # ((!bit_ADC(1)) # ((bit_ADC(0)) # (\AUD_ADCDAT~input_o\))) ) ) ) # ( !ADCDAT_reg(11) & ( \ADCDAT_reg~11_combout\ & ( (\ADCDAT_reg~1_combout\ & 
-- (bit_ADC(1) & (\AUD_ADCDAT~input_o\ & !bit_ADC(0)))) ) ) ) # ( ADCDAT_reg(11) & ( !\ADCDAT_reg~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCDAT_reg~1_combout\,
	datab => ALT_INV_bit_ADC(1),
	datac => \ALT_INV_AUD_ADCDAT~input_o\,
	datad => ALT_INV_bit_ADC(0),
	datae => ALT_INV_ADCDAT_reg(11),
	dataf => \ALT_INV_ADCDAT_reg~11_combout\,
	combout => \ADCDAT_reg~15_combout\);

-- Location: FF_X83_Y24_N1
\ADCDAT_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~15_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(11));

-- Location: LABCELL_X83_Y24_N45
\ADCDAT_reg~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~16_combout\ = ( bit_ADC(3) & ( bit_ADC(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ADC(2),
	dataf => ALT_INV_bit_ADC(3),
	combout => \ADCDAT_reg~16_combout\);

-- Location: LABCELL_X83_Y24_N21
\ADCDAT_reg~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~17_combout\ = ( ADCDAT_reg(12) & ( \ADCDAT_reg~1_combout\ & ( (((!bit_ADC(0)) # (!\ADCDAT_reg~16_combout\)) # (bit_ADC(1))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(12) & ( \ADCDAT_reg~1_combout\ & ( (\AUD_ADCDAT~input_o\ & (!bit_ADC(1) 
-- & (bit_ADC(0) & \ADCDAT_reg~16_combout\))) ) ) ) # ( ADCDAT_reg(12) & ( !\ADCDAT_reg~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(1),
	datac => ALT_INV_bit_ADC(0),
	datad => \ALT_INV_ADCDAT_reg~16_combout\,
	datae => ALT_INV_ADCDAT_reg(12),
	dataf => \ALT_INV_ADCDAT_reg~1_combout\,
	combout => \ADCDAT_reg~17_combout\);

-- Location: FF_X83_Y24_N22
\ADCDAT_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~17_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(12));

-- Location: LABCELL_X83_Y24_N33
\ADCDAT_reg~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~18_combout\ = ( ADCDAT_reg(13) & ( \ADCDAT_reg~16_combout\ & ( (((!\ADCDAT_reg~1_combout\) # (bit_ADC(1))) # (bit_ADC(0))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(13) & ( \ADCDAT_reg~16_combout\ & ( (\AUD_ADCDAT~input_o\ & (!bit_ADC(0) 
-- & (!bit_ADC(1) & \ADCDAT_reg~1_combout\))) ) ) ) # ( ADCDAT_reg(13) & ( !\ADCDAT_reg~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => ALT_INV_bit_ADC(1),
	datad => \ALT_INV_ADCDAT_reg~1_combout\,
	datae => ALT_INV_ADCDAT_reg(13),
	dataf => \ALT_INV_ADCDAT_reg~16_combout\,
	combout => \ADCDAT_reg~18_combout\);

-- Location: FF_X83_Y24_N35
\ADCDAT_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~18_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(13));

-- Location: LABCELL_X83_Y24_N27
\ADCDAT_reg~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~19_combout\ = ( ADCDAT_reg(14) & ( \ADCDAT_reg~16_combout\ & ( ((!bit_ADC(0)) # ((!bit_ADC(1)) # (!\ADCDAT_reg~1_combout\))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(14) & ( \ADCDAT_reg~16_combout\ & ( (\AUD_ADCDAT~input_o\ & (bit_ADC(0) 
-- & (bit_ADC(1) & \ADCDAT_reg~1_combout\))) ) ) ) # ( ADCDAT_reg(14) & ( !\ADCDAT_reg~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_bit_ADC(0),
	datac => ALT_INV_bit_ADC(1),
	datad => \ALT_INV_ADCDAT_reg~1_combout\,
	datae => ALT_INV_ADCDAT_reg(14),
	dataf => \ALT_INV_ADCDAT_reg~16_combout\,
	combout => \ADCDAT_reg~19_combout\);

-- Location: FF_X83_Y24_N28
\ADCDAT_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~19_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(14));

-- Location: MLABCELL_X82_Y24_N33
\ADCDAT_reg~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~20_combout\ = ( !\LessThan0~4_combout\ & ( (\ADCDAT_reg~16_combout\ & (bit_ADC(1) & (!bit_ADC(0) & bit_ADC(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCDAT_reg~16_combout\,
	datab => ALT_INV_bit_ADC(1),
	datac => ALT_INV_bit_ADC(0),
	datad => ALT_INV_bit_ADC(31),
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \ADCDAT_reg~20_combout\);

-- Location: MLABCELL_X82_Y24_N3
\ADCDAT_reg~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT_reg~21_combout\ = ( ADCDAT_reg(15) & ( \old_BCLK~q\ ) ) # ( ADCDAT_reg(15) & ( !\old_BCLK~q\ & ( ((!\AUD_BCLK~input_o\) # ((!\AUD_ADCLRCK~input_o\ & !\ADCDAT_reg~20_combout\))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !ADCDAT_reg(15) & ( !\old_BCLK~q\ & 
-- ( (\AUD_ADCDAT~input_o\ & (\AUD_BCLK~input_o\ & ((\ADCDAT_reg~20_combout\) # (\AUD_ADCLRCK~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011111110111111001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_AUD_ADCDAT~input_o\,
	datac => \ALT_INV_AUD_BCLK~input_o\,
	datad => \ALT_INV_ADCDAT_reg~20_combout\,
	datae => ALT_INV_ADCDAT_reg(15),
	dataf => \ALT_INV_old_BCLK~q\,
	combout => \ADCDAT_reg~21_combout\);

-- Location: FF_X82_Y24_N4
\ADCDAT_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT_reg~21_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADCDAT_reg(15));

-- Location: IOIBUF_X40_Y0_N52
\DACDAT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(0),
	o => \DACDAT[0]~input_o\);

-- Location: IOIBUF_X8_Y81_N52
\DACDAT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(1),
	o => \DACDAT[1]~input_o\);

-- Location: IOIBUF_X8_Y81_N35
\DACDAT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(2),
	o => \DACDAT[2]~input_o\);

-- Location: IOIBUF_X89_Y13_N21
\DACDAT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(3),
	o => \DACDAT[3]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\DACDAT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(4),
	o => \DACDAT[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\DACDAT[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(5),
	o => \DACDAT[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\DACDAT[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(6),
	o => \DACDAT[6]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\DACDAT[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(7),
	o => \DACDAT[7]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\DACDAT[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(8),
	o => \DACDAT[8]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\DACDAT[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(9),
	o => \DACDAT[9]~input_o\);

-- Location: IOIBUF_X2_Y81_N41
\DACDAT[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(10),
	o => \DACDAT[10]~input_o\);

-- Location: IOIBUF_X2_Y81_N92
\DACDAT[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(11),
	o => \DACDAT[11]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\DACDAT[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(12),
	o => \DACDAT[12]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\DACDAT[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(13),
	o => \DACDAT[13]~input_o\);

-- Location: IOIBUF_X2_Y81_N75
\DACDAT[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(14),
	o => \DACDAT[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\DACDAT[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(15),
	o => \DACDAT[15]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\ADCrdy~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCrdy,
	o => \ADCrdy~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\DACstb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACstb,
	o => \DACstb~input_o\);

-- Location: IOIBUF_X8_Y81_N1
\AUD_DACLRCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: MLABCELL_X6_Y43_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


