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

-- DATE "04/30/2020 13:41:29"

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

ENTITY 	s2p_adaptor IS
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
END s2p_adaptor;

-- Design Ports Information
-- ADCDAT[0]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[1]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[3]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[4]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[5]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[6]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[7]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[8]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[9]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[10]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[11]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[12]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[13]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[14]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[15]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACrdy	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCrdy	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACstb	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCstb	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_N	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[15]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[0]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[2]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[4]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[6]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[8]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[10]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[14]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[3]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[5]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[9]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[11]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[13]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF s2p_adaptor IS
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
SIGNAL \ADCrdy~input_o\ : std_logic;
SIGNAL \DACstb~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \cnt1~4_combout\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \cnt1~3_combout\ : std_logic;
SIGNAL \cnt1~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \old_BCLK~0_combout\ : std_logic;
SIGNAL \old_BCLK~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \cnt1~5_combout\ : std_logic;
SIGNAL \cnt1[3]~1_combout\ : std_logic;
SIGNAL \cnt1~0_combout\ : std_logic;
SIGNAL \ADCstb2~0_combout\ : std_logic;
SIGNAL \ADCDAT[14]~0_combout\ : std_logic;
SIGNAL \ADCDAT[0]~1_combout\ : std_logic;
SIGNAL \ADCDAT[0]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[14]~2_combout\ : std_logic;
SIGNAL \ADCDAT[1]~3_combout\ : std_logic;
SIGNAL \ADCDAT[1]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[2]~4_combout\ : std_logic;
SIGNAL \ADCDAT[2]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[3]~5_combout\ : std_logic;
SIGNAL \ADCDAT[3]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[7]~6_combout\ : std_logic;
SIGNAL \ADCDAT[4]~7_combout\ : std_logic;
SIGNAL \ADCDAT[4]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[5]~8_combout\ : std_logic;
SIGNAL \ADCDAT[5]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[6]~9_combout\ : std_logic;
SIGNAL \ADCDAT[6]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[7]~10_combout\ : std_logic;
SIGNAL \ADCDAT[7]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[11]~11_combout\ : std_logic;
SIGNAL \ADCDAT[8]~12_combout\ : std_logic;
SIGNAL \ADCDAT[8]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[9]~13_combout\ : std_logic;
SIGNAL \ADCDAT[9]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[10]~14_combout\ : std_logic;
SIGNAL \ADCDAT[10]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[11]~15_combout\ : std_logic;
SIGNAL \ADCDAT[11]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[13]~16_combout\ : std_logic;
SIGNAL \ADCDAT[12]~17_combout\ : std_logic;
SIGNAL \ADCDAT[12]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[13]~18_combout\ : std_logic;
SIGNAL \ADCDAT[13]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[14]~19_combout\ : std_logic;
SIGNAL \ADCDAT[14]~reg0_q\ : std_logic;
SIGNAL \ADCDAT[15]~20_combout\ : std_logic;
SIGNAL \ADCDAT[15]~21_combout\ : std_logic;
SIGNAL \ADCDAT[15]~reg0_q\ : std_logic;
SIGNAL \ADCstb2~1_combout\ : std_logic;
SIGNAL \ADCstb2~2_combout\ : std_logic;
SIGNAL \ADCstb2~q\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \old_AUD_DACLRCK~q\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \cnt2~4_combout\ : std_logic;
SIGNAL \cnt2[3]~1_combout\ : std_logic;
SIGNAL \cnt2~0_combout\ : std_logic;
SIGNAL \cnt2~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \cnt2~3_combout\ : std_logic;
SIGNAL \cnt2~5_combout\ : std_logic;
SIGNAL \DACDAT[15]~input_o\ : std_logic;
SIGNAL \shr[15]~0_combout\ : std_logic;
SIGNAL \DACDAT[8]~input_o\ : std_logic;
SIGNAL \DACDAT[14]~input_o\ : std_logic;
SIGNAL \DACDAT[10]~input_o\ : std_logic;
SIGNAL \shr[10]~feeder_combout\ : std_logic;
SIGNAL \DACDAT[12]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \DACDAT[9]~input_o\ : std_logic;
SIGNAL \DACDAT[13]~input_o\ : std_logic;
SIGNAL \DACDAT[11]~input_o\ : std_logic;
SIGNAL \shr[11]~feeder_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \DACDAT[0]~input_o\ : std_logic;
SIGNAL \shr[0]~feeder_combout\ : std_logic;
SIGNAL \DACDAT[6]~input_o\ : std_logic;
SIGNAL \DACDAT[4]~input_o\ : std_logic;
SIGNAL \DACDAT[2]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \DACDAT[7]~input_o\ : std_logic;
SIGNAL \DACDAT[1]~input_o\ : std_logic;
SIGNAL \shr[1]~feeder_combout\ : std_logic;
SIGNAL \DACDAT[5]~input_o\ : std_logic;
SIGNAL \DACDAT[3]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \AUD_DACDAT~0_combout\ : std_logic;
SIGNAL \AUD_DACDAT~reg0_q\ : std_logic;
SIGNAL cnt2 : std_logic_vector(4 DOWNTO 0);
SIGNAL cnt1 : std_logic_vector(4 DOWNTO 0);
SIGNAL shr : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_DACDAT[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DACDAT[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DACDAT[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DACDAT[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \ALT_INV_AUD_BCLK~input_o\ : std_logic;
SIGNAL \ALT_INV_RST_N~input_o\ : std_logic;
SIGNAL \ALT_INV_AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \ALT_INV_AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL ALT_INV_cnt2 : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL ALT_INV_shr : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_old_AUD_DACLRCK~q\ : std_logic;
SIGNAL \ALT_INV_ADCstb2~1_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[15]~20_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[13]~16_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[11]~11_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[7]~6_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[14]~2_combout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[14]~0_combout\ : std_logic;
SIGNAL \ALT_INV_old_BCLK~q\ : std_logic;
SIGNAL ALT_INV_cnt1 : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_ADCstb2~0_combout\ : std_logic;
SIGNAL \ALT_INV_AUD_DACDAT~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[15]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[14]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[13]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[12]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[11]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[10]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[9]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[8]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ADCstb2~q\ : std_logic;

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
\ALT_INV_DACDAT[11]~input_o\ <= NOT \DACDAT[11]~input_o\;
\ALT_INV_DACDAT[1]~input_o\ <= NOT \DACDAT[1]~input_o\;
\ALT_INV_DACDAT[10]~input_o\ <= NOT \DACDAT[10]~input_o\;
\ALT_INV_DACDAT[0]~input_o\ <= NOT \DACDAT[0]~input_o\;
\ALT_INV_AUD_DACLRCK~input_o\ <= NOT \AUD_DACLRCK~input_o\;
\ALT_INV_AUD_BCLK~input_o\ <= NOT \AUD_BCLK~input_o\;
\ALT_INV_RST_N~input_o\ <= NOT \RST_N~input_o\;
\ALT_INV_AUD_ADCLRCK~input_o\ <= NOT \AUD_ADCLRCK~input_o\;
\ALT_INV_AUD_ADCDAT~input_o\ <= NOT \AUD_ADCDAT~input_o\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
ALT_INV_cnt2(0) <= NOT cnt2(0);
ALT_INV_cnt2(3) <= NOT cnt2(3);
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
ALT_INV_shr(13) <= NOT shr(13);
ALT_INV_shr(11) <= NOT shr(11);
ALT_INV_shr(9) <= NOT shr(9);
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
ALT_INV_shr(7) <= NOT shr(7);
ALT_INV_shr(5) <= NOT shr(5);
ALT_INV_shr(3) <= NOT shr(3);
ALT_INV_shr(1) <= NOT shr(1);
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
ALT_INV_shr(14) <= NOT shr(14);
ALT_INV_shr(12) <= NOT shr(12);
ALT_INV_shr(10) <= NOT shr(10);
ALT_INV_shr(8) <= NOT shr(8);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_cnt2(2) <= NOT cnt2(2);
ALT_INV_cnt2(1) <= NOT cnt2(1);
ALT_INV_shr(6) <= NOT shr(6);
ALT_INV_shr(4) <= NOT shr(4);
ALT_INV_shr(2) <= NOT shr(2);
ALT_INV_shr(0) <= NOT shr(0);
ALT_INV_shr(15) <= NOT shr(15);
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_old_AUD_DACLRCK~q\ <= NOT \old_AUD_DACLRCK~q\;
\ALT_INV_ADCstb2~1_combout\ <= NOT \ADCstb2~1_combout\;
\ALT_INV_ADCDAT[15]~20_combout\ <= NOT \ADCDAT[15]~20_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_ADCDAT[13]~16_combout\ <= NOT \ADCDAT[13]~16_combout\;
\ALT_INV_ADCDAT[11]~11_combout\ <= NOT \ADCDAT[11]~11_combout\;
\ALT_INV_ADCDAT[7]~6_combout\ <= NOT \ADCDAT[7]~6_combout\;
\ALT_INV_ADCDAT[14]~2_combout\ <= NOT \ADCDAT[14]~2_combout\;
\ALT_INV_ADCDAT[14]~0_combout\ <= NOT \ADCDAT[14]~0_combout\;
\ALT_INV_old_BCLK~q\ <= NOT \old_BCLK~q\;
ALT_INV_cnt1(4) <= NOT cnt1(4);
ALT_INV_cnt1(0) <= NOT cnt1(0);
ALT_INV_cnt1(1) <= NOT cnt1(1);
\ALT_INV_ADCstb2~0_combout\ <= NOT \ADCstb2~0_combout\;
ALT_INV_cnt1(3) <= NOT cnt1(3);
ALT_INV_cnt1(2) <= NOT cnt1(2);
\ALT_INV_AUD_DACDAT~reg0_q\ <= NOT \AUD_DACDAT~reg0_q\;
\ALT_INV_ADCDAT[15]~reg0_q\ <= NOT \ADCDAT[15]~reg0_q\;
\ALT_INV_ADCDAT[14]~reg0_q\ <= NOT \ADCDAT[14]~reg0_q\;
\ALT_INV_ADCDAT[13]~reg0_q\ <= NOT \ADCDAT[13]~reg0_q\;
\ALT_INV_ADCDAT[12]~reg0_q\ <= NOT \ADCDAT[12]~reg0_q\;
\ALT_INV_ADCDAT[11]~reg0_q\ <= NOT \ADCDAT[11]~reg0_q\;
\ALT_INV_ADCDAT[10]~reg0_q\ <= NOT \ADCDAT[10]~reg0_q\;
\ALT_INV_ADCDAT[9]~reg0_q\ <= NOT \ADCDAT[9]~reg0_q\;
\ALT_INV_ADCDAT[8]~reg0_q\ <= NOT \ADCDAT[8]~reg0_q\;
\ALT_INV_ADCDAT[7]~reg0_q\ <= NOT \ADCDAT[7]~reg0_q\;
\ALT_INV_ADCDAT[6]~reg0_q\ <= NOT \ADCDAT[6]~reg0_q\;
\ALT_INV_ADCDAT[5]~reg0_q\ <= NOT \ADCDAT[5]~reg0_q\;
\ALT_INV_ADCDAT[4]~reg0_q\ <= NOT \ADCDAT[4]~reg0_q\;
\ALT_INV_ADCDAT[3]~reg0_q\ <= NOT \ADCDAT[3]~reg0_q\;
\ALT_INV_ADCDAT[2]~reg0_q\ <= NOT \ADCDAT[2]~reg0_q\;
\ALT_INV_ADCDAT[1]~reg0_q\ <= NOT \ADCDAT[1]~reg0_q\;
\ALT_INV_ADCDAT[0]~reg0_q\ <= NOT \ADCDAT[0]~reg0_q\;
ALT_INV_cnt2(4) <= NOT cnt2(4);
\ALT_INV_ADCstb2~q\ <= NOT \ADCstb2~q\;

-- Location: IOOBUF_X78_Y0_N2
\ADCDAT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(0));

-- Location: IOOBUF_X82_Y0_N42
\ADCDAT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(1));

-- Location: IOOBUF_X89_Y4_N45
\ADCDAT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(2));

-- Location: IOOBUF_X76_Y0_N2
\ADCDAT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(3));

-- Location: IOOBUF_X80_Y0_N36
\ADCDAT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(4));

-- Location: IOOBUF_X82_Y0_N93
\ADCDAT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(5));

-- Location: IOOBUF_X80_Y0_N53
\ADCDAT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(6));

-- Location: IOOBUF_X82_Y0_N59
\ADCDAT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(7));

-- Location: IOOBUF_X78_Y0_N36
\ADCDAT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(8));

-- Location: IOOBUF_X89_Y4_N79
\ADCDAT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(9));

-- Location: IOOBUF_X80_Y0_N2
\ADCDAT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(10));

-- Location: IOOBUF_X76_Y0_N53
\ADCDAT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(11));

-- Location: IOOBUF_X84_Y0_N53
\ADCDAT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(12));

-- Location: IOOBUF_X80_Y0_N19
\ADCDAT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(13));

-- Location: IOOBUF_X89_Y4_N62
\ADCDAT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(14));

-- Location: IOOBUF_X82_Y0_N76
\ADCDAT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCDAT[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCDAT(15));

-- Location: IOOBUF_X20_Y81_N2
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

-- Location: IOOBUF_X84_Y0_N2
\ADCstb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCstb2~q\,
	devoe => ww_devoe,
	o => ww_ADCstb);

-- Location: IOOBUF_X70_Y0_N53
\AUD_DACDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AUD_DACDAT~reg0_q\,
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

-- Location: IOIBUF_X76_Y0_N35
\AUD_ADCDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\AUD_ADCLRCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\RST_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_N,
	o => \RST_N~input_o\);

-- Location: MLABCELL_X78_Y3_N12
\cnt1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt1~4_combout\ = ( \AUD_ADCLRCK~input_o\ & ( \RST_N~input_o\ ) ) # ( !\AUD_ADCLRCK~input_o\ & ( (\RST_N~input_o\ & !cnt1(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RST_N~input_o\,
	datad => ALT_INV_cnt1(0),
	dataf => \ALT_INV_AUD_ADCLRCK~input_o\,
	combout => \cnt1~4_combout\);

-- Location: IOIBUF_X78_Y0_N18
\AUD_BCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: MLABCELL_X78_Y3_N9
\cnt1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt1~3_combout\ = (!\AUD_ADCLRCK~input_o\ & (\RST_N~input_o\ & (!cnt1(0) $ (!cnt1(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	datac => ALT_INV_cnt1(0),
	datad => ALT_INV_cnt1(1),
	combout => \cnt1~3_combout\);

-- Location: FF_X78_Y3_N11
\cnt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt1~3_combout\,
	ena => \cnt1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1(1));

-- Location: LABCELL_X77_Y3_N6
\cnt1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt1~2_combout\ = ( cnt1(1) & ( cnt1(2) & ( (\RST_N~input_o\ & (!\AUD_ADCLRCK~input_o\ & (!cnt1(0) $ (!cnt1(3))))) ) ) ) # ( !cnt1(1) & ( cnt1(2) & ( (\RST_N~input_o\ & (!\AUD_ADCLRCK~input_o\ & cnt1(3))) ) ) ) # ( cnt1(1) & ( !cnt1(2) & ( 
-- (\RST_N~input_o\ & (!\AUD_ADCLRCK~input_o\ & cnt1(3))) ) ) ) # ( !cnt1(1) & ( !cnt1(2) & ( (\RST_N~input_o\ & (!\AUD_ADCLRCK~input_o\ & cnt1(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010100000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N~input_o\,
	datab => ALT_INV_cnt1(0),
	datac => \ALT_INV_AUD_ADCLRCK~input_o\,
	datad => ALT_INV_cnt1(3),
	datae => ALT_INV_cnt1(1),
	dataf => ALT_INV_cnt1(2),
	combout => \cnt1~2_combout\);

-- Location: FF_X78_Y3_N20
\cnt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \cnt1~2_combout\,
	sload => VCC,
	ena => \cnt1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1(3));

-- Location: MLABCELL_X78_Y3_N57
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( cnt1(2) & ( (cnt1(1) & cnt1(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt1(1),
	datac => ALT_INV_cnt1(0),
	dataf => ALT_INV_cnt1(2),
	combout => \Add0~0_combout\);

-- Location: LABCELL_X75_Y3_N9
\old_BCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \old_BCLK~0_combout\ = ( \RST_N~input_o\ & ( \AUD_BCLK~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_BCLK~input_o\,
	dataf => \ALT_INV_RST_N~input_o\,
	combout => \old_BCLK~0_combout\);

-- Location: FF_X75_Y3_N11
old_BCLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \old_BCLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \old_BCLK~q\);

-- Location: LABCELL_X75_Y3_N48
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !\old_BCLK~q\ & ( \AUD_BCLK~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AUD_BCLK~input_o\,
	dataf => \ALT_INV_old_BCLK~q\,
	combout => \process_0~0_combout\);

-- Location: MLABCELL_X78_Y3_N36
\cnt1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt1~5_combout\ = ( cnt1(4) & ( \process_0~0_combout\ & ( (!\AUD_ADCLRCK~input_o\ & \RST_N~input_o\) ) ) ) # ( !cnt1(4) & ( \process_0~0_combout\ & ( (!\AUD_ADCLRCK~input_o\ & (\RST_N~input_o\ & (cnt1(3) & \Add0~0_combout\))) ) ) ) # ( cnt1(4) & ( 
-- !\process_0~0_combout\ & ( \RST_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	datac => ALT_INV_cnt1(3),
	datad => \ALT_INV_Add0~0_combout\,
	datae => ALT_INV_cnt1(4),
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \cnt1~5_combout\);

-- Location: FF_X78_Y3_N38
\cnt1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1(4));

-- Location: MLABCELL_X78_Y3_N30
\cnt1[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt1[3]~1_combout\ = ( \old_BCLK~q\ & ( !\RST_N~input_o\ ) ) # ( !\old_BCLK~q\ & ( (!\RST_N~input_o\) # ((\AUD_BCLK~input_o\ & ((!cnt1(4)) # (\AUD_ADCLRCK~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001101110011111100110111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	datac => \ALT_INV_AUD_BCLK~input_o\,
	datad => ALT_INV_cnt1(4),
	dataf => \ALT_INV_old_BCLK~q\,
	combout => \cnt1[3]~1_combout\);

-- Location: FF_X78_Y3_N14
\cnt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt1~4_combout\,
	ena => \cnt1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1(0));

-- Location: MLABCELL_X78_Y3_N33
\cnt1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt1~0_combout\ = ( cnt1(1) & ( (!\AUD_ADCLRCK~input_o\ & (\RST_N~input_o\ & (!cnt1(0) $ (!cnt1(2))))) ) ) # ( !cnt1(1) & ( (!\AUD_ADCLRCK~input_o\ & (\RST_N~input_o\ & cnt1(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	datac => ALT_INV_cnt1(0),
	datad => ALT_INV_cnt1(2),
	dataf => ALT_INV_cnt1(1),
	combout => \cnt1~0_combout\);

-- Location: FF_X78_Y3_N35
\cnt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt1~0_combout\,
	ena => \cnt1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1(2));

-- Location: MLABCELL_X78_Y3_N6
\ADCstb2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCstb2~0_combout\ = ( cnt1(3) & ( cnt1(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt1(2),
	dataf => ALT_INV_cnt1(3),
	combout => \ADCstb2~0_combout\);

-- Location: MLABCELL_X78_Y3_N21
\ADCDAT[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[14]~0_combout\ = ( !\old_BCLK~q\ & ( cnt1(0) & ( (!\AUD_ADCLRCK~input_o\ & (\AUD_BCLK~input_o\ & (\RST_N~input_o\ & !cnt1(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_AUD_BCLK~input_o\,
	datac => \ALT_INV_RST_N~input_o\,
	datad => ALT_INV_cnt1(4),
	datae => \ALT_INV_old_BCLK~q\,
	dataf => ALT_INV_cnt1(0),
	combout => \ADCDAT[14]~0_combout\);

-- Location: MLABCELL_X78_Y3_N24
\ADCDAT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[0]~1_combout\ = ( cnt1(1) & ( (!\ADCstb2~0_combout\ & (((\ADCDAT[0]~reg0_q\)))) # (\ADCstb2~0_combout\ & ((!\ADCDAT[14]~0_combout\ & ((\ADCDAT[0]~reg0_q\))) # (\ADCDAT[14]~0_combout\ & (\AUD_ADCDAT~input_o\)))) ) ) # ( !cnt1(1) & ( 
-- \ADCDAT[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111010000000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => \ALT_INV_ADCstb2~0_combout\,
	datac => \ALT_INV_ADCDAT[14]~0_combout\,
	datad => \ALT_INV_ADCDAT[0]~reg0_q\,
	dataf => ALT_INV_cnt1(1),
	combout => \ADCDAT[0]~1_combout\);

-- Location: FF_X78_Y3_N25
\ADCDAT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[0]~reg0_q\);

-- Location: MLABCELL_X78_Y3_N15
\ADCDAT[14]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[14]~2_combout\ = ( !\old_BCLK~q\ & ( (!\AUD_ADCLRCK~input_o\ & (\RST_N~input_o\ & (\AUD_BCLK~input_o\ & !cnt1(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	datac => \ALT_INV_AUD_BCLK~input_o\,
	datad => ALT_INV_cnt1(4),
	dataf => \ALT_INV_old_BCLK~q\,
	combout => \ADCDAT[14]~2_combout\);

-- Location: MLABCELL_X78_Y3_N42
\ADCDAT[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[1]~3_combout\ = ( \ADCDAT[1]~reg0_q\ & ( \ADCstb2~0_combout\ & ( ((!cnt1(1)) # ((!\ADCDAT[14]~2_combout\) # (cnt1(0)))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !\ADCDAT[1]~reg0_q\ & ( \ADCstb2~0_combout\ & ( (\AUD_ADCDAT~input_o\ & (cnt1(1) & (!cnt1(0) 
-- & \ADCDAT[14]~2_combout\))) ) ) ) # ( \ADCDAT[1]~reg0_q\ & ( !\ADCstb2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_cnt1(1),
	datac => ALT_INV_cnt1(0),
	datad => \ALT_INV_ADCDAT[14]~2_combout\,
	datae => \ALT_INV_ADCDAT[1]~reg0_q\,
	dataf => \ALT_INV_ADCstb2~0_combout\,
	combout => \ADCDAT[1]~3_combout\);

-- Location: FF_X78_Y3_N43
\ADCDAT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[1]~reg0_q\);

-- Location: MLABCELL_X78_Y3_N51
\ADCDAT[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[2]~4_combout\ = ( cnt1(1) & ( \ADCDAT[2]~reg0_q\ ) ) # ( !cnt1(1) & ( (!\ADCDAT[14]~0_combout\ & (((\ADCDAT[2]~reg0_q\)))) # (\ADCDAT[14]~0_combout\ & ((!\ADCstb2~0_combout\ & ((\ADCDAT[2]~reg0_q\))) # (\ADCstb2~0_combout\ & 
-- (\AUD_ADCDAT~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111011000000011111101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCDAT[14]~0_combout\,
	datab => \ALT_INV_AUD_ADCDAT~input_o\,
	datac => \ALT_INV_ADCstb2~0_combout\,
	datad => \ALT_INV_ADCDAT[2]~reg0_q\,
	dataf => ALT_INV_cnt1(1),
	combout => \ADCDAT[2]~4_combout\);

-- Location: FF_X78_Y3_N52
\ADCDAT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[2]~reg0_q\);

-- Location: LABCELL_X77_Y3_N24
\ADCDAT[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[3]~5_combout\ = ( \ADCDAT[3]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( (((!\ADCstb2~0_combout\) # (cnt1(0))) # (\AUD_ADCDAT~input_o\)) # (cnt1(1)) ) ) ) # ( !\ADCDAT[3]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( (!cnt1(1) & (\AUD_ADCDAT~input_o\ & 
-- (\ADCstb2~0_combout\ & !cnt1(0)))) ) ) ) # ( \ADCDAT[3]~reg0_q\ & ( !\ADCDAT[14]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt1(1),
	datab => \ALT_INV_AUD_ADCDAT~input_o\,
	datac => \ALT_INV_ADCstb2~0_combout\,
	datad => ALT_INV_cnt1(0),
	datae => \ALT_INV_ADCDAT[3]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[14]~2_combout\,
	combout => \ADCDAT[3]~5_combout\);

-- Location: FF_X77_Y3_N25
\ADCDAT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[3]~reg0_q\);

-- Location: LABCELL_X79_Y3_N33
\ADCDAT[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[7]~6_combout\ = ( !cnt1(2) & ( cnt1(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt1(3),
	dataf => ALT_INV_cnt1(2),
	combout => \ADCDAT[7]~6_combout\);

-- Location: LABCELL_X79_Y3_N30
\ADCDAT[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[4]~7_combout\ = ( \ADCDAT[14]~0_combout\ & ( (!cnt1(1) & (((\ADCDAT[4]~reg0_q\)))) # (cnt1(1) & ((!\ADCDAT[7]~6_combout\ & ((\ADCDAT[4]~reg0_q\))) # (\ADCDAT[7]~6_combout\ & (\AUD_ADCDAT~input_o\)))) ) ) # ( !\ADCDAT[14]~0_combout\ & ( 
-- \ADCDAT[4]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111010000000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_cnt1(1),
	datac => \ALT_INV_ADCDAT[7]~6_combout\,
	datad => \ALT_INV_ADCDAT[4]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[14]~0_combout\,
	combout => \ADCDAT[4]~7_combout\);

-- Location: FF_X79_Y3_N31
\ADCDAT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[4]~reg0_q\);

-- Location: LABCELL_X79_Y3_N3
\ADCDAT[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[5]~8_combout\ = ( \ADCDAT[5]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( (!cnt1(1)) # (((!\ADCDAT[7]~6_combout\) # (\AUD_ADCDAT~input_o\)) # (cnt1(0))) ) ) ) # ( !\ADCDAT[5]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( (cnt1(1) & (!cnt1(0) & 
-- (\AUD_ADCDAT~input_o\ & \ADCDAT[7]~6_combout\))) ) ) ) # ( \ADCDAT[5]~reg0_q\ & ( !\ADCDAT[14]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt1(1),
	datab => ALT_INV_cnt1(0),
	datac => \ALT_INV_AUD_ADCDAT~input_o\,
	datad => \ALT_INV_ADCDAT[7]~6_combout\,
	datae => \ALT_INV_ADCDAT[5]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[14]~2_combout\,
	combout => \ADCDAT[5]~8_combout\);

-- Location: FF_X79_Y3_N4
\ADCDAT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[5]~reg0_q\);

-- Location: LABCELL_X79_Y3_N54
\ADCDAT[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[6]~9_combout\ = ( \ADCDAT[6]~reg0_q\ & ( \ADCDAT[14]~0_combout\ & ( (((!cnt1(3)) # (cnt1(2))) # (\AUD_ADCDAT~input_o\)) # (cnt1(1)) ) ) ) # ( !\ADCDAT[6]~reg0_q\ & ( \ADCDAT[14]~0_combout\ & ( (!cnt1(1) & (\AUD_ADCDAT~input_o\ & (!cnt1(2) & 
-- cnt1(3)))) ) ) ) # ( \ADCDAT[6]~reg0_q\ & ( !\ADCDAT[14]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt1(1),
	datab => \ALT_INV_AUD_ADCDAT~input_o\,
	datac => ALT_INV_cnt1(2),
	datad => ALT_INV_cnt1(3),
	datae => \ALT_INV_ADCDAT[6]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[14]~0_combout\,
	combout => \ADCDAT[6]~9_combout\);

-- Location: FF_X79_Y3_N55
\ADCDAT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[6]~reg0_q\);

-- Location: LABCELL_X79_Y3_N15
\ADCDAT[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[7]~10_combout\ = ( \ADCDAT[7]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( (((!\ADCDAT[7]~6_combout\) # (cnt1(1))) # (cnt1(0))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !\ADCDAT[7]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( (\AUD_ADCDAT~input_o\ & (!cnt1(0) & 
-- (!cnt1(1) & \ADCDAT[7]~6_combout\))) ) ) ) # ( \ADCDAT[7]~reg0_q\ & ( !\ADCDAT[14]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_cnt1(0),
	datac => ALT_INV_cnt1(1),
	datad => \ALT_INV_ADCDAT[7]~6_combout\,
	datae => \ALT_INV_ADCDAT[7]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[14]~2_combout\,
	combout => \ADCDAT[7]~10_combout\);

-- Location: FF_X79_Y3_N16
\ADCDAT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[7]~reg0_q\);

-- Location: MLABCELL_X78_Y3_N0
\ADCDAT[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[11]~11_combout\ = ( cnt1(2) & ( !cnt1(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt1(3),
	dataf => ALT_INV_cnt1(2),
	combout => \ADCDAT[11]~11_combout\);

-- Location: MLABCELL_X78_Y3_N3
\ADCDAT[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[8]~12_combout\ = ( cnt1(1) & ( (!\ADCDAT[14]~0_combout\ & (((\ADCDAT[8]~reg0_q\)))) # (\ADCDAT[14]~0_combout\ & ((!\ADCDAT[11]~11_combout\ & ((\ADCDAT[8]~reg0_q\))) # (\ADCDAT[11]~11_combout\ & (\AUD_ADCDAT~input_o\)))) ) ) # ( !cnt1(1) & ( 
-- \ADCDAT[8]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111110110000000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCDAT[14]~0_combout\,
	datab => \ALT_INV_AUD_ADCDAT~input_o\,
	datac => \ALT_INV_ADCDAT[11]~11_combout\,
	datad => \ALT_INV_ADCDAT[8]~reg0_q\,
	dataf => ALT_INV_cnt1(1),
	combout => \ADCDAT[8]~12_combout\);

-- Location: FF_X78_Y3_N5
\ADCDAT[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[8]~reg0_q\);

-- Location: MLABCELL_X78_Y3_N45
\ADCDAT[9]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[9]~13_combout\ = ( \ADCDAT[9]~reg0_q\ & ( \ADCDAT[11]~11_combout\ & ( ((!cnt1(1)) # ((!\ADCDAT[14]~2_combout\) # (cnt1(0)))) # (\AUD_ADCDAT~input_o\) ) ) ) # ( !\ADCDAT[9]~reg0_q\ & ( \ADCDAT[11]~11_combout\ & ( (\AUD_ADCDAT~input_o\ & (cnt1(1) & 
-- (\ADCDAT[14]~2_combout\ & !cnt1(0)))) ) ) ) # ( \ADCDAT[9]~reg0_q\ & ( !\ADCDAT[11]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_cnt1(1),
	datac => \ALT_INV_ADCDAT[14]~2_combout\,
	datad => ALT_INV_cnt1(0),
	datae => \ALT_INV_ADCDAT[9]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[11]~11_combout\,
	combout => \ADCDAT[9]~13_combout\);

-- Location: FF_X78_Y3_N46
\ADCDAT[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[9]~reg0_q\);

-- Location: MLABCELL_X78_Y3_N48
\ADCDAT[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[10]~14_combout\ = ( cnt1(1) & ( \ADCDAT[10]~reg0_q\ ) ) # ( !cnt1(1) & ( (!\ADCDAT[14]~0_combout\ & (((\ADCDAT[10]~reg0_q\)))) # (\ADCDAT[14]~0_combout\ & ((!\ADCDAT[11]~11_combout\ & ((\ADCDAT[10]~reg0_q\))) # (\ADCDAT[11]~11_combout\ & 
-- (\AUD_ADCDAT~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111011000000011111101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCDAT[14]~0_combout\,
	datab => \ALT_INV_AUD_ADCDAT~input_o\,
	datac => \ALT_INV_ADCDAT[11]~11_combout\,
	datad => \ALT_INV_ADCDAT[10]~reg0_q\,
	dataf => ALT_INV_cnt1(1),
	combout => \ADCDAT[10]~14_combout\);

-- Location: FF_X78_Y3_N49
\ADCDAT[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[10]~reg0_q\);

-- Location: LABCELL_X79_Y3_N42
\ADCDAT[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[11]~15_combout\ = ( \ADCDAT[11]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( ((!\ADCDAT[11]~11_combout\) # ((cnt1(0)) # (\AUD_ADCDAT~input_o\))) # (cnt1(1)) ) ) ) # ( !\ADCDAT[11]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( (!cnt1(1) & 
-- (\ADCDAT[11]~11_combout\ & (\AUD_ADCDAT~input_o\ & !cnt1(0)))) ) ) ) # ( \ADCDAT[11]~reg0_q\ & ( !\ADCDAT[14]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt1(1),
	datab => \ALT_INV_ADCDAT[11]~11_combout\,
	datac => \ALT_INV_AUD_ADCDAT~input_o\,
	datad => ALT_INV_cnt1(0),
	datae => \ALT_INV_ADCDAT[11]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[14]~2_combout\,
	combout => \ADCDAT[11]~15_combout\);

-- Location: FF_X79_Y3_N43
\ADCDAT[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[11]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[11]~reg0_q\);

-- Location: MLABCELL_X78_Y3_N27
\ADCDAT[13]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[13]~16_combout\ = ( !cnt1(3) & ( !cnt1(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt1(2),
	dataf => ALT_INV_cnt1(3),
	combout => \ADCDAT[13]~16_combout\);

-- Location: MLABCELL_X78_Y3_N54
\ADCDAT[12]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[12]~17_combout\ = ( \ADCDAT[13]~16_combout\ & ( (!cnt1(1) & (((\ADCDAT[12]~reg0_q\)))) # (cnt1(1) & ((!\ADCDAT[14]~0_combout\ & ((\ADCDAT[12]~reg0_q\))) # (\ADCDAT[14]~0_combout\ & (\AUD_ADCDAT~input_o\)))) ) ) # ( !\ADCDAT[13]~16_combout\ & ( 
-- \ADCDAT[12]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111010000000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datab => ALT_INV_cnt1(1),
	datac => \ALT_INV_ADCDAT[14]~0_combout\,
	datad => \ALT_INV_ADCDAT[12]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[13]~16_combout\,
	combout => \ADCDAT[12]~17_combout\);

-- Location: FF_X78_Y3_N55
\ADCDAT[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[12]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[12]~reg0_q\);

-- Location: LABCELL_X77_Y3_N57
\ADCDAT[13]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[13]~18_combout\ = ( \ADCDAT[13]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( (!cnt1(1)) # (((!\ADCDAT[13]~16_combout\) # (\AUD_ADCDAT~input_o\)) # (cnt1(0))) ) ) ) # ( !\ADCDAT[13]~reg0_q\ & ( \ADCDAT[14]~2_combout\ & ( (cnt1(1) & (!cnt1(0) & 
-- (\AUD_ADCDAT~input_o\ & \ADCDAT[13]~16_combout\))) ) ) ) # ( \ADCDAT[13]~reg0_q\ & ( !\ADCDAT[14]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt1(1),
	datab => ALT_INV_cnt1(0),
	datac => \ALT_INV_AUD_ADCDAT~input_o\,
	datad => \ALT_INV_ADCDAT[13]~16_combout\,
	datae => \ALT_INV_ADCDAT[13]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[14]~2_combout\,
	combout => \ADCDAT[13]~18_combout\);

-- Location: FF_X77_Y3_N59
\ADCDAT[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[13]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[13]~reg0_q\);

-- Location: LABCELL_X79_Y3_N36
\ADCDAT[14]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[14]~19_combout\ = ( \ADCDAT[14]~reg0_q\ & ( \ADCDAT[14]~0_combout\ & ( (((cnt1(3)) # (cnt1(2))) # (\AUD_ADCDAT~input_o\)) # (cnt1(1)) ) ) ) # ( !\ADCDAT[14]~reg0_q\ & ( \ADCDAT[14]~0_combout\ & ( (!cnt1(1) & (\AUD_ADCDAT~input_o\ & (!cnt1(2) & 
-- !cnt1(3)))) ) ) ) # ( \ADCDAT[14]~reg0_q\ & ( !\ADCDAT[14]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100100000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt1(1),
	datab => \ALT_INV_AUD_ADCDAT~input_o\,
	datac => ALT_INV_cnt1(2),
	datad => ALT_INV_cnt1(3),
	datae => \ALT_INV_ADCDAT[14]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[14]~0_combout\,
	combout => \ADCDAT[14]~19_combout\);

-- Location: FF_X79_Y3_N37
\ADCDAT[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[14]~reg0_q\);

-- Location: LABCELL_X77_Y3_N51
\ADCDAT[15]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[15]~20_combout\ = ( !cnt1(1) & ( !cnt1(2) & ( (!cnt1(0) & (!cnt1(3) & !cnt1(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt1(0),
	datac => ALT_INV_cnt1(3),
	datad => ALT_INV_cnt1(4),
	datae => ALT_INV_cnt1(1),
	dataf => ALT_INV_cnt1(2),
	combout => \ADCDAT[15]~20_combout\);

-- Location: LABCELL_X75_Y3_N30
\ADCDAT[15]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCDAT[15]~21_combout\ = ( \ADCDAT[15]~reg0_q\ & ( \ADCDAT[15]~20_combout\ & ( (!\RST_N~input_o\) # ((!\process_0~0_combout\) # (\AUD_ADCDAT~input_o\)) ) ) ) # ( !\ADCDAT[15]~reg0_q\ & ( \ADCDAT[15]~20_combout\ & ( (\RST_N~input_o\ & 
-- (\AUD_ADCDAT~input_o\ & \process_0~0_combout\)) ) ) ) # ( \ADCDAT[15]~reg0_q\ & ( !\ADCDAT[15]~20_combout\ & ( (!\AUD_ADCLRCK~input_o\) # ((!\RST_N~input_o\) # ((!\process_0~0_combout\) # (\AUD_ADCDAT~input_o\))) ) ) ) # ( !\ADCDAT[15]~reg0_q\ & ( 
-- !\ADCDAT[15]~20_combout\ & ( (\AUD_ADCLRCK~input_o\ & (\RST_N~input_o\ & (\AUD_ADCDAT~input_o\ & \process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111110111100000000000000111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCLRCK~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	datac => \ALT_INV_AUD_ADCDAT~input_o\,
	datad => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_ADCDAT[15]~reg0_q\,
	dataf => \ALT_INV_ADCDAT[15]~20_combout\,
	combout => \ADCDAT[15]~21_combout\);

-- Location: FF_X75_Y3_N31
\ADCDAT[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCDAT[15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCDAT[15]~reg0_q\);

-- Location: LABCELL_X79_Y3_N6
\ADCstb2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCstb2~1_combout\ = ( cnt1(1) & ( cnt1(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_cnt1(1),
	dataf => ALT_INV_cnt1(0),
	combout => \ADCstb2~1_combout\);

-- Location: LABCELL_X79_Y3_N27
\ADCstb2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCstb2~2_combout\ = ( !\ADCstb2~q\ & ( \process_0~0_combout\ & ( (!cnt1(4) & (!\AUD_ADCLRCK~input_o\ & (\ADCstb2~1_combout\ & \ADCstb2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt1(4),
	datab => \ALT_INV_AUD_ADCLRCK~input_o\,
	datac => \ALT_INV_ADCstb2~1_combout\,
	datad => \ALT_INV_ADCstb2~0_combout\,
	datae => \ALT_INV_ADCstb2~q\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \ADCstb2~2_combout\);

-- Location: FF_X79_Y3_N28
ADCstb2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCstb2~2_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCstb2~q\);

-- Location: IOIBUF_X76_Y0_N18
\AUD_DACLRCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: FF_X75_Y3_N14
old_AUD_DACLRCK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_DACLRCK~input_o\,
	sload => VCC,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \old_AUD_DACLRCK~q\);

-- Location: LABCELL_X75_Y3_N39
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( \AUD_DACLRCK~input_o\ & ( !\old_AUD_DACLRCK~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_AUD_DACLRCK~input_o\,
	dataf => \ALT_INV_old_AUD_DACLRCK~q\,
	combout => \process_0~1_combout\);

-- Location: LABCELL_X75_Y3_N24
\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = ( \old_BCLK~q\ & ( !\AUD_BCLK~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AUD_BCLK~input_o\,
	dataf => \ALT_INV_old_BCLK~q\,
	combout => \process_0~2_combout\);

-- Location: LABCELL_X75_Y3_N27
\cnt2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt2~4_combout\ = ( \RST_N~input_o\ & ( (!cnt2(0)) # ((\AUD_DACLRCK~input_o\ & !\old_AUD_DACLRCK~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AUD_DACLRCK~input_o\,
	datac => \ALT_INV_old_AUD_DACLRCK~q\,
	datad => ALT_INV_cnt2(0),
	dataf => \ALT_INV_RST_N~input_o\,
	combout => \cnt2~4_combout\);

-- Location: LABCELL_X75_Y3_N18
\cnt2[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt2[3]~1_combout\ = ( cnt2(4) & ( \old_AUD_DACLRCK~q\ & ( !\RST_N~input_o\ ) ) ) # ( !cnt2(4) & ( \old_AUD_DACLRCK~q\ & ( (!\RST_N~input_o\) # ((!\AUD_BCLK~input_o\ & \old_BCLK~q\)) ) ) ) # ( cnt2(4) & ( !\old_AUD_DACLRCK~q\ & ( (!\RST_N~input_o\) # 
-- (\AUD_DACLRCK~input_o\) ) ) ) # ( !cnt2(4) & ( !\old_AUD_DACLRCK~q\ & ( ((!\RST_N~input_o\) # ((!\AUD_BCLK~input_o\ & \old_BCLK~q\))) # (\AUD_DACLRCK~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111011111100111111001111110000111110101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_BCLK~input_o\,
	datab => \ALT_INV_AUD_DACLRCK~input_o\,
	datac => \ALT_INV_RST_N~input_o\,
	datad => \ALT_INV_old_BCLK~q\,
	datae => ALT_INV_cnt2(4),
	dataf => \ALT_INV_old_AUD_DACLRCK~q\,
	combout => \cnt2[3]~1_combout\);

-- Location: FF_X75_Y3_N29
\cnt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt2~4_combout\,
	ena => \cnt2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt2(0));

-- Location: LABCELL_X74_Y3_N36
\cnt2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt2~0_combout\ = ( \old_AUD_DACLRCK~q\ & ( (\RST_N~input_o\ & (!cnt2(0) $ (!cnt2(1)))) ) ) # ( !\old_AUD_DACLRCK~q\ & ( (\RST_N~input_o\ & (!\AUD_DACLRCK~input_o\ & (!cnt2(0) $ (!cnt2(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100000010000000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt2(0),
	datab => \ALT_INV_RST_N~input_o\,
	datac => \ALT_INV_AUD_DACLRCK~input_o\,
	datad => ALT_INV_cnt2(1),
	dataf => \ALT_INV_old_AUD_DACLRCK~q\,
	combout => \cnt2~0_combout\);

-- Location: FF_X74_Y3_N38
\cnt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt2~0_combout\,
	ena => \cnt2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt2(1));

-- Location: LABCELL_X74_Y3_N54
\cnt2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt2~2_combout\ = ( cnt2(2) & ( \old_AUD_DACLRCK~q\ & ( (\RST_N~input_o\ & ((!cnt2(0)) # (!cnt2(1)))) ) ) ) # ( !cnt2(2) & ( \old_AUD_DACLRCK~q\ & ( (cnt2(0) & (\RST_N~input_o\ & cnt2(1))) ) ) ) # ( cnt2(2) & ( !\old_AUD_DACLRCK~q\ & ( (\RST_N~input_o\ & 
-- (!\AUD_DACLRCK~input_o\ & ((!cnt2(0)) # (!cnt2(1))))) ) ) ) # ( !cnt2(2) & ( !\old_AUD_DACLRCK~q\ & ( (cnt2(0) & (\RST_N~input_o\ & (cnt2(1) & !\AUD_DACLRCK~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000001100100000000000000001000000010011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt2(0),
	datab => \ALT_INV_RST_N~input_o\,
	datac => ALT_INV_cnt2(1),
	datad => \ALT_INV_AUD_DACLRCK~input_o\,
	datae => ALT_INV_cnt2(2),
	dataf => \ALT_INV_old_AUD_DACLRCK~q\,
	combout => \cnt2~2_combout\);

-- Location: FF_X74_Y3_N56
\cnt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt2~2_combout\,
	ena => \cnt2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt2(2));

-- Location: LABCELL_X74_Y3_N39
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( cnt2(1) & ( (cnt2(0) & cnt2(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt2(0),
	datad => ALT_INV_cnt2(2),
	dataf => ALT_INV_cnt2(1),
	combout => \Add1~0_combout\);

-- Location: LABCELL_X75_Y3_N42
\cnt2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt2~3_combout\ = ( cnt2(3) & ( (\RST_N~input_o\ & (!\Add1~0_combout\ & ((!\AUD_DACLRCK~input_o\) # (\old_AUD_DACLRCK~q\)))) ) ) # ( !cnt2(3) & ( (\RST_N~input_o\ & (\Add1~0_combout\ & ((!\AUD_DACLRCK~input_o\) # (\old_AUD_DACLRCK~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000101010000000101000000000100000001010100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N~input_o\,
	datab => \ALT_INV_AUD_DACLRCK~input_o\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_old_AUD_DACLRCK~q\,
	datae => ALT_INV_cnt2(3),
	combout => \cnt2~3_combout\);

-- Location: FF_X75_Y3_N44
\cnt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt2~3_combout\,
	ena => \cnt2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt2(3));

-- Location: LABCELL_X75_Y3_N0
\cnt2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt2~5_combout\ = ( cnt2(4) & ( cnt2(3) & ( !\process_0~1_combout\ ) ) ) # ( !cnt2(4) & ( cnt2(3) & ( (\process_0~2_combout\ & (\Add1~0_combout\ & !\process_0~1_combout\)) ) ) ) # ( cnt2(4) & ( !cnt2(3) & ( !\process_0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000101000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	datae => ALT_INV_cnt2(4),
	dataf => ALT_INV_cnt2(3),
	combout => \cnt2~5_combout\);

-- Location: FF_X75_Y3_N2
\cnt2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt2~5_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt2(4));

-- Location: IOIBUF_X70_Y0_N1
\DACDAT[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(15),
	o => \DACDAT[15]~input_o\);

-- Location: LABCELL_X75_Y3_N57
\shr[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shr[15]~0_combout\ = ( cnt2(4) & ( \old_AUD_DACLRCK~q\ & ( (!\AUD_BCLK~input_o\ & (\old_BCLK~q\ & \RST_N~input_o\)) ) ) ) # ( cnt2(4) & ( !\old_AUD_DACLRCK~q\ & ( (!\AUD_BCLK~input_o\ & (!\AUD_DACLRCK~input_o\ & (\old_BCLK~q\ & \RST_N~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_BCLK~input_o\,
	datab => \ALT_INV_AUD_DACLRCK~input_o\,
	datac => \ALT_INV_old_BCLK~q\,
	datad => \ALT_INV_RST_N~input_o\,
	datae => ALT_INV_cnt2(4),
	dataf => \ALT_INV_old_AUD_DACLRCK~q\,
	combout => \shr[15]~0_combout\);

-- Location: FF_X74_Y3_N31
\shr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[15]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(15));

-- Location: IOIBUF_X74_Y0_N58
\DACDAT[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(8),
	o => \DACDAT[8]~input_o\);

-- Location: FF_X74_Y3_N29
\shr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[8]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(8));

-- Location: IOIBUF_X72_Y0_N52
\DACDAT[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(14),
	o => \DACDAT[14]~input_o\);

-- Location: FF_X74_Y3_N22
\shr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[14]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(14));

-- Location: IOIBUF_X74_Y0_N41
\DACDAT[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(10),
	o => \DACDAT[10]~input_o\);

-- Location: LABCELL_X74_Y3_N30
\shr[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shr[10]~feeder_combout\ = \DACDAT[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DACDAT[10]~input_o\,
	combout => \shr[10]~feeder_combout\);

-- Location: FF_X74_Y3_N32
\shr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shr[10]~feeder_combout\,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(10));

-- Location: IOIBUF_X68_Y0_N1
\DACDAT[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(12),
	o => \DACDAT[12]~input_o\);

-- Location: FF_X74_Y3_N34
\shr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[12]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(12));

-- Location: LABCELL_X74_Y3_N0
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( cnt2(2) & ( shr(12) & ( (!cnt2(1) & ((shr(10)))) # (cnt2(1) & (shr(8))) ) ) ) # ( !cnt2(2) & ( shr(12) & ( (cnt2(1)) # (shr(14)) ) ) ) # ( cnt2(2) & ( !shr(12) & ( (!cnt2(1) & ((shr(10)))) # (cnt2(1) & (shr(8))) ) ) ) # ( !cnt2(2) & ( 
-- !shr(12) & ( (shr(14) & !cnt2(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shr(8),
	datab => ALT_INV_shr(14),
	datac => ALT_INV_cnt2(1),
	datad => ALT_INV_shr(10),
	datae => ALT_INV_cnt2(2),
	dataf => ALT_INV_shr(12),
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X72_Y0_N35
\DACDAT[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(9),
	o => \DACDAT[9]~input_o\);

-- Location: FF_X74_Y3_N5
\shr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[9]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(9));

-- Location: IOIBUF_X70_Y0_N18
\DACDAT[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(13),
	o => \DACDAT[13]~input_o\);

-- Location: FF_X74_Y3_N44
\shr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[13]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(13));

-- Location: IOIBUF_X66_Y0_N41
\DACDAT[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(11),
	o => \DACDAT[11]~input_o\);

-- Location: LABCELL_X74_Y3_N24
\shr[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shr[11]~feeder_combout\ = ( \DACDAT[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DACDAT[11]~input_o\,
	combout => \shr[11]~feeder_combout\);

-- Location: FF_X74_Y3_N25
\shr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shr[11]~feeder_combout\,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(11));

-- Location: LABCELL_X74_Y3_N45
\Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = ( cnt2(1) & ( shr(15) & ( (!cnt2(2) & ((shr(13)))) # (cnt2(2) & (shr(9))) ) ) ) # ( !cnt2(1) & ( shr(15) & ( (!cnt2(2)) # (shr(11)) ) ) ) # ( cnt2(1) & ( !shr(15) & ( (!cnt2(2) & ((shr(13)))) # (cnt2(2) & (shr(9))) ) ) ) # ( !cnt2(1) & 
-- ( !shr(15) & ( (shr(11) & cnt2(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shr(9),
	datab => ALT_INV_shr(13),
	datac => ALT_INV_shr(11),
	datad => ALT_INV_cnt2(2),
	datae => ALT_INV_cnt2(1),
	dataf => ALT_INV_shr(15),
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X74_Y0_N92
\DACDAT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(0),
	o => \DACDAT[0]~input_o\);

-- Location: LABCELL_X74_Y3_N33
\shr[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shr[0]~feeder_combout\ = ( \DACDAT[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DACDAT[0]~input_o\,
	combout => \shr[0]~feeder_combout\);

-- Location: FF_X74_Y3_N35
\shr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shr[0]~feeder_combout\,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(0));

-- Location: IOIBUF_X72_Y0_N1
\DACDAT[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(6),
	o => \DACDAT[6]~input_o\);

-- Location: FF_X74_Y3_N8
\shr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[6]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(6));

-- Location: IOIBUF_X70_Y0_N35
\DACDAT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(4),
	o => \DACDAT[4]~input_o\);

-- Location: FF_X74_Y3_N13
\shr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[4]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(4));

-- Location: IOIBUF_X74_Y0_N75
\DACDAT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(2),
	o => \DACDAT[2]~input_o\);

-- Location: FF_X74_Y3_N17
\shr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[2]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(2));

-- Location: LABCELL_X74_Y3_N9
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( cnt2(1) & ( shr(2) & ( (!cnt2(2) & ((shr(4)))) # (cnt2(2) & (shr(0))) ) ) ) # ( !cnt2(1) & ( shr(2) & ( (cnt2(2)) # (shr(6)) ) ) ) # ( cnt2(1) & ( !shr(2) & ( (!cnt2(2) & ((shr(4)))) # (cnt2(2) & (shr(0))) ) ) ) # ( !cnt2(1) & ( 
-- !shr(2) & ( (shr(6) & !cnt2(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000011110101010100110011111111110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shr(0),
	datab => ALT_INV_shr(6),
	datac => ALT_INV_shr(4),
	datad => ALT_INV_cnt2(2),
	datae => ALT_INV_cnt2(1),
	dataf => ALT_INV_shr(2),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X68_Y0_N18
\DACDAT[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(7),
	o => \DACDAT[7]~input_o\);

-- Location: FF_X74_Y3_N1
\shr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[7]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(7));

-- Location: IOIBUF_X72_Y0_N18
\DACDAT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(1),
	o => \DACDAT[1]~input_o\);

-- Location: LABCELL_X74_Y3_N27
\shr[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shr[1]~feeder_combout\ = \DACDAT[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DACDAT[1]~input_o\,
	combout => \shr[1]~feeder_combout\);

-- Location: FF_X74_Y3_N28
\shr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shr[1]~feeder_combout\,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(1));

-- Location: IOIBUF_X68_Y0_N52
\DACDAT[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(5),
	o => \DACDAT[5]~input_o\);

-- Location: FF_X74_Y3_N46
\shr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[5]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(5));

-- Location: IOIBUF_X68_Y0_N35
\DACDAT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACDAT(3),
	o => \DACDAT[3]~input_o\);

-- Location: FF_X74_Y3_N11
\shr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DACDAT[3]~input_o\,
	sload => VCC,
	ena => \shr[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shr(3));

-- Location: LABCELL_X74_Y3_N12
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( cnt2(2) & ( shr(3) & ( (!cnt2(1)) # (shr(1)) ) ) ) # ( !cnt2(2) & ( shr(3) & ( (!cnt2(1) & (shr(7))) # (cnt2(1) & ((shr(5)))) ) ) ) # ( cnt2(2) & ( !shr(3) & ( (shr(1) & cnt2(1)) ) ) ) # ( !cnt2(2) & ( !shr(3) & ( (!cnt2(1) & 
-- (shr(7))) # (cnt2(1) & ((shr(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shr(7),
	datab => ALT_INV_shr(1),
	datac => ALT_INV_cnt2(1),
	datad => ALT_INV_shr(5),
	datae => ALT_INV_cnt2(2),
	dataf => ALT_INV_shr(3),
	combout => \Mux0~2_combout\);

-- Location: LABCELL_X74_Y3_N18
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( \Mux0~0_combout\ & ( \Mux0~2_combout\ & ( ((!cnt2(0) & ((\Mux0~3_combout\))) # (cnt2(0) & (\Mux0~1_combout\))) # (cnt2(3)) ) ) ) # ( !\Mux0~0_combout\ & ( \Mux0~2_combout\ & ( (!cnt2(0) & (((\Mux0~3_combout\)) # (cnt2(3)))) # (cnt2(0) 
-- & (!cnt2(3) & (\Mux0~1_combout\))) ) ) ) # ( \Mux0~0_combout\ & ( !\Mux0~2_combout\ & ( (!cnt2(0) & (!cnt2(3) & ((\Mux0~3_combout\)))) # (cnt2(0) & (((\Mux0~1_combout\)) # (cnt2(3)))) ) ) ) # ( !\Mux0~0_combout\ & ( !\Mux0~2_combout\ & ( (!cnt2(3) & 
-- ((!cnt2(0) & ((\Mux0~3_combout\))) # (cnt2(0) & (\Mux0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt2(0),
	datab => ALT_INV_cnt2(3),
	datac => \ALT_INV_Mux0~1_combout\,
	datad => \ALT_INV_Mux0~3_combout\,
	datae => \ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_Mux0~2_combout\,
	combout => \Mux0~4_combout\);

-- Location: LABCELL_X74_Y3_N48
\AUD_DACDAT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AUD_DACDAT~0_combout\ = ( \AUD_DACDAT~reg0_q\ & ( \Mux0~4_combout\ & ( (!\process_0~1_combout\ & ((!cnt2(4)) # ((!\process_0~2_combout\)))) # (\process_0~1_combout\ & (((shr(15))))) ) ) ) # ( !\AUD_DACDAT~reg0_q\ & ( \Mux0~4_combout\ & ( 
-- (!\process_0~1_combout\ & (!cnt2(4) & ((\process_0~2_combout\)))) # (\process_0~1_combout\ & (((shr(15))))) ) ) ) # ( \AUD_DACDAT~reg0_q\ & ( !\Mux0~4_combout\ & ( (!\process_0~1_combout\ & ((!\process_0~2_combout\))) # (\process_0~1_combout\ & (shr(15))) 
-- ) ) ) # ( !\AUD_DACDAT~reg0_q\ & ( !\Mux0~4_combout\ & ( (\process_0~1_combout\ & shr(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011110000010100000101100011011010111110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => ALT_INV_cnt2(4),
	datac => ALT_INV_shr(15),
	datad => \ALT_INV_process_0~2_combout\,
	datae => \ALT_INV_AUD_DACDAT~reg0_q\,
	dataf => \ALT_INV_Mux0~4_combout\,
	combout => \AUD_DACDAT~0_combout\);

-- Location: FF_X74_Y3_N49
\AUD_DACDAT~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AUD_DACDAT~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUD_DACDAT~reg0_q\);

-- Location: IOIBUF_X28_Y81_N35
\ADCrdy~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCrdy,
	o => \ADCrdy~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\DACstb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACstb,
	o => \DACstb~input_o\);

-- Location: MLABCELL_X21_Y19_N0
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


