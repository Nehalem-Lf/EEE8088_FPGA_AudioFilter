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

-- DATE "05/11/2020 01:27:05"

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

ENTITY 	fir_filter IS
    PORT (
	ADCDAT : IN std_logic_vector(15 DOWNTO 0);
	DACDAT : BUFFER std_logic_vector(15 DOWNTO 0);
	ADCrdy : BUFFER std_logic;
	DACrdy : IN std_logic;
	ADCstb : IN std_logic;
	DACstb : BUFFER std_logic;
	RST_N : IN std_logic;
	CLOCK_50 : IN std_logic
	);
END fir_filter;

-- Design Ports Information
-- DACDAT[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[1]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[4]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[7]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[8]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[9]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[11]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[12]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[13]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[14]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT[15]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCrdy	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACrdy	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACstb	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_N	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCstb	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[1]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[2]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[3]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[4]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[6]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[7]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[8]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[9]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[10]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[11]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[12]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[13]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[14]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCDAT[15]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_filter IS
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
SIGNAL ww_ADCrdy : std_logic;
SIGNAL ww_DACrdy : std_logic;
SIGNAL ww_ADCstb : std_logic;
SIGNAL ww_DACstb : std_logic;
SIGNAL ww_RST_N : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \Mult1~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult1~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult1~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~8\ : std_logic;
SIGNAL \Mult1~9\ : std_logic;
SIGNAL \Mult1~10\ : std_logic;
SIGNAL \Mult1~11\ : std_logic;
SIGNAL \Mult1~12\ : std_logic;
SIGNAL \Mult1~13\ : std_logic;
SIGNAL \Mult1~14\ : std_logic;
SIGNAL \Mult1~15\ : std_logic;
SIGNAL \Mult1~16\ : std_logic;
SIGNAL \Mult1~17\ : std_logic;
SIGNAL \Mult1~18\ : std_logic;
SIGNAL \Mult1~19\ : std_logic;
SIGNAL \Mult1~20\ : std_logic;
SIGNAL \Mult1~21\ : std_logic;
SIGNAL \Mult1~22\ : std_logic;
SIGNAL \Mult1~23\ : std_logic;
SIGNAL \Mult1~24\ : std_logic;
SIGNAL \Mult1~25\ : std_logic;
SIGNAL \Mult1~26\ : std_logic;
SIGNAL \Mult1~27\ : std_logic;
SIGNAL \Mult1~28\ : std_logic;
SIGNAL \Mult1~29\ : std_logic;
SIGNAL \Mult1~30\ : std_logic;
SIGNAL \Mult1~31\ : std_logic;
SIGNAL \Mult1~32\ : std_logic;
SIGNAL \Mult1~33\ : std_logic;
SIGNAL \Mult1~34\ : std_logic;
SIGNAL \Mult1~35\ : std_logic;
SIGNAL \Mult1~36\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \DACrdy~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ADCstb~input_o\ : std_logic;
SIGNAL \old_ADCstb~q\ : std_logic;
SIGNAL \ADCDAT[0]~input_o\ : std_logic;
SIGNAL \ADCDAT[1]~input_o\ : std_logic;
SIGNAL \ADCDAT[2]~input_o\ : std_logic;
SIGNAL \ADCDAT[3]~input_o\ : std_logic;
SIGNAL \ADCDAT[4]~input_o\ : std_logic;
SIGNAL \ADCDAT[5]~input_o\ : std_logic;
SIGNAL \ADCDAT[6]~input_o\ : std_logic;
SIGNAL \ADCDAT[7]~input_o\ : std_logic;
SIGNAL \ADCDAT[8]~input_o\ : std_logic;
SIGNAL \ADCDAT[9]~input_o\ : std_logic;
SIGNAL \ADCDAT[10]~input_o\ : std_logic;
SIGNAL \ADCDAT[11]~input_o\ : std_logic;
SIGNAL \ADCDAT[12]~input_o\ : std_logic;
SIGNAL \ADCDAT[13]~input_o\ : std_logic;
SIGNAL \ADCDAT[14]~input_o\ : std_logic;
SIGNAL \ADCDAT[15]~input_o\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \DACstb~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \DACstb~1_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \accum[16]~1_combout\ : std_logic;
SIGNAL \fir_sht[6][0]~q\ : std_logic;
SIGNAL \fir_sht[5][0]~q\ : std_logic;
SIGNAL \fir_sht[4][0]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[4][0]~q\ : std_logic;
SIGNAL \fir_sht[3][0]~q\ : std_logic;
SIGNAL \fir_sht[2][0]~q\ : std_logic;
SIGNAL \fir_sht[1][0]~q\ : std_logic;
SIGNAL \fir_sht[0][0]~q\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \fir_sht[6][1]~q\ : std_logic;
SIGNAL \fir_sht[5][1]~q\ : std_logic;
SIGNAL \fir_sht[4][1]~q\ : std_logic;
SIGNAL \fir_sht[3][1]~q\ : std_logic;
SIGNAL \fir_sht[2][1]~q\ : std_logic;
SIGNAL \fir_sht[1][1]~q\ : std_logic;
SIGNAL \fir_sht[0][1]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[0][1]~q\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \fir_sht[6][2]~q\ : std_logic;
SIGNAL \fir_sht[5][2]~q\ : std_logic;
SIGNAL \fir_sht[4][2]~q\ : std_logic;
SIGNAL \fir_sht[3][2]~q\ : std_logic;
SIGNAL \fir_sht[2][2]~q\ : std_logic;
SIGNAL \fir_sht[1][2]~q\ : std_logic;
SIGNAL \fir_sht[0][2]~q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \fir_sht[6][3]~q\ : std_logic;
SIGNAL \fir_sht[5][3]~q\ : std_logic;
SIGNAL \fir_sht[4][3]~q\ : std_logic;
SIGNAL \fir_sht[3][3]~q\ : std_logic;
SIGNAL \fir_sht[2][3]~q\ : std_logic;
SIGNAL \fir_sht[1][3]~q\ : std_logic;
SIGNAL \fir_sht[0][3]~q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \fir_sht[6][4]~q\ : std_logic;
SIGNAL \fir_sht[5][4]~q\ : std_logic;
SIGNAL \fir_sht[4][4]~q\ : std_logic;
SIGNAL \fir_sht[3][4]~q\ : std_logic;
SIGNAL \fir_sht[2][4]~q\ : std_logic;
SIGNAL \fir_sht[1][4]~q\ : std_logic;
SIGNAL \fir_sht[0][4]~q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \fir_sht[6][5]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[6][5]~q\ : std_logic;
SIGNAL \fir_sht[5][5]~q\ : std_logic;
SIGNAL \fir_sht[4][5]~q\ : std_logic;
SIGNAL \fir_sht[3][5]~q\ : std_logic;
SIGNAL \fir_sht[2][5]~q\ : std_logic;
SIGNAL \fir_sht[1][5]~q\ : std_logic;
SIGNAL \fir_sht[0][5]~q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \fir_sht[6][6]~q\ : std_logic;
SIGNAL \fir_sht[5][6]~q\ : std_logic;
SIGNAL \fir_sht[4][6]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[4][6]~q\ : std_logic;
SIGNAL \fir_sht[3][6]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[3][6]~q\ : std_logic;
SIGNAL \fir_sht[2][6]~q\ : std_logic;
SIGNAL \fir_sht[1][6]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[1][6]~q\ : std_logic;
SIGNAL \fir_sht[0][6]~q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \fir_sht[6][7]~q\ : std_logic;
SIGNAL \fir_sht[5][7]~q\ : std_logic;
SIGNAL \fir_sht[4][7]~q\ : std_logic;
SIGNAL \fir_sht[3][7]~q\ : std_logic;
SIGNAL \fir_sht[2][7]~q\ : std_logic;
SIGNAL \fir_sht[1][7]~q\ : std_logic;
SIGNAL \fir_sht[0][7]~q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \fir_sht[6][8]~q\ : std_logic;
SIGNAL \fir_sht[5][8]~q\ : std_logic;
SIGNAL \fir_sht[4][8]~q\ : std_logic;
SIGNAL \fir_sht[3][8]~q\ : std_logic;
SIGNAL \fir_sht[2][8]~q\ : std_logic;
SIGNAL \fir_sht[1][8]~q\ : std_logic;
SIGNAL \fir_sht[0][8]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \fir_sht[6][9]~q\ : std_logic;
SIGNAL \fir_sht[5][9]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[5][9]~q\ : std_logic;
SIGNAL \fir_sht[4][9]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[4][9]~q\ : std_logic;
SIGNAL \fir_sht[3][9]~q\ : std_logic;
SIGNAL \fir_sht[2][9]~q\ : std_logic;
SIGNAL \fir_sht[1][9]~q\ : std_logic;
SIGNAL \fir_sht[0][9]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[0][9]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \fir_sht[6][10]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[6][10]~q\ : std_logic;
SIGNAL \fir_sht[5][10]~q\ : std_logic;
SIGNAL \fir_sht[4][10]~q\ : std_logic;
SIGNAL \fir_sht[3][10]~q\ : std_logic;
SIGNAL \fir_sht[2][10]~q\ : std_logic;
SIGNAL \fir_sht[1][10]~q\ : std_logic;
SIGNAL \fir_sht[0][10]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \fir_sht[6][11]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[6][11]~q\ : std_logic;
SIGNAL \fir_sht[5][11]~q\ : std_logic;
SIGNAL \fir_sht[4][11]~q\ : std_logic;
SIGNAL \fir_sht[3][11]~q\ : std_logic;
SIGNAL \fir_sht[2][11]~q\ : std_logic;
SIGNAL \fir_sht[1][11]~q\ : std_logic;
SIGNAL \fir_sht[0][11]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \fir_sht[6][12]~q\ : std_logic;
SIGNAL \fir_sht[5][12]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[5][12]~q\ : std_logic;
SIGNAL \fir_sht[4][12]~q\ : std_logic;
SIGNAL \fir_sht[3][12]~q\ : std_logic;
SIGNAL \fir_sht[2][12]~q\ : std_logic;
SIGNAL \fir_sht[1][12]~q\ : std_logic;
SIGNAL \fir_sht[0][12]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \fir_sht[6][13]~q\ : std_logic;
SIGNAL \fir_sht[5][13]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[5][13]~q\ : std_logic;
SIGNAL \fir_sht[4][13]~q\ : std_logic;
SIGNAL \fir_sht[3][13]~q\ : std_logic;
SIGNAL \fir_sht[2][13]~q\ : std_logic;
SIGNAL \fir_sht[1][13]~q\ : std_logic;
SIGNAL \fir_sht[0][13]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \fir_sht[6][14]~q\ : std_logic;
SIGNAL \fir_sht[5][14]~q\ : std_logic;
SIGNAL \fir_sht[4][14]~q\ : std_logic;
SIGNAL \fir_sht[3][14]~q\ : std_logic;
SIGNAL \fir_sht[2][14]~q\ : std_logic;
SIGNAL \fir_sht[1][14]~q\ : std_logic;
SIGNAL \fir_sht[0][14]~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \fir_sht[6][15]~feeder_combout\ : std_logic;
SIGNAL \fir_sht[6][15]~q\ : std_logic;
SIGNAL \fir_sht[5][15]~q\ : std_logic;
SIGNAL \fir_sht[4][15]~q\ : std_logic;
SIGNAL \fir_sht[3][15]~q\ : std_logic;
SIGNAL \fir_sht[2][15]~q\ : std_logic;
SIGNAL \fir_sht[1][15]~q\ : std_logic;
SIGNAL \fir_sht[0][15]~q\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult1~339\ : std_logic;
SIGNAL \accum~35_combout\ : std_logic;
SIGNAL \Mult1~338\ : std_logic;
SIGNAL \accum~34_combout\ : std_logic;
SIGNAL \Mult1~337\ : std_logic;
SIGNAL \accum~33_combout\ : std_logic;
SIGNAL \Mult1~336\ : std_logic;
SIGNAL \accum~16_combout\ : std_logic;
SIGNAL \Mult1~335\ : std_logic;
SIGNAL \accum~15_combout\ : std_logic;
SIGNAL \Mult1~334\ : std_logic;
SIGNAL \accum~14_combout\ : std_logic;
SIGNAL \Mult1~333\ : std_logic;
SIGNAL \accum~13_combout\ : std_logic;
SIGNAL \Mult1~332\ : std_logic;
SIGNAL \accum~12_combout\ : std_logic;
SIGNAL \Mult1~331\ : std_logic;
SIGNAL \accum~11_combout\ : std_logic;
SIGNAL \Mult1~330\ : std_logic;
SIGNAL \accum~10_combout\ : std_logic;
SIGNAL \Mult1~329\ : std_logic;
SIGNAL \accum~9_combout\ : std_logic;
SIGNAL \Mult1~328\ : std_logic;
SIGNAL \accum~8_combout\ : std_logic;
SIGNAL \Mult1~327\ : std_logic;
SIGNAL \accum~7_combout\ : std_logic;
SIGNAL \Mult1~326\ : std_logic;
SIGNAL \accum~6_combout\ : std_logic;
SIGNAL \Mult1~325\ : std_logic;
SIGNAL \accum~5_combout\ : std_logic;
SIGNAL \Mult1~324\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \accum~4_combout\ : std_logic;
SIGNAL \Mult1~323\ : std_logic;
SIGNAL \accum~3_combout\ : std_logic;
SIGNAL \Mult1~322\ : std_logic;
SIGNAL \accum~2_combout\ : std_logic;
SIGNAL \Mult1~320\ : std_logic;
SIGNAL \accum~32_combout\ : std_logic;
SIGNAL \Mult1~319\ : std_logic;
SIGNAL \accum~31_combout\ : std_logic;
SIGNAL \Mult1~318\ : std_logic;
SIGNAL \accum~30_combout\ : std_logic;
SIGNAL \Mult1~317\ : std_logic;
SIGNAL \accum~29_combout\ : std_logic;
SIGNAL \Mult1~316\ : std_logic;
SIGNAL \accum~28_combout\ : std_logic;
SIGNAL \Mult1~315\ : std_logic;
SIGNAL \accum~27_combout\ : std_logic;
SIGNAL \Mult1~314\ : std_logic;
SIGNAL \accum~26_combout\ : std_logic;
SIGNAL \Mult1~313\ : std_logic;
SIGNAL \accum~25_combout\ : std_logic;
SIGNAL \Mult1~312\ : std_logic;
SIGNAL \accum~24_combout\ : std_logic;
SIGNAL \Mult1~311\ : std_logic;
SIGNAL \accum~23_combout\ : std_logic;
SIGNAL \Mult1~310\ : std_logic;
SIGNAL \accum~22_combout\ : std_logic;
SIGNAL \Mult1~309\ : std_logic;
SIGNAL \accum~21_combout\ : std_logic;
SIGNAL \Mult1~308\ : std_logic;
SIGNAL \accum~20_combout\ : std_logic;
SIGNAL \Mult1~307\ : std_logic;
SIGNAL \accum~19_combout\ : std_logic;
SIGNAL \Mult1~306\ : std_logic;
SIGNAL \accum~18_combout\ : std_logic;
SIGNAL \Mult1~mac_resulta\ : std_logic;
SIGNAL \accum~17_combout\ : std_logic;
SIGNAL \Mult1~321\ : std_logic;
SIGNAL \accum~0_combout\ : std_logic;
SIGNAL \accum[16]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[1]~0_combout\ : std_logic;
SIGNAL \DACDAT[0]~reg0_q\ : std_logic;
SIGNAL \accum[17]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[1]~reg0feeder_combout\ : std_logic;
SIGNAL \DACDAT[1]~reg0_q\ : std_logic;
SIGNAL \accum[18]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[2]~reg0feeder_combout\ : std_logic;
SIGNAL \DACDAT[2]~reg0_q\ : std_logic;
SIGNAL \accum[19]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[3]~reg0_q\ : std_logic;
SIGNAL \accum[20]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[4]~reg0feeder_combout\ : std_logic;
SIGNAL \DACDAT[4]~reg0_q\ : std_logic;
SIGNAL \accum[21]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[5]~reg0_q\ : std_logic;
SIGNAL \accum[22]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[6]~reg0_q\ : std_logic;
SIGNAL \accum[23]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[7]~reg0_q\ : std_logic;
SIGNAL \accum[24]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[8]~reg0_q\ : std_logic;
SIGNAL \accum[25]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[9]~reg0_q\ : std_logic;
SIGNAL \accum[26]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[10]~reg0feeder_combout\ : std_logic;
SIGNAL \DACDAT[10]~reg0_q\ : std_logic;
SIGNAL \accum[27]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[11]~reg0_q\ : std_logic;
SIGNAL \accum[28]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[12]~reg0_q\ : std_logic;
SIGNAL \accum[29]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[13]~reg0_q\ : std_logic;
SIGNAL \accum[30]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[14]~reg0_q\ : std_logic;
SIGNAL \accum[31]~_Duplicate_1_q\ : std_logic;
SIGNAL \DACDAT[15]~reg0_q\ : std_logic;
SIGNAL \ADCrdy~reg0feeder_combout\ : std_logic;
SIGNAL \ADCrdy~reg0_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \DACstb~reg0_q\ : std_logic;
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_accum[26]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_accum[20]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_accum[18]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_accum[17]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL ALT_INV_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_old_ADCstb~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][15]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][15]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][15]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][14]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][14]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][14]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][14]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][13]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][13]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][13]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][12]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][12]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][11]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][11]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][10]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][10]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][8]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][8]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_fir_sht[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_Mult0~35\ : std_logic;
SIGNAL \ALT_INV_Mult0~34\ : std_logic;
SIGNAL \ALT_INV_Mult0~33\ : std_logic;
SIGNAL \ALT_INV_Mult0~32\ : std_logic;
SIGNAL \ALT_INV_Mult0~31\ : std_logic;
SIGNAL \ALT_INV_Mult0~30\ : std_logic;
SIGNAL \ALT_INV_Mult0~29\ : std_logic;
SIGNAL \ALT_INV_Mult0~28\ : std_logic;
SIGNAL \ALT_INV_Mult0~27\ : std_logic;
SIGNAL \ALT_INV_Mult0~26\ : std_logic;
SIGNAL \ALT_INV_Mult0~25\ : std_logic;
SIGNAL \ALT_INV_Mult0~24\ : std_logic;
SIGNAL \ALT_INV_Mult0~23\ : std_logic;
SIGNAL \ALT_INV_Mult0~22\ : std_logic;
SIGNAL \ALT_INV_Mult0~21\ : std_logic;
SIGNAL \ALT_INV_Mult0~20\ : std_logic;
SIGNAL \ALT_INV_Mult0~19\ : std_logic;
SIGNAL \ALT_INV_Mult0~18\ : std_logic;
SIGNAL \ALT_INV_Mult0~17\ : std_logic;
SIGNAL \ALT_INV_Mult0~16\ : std_logic;
SIGNAL \ALT_INV_Mult0~15\ : std_logic;
SIGNAL \ALT_INV_Mult0~14\ : std_logic;
SIGNAL \ALT_INV_Mult0~13\ : std_logic;
SIGNAL \ALT_INV_Mult0~12\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_Mult0~10\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult1~339\ : std_logic;
SIGNAL \ALT_INV_Mult1~338\ : std_logic;
SIGNAL \ALT_INV_Mult1~337\ : std_logic;
SIGNAL \ALT_INV_Mult1~336\ : std_logic;
SIGNAL \ALT_INV_Mult1~335\ : std_logic;
SIGNAL \ALT_INV_Mult1~334\ : std_logic;
SIGNAL \ALT_INV_Mult1~333\ : std_logic;
SIGNAL \ALT_INV_Mult1~332\ : std_logic;
SIGNAL \ALT_INV_Mult1~331\ : std_logic;
SIGNAL \ALT_INV_Mult1~330\ : std_logic;
SIGNAL \ALT_INV_Mult1~329\ : std_logic;
SIGNAL \ALT_INV_Mult1~328\ : std_logic;
SIGNAL \ALT_INV_Mult1~327\ : std_logic;
SIGNAL \ALT_INV_Mult1~326\ : std_logic;
SIGNAL \ALT_INV_Mult1~325\ : std_logic;
SIGNAL \ALT_INV_Mult1~324\ : std_logic;
SIGNAL \ALT_INV_Mult1~323\ : std_logic;
SIGNAL \ALT_INV_Mult1~322\ : std_logic;
SIGNAL \ALT_INV_Mult1~321\ : std_logic;
SIGNAL \ALT_INV_Mult1~320\ : std_logic;
SIGNAL \ALT_INV_Mult1~319\ : std_logic;
SIGNAL \ALT_INV_Mult1~318\ : std_logic;
SIGNAL \ALT_INV_Mult1~317\ : std_logic;
SIGNAL \ALT_INV_Mult1~316\ : std_logic;
SIGNAL \ALT_INV_Mult1~315\ : std_logic;
SIGNAL \ALT_INV_Mult1~314\ : std_logic;
SIGNAL \ALT_INV_Mult1~313\ : std_logic;
SIGNAL \ALT_INV_Mult1~312\ : std_logic;
SIGNAL \ALT_INV_Mult1~311\ : std_logic;
SIGNAL \ALT_INV_Mult1~310\ : std_logic;
SIGNAL \ALT_INV_Mult1~309\ : std_logic;
SIGNAL \ALT_INV_Mult1~308\ : std_logic;
SIGNAL \ALT_INV_Mult1~307\ : std_logic;
SIGNAL \ALT_INV_Mult1~306\ : std_logic;
SIGNAL \ALT_INV_Mult1~mac_resulta\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADCDAT[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADCstb~input_o\ : std_logic;
SIGNAL \ALT_INV_RST_N~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;

BEGIN

ww_ADCDAT <= ADCDAT;
DACDAT <= ww_DACDAT;
ADCrdy <= ww_ADCrdy;
ww_DACrdy <= DACrdy;
ww_ADCstb <= ADCstb;
DACstb <= ww_DACstb;
ww_RST_N <= RST_N;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult1~mac_ACLR_bus\ <= (gnd & gnd);

\Mult1~mac_CLK_bus\ <= (gnd & gnd & \CLOCK_50~inputCLKENA0_outclk\);

\Mult1~mac_ENA_bus\ <= (vcc & vcc & \accum[16]~1_combout\);

\Mult1~mac_AX_bus\ <= (\Mux8~2_combout\ & \Mux8~2_combout\ & \Mux8~2_combout\ & \Mux9~1_combout\ & \Mux10~1_combout\ & \Mux11~1_combout\ & \Mux12~1_combout\ & \Mux13~1_combout\ & \Mux14~1_combout\ & \Mux15~1_combout\ & \Mux16~1_combout\ & 
\Mux17~1_combout\ & \Mux18~1_combout\ & \Mux19~1_combout\ & \Mux20~1_combout\ & \Mux21~1_combout\ & \Mux22~1_combout\ & \Mux23~1_combout\);

\Mult1~mac_AY_bus\ <= (\Mux0~0_combout\ & \Mux0~0_combout\ & \Mux0~0_combout\ & \Mux0~0_combout\ & NOT \Mux6~0_combout\ & \Mux2~0_combout\ & \Mux3~0_combout\ & \Mux4~0_combout\ & \Mux5~0_combout\ & \Mux4~0_combout\ & \Mux0~0_combout\ & \Mux6~0_combout\ & 
gnd & \Mux7~1_combout\ & \Mux3~0_combout\ & gnd & \Mux2~0_combout\ & \Mux6~0_combout\ & \Mux6~0_combout\);

\Mult1~mac_BX_bus\ <= (\accum~35_combout\ & \accum~35_combout\ & \accum~34_combout\ & \accum~33_combout\ & \accum~16_combout\ & \accum~15_combout\ & \accum~14_combout\ & \accum~13_combout\ & \accum~12_combout\ & \accum~11_combout\ & \accum~10_combout\ & 
\accum~9_combout\ & \accum~8_combout\ & \accum~7_combout\ & \accum~6_combout\ & \accum~5_combout\ & \accum~4_combout\ & \accum~3_combout\);

\Mult1~mac_BY_bus\ <= (\accum~2_combout\ & \accum~0_combout\ & \accum~32_combout\ & \accum~31_combout\ & \accum~30_combout\ & \accum~29_combout\ & \accum~28_combout\ & \accum~27_combout\ & \accum~26_combout\ & \accum~25_combout\ & \accum~24_combout\ & 
\accum~23_combout\ & \accum~22_combout\ & \accum~21_combout\ & \accum~20_combout\ & \accum~19_combout\ & \accum~18_combout\ & \accum~17_combout\);

\Mult1~mac_resulta\ <= \Mult1~mac_RESULTA_bus\(0);
\Mult1~306\ <= \Mult1~mac_RESULTA_bus\(1);
\Mult1~307\ <= \Mult1~mac_RESULTA_bus\(2);
\Mult1~308\ <= \Mult1~mac_RESULTA_bus\(3);
\Mult1~309\ <= \Mult1~mac_RESULTA_bus\(4);
\Mult1~310\ <= \Mult1~mac_RESULTA_bus\(5);
\Mult1~311\ <= \Mult1~mac_RESULTA_bus\(6);
\Mult1~312\ <= \Mult1~mac_RESULTA_bus\(7);
\Mult1~313\ <= \Mult1~mac_RESULTA_bus\(8);
\Mult1~314\ <= \Mult1~mac_RESULTA_bus\(9);
\Mult1~315\ <= \Mult1~mac_RESULTA_bus\(10);
\Mult1~316\ <= \Mult1~mac_RESULTA_bus\(11);
\Mult1~317\ <= \Mult1~mac_RESULTA_bus\(12);
\Mult1~318\ <= \Mult1~mac_RESULTA_bus\(13);
\Mult1~319\ <= \Mult1~mac_RESULTA_bus\(14);
\Mult1~320\ <= \Mult1~mac_RESULTA_bus\(15);
\Mult1~321\ <= \Mult1~mac_RESULTA_bus\(16);
\Mult1~322\ <= \Mult1~mac_RESULTA_bus\(17);
\Mult1~323\ <= \Mult1~mac_RESULTA_bus\(18);
\Mult1~324\ <= \Mult1~mac_RESULTA_bus\(19);
\Mult1~325\ <= \Mult1~mac_RESULTA_bus\(20);
\Mult1~326\ <= \Mult1~mac_RESULTA_bus\(21);
\Mult1~327\ <= \Mult1~mac_RESULTA_bus\(22);
\Mult1~328\ <= \Mult1~mac_RESULTA_bus\(23);
\Mult1~329\ <= \Mult1~mac_RESULTA_bus\(24);
\Mult1~330\ <= \Mult1~mac_RESULTA_bus\(25);
\Mult1~331\ <= \Mult1~mac_RESULTA_bus\(26);
\Mult1~332\ <= \Mult1~mac_RESULTA_bus\(27);
\Mult1~333\ <= \Mult1~mac_RESULTA_bus\(28);
\Mult1~334\ <= \Mult1~mac_RESULTA_bus\(29);
\Mult1~335\ <= \Mult1~mac_RESULTA_bus\(30);
\Mult1~336\ <= \Mult1~mac_RESULTA_bus\(31);
\Mult1~337\ <= \Mult1~mac_RESULTA_bus\(32);
\Mult1~338\ <= \Mult1~mac_RESULTA_bus\(33);
\Mult1~339\ <= \Mult1~mac_RESULTA_bus\(34);
\Mult1~8\ <= \Mult1~mac_RESULTA_bus\(35);
\Mult1~9\ <= \Mult1~mac_RESULTA_bus\(36);
\Mult1~10\ <= \Mult1~mac_RESULTA_bus\(37);
\Mult1~11\ <= \Mult1~mac_RESULTA_bus\(38);
\Mult1~12\ <= \Mult1~mac_RESULTA_bus\(39);
\Mult1~13\ <= \Mult1~mac_RESULTA_bus\(40);
\Mult1~14\ <= \Mult1~mac_RESULTA_bus\(41);
\Mult1~15\ <= \Mult1~mac_RESULTA_bus\(42);
\Mult1~16\ <= \Mult1~mac_RESULTA_bus\(43);
\Mult1~17\ <= \Mult1~mac_RESULTA_bus\(44);
\Mult1~18\ <= \Mult1~mac_RESULTA_bus\(45);
\Mult1~19\ <= \Mult1~mac_RESULTA_bus\(46);
\Mult1~20\ <= \Mult1~mac_RESULTA_bus\(47);
\Mult1~21\ <= \Mult1~mac_RESULTA_bus\(48);
\Mult1~22\ <= \Mult1~mac_RESULTA_bus\(49);
\Mult1~23\ <= \Mult1~mac_RESULTA_bus\(50);
\Mult1~24\ <= \Mult1~mac_RESULTA_bus\(51);
\Mult1~25\ <= \Mult1~mac_RESULTA_bus\(52);
\Mult1~26\ <= \Mult1~mac_RESULTA_bus\(53);
\Mult1~27\ <= \Mult1~mac_RESULTA_bus\(54);
\Mult1~28\ <= \Mult1~mac_RESULTA_bus\(55);
\Mult1~29\ <= \Mult1~mac_RESULTA_bus\(56);
\Mult1~30\ <= \Mult1~mac_RESULTA_bus\(57);
\Mult1~31\ <= \Mult1~mac_RESULTA_bus\(58);
\Mult1~32\ <= \Mult1~mac_RESULTA_bus\(59);
\Mult1~33\ <= \Mult1~mac_RESULTA_bus\(60);
\Mult1~34\ <= \Mult1~mac_RESULTA_bus\(61);
\Mult1~35\ <= \Mult1~mac_RESULTA_bus\(62);
\Mult1~36\ <= \Mult1~mac_RESULTA_bus\(63);

\Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & gnd & vcc & vcc & gnd & gnd & gnd & vcc & gnd & vcc & gnd & gnd);

\Mult0~8_AY_bus\ <= (\ADCDAT[15]~input_o\ & \ADCDAT[15]~input_o\ & \ADCDAT[15]~input_o\ & \ADCDAT[15]~input_o\ & \ADCDAT[14]~input_o\ & \ADCDAT[13]~input_o\ & \ADCDAT[12]~input_o\ & \ADCDAT[11]~input_o\ & \ADCDAT[10]~input_o\ & \ADCDAT[9]~input_o\ & 
\ADCDAT[8]~input_o\ & \ADCDAT[7]~input_o\ & \ADCDAT[6]~input_o\ & \ADCDAT[5]~input_o\ & \ADCDAT[4]~input_o\ & \ADCDAT[3]~input_o\ & \ADCDAT[2]~input_o\ & \ADCDAT[1]~input_o\ & \ADCDAT[0]~input_o\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_accum[26]~_Duplicate_1_q\ <= NOT \accum[26]~_Duplicate_1_q\;
\ALT_INV_accum[20]~_Duplicate_1_q\ <= NOT \accum[20]~_Duplicate_1_q\;
\ALT_INV_accum[18]~_Duplicate_1_q\ <= NOT \accum[18]~_Duplicate_1_q\;
\ALT_INV_accum[17]~_Duplicate_1_q\ <= NOT \accum[17]~_Duplicate_1_q\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
ALT_INV_cnt(2) <= NOT cnt(2);
ALT_INV_cnt(1) <= NOT cnt(1);
ALT_INV_cnt(0) <= NOT cnt(0);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_cnt(31) <= NOT cnt(31);
\ALT_INV_old_ADCstb~q\ <= NOT \old_ADCstb~q\;
\ALT_INV_fir_sht[6][15]~q\ <= NOT \fir_sht[6][15]~q\;
\ALT_INV_fir_sht[3][15]~q\ <= NOT \fir_sht[3][15]~q\;
\ALT_INV_fir_sht[2][15]~q\ <= NOT \fir_sht[2][15]~q\;
\ALT_INV_fir_sht[1][15]~q\ <= NOT \fir_sht[1][15]~q\;
\ALT_INV_fir_sht[0][15]~q\ <= NOT \fir_sht[0][15]~q\;
\ALT_INV_fir_sht[5][15]~q\ <= NOT \fir_sht[5][15]~q\;
\ALT_INV_fir_sht[4][15]~q\ <= NOT \fir_sht[4][15]~q\;
\ALT_INV_fir_sht[6][14]~q\ <= NOT \fir_sht[6][14]~q\;
\ALT_INV_fir_sht[3][14]~q\ <= NOT \fir_sht[3][14]~q\;
\ALT_INV_fir_sht[2][14]~q\ <= NOT \fir_sht[2][14]~q\;
\ALT_INV_fir_sht[1][14]~q\ <= NOT \fir_sht[1][14]~q\;
\ALT_INV_fir_sht[0][14]~q\ <= NOT \fir_sht[0][14]~q\;
\ALT_INV_fir_sht[5][14]~q\ <= NOT \fir_sht[5][14]~q\;
\ALT_INV_fir_sht[4][14]~q\ <= NOT \fir_sht[4][14]~q\;
\ALT_INV_fir_sht[6][13]~q\ <= NOT \fir_sht[6][13]~q\;
\ALT_INV_fir_sht[3][13]~q\ <= NOT \fir_sht[3][13]~q\;
\ALT_INV_fir_sht[2][13]~q\ <= NOT \fir_sht[2][13]~q\;
\ALT_INV_fir_sht[1][13]~q\ <= NOT \fir_sht[1][13]~q\;
\ALT_INV_fir_sht[0][13]~q\ <= NOT \fir_sht[0][13]~q\;
\ALT_INV_fir_sht[5][13]~q\ <= NOT \fir_sht[5][13]~q\;
\ALT_INV_fir_sht[4][13]~q\ <= NOT \fir_sht[4][13]~q\;
\ALT_INV_fir_sht[6][12]~q\ <= NOT \fir_sht[6][12]~q\;
\ALT_INV_fir_sht[3][12]~q\ <= NOT \fir_sht[3][12]~q\;
\ALT_INV_fir_sht[2][12]~q\ <= NOT \fir_sht[2][12]~q\;
\ALT_INV_fir_sht[1][12]~q\ <= NOT \fir_sht[1][12]~q\;
\ALT_INV_fir_sht[0][12]~q\ <= NOT \fir_sht[0][12]~q\;
\ALT_INV_fir_sht[5][12]~q\ <= NOT \fir_sht[5][12]~q\;
\ALT_INV_fir_sht[4][12]~q\ <= NOT \fir_sht[4][12]~q\;
\ALT_INV_fir_sht[6][11]~q\ <= NOT \fir_sht[6][11]~q\;
\ALT_INV_fir_sht[3][11]~q\ <= NOT \fir_sht[3][11]~q\;
\ALT_INV_fir_sht[2][11]~q\ <= NOT \fir_sht[2][11]~q\;
\ALT_INV_fir_sht[1][11]~q\ <= NOT \fir_sht[1][11]~q\;
\ALT_INV_fir_sht[0][11]~q\ <= NOT \fir_sht[0][11]~q\;
\ALT_INV_fir_sht[5][11]~q\ <= NOT \fir_sht[5][11]~q\;
\ALT_INV_fir_sht[4][11]~q\ <= NOT \fir_sht[4][11]~q\;
\ALT_INV_fir_sht[6][10]~q\ <= NOT \fir_sht[6][10]~q\;
\ALT_INV_fir_sht[3][10]~q\ <= NOT \fir_sht[3][10]~q\;
\ALT_INV_fir_sht[2][10]~q\ <= NOT \fir_sht[2][10]~q\;
\ALT_INV_fir_sht[1][10]~q\ <= NOT \fir_sht[1][10]~q\;
\ALT_INV_fir_sht[0][10]~q\ <= NOT \fir_sht[0][10]~q\;
\ALT_INV_fir_sht[5][10]~q\ <= NOT \fir_sht[5][10]~q\;
\ALT_INV_fir_sht[4][10]~q\ <= NOT \fir_sht[4][10]~q\;
\ALT_INV_fir_sht[6][9]~q\ <= NOT \fir_sht[6][9]~q\;
\ALT_INV_fir_sht[3][9]~q\ <= NOT \fir_sht[3][9]~q\;
\ALT_INV_fir_sht[2][9]~q\ <= NOT \fir_sht[2][9]~q\;
\ALT_INV_fir_sht[1][9]~q\ <= NOT \fir_sht[1][9]~q\;
\ALT_INV_fir_sht[0][9]~q\ <= NOT \fir_sht[0][9]~q\;
\ALT_INV_fir_sht[5][9]~q\ <= NOT \fir_sht[5][9]~q\;
\ALT_INV_fir_sht[4][9]~q\ <= NOT \fir_sht[4][9]~q\;
\ALT_INV_fir_sht[6][8]~q\ <= NOT \fir_sht[6][8]~q\;
\ALT_INV_fir_sht[3][8]~q\ <= NOT \fir_sht[3][8]~q\;
\ALT_INV_fir_sht[2][8]~q\ <= NOT \fir_sht[2][8]~q\;
\ALT_INV_fir_sht[1][8]~q\ <= NOT \fir_sht[1][8]~q\;
\ALT_INV_fir_sht[0][8]~q\ <= NOT \fir_sht[0][8]~q\;
\ALT_INV_fir_sht[5][8]~q\ <= NOT \fir_sht[5][8]~q\;
\ALT_INV_fir_sht[4][8]~q\ <= NOT \fir_sht[4][8]~q\;
\ALT_INV_fir_sht[6][7]~q\ <= NOT \fir_sht[6][7]~q\;
\ALT_INV_fir_sht[3][7]~q\ <= NOT \fir_sht[3][7]~q\;
\ALT_INV_fir_sht[2][7]~q\ <= NOT \fir_sht[2][7]~q\;
\ALT_INV_fir_sht[1][7]~q\ <= NOT \fir_sht[1][7]~q\;
\ALT_INV_fir_sht[0][7]~q\ <= NOT \fir_sht[0][7]~q\;
\ALT_INV_fir_sht[5][7]~q\ <= NOT \fir_sht[5][7]~q\;
\ALT_INV_fir_sht[4][7]~q\ <= NOT \fir_sht[4][7]~q\;
\ALT_INV_fir_sht[6][6]~q\ <= NOT \fir_sht[6][6]~q\;
\ALT_INV_fir_sht[3][6]~q\ <= NOT \fir_sht[3][6]~q\;
\ALT_INV_fir_sht[2][6]~q\ <= NOT \fir_sht[2][6]~q\;
\ALT_INV_fir_sht[1][6]~q\ <= NOT \fir_sht[1][6]~q\;
\ALT_INV_fir_sht[0][6]~q\ <= NOT \fir_sht[0][6]~q\;
\ALT_INV_fir_sht[5][6]~q\ <= NOT \fir_sht[5][6]~q\;
\ALT_INV_fir_sht[4][6]~q\ <= NOT \fir_sht[4][6]~q\;
\ALT_INV_fir_sht[6][5]~q\ <= NOT \fir_sht[6][5]~q\;
\ALT_INV_fir_sht[3][5]~q\ <= NOT \fir_sht[3][5]~q\;
\ALT_INV_fir_sht[2][5]~q\ <= NOT \fir_sht[2][5]~q\;
\ALT_INV_fir_sht[1][5]~q\ <= NOT \fir_sht[1][5]~q\;
\ALT_INV_fir_sht[0][5]~q\ <= NOT \fir_sht[0][5]~q\;
\ALT_INV_fir_sht[5][5]~q\ <= NOT \fir_sht[5][5]~q\;
\ALT_INV_fir_sht[4][5]~q\ <= NOT \fir_sht[4][5]~q\;
\ALT_INV_fir_sht[6][4]~q\ <= NOT \fir_sht[6][4]~q\;
\ALT_INV_fir_sht[3][4]~q\ <= NOT \fir_sht[3][4]~q\;
\ALT_INV_fir_sht[2][4]~q\ <= NOT \fir_sht[2][4]~q\;
\ALT_INV_fir_sht[1][4]~q\ <= NOT \fir_sht[1][4]~q\;
\ALT_INV_fir_sht[0][4]~q\ <= NOT \fir_sht[0][4]~q\;
\ALT_INV_fir_sht[5][4]~q\ <= NOT \fir_sht[5][4]~q\;
\ALT_INV_fir_sht[4][4]~q\ <= NOT \fir_sht[4][4]~q\;
\ALT_INV_fir_sht[6][3]~q\ <= NOT \fir_sht[6][3]~q\;
\ALT_INV_fir_sht[3][3]~q\ <= NOT \fir_sht[3][3]~q\;
\ALT_INV_fir_sht[2][3]~q\ <= NOT \fir_sht[2][3]~q\;
\ALT_INV_fir_sht[1][3]~q\ <= NOT \fir_sht[1][3]~q\;
\ALT_INV_fir_sht[0][3]~q\ <= NOT \fir_sht[0][3]~q\;
\ALT_INV_fir_sht[5][3]~q\ <= NOT \fir_sht[5][3]~q\;
\ALT_INV_fir_sht[4][3]~q\ <= NOT \fir_sht[4][3]~q\;
\ALT_INV_fir_sht[6][2]~q\ <= NOT \fir_sht[6][2]~q\;
\ALT_INV_fir_sht[3][2]~q\ <= NOT \fir_sht[3][2]~q\;
\ALT_INV_fir_sht[2][2]~q\ <= NOT \fir_sht[2][2]~q\;
\ALT_INV_fir_sht[1][2]~q\ <= NOT \fir_sht[1][2]~q\;
\ALT_INV_fir_sht[0][2]~q\ <= NOT \fir_sht[0][2]~q\;
\ALT_INV_fir_sht[5][2]~q\ <= NOT \fir_sht[5][2]~q\;
\ALT_INV_fir_sht[4][2]~q\ <= NOT \fir_sht[4][2]~q\;
\ALT_INV_fir_sht[6][1]~q\ <= NOT \fir_sht[6][1]~q\;
\ALT_INV_fir_sht[3][1]~q\ <= NOT \fir_sht[3][1]~q\;
\ALT_INV_fir_sht[2][1]~q\ <= NOT \fir_sht[2][1]~q\;
\ALT_INV_fir_sht[1][1]~q\ <= NOT \fir_sht[1][1]~q\;
\ALT_INV_fir_sht[0][1]~q\ <= NOT \fir_sht[0][1]~q\;
\ALT_INV_fir_sht[5][1]~q\ <= NOT \fir_sht[5][1]~q\;
\ALT_INV_fir_sht[4][1]~q\ <= NOT \fir_sht[4][1]~q\;
\ALT_INV_fir_sht[6][0]~q\ <= NOT \fir_sht[6][0]~q\;
\ALT_INV_fir_sht[3][0]~q\ <= NOT \fir_sht[3][0]~q\;
\ALT_INV_fir_sht[2][0]~q\ <= NOT \fir_sht[2][0]~q\;
\ALT_INV_fir_sht[1][0]~q\ <= NOT \fir_sht[1][0]~q\;
\ALT_INV_fir_sht[0][0]~q\ <= NOT \fir_sht[0][0]~q\;
\ALT_INV_fir_sht[5][0]~q\ <= NOT \fir_sht[5][0]~q\;
\ALT_INV_fir_sht[4][0]~q\ <= NOT \fir_sht[4][0]~q\;
\ALT_INV_Mult0~35\ <= NOT \Mult0~35\;
\ALT_INV_Mult0~34\ <= NOT \Mult0~34\;
\ALT_INV_Mult0~33\ <= NOT \Mult0~33\;
\ALT_INV_Mult0~32\ <= NOT \Mult0~32\;
\ALT_INV_Mult0~31\ <= NOT \Mult0~31\;
\ALT_INV_Mult0~30\ <= NOT \Mult0~30\;
\ALT_INV_Mult0~29\ <= NOT \Mult0~29\;
\ALT_INV_Mult0~28\ <= NOT \Mult0~28\;
\ALT_INV_Mult0~27\ <= NOT \Mult0~27\;
\ALT_INV_Mult0~26\ <= NOT \Mult0~26\;
\ALT_INV_Mult0~25\ <= NOT \Mult0~25\;
\ALT_INV_Mult0~24\ <= NOT \Mult0~24\;
\ALT_INV_Mult0~23\ <= NOT \Mult0~23\;
\ALT_INV_Mult0~22\ <= NOT \Mult0~22\;
\ALT_INV_Mult0~21\ <= NOT \Mult0~21\;
\ALT_INV_Mult0~20\ <= NOT \Mult0~20\;
\ALT_INV_Mult0~19\ <= NOT \Mult0~19\;
\ALT_INV_Mult0~18\ <= NOT \Mult0~18\;
\ALT_INV_Mult0~17\ <= NOT \Mult0~17\;
\ALT_INV_Mult0~16\ <= NOT \Mult0~16\;
\ALT_INV_Mult0~15\ <= NOT \Mult0~15\;
\ALT_INV_Mult0~14\ <= NOT \Mult0~14\;
\ALT_INV_Mult0~13\ <= NOT \Mult0~13\;
\ALT_INV_Mult0~12\ <= NOT \Mult0~12\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_Mult0~10\ <= NOT \Mult0~10\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;
\ALT_INV_Mult1~339\ <= NOT \Mult1~339\;
\ALT_INV_Mult1~338\ <= NOT \Mult1~338\;
\ALT_INV_Mult1~337\ <= NOT \Mult1~337\;
\ALT_INV_Mult1~336\ <= NOT \Mult1~336\;
\ALT_INV_Mult1~335\ <= NOT \Mult1~335\;
\ALT_INV_Mult1~334\ <= NOT \Mult1~334\;
\ALT_INV_Mult1~333\ <= NOT \Mult1~333\;
\ALT_INV_Mult1~332\ <= NOT \Mult1~332\;
\ALT_INV_Mult1~331\ <= NOT \Mult1~331\;
\ALT_INV_Mult1~330\ <= NOT \Mult1~330\;
\ALT_INV_Mult1~329\ <= NOT \Mult1~329\;
\ALT_INV_Mult1~328\ <= NOT \Mult1~328\;
\ALT_INV_Mult1~327\ <= NOT \Mult1~327\;
\ALT_INV_Mult1~326\ <= NOT \Mult1~326\;
\ALT_INV_Mult1~325\ <= NOT \Mult1~325\;
\ALT_INV_Mult1~324\ <= NOT \Mult1~324\;
\ALT_INV_Mult1~323\ <= NOT \Mult1~323\;
\ALT_INV_Mult1~322\ <= NOT \Mult1~322\;
\ALT_INV_Mult1~321\ <= NOT \Mult1~321\;
\ALT_INV_Mult1~320\ <= NOT \Mult1~320\;
\ALT_INV_Mult1~319\ <= NOT \Mult1~319\;
\ALT_INV_Mult1~318\ <= NOT \Mult1~318\;
\ALT_INV_Mult1~317\ <= NOT \Mult1~317\;
\ALT_INV_Mult1~316\ <= NOT \Mult1~316\;
\ALT_INV_Mult1~315\ <= NOT \Mult1~315\;
\ALT_INV_Mult1~314\ <= NOT \Mult1~314\;
\ALT_INV_Mult1~313\ <= NOT \Mult1~313\;
\ALT_INV_Mult1~312\ <= NOT \Mult1~312\;
\ALT_INV_Mult1~311\ <= NOT \Mult1~311\;
\ALT_INV_Mult1~310\ <= NOT \Mult1~310\;
\ALT_INV_Mult1~309\ <= NOT \Mult1~309\;
\ALT_INV_Mult1~308\ <= NOT \Mult1~308\;
\ALT_INV_Mult1~307\ <= NOT \Mult1~307\;
\ALT_INV_Mult1~306\ <= NOT \Mult1~306\;
\ALT_INV_Mult1~mac_resulta\ <= NOT \Mult1~mac_resulta\;
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_cnt(3) <= NOT cnt(3);
ALT_INV_cnt(20) <= NOT cnt(20);
ALT_INV_cnt(24) <= NOT cnt(24);
ALT_INV_cnt(9) <= NOT cnt(9);
ALT_INV_cnt(28) <= NOT cnt(28);
ALT_INV_cnt(29) <= NOT cnt(29);
ALT_INV_cnt(30) <= NOT cnt(30);
ALT_INV_cnt(25) <= NOT cnt(25);
ALT_INV_cnt(19) <= NOT cnt(19);
ALT_INV_cnt(21) <= NOT cnt(21);
ALT_INV_cnt(23) <= NOT cnt(23);
ALT_INV_cnt(8) <= NOT cnt(8);
ALT_INV_cnt(6) <= NOT cnt(6);
ALT_INV_cnt(5) <= NOT cnt(5);
ALT_INV_cnt(14) <= NOT cnt(14);
ALT_INV_cnt(7) <= NOT cnt(7);
ALT_INV_cnt(15) <= NOT cnt(15);
ALT_INV_cnt(16) <= NOT cnt(16);
ALT_INV_cnt(17) <= NOT cnt(17);
ALT_INV_cnt(18) <= NOT cnt(18);
ALT_INV_cnt(26) <= NOT cnt(26);
ALT_INV_cnt(22) <= NOT cnt(22);
ALT_INV_cnt(10) <= NOT cnt(10);
ALT_INV_cnt(11) <= NOT cnt(11);
ALT_INV_cnt(12) <= NOT cnt(12);
ALT_INV_cnt(13) <= NOT cnt(13);
ALT_INV_cnt(4) <= NOT cnt(4);
ALT_INV_cnt(27) <= NOT cnt(27);
\ALT_INV_ADCDAT[15]~input_o\ <= NOT \ADCDAT[15]~input_o\;
\ALT_INV_ADCDAT[11]~input_o\ <= NOT \ADCDAT[11]~input_o\;
\ALT_INV_ADCDAT[10]~input_o\ <= NOT \ADCDAT[10]~input_o\;
\ALT_INV_ADCDAT[5]~input_o\ <= NOT \ADCDAT[5]~input_o\;
\ALT_INV_ADCstb~input_o\ <= NOT \ADCstb~input_o\;
\ALT_INV_RST_N~input_o\ <= NOT \RST_N~input_o\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;

-- Location: IOOBUF_X84_Y0_N19
\DACDAT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(0));

-- Location: IOOBUF_X76_Y0_N2
\DACDAT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(1));

-- Location: IOOBUF_X82_Y0_N59
\DACDAT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(2));

-- Location: IOOBUF_X89_Y8_N39
\DACDAT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(3));

-- Location: IOOBUF_X88_Y0_N54
\DACDAT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(4));

-- Location: IOOBUF_X88_Y0_N20
\DACDAT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(5));

-- Location: IOOBUF_X89_Y8_N22
\DACDAT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(6));

-- Location: IOOBUF_X84_Y0_N36
\DACDAT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(7));

-- Location: IOOBUF_X88_Y0_N37
\DACDAT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(8));

-- Location: IOOBUF_X89_Y4_N96
\DACDAT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(9));

-- Location: IOOBUF_X89_Y8_N5
\DACDAT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(10));

-- Location: IOOBUF_X89_Y4_N62
\DACDAT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(11));

-- Location: IOOBUF_X89_Y6_N39
\DACDAT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(12));

-- Location: IOOBUF_X89_Y4_N79
\DACDAT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(13));

-- Location: IOOBUF_X89_Y4_N45
\DACDAT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(14));

-- Location: IOOBUF_X89_Y6_N5
\DACDAT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACDAT[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACDAT(15));

-- Location: IOOBUF_X78_Y0_N36
\ADCrdy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ADCrdy~reg0_q\,
	devoe => ww_devoe,
	o => ww_ADCrdy);

-- Location: IOOBUF_X84_Y0_N2
\DACstb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DACstb~reg0_q\,
	devoe => ww_devoe,
	o => ww_DACstb);

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

-- Location: IOIBUF_X89_Y6_N55
\ADCstb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCstb,
	o => \ADCstb~input_o\);

-- Location: FF_X87_Y3_N38
old_ADCstb : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCstb~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \old_ADCstb~q\);

-- Location: IOIBUF_X70_Y0_N35
\ADCDAT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(0),
	o => \ADCDAT[0]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\ADCDAT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(1),
	o => \ADCDAT[1]~input_o\);

-- Location: IOIBUF_X84_Y0_N52
\ADCDAT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(2),
	o => \ADCDAT[2]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\ADCDAT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(3),
	o => \ADCDAT[3]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\ADCDAT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(4),
	o => \ADCDAT[4]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\ADCDAT[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(5),
	o => \ADCDAT[5]~input_o\);

-- Location: IOIBUF_X82_Y0_N92
\ADCDAT[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(6),
	o => \ADCDAT[6]~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\ADCDAT[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(7),
	o => \ADCDAT[7]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\ADCDAT[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(8),
	o => \ADCDAT[8]~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\ADCDAT[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(9),
	o => \ADCDAT[9]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\ADCDAT[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(10),
	o => \ADCDAT[10]~input_o\);

-- Location: IOIBUF_X78_Y0_N1
\ADCDAT[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(11),
	o => \ADCDAT[11]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\ADCDAT[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(12),
	o => \ADCDAT[12]~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\ADCDAT[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(13),
	o => \ADCDAT[13]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\ADCDAT[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(14),
	o => \ADCDAT[14]~input_o\);

-- Location: IOIBUF_X82_Y0_N75
\ADCDAT[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT(15),
	o => \ADCDAT[15]~input_o\);

-- Location: DSP_X86_Y2_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: IOIBUF_X89_Y6_N21
\RST_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_N,
	o => \RST_N~input_o\);

-- Location: MLABCELL_X84_Y4_N0
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( !cnt(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~74\ = CARRY(( !cnt(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(0),
	cin => GND,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X85_Y5_N3
\cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = ( !\Add0~73_sumout\ & ( (\RST_N~input_o\ & ((!\ADCstb~input_o\) # (\old_ADCstb~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_old_ADCstb~q\,
	datad => \ALT_INV_RST_N~input_o\,
	dataf => \ALT_INV_Add0~73_sumout\,
	combout => \cnt~1_combout\);

-- Location: MLABCELL_X84_Y3_N21
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( cnt(27) ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~98\ = CARRY(( cnt(27) ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(27),
	cin => \Add0~34\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: MLABCELL_X84_Y3_N24
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( cnt(28) ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~2\ = CARRY(( cnt(28) ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(28),
	cin => \Add0~98\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X87_Y3_N15
\DACstb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DACstb~0_combout\ = ( !\old_ADCstb~q\ & ( \RST_N~input_o\ & ( \ADCstb~input_o\ ) ) ) # ( \old_ADCstb~q\ & ( !\RST_N~input_o\ ) ) # ( !\old_ADCstb~q\ & ( !\RST_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datae => \ALT_INV_old_ADCstb~q\,
	dataf => \ALT_INV_RST_N~input_o\,
	combout => \DACstb~0_combout\);

-- Location: FF_X84_Y3_N26
\cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(28));

-- Location: MLABCELL_X84_Y3_N27
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( cnt(29) ) + ( VCC ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( cnt(29) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(29),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X84_Y3_N29
\cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(29));

-- Location: MLABCELL_X84_Y3_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( cnt(30) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( cnt(30) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(30),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X84_Y3_N32
\cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(30));

-- Location: MLABCELL_X84_Y3_N33
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !cnt(31) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(31),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\);

-- Location: MLABCELL_X84_Y3_N54
\cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = ( \Add0~13_sumout\ & ( (!\RST_N~input_o\) # ((\ADCstb~input_o\ & !\old_ADCstb~q\)) ) ) # ( !\Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_old_ADCstb~q\,
	datad => \ALT_INV_RST_N~input_o\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \cnt~0_combout\);

-- Location: FF_X84_Y3_N56
\cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \cnt~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(31));

-- Location: LABCELL_X81_Y4_N18
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !cnt(23) & ( !cnt(6) & ( (!cnt(8) & (!cnt(21) & (!cnt(19) & !cnt(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(8),
	datab => ALT_INV_cnt(21),
	datac => ALT_INV_cnt(19),
	datad => ALT_INV_cnt(5),
	datae => ALT_INV_cnt(23),
	dataf => ALT_INV_cnt(6),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X81_Y4_N51
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( !cnt(29) & ( cnt(0) & ( (!cnt(1) & (!cnt(25) & (!cnt(2) & !cnt(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(1),
	datab => ALT_INV_cnt(25),
	datac => ALT_INV_cnt(2),
	datad => ALT_INV_cnt(30),
	datae => ALT_INV_cnt(29),
	dataf => ALT_INV_cnt(0),
	combout => \LessThan0~3_combout\);

-- Location: MLABCELL_X82_Y4_N0
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !cnt(17) & ( !cnt(14) & ( (!cnt(15) & (!cnt(7) & (!cnt(18) & !cnt(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(15),
	datab => ALT_INV_cnt(7),
	datac => ALT_INV_cnt(18),
	datad => ALT_INV_cnt(16),
	datae => ALT_INV_cnt(17),
	dataf => ALT_INV_cnt(14),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X80_Y4_N57
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !cnt(22) & ( !cnt(26) & ( (!cnt(12) & (!cnt(10) & (!cnt(13) & !cnt(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(12),
	datab => ALT_INV_cnt(10),
	datac => ALT_INV_cnt(13),
	datad => ALT_INV_cnt(11),
	datae => ALT_INV_cnt(22),
	dataf => ALT_INV_cnt(26),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X83_Y3_N27
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !cnt(9) & ( !cnt(3) & ( (!cnt(20) & (!cnt(24) & !cnt(28))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(20),
	datab => ALT_INV_cnt(24),
	datac => ALT_INV_cnt(28),
	datae => ALT_INV_cnt(9),
	dataf => ALT_INV_cnt(3),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X81_Y4_N15
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~0_combout\ & ( \LessThan0~4_combout\ & ( (\LessThan0~2_combout\ & (!cnt(4) & (\LessThan0~3_combout\ & \LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_cnt(4),
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: MLABCELL_X84_Y3_N42
\DACstb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DACstb~1_combout\ = ( cnt(31) & ( \LessThan0~5_combout\ & ( ((!\RST_N~input_o\) # ((!\old_ADCstb~q\ & \ADCstb~input_o\))) # (cnt(27)) ) ) ) # ( !cnt(31) & ( \LessThan0~5_combout\ & ( (!\RST_N~input_o\) # ((!\old_ADCstb~q\ & \ADCstb~input_o\)) ) ) ) # ( 
-- cnt(31) & ( !\LessThan0~5_combout\ ) ) # ( !cnt(31) & ( !\LessThan0~5_combout\ & ( (!\RST_N~input_o\) # ((!\old_ADCstb~q\ & \ADCstb~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100100010111111111111111111111111001000101111111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => ALT_INV_cnt(27),
	datad => \ALT_INV_RST_N~input_o\,
	datae => ALT_INV_cnt(31),
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \DACstb~1_combout\);

-- Location: FF_X84_Y4_N38
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \cnt~1_combout\,
	sload => VCC,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: MLABCELL_X84_Y4_N3
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( cnt(1) ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( cnt(1) ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(1),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X85_Y5_N6
\cnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = ( \old_ADCstb~q\ & ( \Add0~77_sumout\ ) ) # ( !\old_ADCstb~q\ & ( \Add0~77_sumout\ ) ) # ( \old_ADCstb~q\ & ( !\Add0~77_sumout\ & ( !\RST_N~input_o\ ) ) ) # ( !\old_ADCstb~q\ & ( !\Add0~77_sumout\ & ( (!\RST_N~input_o\) # 
-- (\ADCstb~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N~input_o\,
	datac => \ALT_INV_ADCstb~input_o\,
	datae => \ALT_INV_old_ADCstb~q\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \cnt~2_combout\);

-- Location: FF_X84_Y4_N17
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \cnt~2_combout\,
	sload => VCC,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: MLABCELL_X84_Y4_N6
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( cnt(2) ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~58\ = CARRY(( cnt(2) ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(2),
	cin => \Add0~78\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X83_Y4_N9
\cnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = ( \RST_N~input_o\ & ( ((\ADCstb~input_o\ & !\old_ADCstb~q\)) # (\Add0~57_sumout\) ) ) # ( !\RST_N~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_ADCstb~input_o\,
	datad => \ALT_INV_old_ADCstb~q\,
	dataf => \ALT_INV_RST_N~input_o\,
	combout => \cnt~3_combout\);

-- Location: FF_X84_Y4_N14
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \cnt~3_combout\,
	sload => VCC,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: MLABCELL_X84_Y4_N9
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( cnt(3) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( cnt(3) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(3),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X84_Y4_N11
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: MLABCELL_X84_Y4_N12
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( cnt(4) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( cnt(4) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(4),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X83_Y4_N26
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add0~65_sumout\,
	sclr => \DACstb~0_combout\,
	sload => VCC,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: MLABCELL_X84_Y4_N15
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( cnt(5) ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( cnt(5) ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(5),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X84_Y4_N53
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add0~69_sumout\,
	sclr => \DACstb~0_combout\,
	sload => VCC,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: MLABCELL_X84_Y4_N18
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( cnt(6) ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~122\ = CARRY(( cnt(6) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(6),
	cin => \Add0~70\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X84_Y4_N20
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: MLABCELL_X84_Y4_N21
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( cnt(7) ) + ( VCC ) + ( \Add0~122\ ))
-- \Add0~126\ = CARRY(( cnt(7) ) + ( VCC ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(7),
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X84_Y4_N23
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: MLABCELL_X84_Y4_N24
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( cnt(8) ) + ( VCC ) + ( \Add0~126\ ))
-- \Add0~102\ = CARRY(( cnt(8) ) + ( VCC ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(8),
	cin => \Add0~126\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X84_Y4_N26
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: MLABCELL_X84_Y4_N27
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( cnt(9) ) + ( VCC ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( cnt(9) ) + ( VCC ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(9),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X84_Y4_N29
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: MLABCELL_X84_Y4_N30
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( cnt(10) ) + ( VCC ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( cnt(10) ) + ( VCC ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(10),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X84_Y4_N32
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: MLABCELL_X84_Y4_N33
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( cnt(11) ) + ( VCC ) + ( \Add0~110\ ))
-- \Add0~38\ = CARRY(( cnt(11) ) + ( VCC ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(11),
	cin => \Add0~110\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X84_Y4_N35
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: MLABCELL_X84_Y4_N36
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( cnt(12) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( cnt(12) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(12),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X83_Y4_N23
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add0~41_sumout\,
	sclr => \DACstb~0_combout\,
	sload => VCC,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: MLABCELL_X84_Y4_N39
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( cnt(13) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( cnt(13) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(13),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X84_Y4_N41
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: MLABCELL_X84_Y4_N42
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( cnt(14) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( cnt(14) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(14),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X84_Y4_N44
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: MLABCELL_X84_Y4_N45
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( cnt(15) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~114\ = CARRY(( cnt(15) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(15),
	cin => \Add0~50\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X84_Y4_N47
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: MLABCELL_X84_Y4_N48
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( cnt(16) ) + ( VCC ) + ( \Add0~114\ ))
-- \Add0~54\ = CARRY(( cnt(16) ) + ( VCC ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(16),
	cin => \Add0~114\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X84_Y4_N50
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: MLABCELL_X84_Y4_N51
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( cnt(17) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~118\ = CARRY(( cnt(17) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(17),
	cin => \Add0~54\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X83_Y4_N59
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add0~117_sumout\,
	sclr => \DACstb~0_combout\,
	sload => VCC,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: MLABCELL_X84_Y4_N54
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( cnt(18) ) + ( VCC ) + ( \Add0~118\ ))
-- \Add0~82\ = CARRY(( cnt(18) ) + ( VCC ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(18),
	cin => \Add0~118\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X84_Y4_N56
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: MLABCELL_X84_Y4_N57
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( cnt(19) ) + ( VCC ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( cnt(19) ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(19),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X84_Y4_N59
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: MLABCELL_X84_Y3_N0
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( cnt(20) ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( cnt(20) ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(20),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X84_Y3_N2
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: MLABCELL_X84_Y3_N3
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( cnt(21) ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~18\ = CARRY(( cnt(21) ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(21),
	cin => \Add0~90\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X84_Y3_N53
\cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add0~17_sumout\,
	sclr => \DACstb~0_combout\,
	sload => VCC,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(21));

-- Location: MLABCELL_X84_Y3_N6
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( cnt(22) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( cnt(22) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(22),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X84_Y3_N8
\cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(22));

-- Location: MLABCELL_X84_Y3_N9
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( cnt(23) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( cnt(23) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(23),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X84_Y3_N11
\cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(23));

-- Location: MLABCELL_X84_Y3_N12
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( cnt(24) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( cnt(24) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(24),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X84_Y3_N14
\cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(24));

-- Location: MLABCELL_X84_Y3_N15
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( cnt(25) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~94\ = CARRY(( cnt(25) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(25),
	cin => \Add0~30\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X84_Y3_N17
\cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(25));

-- Location: MLABCELL_X84_Y3_N18
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( cnt(26) ) + ( VCC ) + ( \Add0~94\ ))
-- \Add0~34\ = CARRY(( cnt(26) ) + ( VCC ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(26),
	cin => \Add0~94\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X84_Y3_N20
\cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(26));

-- Location: FF_X84_Y3_N23
\cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(27));

-- Location: MLABCELL_X87_Y3_N9
\accum[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum[16]~1_combout\ = ( \ADCstb~input_o\ & ( \LessThan0~5_combout\ & ( (\RST_N~input_o\ & ((!\old_ADCstb~q\) # ((cnt(27) & cnt(31))))) ) ) ) # ( !\ADCstb~input_o\ & ( \LessThan0~5_combout\ & ( (cnt(27) & (cnt(31) & \RST_N~input_o\)) ) ) ) # ( 
-- \ADCstb~input_o\ & ( !\LessThan0~5_combout\ & ( (\RST_N~input_o\ & ((!\old_ADCstb~q\) # (cnt(31)))) ) ) ) # ( !\ADCstb~input_o\ & ( !\LessThan0~5_combout\ & ( (cnt(31) & \RST_N~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000001100000001000000010000111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(27),
	datab => ALT_INV_cnt(31),
	datac => \ALT_INV_RST_N~input_o\,
	datad => \ALT_INV_old_ADCstb~q\,
	datae => \ALT_INV_ADCstb~input_o\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \accum[16]~1_combout\);

-- Location: FF_X88_Y4_N47
\fir_sht[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[0]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][0]~q\);

-- Location: FF_X88_Y4_N35
\fir_sht[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][0]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][0]~q\);

-- Location: MLABCELL_X87_Y3_N42
\fir_sht[4][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[4][0]~feeder_combout\ = ( \fir_sht[5][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_fir_sht[5][0]~q\,
	combout => \fir_sht[4][0]~feeder_combout\);

-- Location: FF_X87_Y3_N44
\fir_sht[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[4][0]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][0]~q\);

-- Location: FF_X88_Y4_N4
\fir_sht[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][0]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][0]~q\);

-- Location: FF_X88_Y4_N29
\fir_sht[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][0]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][0]~q\);

-- Location: FF_X88_Y4_N32
\fir_sht[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][0]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][0]~q\);

-- Location: FF_X88_Y4_N1
\fir_sht[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][0]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][0]~q\);

-- Location: LABCELL_X88_Y4_N0
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \fir_sht[0][0]~q\ & ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\ & ((\fir_sht[2][0]~q\))) # (\Add0~73_sumout\ & (\fir_sht[3][0]~q\)) ) ) ) # ( !\fir_sht[0][0]~q\ & ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\ & ((\fir_sht[2][0]~q\))) # 
-- (\Add0~73_sumout\ & (\fir_sht[3][0]~q\)) ) ) ) # ( \fir_sht[0][0]~q\ & ( !\Add0~77_sumout\ & ( (!\Add0~73_sumout\) # (\fir_sht[1][0]~q\) ) ) ) # ( !\fir_sht[0][0]~q\ & ( !\Add0~77_sumout\ & ( (\fir_sht[1][0]~q\ & \Add0~73_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[3][0]~q\,
	datab => \ALT_INV_fir_sht[1][0]~q\,
	datac => \ALT_INV_fir_sht[2][0]~q\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_fir_sht[0][0]~q\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X83_Y4_N27
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Add0~77_sumout\ & ( \Add0~57_sumout\ ) ) # ( !\Add0~77_sumout\ & ( \Add0~57_sumout\ & ( \Add0~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X85_Y4_N42
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( !\Add0~77_sumout\ & ( \Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~57_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X88_Y4_N6
\Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \Mux8~0_combout\ & ( \Mux7~0_combout\ & ( \fir_sht[5][0]~q\ ) ) ) # ( !\Mux8~0_combout\ & ( \Mux7~0_combout\ & ( \fir_sht[4][0]~q\ ) ) ) # ( \Mux8~0_combout\ & ( !\Mux7~0_combout\ & ( \fir_sht[6][0]~q\ ) ) ) # ( !\Mux8~0_combout\ & ( 
-- !\Mux7~0_combout\ & ( \Mux23~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[5][0]~q\,
	datab => \ALT_INV_fir_sht[4][0]~q\,
	datac => \ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_fir_sht[6][0]~q\,
	datae => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: FF_X82_Y4_N29
\fir_sht[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[1]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][1]~q\);

-- Location: FF_X81_Y4_N59
\fir_sht[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][1]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][1]~q\);

-- Location: FF_X82_Y4_N41
\fir_sht[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][1]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][1]~q\);

-- Location: FF_X82_Y4_N53
\fir_sht[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][1]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][1]~q\);

-- Location: FF_X81_Y4_N50
\fir_sht[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][1]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][1]~q\);

-- Location: FF_X81_Y4_N35
\fir_sht[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][1]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][1]~q\);

-- Location: LABCELL_X81_Y4_N24
\fir_sht[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[0][1]~feeder_combout\ = \fir_sht[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fir_sht[1][1]~q\,
	combout => \fir_sht[0][1]~feeder_combout\);

-- Location: FF_X81_Y4_N25
\fir_sht[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[0][1]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][1]~q\);

-- Location: MLABCELL_X82_Y4_N51
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \fir_sht[3][1]~q\ & ( \Add0~77_sumout\ & ( (\Add0~73_sumout\) # (\fir_sht[2][1]~q\) ) ) ) # ( !\fir_sht[3][1]~q\ & ( \Add0~77_sumout\ & ( (\fir_sht[2][1]~q\ & !\Add0~73_sumout\) ) ) ) # ( \fir_sht[3][1]~q\ & ( !\Add0~77_sumout\ & ( 
-- (!\Add0~73_sumout\ & (\fir_sht[0][1]~q\)) # (\Add0~73_sumout\ & ((\fir_sht[1][1]~q\))) ) ) ) # ( !\fir_sht[3][1]~q\ & ( !\Add0~77_sumout\ & ( (!\Add0~73_sumout\ & (\fir_sht[0][1]~q\)) # (\Add0~73_sumout\ & ((\fir_sht[1][1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[2][1]~q\,
	datab => \ALT_INV_fir_sht[0][1]~q\,
	datac => \ALT_INV_fir_sht[1][1]~q\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_fir_sht[3][1]~q\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux22~0_combout\);

-- Location: MLABCELL_X82_Y4_N27
\Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \fir_sht[6][1]~q\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & ((\fir_sht[4][1]~q\))) # (\Mux8~0_combout\ & (\fir_sht[5][1]~q\)) ) ) ) # ( !\fir_sht[6][1]~q\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & ((\fir_sht[4][1]~q\))) # 
-- (\Mux8~0_combout\ & (\fir_sht[5][1]~q\)) ) ) ) # ( \fir_sht[6][1]~q\ & ( !\Mux7~0_combout\ & ( (\Mux8~0_combout\) # (\Mux22~0_combout\) ) ) ) # ( !\fir_sht[6][1]~q\ & ( !\Mux7~0_combout\ & ( (\Mux22~0_combout\ & !\Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux22~0_combout\,
	datab => \ALT_INV_fir_sht[5][1]~q\,
	datac => \ALT_INV_fir_sht[4][1]~q\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_fir_sht[6][1]~q\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: FF_X85_Y2_N41
\fir_sht[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[2]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][2]~q\);

-- Location: FF_X85_Y2_N20
\fir_sht[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][2]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][2]~q\);

-- Location: FF_X85_Y2_N17
\fir_sht[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][2]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][2]~q\);

-- Location: FF_X85_Y2_N5
\fir_sht[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][2]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][2]~q\);

-- Location: FF_X85_Y2_N56
\fir_sht[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][2]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][2]~q\);

-- Location: FF_X85_Y2_N59
\fir_sht[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][2]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][2]~q\);

-- Location: FF_X85_Y2_N38
\fir_sht[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][2]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][2]~q\);

-- Location: LABCELL_X85_Y2_N57
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \Add0~77_sumout\ & ( \Add0~73_sumout\ & ( \fir_sht[3][2]~q\ ) ) ) # ( !\Add0~77_sumout\ & ( \Add0~73_sumout\ & ( \fir_sht[1][2]~q\ ) ) ) # ( \Add0~77_sumout\ & ( !\Add0~73_sumout\ & ( \fir_sht[2][2]~q\ ) ) ) # ( !\Add0~77_sumout\ & ( 
-- !\Add0~73_sumout\ & ( \fir_sht[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[0][2]~q\,
	datab => \ALT_INV_fir_sht[1][2]~q\,
	datac => \ALT_INV_fir_sht[2][2]~q\,
	datad => \ALT_INV_fir_sht[3][2]~q\,
	datae => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_Add0~73_sumout\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X85_Y2_N39
\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \fir_sht[6][2]~q\ & ( \Mux8~0_combout\ & ( (!\Mux7~0_combout\) # (\fir_sht[5][2]~q\) ) ) ) # ( !\fir_sht[6][2]~q\ & ( \Mux8~0_combout\ & ( (\fir_sht[5][2]~q\ & \Mux7~0_combout\) ) ) ) # ( \fir_sht[6][2]~q\ & ( !\Mux8~0_combout\ & ( 
-- (!\Mux7~0_combout\ & ((\Mux21~0_combout\))) # (\Mux7~0_combout\ & (\fir_sht[4][2]~q\)) ) ) ) # ( !\fir_sht[6][2]~q\ & ( !\Mux8~0_combout\ & ( (!\Mux7~0_combout\ & ((\Mux21~0_combout\))) # (\Mux7~0_combout\ & (\fir_sht[4][2]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[5][2]~q\,
	datab => \ALT_INV_fir_sht[4][2]~q\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	datae => \ALT_INV_fir_sht[6][2]~q\,
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: FF_X85_Y3_N38
\fir_sht[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[3]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][3]~q\);

-- Location: FF_X85_Y3_N5
\fir_sht[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][3]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][3]~q\);

-- Location: FF_X85_Y3_N50
\fir_sht[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][3]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][3]~q\);

-- Location: FF_X85_Y3_N29
\fir_sht[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][3]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][3]~q\);

-- Location: FF_X85_Y3_N53
\fir_sht[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][3]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][3]~q\);

-- Location: FF_X85_Y3_N11
\fir_sht[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][3]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][3]~q\);

-- Location: FF_X85_Y3_N34
\fir_sht[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][3]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][3]~q\);

-- Location: LABCELL_X85_Y3_N51
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \fir_sht[3][3]~q\ & ( \Add0~77_sumout\ & ( (\Add0~73_sumout\) # (\fir_sht[2][3]~q\) ) ) ) # ( !\fir_sht[3][3]~q\ & ( \Add0~77_sumout\ & ( (\fir_sht[2][3]~q\ & !\Add0~73_sumout\) ) ) ) # ( \fir_sht[3][3]~q\ & ( !\Add0~77_sumout\ & ( 
-- (!\Add0~73_sumout\ & (\fir_sht[0][3]~q\)) # (\Add0~73_sumout\ & ((\fir_sht[1][3]~q\))) ) ) ) # ( !\fir_sht[3][3]~q\ & ( !\Add0~77_sumout\ & ( (!\Add0~73_sumout\ & (\fir_sht[0][3]~q\)) # (\Add0~73_sumout\ & ((\fir_sht[1][3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[0][3]~q\,
	datab => \ALT_INV_fir_sht[1][3]~q\,
	datac => \ALT_INV_fir_sht[2][3]~q\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_fir_sht[3][3]~q\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X85_Y3_N54
\Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \Mux7~0_combout\ & ( \Mux8~0_combout\ & ( \fir_sht[5][3]~q\ ) ) ) # ( !\Mux7~0_combout\ & ( \Mux8~0_combout\ & ( \fir_sht[6][3]~q\ ) ) ) # ( \Mux7~0_combout\ & ( !\Mux8~0_combout\ & ( \fir_sht[4][3]~q\ ) ) ) # ( !\Mux7~0_combout\ & ( 
-- !\Mux8~0_combout\ & ( \Mux20~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[6][3]~q\,
	datab => \ALT_INV_fir_sht[5][3]~q\,
	datac => \ALT_INV_Mux20~0_combout\,
	datad => \ALT_INV_fir_sht[4][3]~q\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: FF_X88_Y4_N25
\fir_sht[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[4]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][4]~q\);

-- Location: FF_X85_Y5_N2
\fir_sht[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][4]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][4]~q\);

-- Location: FF_X87_Y5_N14
\fir_sht[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][4]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][4]~q\);

-- Location: FF_X85_Y3_N23
\fir_sht[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][4]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][4]~q\);

-- Location: FF_X85_Y3_N41
\fir_sht[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][4]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][4]~q\);

-- Location: FF_X85_Y3_N8
\fir_sht[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][4]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][4]~q\);

-- Location: FF_X85_Y3_N26
\fir_sht[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][4]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][4]~q\);

-- Location: LABCELL_X85_Y3_N0
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[3][4]~q\ ) ) ) # ( !\Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[2][4]~q\ ) ) ) # ( \Add0~73_sumout\ & ( !\Add0~77_sumout\ & ( \fir_sht[1][4]~q\ ) ) ) # ( !\Add0~73_sumout\ & ( 
-- !\Add0~77_sumout\ & ( \fir_sht[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[0][4]~q\,
	datab => \ALT_INV_fir_sht[1][4]~q\,
	datac => \ALT_INV_fir_sht[3][4]~q\,
	datad => \ALT_INV_fir_sht[2][4]~q\,
	datae => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X88_Y4_N24
\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \fir_sht[6][4]~q\ & ( \Mux19~0_combout\ & ( (!\Mux7~0_combout\) # ((!\Mux8~0_combout\ & (\fir_sht[4][4]~q\)) # (\Mux8~0_combout\ & ((\fir_sht[5][4]~q\)))) ) ) ) # ( !\fir_sht[6][4]~q\ & ( \Mux19~0_combout\ & ( (!\Mux7~0_combout\ & 
-- (((!\Mux8~0_combout\)))) # (\Mux7~0_combout\ & ((!\Mux8~0_combout\ & (\fir_sht[4][4]~q\)) # (\Mux8~0_combout\ & ((\fir_sht[5][4]~q\))))) ) ) ) # ( \fir_sht[6][4]~q\ & ( !\Mux19~0_combout\ & ( (!\Mux7~0_combout\ & (((\Mux8~0_combout\)))) # 
-- (\Mux7~0_combout\ & ((!\Mux8~0_combout\ & (\fir_sht[4][4]~q\)) # (\Mux8~0_combout\ & ((\fir_sht[5][4]~q\))))) ) ) ) # ( !\fir_sht[6][4]~q\ & ( !\Mux19~0_combout\ & ( (\Mux7~0_combout\ & ((!\Mux8~0_combout\ & (\fir_sht[4][4]~q\)) # (\Mux8~0_combout\ & 
-- ((\fir_sht[5][4]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~0_combout\,
	datab => \ALT_INV_fir_sht[4][4]~q\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_fir_sht[5][4]~q\,
	datae => \ALT_INV_fir_sht[6][4]~q\,
	dataf => \ALT_INV_Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LABCELL_X85_Y3_N18
\fir_sht[6][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[6][5]~feeder_combout\ = ( \ADCDAT[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ADCDAT[5]~input_o\,
	combout => \fir_sht[6][5]~feeder_combout\);

-- Location: FF_X85_Y3_N20
\fir_sht[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[6][5]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][5]~q\);

-- Location: FF_X85_Y3_N14
\fir_sht[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][5]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][5]~q\);

-- Location: FF_X85_Y3_N59
\fir_sht[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][5]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][5]~q\);

-- Location: FF_X85_Y3_N17
\fir_sht[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][5]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][5]~q\);

-- Location: FF_X85_Y3_N47
\fir_sht[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][5]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][5]~q\);

-- Location: FF_X85_Y3_N44
\fir_sht[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][5]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][5]~q\);

-- Location: FF_X85_Y3_N31
\fir_sht[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][5]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][5]~q\);

-- Location: LABCELL_X85_Y3_N33
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \Add0~77_sumout\ & ( \fir_sht[1][5]~q\ & ( (!\Add0~73_sumout\ & (\fir_sht[2][5]~q\)) # (\Add0~73_sumout\ & ((\fir_sht[3][5]~q\))) ) ) ) # ( !\Add0~77_sumout\ & ( \fir_sht[1][5]~q\ & ( (\Add0~73_sumout\) # (\fir_sht[0][5]~q\) ) ) ) # 
-- ( \Add0~77_sumout\ & ( !\fir_sht[1][5]~q\ & ( (!\Add0~73_sumout\ & (\fir_sht[2][5]~q\)) # (\Add0~73_sumout\ & ((\fir_sht[3][5]~q\))) ) ) ) # ( !\Add0~77_sumout\ & ( !\fir_sht[1][5]~q\ & ( (\fir_sht[0][5]~q\ & !\Add0~73_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[0][5]~q\,
	datab => \ALT_INV_fir_sht[2][5]~q\,
	datac => \ALT_INV_fir_sht[3][5]~q\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_fir_sht[1][5]~q\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X85_Y3_N36
\Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \Mux7~0_combout\ & ( \Mux8~0_combout\ & ( \fir_sht[5][5]~q\ ) ) ) # ( !\Mux7~0_combout\ & ( \Mux8~0_combout\ & ( \fir_sht[6][5]~q\ ) ) ) # ( \Mux7~0_combout\ & ( !\Mux8~0_combout\ & ( \fir_sht[4][5]~q\ ) ) ) # ( !\Mux7~0_combout\ & ( 
-- !\Mux8~0_combout\ & ( \Mux18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[6][5]~q\,
	datab => \ALT_INV_fir_sht[5][5]~q\,
	datac => \ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_fir_sht[4][5]~q\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: FF_X82_Y4_N20
\fir_sht[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[6]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][6]~q\);

-- Location: FF_X82_Y4_N49
\fir_sht[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][6]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][6]~q\);

-- Location: MLABCELL_X82_Y4_N21
\fir_sht[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[4][6]~feeder_combout\ = \fir_sht[5][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[5][6]~q\,
	combout => \fir_sht[4][6]~feeder_combout\);

-- Location: FF_X82_Y4_N22
\fir_sht[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[4][6]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][6]~q\);

-- Location: LABCELL_X81_Y4_N27
\fir_sht[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[3][6]~feeder_combout\ = ( \fir_sht[4][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_fir_sht[4][6]~q\,
	combout => \fir_sht[3][6]~feeder_combout\);

-- Location: FF_X81_Y4_N28
\fir_sht[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[3][6]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][6]~q\);

-- Location: FF_X81_Y4_N1
\fir_sht[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][6]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][6]~q\);

-- Location: MLABCELL_X82_Y4_N18
\fir_sht[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[1][6]~feeder_combout\ = \fir_sht[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_fir_sht[2][6]~q\,
	combout => \fir_sht[1][6]~feeder_combout\);

-- Location: FF_X82_Y4_N19
\fir_sht[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[1][6]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][6]~q\);

-- Location: FF_X81_Y4_N55
\fir_sht[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][6]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][6]~q\);

-- Location: LABCELL_X83_Y4_N0
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[3][6]~q\ ) ) ) # ( !\Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[2][6]~q\ ) ) ) # ( \Add0~73_sumout\ & ( !\Add0~77_sumout\ & ( \fir_sht[1][6]~q\ ) ) ) # ( !\Add0~73_sumout\ & ( 
-- !\Add0~77_sumout\ & ( \fir_sht[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[0][6]~q\,
	datab => \ALT_INV_fir_sht[1][6]~q\,
	datac => \ALT_INV_fir_sht[2][6]~q\,
	datad => \ALT_INV_fir_sht[3][6]~q\,
	datae => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X83_Y4_N30
\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \Mux17~0_combout\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & ((\fir_sht[4][6]~q\))) # (\Mux8~0_combout\ & (\fir_sht[5][6]~q\)) ) ) ) # ( !\Mux17~0_combout\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & ((\fir_sht[4][6]~q\))) # 
-- (\Mux8~0_combout\ & (\fir_sht[5][6]~q\)) ) ) ) # ( \Mux17~0_combout\ & ( !\Mux7~0_combout\ & ( (!\Mux8~0_combout\) # (\fir_sht[6][6]~q\) ) ) ) # ( !\Mux17~0_combout\ & ( !\Mux7~0_combout\ & ( (\fir_sht[6][6]~q\ & \Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[6][6]~q\,
	datab => \ALT_INV_fir_sht[5][6]~q\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_fir_sht[4][6]~q\,
	datae => \ALT_INV_Mux17~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: FF_X85_Y4_N23
\fir_sht[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[7]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][7]~q\);

-- Location: FF_X82_Y4_N35
\fir_sht[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][7]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][7]~q\);

-- Location: FF_X82_Y4_N26
\fir_sht[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][7]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][7]~q\);

-- Location: FF_X85_Y4_N32
\fir_sht[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][7]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][7]~q\);

-- Location: FF_X85_Y4_N11
\fir_sht[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][7]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][7]~q\);

-- Location: FF_X85_Y4_N44
\fir_sht[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][7]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][7]~q\);

-- Location: FF_X85_Y4_N26
\fir_sht[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][7]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][7]~q\);

-- Location: LABCELL_X83_Y4_N36
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \Add0~77_sumout\ & ( \Add0~73_sumout\ & ( \fir_sht[3][7]~q\ ) ) ) # ( !\Add0~77_sumout\ & ( \Add0~73_sumout\ & ( \fir_sht[1][7]~q\ ) ) ) # ( \Add0~77_sumout\ & ( !\Add0~73_sumout\ & ( \fir_sht[2][7]~q\ ) ) ) # ( !\Add0~77_sumout\ & ( 
-- !\Add0~73_sumout\ & ( \fir_sht[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[1][7]~q\,
	datab => \ALT_INV_fir_sht[2][7]~q\,
	datac => \ALT_INV_fir_sht[0][7]~q\,
	datad => \ALT_INV_fir_sht[3][7]~q\,
	datae => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_Add0~73_sumout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X83_Y4_N48
\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \Mux16~0_combout\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & ((\fir_sht[4][7]~q\))) # (\Mux8~0_combout\ & (\fir_sht[5][7]~q\)) ) ) ) # ( !\Mux16~0_combout\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & ((\fir_sht[4][7]~q\))) # 
-- (\Mux8~0_combout\ & (\fir_sht[5][7]~q\)) ) ) ) # ( \Mux16~0_combout\ & ( !\Mux7~0_combout\ & ( (!\Mux8~0_combout\) # (\fir_sht[6][7]~q\) ) ) ) # ( !\Mux16~0_combout\ & ( !\Mux7~0_combout\ & ( (\fir_sht[6][7]~q\ & \Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[6][7]~q\,
	datab => \ALT_INV_fir_sht[5][7]~q\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_fir_sht[4][7]~q\,
	datae => \ALT_INV_Mux16~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: FF_X88_Y4_N53
\fir_sht[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[8]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][8]~q\);

-- Location: FF_X88_Y4_N20
\fir_sht[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][8]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][8]~q\);

-- Location: FF_X88_Y4_N44
\fir_sht[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][8]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][8]~q\);

-- Location: FF_X82_Y4_N44
\fir_sht[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][8]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][8]~q\);

-- Location: FF_X82_Y4_N14
\fir_sht[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][8]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][8]~q\);

-- Location: FF_X82_Y4_N11
\fir_sht[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][8]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][8]~q\);

-- Location: FF_X82_Y4_N5
\fir_sht[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][8]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][8]~q\);

-- Location: MLABCELL_X82_Y4_N45
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[3][8]~q\ ) ) ) # ( !\Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[2][8]~q\ ) ) ) # ( \Add0~73_sumout\ & ( !\Add0~77_sumout\ & ( \fir_sht[1][8]~q\ ) ) ) # ( !\Add0~73_sumout\ & ( 
-- !\Add0~77_sumout\ & ( \fir_sht[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[2][8]~q\,
	datab => \ALT_INV_fir_sht[1][8]~q\,
	datac => \ALT_INV_fir_sht[3][8]~q\,
	datad => \ALT_INV_fir_sht[0][8]~q\,
	datae => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X88_Y4_N36
\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \Mux8~0_combout\ & ( \Mux15~0_combout\ & ( (!\Mux7~0_combout\ & ((\fir_sht[6][8]~q\))) # (\Mux7~0_combout\ & (\fir_sht[5][8]~q\)) ) ) ) # ( !\Mux8~0_combout\ & ( \Mux15~0_combout\ & ( (!\Mux7~0_combout\) # (\fir_sht[4][8]~q\) ) ) ) # 
-- ( \Mux8~0_combout\ & ( !\Mux15~0_combout\ & ( (!\Mux7~0_combout\ & ((\fir_sht[6][8]~q\))) # (\Mux7~0_combout\ & (\fir_sht[5][8]~q\)) ) ) ) # ( !\Mux8~0_combout\ & ( !\Mux15~0_combout\ & ( (\Mux7~0_combout\ & \fir_sht[4][8]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[5][8]~q\,
	datab => \ALT_INV_fir_sht[6][8]~q\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_fir_sht[4][8]~q\,
	datae => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: FF_X82_Y4_N59
\fir_sht[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[9]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][9]~q\);

-- Location: MLABCELL_X82_Y4_N15
\fir_sht[5][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[5][9]~feeder_combout\ = \fir_sht[6][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fir_sht[6][9]~q\,
	combout => \fir_sht[5][9]~feeder_combout\);

-- Location: FF_X82_Y4_N17
\fir_sht[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[5][9]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][9]~q\);

-- Location: MLABCELL_X82_Y4_N12
\fir_sht[4][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[4][9]~feeder_combout\ = \fir_sht[5][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_fir_sht[5][9]~q\,
	combout => \fir_sht[4][9]~feeder_combout\);

-- Location: FF_X82_Y4_N13
\fir_sht[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[4][9]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][9]~q\);

-- Location: FF_X82_Y4_N16
\fir_sht[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][9]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][9]~q\);

-- Location: FF_X85_Y4_N47
\fir_sht[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][9]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][9]~q\);

-- Location: FF_X82_Y4_N47
\fir_sht[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][9]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][9]~q\);

-- Location: LABCELL_X81_Y4_N42
\fir_sht[0][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[0][9]~feeder_combout\ = ( \fir_sht[1][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_fir_sht[1][9]~q\,
	combout => \fir_sht[0][9]~feeder_combout\);

-- Location: FF_X81_Y4_N43
\fir_sht[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[0][9]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][9]~q\);

-- Location: LABCELL_X83_Y4_N54
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[3][9]~q\ ) ) ) # ( !\Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[2][9]~q\ ) ) ) # ( \Add0~73_sumout\ & ( !\Add0~77_sumout\ & ( \fir_sht[1][9]~q\ ) ) ) # ( !\Add0~73_sumout\ & ( 
-- !\Add0~77_sumout\ & ( \fir_sht[0][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[0][9]~q\,
	datab => \ALT_INV_fir_sht[3][9]~q\,
	datac => \ALT_INV_fir_sht[2][9]~q\,
	datad => \ALT_INV_fir_sht[1][9]~q\,
	datae => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X83_Y4_N18
\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \Mux14~0_combout\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & (\fir_sht[4][9]~q\)) # (\Mux8~0_combout\ & ((\fir_sht[5][9]~q\))) ) ) ) # ( !\Mux14~0_combout\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & (\fir_sht[4][9]~q\)) # 
-- (\Mux8~0_combout\ & ((\fir_sht[5][9]~q\))) ) ) ) # ( \Mux14~0_combout\ & ( !\Mux7~0_combout\ & ( (!\Mux8~0_combout\) # (\fir_sht[6][9]~q\) ) ) ) # ( !\Mux14~0_combout\ & ( !\Mux7~0_combout\ & ( (\fir_sht[6][9]~q\ & \Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[4][9]~q\,
	datab => \ALT_INV_fir_sht[6][9]~q\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_fir_sht[5][9]~q\,
	datae => \ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X85_Y5_N18
\fir_sht[6][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[6][10]~feeder_combout\ = ( \ADCDAT[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ADCDAT[10]~input_o\,
	combout => \fir_sht[6][10]~feeder_combout\);

-- Location: FF_X85_Y5_N20
\fir_sht[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[6][10]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][10]~q\);

-- Location: FF_X85_Y5_N32
\fir_sht[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][10]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][10]~q\);

-- Location: FF_X85_Y5_N8
\fir_sht[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][10]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][10]~q\);

-- Location: FF_X85_Y5_N41
\fir_sht[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][10]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][10]~q\);

-- Location: FF_X85_Y5_N17
\fir_sht[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][10]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][10]~q\);

-- Location: FF_X85_Y5_N26
\fir_sht[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][10]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][10]~q\);

-- Location: FF_X85_Y5_N56
\fir_sht[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][10]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][10]~q\);

-- Location: LABCELL_X85_Y5_N57
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \fir_sht[2][10]~q\ & ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\) # (\fir_sht[3][10]~q\) ) ) ) # ( !\fir_sht[2][10]~q\ & ( \Add0~77_sumout\ & ( (\Add0~73_sumout\ & \fir_sht[3][10]~q\) ) ) ) # ( \fir_sht[2][10]~q\ & ( !\Add0~77_sumout\ 
-- & ( (!\Add0~73_sumout\ & ((\fir_sht[0][10]~q\))) # (\Add0~73_sumout\ & (\fir_sht[1][10]~q\)) ) ) ) # ( !\fir_sht[2][10]~q\ & ( !\Add0~77_sumout\ & ( (!\Add0~73_sumout\ & ((\fir_sht[0][10]~q\))) # (\Add0~73_sumout\ & (\fir_sht[1][10]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[1][10]~q\,
	datab => \ALT_INV_Add0~73_sumout\,
	datac => \ALT_INV_fir_sht[3][10]~q\,
	datad => \ALT_INV_fir_sht[0][10]~q\,
	datae => \ALT_INV_fir_sht[2][10]~q\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X85_Y5_N33
\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \Mux8~0_combout\ & ( \Mux7~0_combout\ & ( \fir_sht[5][10]~q\ ) ) ) # ( !\Mux8~0_combout\ & ( \Mux7~0_combout\ & ( \fir_sht[4][10]~q\ ) ) ) # ( \Mux8~0_combout\ & ( !\Mux7~0_combout\ & ( \fir_sht[6][10]~q\ ) ) ) # ( !\Mux8~0_combout\ 
-- & ( !\Mux7~0_combout\ & ( \Mux13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[6][10]~q\,
	datab => \ALT_INV_fir_sht[4][10]~q\,
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_fir_sht[5][10]~q\,
	datae => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X81_Y4_N45
\fir_sht[6][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[6][11]~feeder_combout\ = ( \ADCDAT[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ADCDAT[11]~input_o\,
	combout => \fir_sht[6][11]~feeder_combout\);

-- Location: FF_X81_Y4_N47
\fir_sht[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[6][11]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][11]~q\);

-- Location: FF_X82_Y4_N8
\fir_sht[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][11]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][11]~q\);

-- Location: FF_X81_Y4_N23
\fir_sht[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][11]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][11]~q\);

-- Location: FF_X82_Y4_N2
\fir_sht[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][11]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][11]~q\);

-- Location: FF_X82_Y4_N23
\fir_sht[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][11]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][11]~q\);

-- Location: FF_X82_Y4_N38
\fir_sht[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][11]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][11]~q\);

-- Location: FF_X82_Y4_N31
\fir_sht[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][11]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][11]~q\);

-- Location: MLABCELL_X82_Y4_N30
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \fir_sht[1][11]~q\ & ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\ & ((\fir_sht[2][11]~q\))) # (\Add0~73_sumout\ & (\fir_sht[3][11]~q\)) ) ) ) # ( !\fir_sht[1][11]~q\ & ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\ & ((\fir_sht[2][11]~q\))) 
-- # (\Add0~73_sumout\ & (\fir_sht[3][11]~q\)) ) ) ) # ( \fir_sht[1][11]~q\ & ( !\Add0~77_sumout\ & ( (\Add0~73_sumout\) # (\fir_sht[0][11]~q\) ) ) ) # ( !\fir_sht[1][11]~q\ & ( !\Add0~77_sumout\ & ( (\fir_sht[0][11]~q\ & !\Add0~73_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[3][11]~q\,
	datab => \ALT_INV_fir_sht[2][11]~q\,
	datac => \ALT_INV_fir_sht[0][11]~q\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_fir_sht[1][11]~q\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X82_Y4_N36
\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \Mux8~0_combout\ & ( \Mux7~0_combout\ & ( \fir_sht[5][11]~q\ ) ) ) # ( !\Mux8~0_combout\ & ( \Mux7~0_combout\ & ( \fir_sht[4][11]~q\ ) ) ) # ( \Mux8~0_combout\ & ( !\Mux7~0_combout\ & ( \fir_sht[6][11]~q\ ) ) ) # ( !\Mux8~0_combout\ 
-- & ( !\Mux7~0_combout\ & ( \Mux12~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[4][11]~q\,
	datab => \ALT_INV_fir_sht[5][11]~q\,
	datac => \ALT_INV_fir_sht[6][11]~q\,
	datad => \ALT_INV_Mux12~0_combout\,
	datae => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: FF_X85_Y2_N53
\fir_sht[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[12]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][12]~q\);

-- Location: LABCELL_X85_Y2_N30
\fir_sht[5][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[5][12]~feeder_combout\ = \fir_sht[6][12]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fir_sht[6][12]~q\,
	combout => \fir_sht[5][12]~feeder_combout\);

-- Location: FF_X85_Y2_N32
\fir_sht[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[5][12]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][12]~q\);

-- Location: FF_X85_Y2_N11
\fir_sht[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][12]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][12]~q\);

-- Location: FF_X85_Y2_N28
\fir_sht[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][12]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][12]~q\);

-- Location: FF_X85_Y2_N50
\fir_sht[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][12]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][12]~q\);

-- Location: FF_X85_Y2_N44
\fir_sht[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][12]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][12]~q\);

-- Location: FF_X85_Y2_N26
\fir_sht[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][12]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][12]~q\);

-- Location: LABCELL_X85_Y2_N27
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \fir_sht[3][12]~q\ & ( \Add0~73_sumout\ & ( (\Add0~77_sumout\) # (\fir_sht[1][12]~q\) ) ) ) # ( !\fir_sht[3][12]~q\ & ( \Add0~73_sumout\ & ( (\fir_sht[1][12]~q\ & !\Add0~77_sumout\) ) ) ) # ( \fir_sht[3][12]~q\ & ( !\Add0~73_sumout\ 
-- & ( (!\Add0~77_sumout\ & ((\fir_sht[0][12]~q\))) # (\Add0~77_sumout\ & (\fir_sht[2][12]~q\)) ) ) ) # ( !\fir_sht[3][12]~q\ & ( !\Add0~73_sumout\ & ( (!\Add0~77_sumout\ & ((\fir_sht[0][12]~q\))) # (\Add0~77_sumout\ & (\fir_sht[2][12]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[2][12]~q\,
	datab => \ALT_INV_fir_sht[1][12]~q\,
	datac => \ALT_INV_Add0~77_sumout\,
	datad => \ALT_INV_fir_sht[0][12]~q\,
	datae => \ALT_INV_fir_sht[3][12]~q\,
	dataf => \ALT_INV_Add0~73_sumout\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X85_Y2_N51
\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \fir_sht[6][12]~q\ & ( \Mux8~0_combout\ & ( (!\Mux7~0_combout\) # (\fir_sht[5][12]~q\) ) ) ) # ( !\fir_sht[6][12]~q\ & ( \Mux8~0_combout\ & ( (\fir_sht[5][12]~q\ & \Mux7~0_combout\) ) ) ) # ( \fir_sht[6][12]~q\ & ( !\Mux8~0_combout\ 
-- & ( (!\Mux7~0_combout\ & (\Mux11~0_combout\)) # (\Mux7~0_combout\ & ((\fir_sht[4][12]~q\))) ) ) ) # ( !\fir_sht[6][12]~q\ & ( !\Mux8~0_combout\ & ( (!\Mux7~0_combout\ & (\Mux11~0_combout\)) # (\Mux7~0_combout\ & ((\fir_sht[4][12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~0_combout\,
	datab => \ALT_INV_fir_sht[5][12]~q\,
	datac => \ALT_INV_fir_sht[4][12]~q\,
	datad => \ALT_INV_Mux7~0_combout\,
	datae => \ALT_INV_fir_sht[6][12]~q\,
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: FF_X85_Y5_N53
\fir_sht[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[13]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][13]~q\);

-- Location: LABCELL_X85_Y5_N21
\fir_sht[5][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[5][13]~feeder_combout\ = \fir_sht[6][13]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[6][13]~q\,
	combout => \fir_sht[5][13]~feeder_combout\);

-- Location: FF_X85_Y5_N23
\fir_sht[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[5][13]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][13]~q\);

-- Location: FF_X85_Y5_N11
\fir_sht[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][13]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][13]~q\);

-- Location: FF_X85_Y5_N14
\fir_sht[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][13]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][13]~q\);

-- Location: FF_X85_Y5_N47
\fir_sht[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][13]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][13]~q\);

-- Location: FF_X85_Y5_N29
\fir_sht[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][13]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][13]~q\);

-- Location: FF_X85_Y5_N43
\fir_sht[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][13]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][13]~q\);

-- Location: LABCELL_X85_Y5_N36
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \fir_sht[2][13]~q\ & ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\) # (\fir_sht[3][13]~q\) ) ) ) # ( !\fir_sht[2][13]~q\ & ( \Add0~77_sumout\ & ( (\fir_sht[3][13]~q\ & \Add0~73_sumout\) ) ) ) # ( \fir_sht[2][13]~q\ & ( !\Add0~77_sumout\ 
-- & ( (!\Add0~73_sumout\ & ((\fir_sht[0][13]~q\))) # (\Add0~73_sumout\ & (\fir_sht[1][13]~q\)) ) ) ) # ( !\fir_sht[2][13]~q\ & ( !\Add0~77_sumout\ & ( (!\Add0~73_sumout\ & ((\fir_sht[0][13]~q\))) # (\Add0~73_sumout\ & (\fir_sht[1][13]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[1][13]~q\,
	datab => \ALT_INV_fir_sht[3][13]~q\,
	datac => \ALT_INV_fir_sht[0][13]~q\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_fir_sht[2][13]~q\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X85_Y5_N48
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \Mux8~0_combout\ & ( \Mux7~0_combout\ & ( \fir_sht[5][13]~q\ ) ) ) # ( !\Mux8~0_combout\ & ( \Mux7~0_combout\ & ( \fir_sht[4][13]~q\ ) ) ) # ( \Mux8~0_combout\ & ( !\Mux7~0_combout\ & ( \fir_sht[6][13]~q\ ) ) ) # ( !\Mux8~0_combout\ 
-- & ( !\Mux7~0_combout\ & ( \Mux10~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[5][13]~q\,
	datab => \ALT_INV_fir_sht[4][13]~q\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_fir_sht[6][13]~q\,
	datae => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: FF_X82_Y4_N56
\fir_sht[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADCDAT[14]~input_o\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][14]~q\);

-- Location: FF_X81_Y4_N14
\fir_sht[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][14]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][14]~q\);

-- Location: FF_X81_Y4_N11
\fir_sht[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][14]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][14]~q\);

-- Location: FF_X81_Y4_N38
\fir_sht[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][14]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][14]~q\);

-- Location: FF_X81_Y4_N5
\fir_sht[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][14]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][14]~q\);

-- Location: FF_X81_Y4_N32
\fir_sht[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][14]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][14]~q\);

-- Location: FF_X81_Y4_N19
\fir_sht[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][14]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][14]~q\);

-- Location: LABCELL_X81_Y4_N39
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[3][14]~q\ ) ) ) # ( !\Add0~73_sumout\ & ( \Add0~77_sumout\ & ( \fir_sht[2][14]~q\ ) ) ) # ( \Add0~73_sumout\ & ( !\Add0~77_sumout\ & ( \fir_sht[1][14]~q\ ) ) ) # ( !\Add0~73_sumout\ & 
-- ( !\Add0~77_sumout\ & ( \fir_sht[0][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[3][14]~q\,
	datab => \ALT_INV_fir_sht[0][14]~q\,
	datac => \ALT_INV_fir_sht[1][14]~q\,
	datad => \ALT_INV_fir_sht[2][14]~q\,
	datae => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X82_Y4_N54
\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \fir_sht[6][14]~q\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & (\fir_sht[4][14]~q\)) # (\Mux8~0_combout\ & ((\fir_sht[5][14]~q\))) ) ) ) # ( !\fir_sht[6][14]~q\ & ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\ & (\fir_sht[4][14]~q\)) # 
-- (\Mux8~0_combout\ & ((\fir_sht[5][14]~q\))) ) ) ) # ( \fir_sht[6][14]~q\ & ( !\Mux7~0_combout\ & ( (\Mux9~0_combout\) # (\Mux8~0_combout\) ) ) ) # ( !\fir_sht[6][14]~q\ & ( !\Mux7~0_combout\ & ( (!\Mux8~0_combout\ & \Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_fir_sht[4][14]~q\,
	datac => \ALT_INV_Mux9~0_combout\,
	datad => \ALT_INV_fir_sht[5][14]~q\,
	datae => \ALT_INV_fir_sht[6][14]~q\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X85_Y2_N33
\fir_sht[6][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fir_sht[6][15]~feeder_combout\ = ( \ADCDAT[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ADCDAT[15]~input_o\,
	combout => \fir_sht[6][15]~feeder_combout\);

-- Location: FF_X85_Y2_N35
\fir_sht[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fir_sht[6][15]~feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[6][15]~q\);

-- Location: FF_X85_Y4_N20
\fir_sht[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[6][15]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[5][15]~q\);

-- Location: FF_X85_Y4_N29
\fir_sht[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[5][15]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[4][15]~q\);

-- Location: FF_X85_Y2_N14
\fir_sht[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[4][15]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[3][15]~q\);

-- Location: FF_X85_Y2_N23
\fir_sht[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[3][15]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[2][15]~q\);

-- Location: FF_X85_Y2_N8
\fir_sht[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[2][15]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[1][15]~q\);

-- Location: FF_X85_Y2_N47
\fir_sht[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fir_sht[1][15]~q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACstb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_sht[0][15]~q\);

-- Location: LABCELL_X85_Y2_N0
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \fir_sht[0][15]~q\ & ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\ & ((\fir_sht[2][15]~q\))) # (\Add0~73_sumout\ & (\fir_sht[3][15]~q\)) ) ) ) # ( !\fir_sht[0][15]~q\ & ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\ & ((\fir_sht[2][15]~q\))) # 
-- (\Add0~73_sumout\ & (\fir_sht[3][15]~q\)) ) ) ) # ( \fir_sht[0][15]~q\ & ( !\Add0~77_sumout\ & ( (!\Add0~73_sumout\) # (\fir_sht[1][15]~q\) ) ) ) # ( !\fir_sht[0][15]~q\ & ( !\Add0~77_sumout\ & ( (\fir_sht[1][15]~q\ & \Add0~73_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[3][15]~q\,
	datab => \ALT_INV_fir_sht[1][15]~q\,
	datac => \ALT_INV_fir_sht[2][15]~q\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_fir_sht[0][15]~q\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux8~1_combout\);

-- Location: LABCELL_X85_Y4_N18
\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \Mux8~0_combout\ & ( \Mux8~1_combout\ & ( (!\Mux7~0_combout\ & (\fir_sht[6][15]~q\)) # (\Mux7~0_combout\ & ((\fir_sht[5][15]~q\))) ) ) ) # ( !\Mux8~0_combout\ & ( \Mux8~1_combout\ & ( (!\Mux7~0_combout\) # (\fir_sht[4][15]~q\) ) ) ) # 
-- ( \Mux8~0_combout\ & ( !\Mux8~1_combout\ & ( (!\Mux7~0_combout\ & (\fir_sht[6][15]~q\)) # (\Mux7~0_combout\ & ((\fir_sht[5][15]~q\))) ) ) ) # ( !\Mux8~0_combout\ & ( !\Mux8~1_combout\ & ( (\fir_sht[4][15]~q\ & \Mux7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fir_sht[4][15]~q\,
	datab => \ALT_INV_fir_sht[6][15]~q\,
	datac => \ALT_INV_fir_sht[5][15]~q\,
	datad => \ALT_INV_Mux7~0_combout\,
	datae => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LABCELL_X85_Y4_N24
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Add0~77_sumout\ & ( !\Add0~73_sumout\ ) ) # ( !\Add0~77_sumout\ & ( \Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X83_Y4_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \Add0~73_sumout\ & ( \Add0~57_sumout\ ) ) # ( !\Add0~73_sumout\ & ( !\Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X85_Y4_N54
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\) # (\Add0~57_sumout\) ) ) # ( !\Add0~77_sumout\ & ( (!\Add0~57_sumout\) # (\Add0~73_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~73_sumout\,
	datad => \ALT_INV_Add0~57_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X83_Y4_N6
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Add0~57_sumout\ & ( (\Add0~73_sumout\ & !\Add0~77_sumout\) ) ) # ( !\Add0~57_sumout\ & ( (!\Add0~73_sumout\ & \Add0~77_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~73_sumout\,
	datad => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \Mux7~1_combout\);

-- Location: LABCELL_X83_Y4_N12
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Add0~77_sumout\ & ( \Add0~57_sumout\ & ( \Add0~73_sumout\ ) ) ) # ( !\Add0~77_sumout\ & ( !\Add0~57_sumout\ & ( !\Add0~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X85_Y4_N30
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Add0~77_sumout\ & ( \Add0~57_sumout\ ) ) # ( !\Add0~77_sumout\ & ( !\Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~57_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X85_Y4_N36
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Add0~77_sumout\ & ( (!\Add0~73_sumout\ & \Add0~57_sumout\) ) ) # ( !\Add0~77_sumout\ & ( (\Add0~73_sumout\ & !\Add0~57_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~73_sumout\,
	datad => \ALT_INV_Add0~57_sumout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Mux5~0_combout\);

-- Location: DSP_X86_Y4_N0
\Mult1~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 18,
	by_clock => "0",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult1~mac_ACLR_bus\,
	clk => \Mult1~mac_CLK_bus\,
	ena => \Mult1~mac_ENA_bus\,
	ax => \Mult1~mac_AX_bus\,
	ay => \Mult1~mac_AY_bus\,
	bx => \Mult1~mac_BX_bus\,
	by => \Mult1~mac_BY_bus\,
	resulta => \Mult1~mac_RESULTA_bus\);

-- Location: MLABCELL_X87_Y4_N48
\accum~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~35_combout\ = ( \Mult1~339\ & ( ((!\ADCstb~input_o\) # (\Mult0~35\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~339\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~35\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~35\,
	dataf => \ALT_INV_Mult1~339\,
	combout => \accum~35_combout\);

-- Location: LABCELL_X88_Y4_N21
\accum~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~34_combout\ = ( \Mult1~338\ & ( ((!\ADCstb~input_o\) # (\Mult0~35\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~338\ & ( (!\old_ADCstb~q\ & (\Mult0~35\ & \ADCstb~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~35\,
	datad => \ALT_INV_ADCstb~input_o\,
	dataf => \ALT_INV_Mult1~338\,
	combout => \accum~34_combout\);

-- Location: LABCELL_X85_Y4_N45
\accum~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~33_combout\ = ( \Mult1~337\ & ( (!\ADCstb~input_o\) # ((\Mult0~35\) # (\old_ADCstb~q\)) ) ) # ( !\Mult1~337\ & ( (\ADCstb~input_o\ & (!\old_ADCstb~q\ & \Mult0~35\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~35\,
	dataf => \ALT_INV_Mult1~337\,
	combout => \accum~33_combout\);

-- Location: MLABCELL_X87_Y4_N51
\accum~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~16_combout\ = ( \Mult1~336\ & ( ((!\ADCstb~input_o\) # (\Mult0~35\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~336\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~35\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~35\,
	dataf => \ALT_INV_Mult1~336\,
	combout => \accum~16_combout\);

-- Location: LABCELL_X85_Y4_N15
\accum~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~15_combout\ = ( \Mult1~335\ & ( (!\ADCstb~input_o\) # ((\Mult0~35\) # (\old_ADCstb~q\)) ) ) # ( !\Mult1~335\ & ( (\ADCstb~input_o\ & (!\old_ADCstb~q\ & \Mult0~35\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~35\,
	dataf => \ALT_INV_Mult1~335\,
	combout => \accum~15_combout\);

-- Location: MLABCELL_X87_Y4_N15
\accum~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~14_combout\ = ( \Mult1~334\ & ( ((!\ADCstb~input_o\) # (\Mult0~35\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~334\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~35\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~35\,
	dataf => \ALT_INV_Mult1~334\,
	combout => \accum~14_combout\);

-- Location: MLABCELL_X87_Y4_N54
\accum~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~13_combout\ = ( \Mult1~333\ & ( ((!\ADCstb~input_o\) # (\Mult0~35\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~333\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~35\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~35\,
	dataf => \ALT_INV_Mult1~333\,
	combout => \accum~13_combout\);

-- Location: MLABCELL_X87_Y4_N9
\accum~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~12_combout\ = (!\old_ADCstb~q\ & ((!\ADCstb~input_o\ & ((\Mult1~332\))) # (\ADCstb~input_o\ & (\Mult0~35\)))) # (\old_ADCstb~q\ & (((\Mult1~332\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~35\,
	datad => \ALT_INV_Mult1~332\,
	combout => \accum~12_combout\);

-- Location: MLABCELL_X87_Y4_N42
\accum~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~11_combout\ = ( \Mult1~331\ & ( ((!\ADCstb~input_o\) # (\Mult0~34\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~331\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~34\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~34\,
	dataf => \ALT_INV_Mult1~331\,
	combout => \accum~11_combout\);

-- Location: MLABCELL_X87_Y4_N24
\accum~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~10_combout\ = ( \Mult1~330\ & ( ((!\ADCstb~input_o\) # (\Mult0~33\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~330\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~33\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~33\,
	dataf => \ALT_INV_Mult1~330\,
	combout => \accum~10_combout\);

-- Location: MLABCELL_X87_Y4_N57
\accum~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~9_combout\ = ( \Mult1~329\ & ( ((!\ADCstb~input_o\) # (\Mult0~32\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~329\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~32\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~32\,
	dataf => \ALT_INV_Mult1~329\,
	combout => \accum~9_combout\);

-- Location: LABCELL_X85_Y4_N51
\accum~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~8_combout\ = (!\ADCstb~input_o\ & (((\Mult1~328\)))) # (\ADCstb~input_o\ & ((!\old_ADCstb~q\ & (\Mult0~31\)) # (\old_ADCstb~q\ & ((\Mult1~328\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~31\,
	datad => \ALT_INV_Mult1~328\,
	combout => \accum~8_combout\);

-- Location: MLABCELL_X87_Y4_N12
\accum~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~7_combout\ = ( \Mult1~327\ & ( ((!\ADCstb~input_o\) # (\Mult0~30\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~327\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~30\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~30\,
	dataf => \ALT_INV_Mult1~327\,
	combout => \accum~7_combout\);

-- Location: MLABCELL_X87_Y4_N30
\accum~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~6_combout\ = ( \ADCstb~input_o\ & ( (!\old_ADCstb~q\ & (\Mult0~29\)) # (\old_ADCstb~q\ & ((\Mult1~326\))) ) ) # ( !\ADCstb~input_o\ & ( \Mult1~326\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~29\,
	datad => \ALT_INV_Mult1~326\,
	dataf => \ALT_INV_ADCstb~input_o\,
	combout => \accum~6_combout\);

-- Location: MLABCELL_X87_Y4_N33
\accum~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~5_combout\ = ( \ADCstb~input_o\ & ( (!\old_ADCstb~q\ & (\Mult0~28\)) # (\old_ADCstb~q\ & ((\Mult1~325\))) ) ) # ( !\ADCstb~input_o\ & ( \Mult1~325\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~28\,
	datad => \ALT_INV_Mult1~325\,
	dataf => \ALT_INV_ADCstb~input_o\,
	combout => \accum~5_combout\);

-- Location: MLABCELL_X87_Y4_N18
\accum~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~4_combout\ = ( \Mult0~27\ & ( ((!\old_ADCstb~q\ & \ADCstb~input_o\)) # (\Mult1~324\) ) ) # ( !\Mult0~27\ & ( (\Mult1~324\ & ((!\ADCstb~input_o\) # (\old_ADCstb~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110100100010111111110010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datad => \ALT_INV_Mult1~324\,
	dataf => \ALT_INV_Mult0~27\,
	combout => \accum~4_combout\);

-- Location: MLABCELL_X87_Y4_N39
\accum~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~3_combout\ = ( \Mult1~323\ & ( ((!\ADCstb~input_o\) # (\Mult0~26\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~323\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~26\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~26\,
	dataf => \ALT_INV_Mult1~323\,
	combout => \accum~3_combout\);

-- Location: LABCELL_X85_Y4_N3
\accum~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~2_combout\ = ( \Mult1~322\ & ( (!\ADCstb~input_o\) # ((\Mult0~25\) # (\old_ADCstb~q\)) ) ) # ( !\Mult1~322\ & ( (\ADCstb~input_o\ & (!\old_ADCstb~q\ & \Mult0~25\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~25\,
	dataf => \ALT_INV_Mult1~322\,
	combout => \accum~2_combout\);

-- Location: LABCELL_X85_Y4_N6
\accum~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~32_combout\ = ( \old_ADCstb~q\ & ( \Mult1~320\ ) ) # ( !\old_ADCstb~q\ & ( \Mult1~320\ & ( (!\ADCstb~input_o\) # (\Mult0~23\) ) ) ) # ( !\old_ADCstb~q\ & ( !\Mult1~320\ & ( (\Mult0~23\ & \ADCstb~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000011110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~23\,
	datac => \ALT_INV_ADCstb~input_o\,
	datae => \ALT_INV_old_ADCstb~q\,
	dataf => \ALT_INV_Mult1~320\,
	combout => \accum~32_combout\);

-- Location: LABCELL_X88_Y4_N48
\accum~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~31_combout\ = ( \Mult0~22\ & ( \Mult1~319\ ) ) # ( !\Mult0~22\ & ( \Mult1~319\ & ( (!\ADCstb~input_o\) # (\old_ADCstb~q\) ) ) ) # ( \Mult0~22\ & ( !\Mult1~319\ & ( (!\old_ADCstb~q\ & \ADCstb~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101011110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_ADCstb~input_o\,
	datae => \ALT_INV_Mult0~22\,
	dataf => \ALT_INV_Mult1~319\,
	combout => \accum~31_combout\);

-- Location: LABCELL_X85_Y4_N0
\accum~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~30_combout\ = ( \Mult1~318\ & ( (!\ADCstb~input_o\) # ((\Mult0~21\) # (\old_ADCstb~q\)) ) ) # ( !\Mult1~318\ & ( (\ADCstb~input_o\ & (!\old_ADCstb~q\ & \Mult0~21\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~21\,
	dataf => \ALT_INV_Mult1~318\,
	combout => \accum~30_combout\);

-- Location: LABCELL_X85_Y4_N27
\accum~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~29_combout\ = ( \Mult1~317\ & ( (!\ADCstb~input_o\) # ((\old_ADCstb~q\) # (\Mult0~20\)) ) ) # ( !\Mult1~317\ & ( (\ADCstb~input_o\ & (\Mult0~20\ & !\old_ADCstb~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datab => \ALT_INV_Mult0~20\,
	datac => \ALT_INV_old_ADCstb~q\,
	dataf => \ALT_INV_Mult1~317\,
	combout => \accum~29_combout\);

-- Location: LABCELL_X85_Y4_N12
\accum~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~28_combout\ = ( \Mult1~316\ & ( (!\ADCstb~input_o\) # ((\Mult0~19\) # (\old_ADCstb~q\)) ) ) # ( !\Mult1~316\ & ( (\ADCstb~input_o\ & (!\old_ADCstb~q\ & \Mult0~19\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~19\,
	dataf => \ALT_INV_Mult1~316\,
	combout => \accum~28_combout\);

-- Location: LABCELL_X85_Y4_N57
\accum~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~27_combout\ = ( \Mult1~315\ & ( ((!\ADCstb~input_o\) # (\Mult0~18\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~315\ & ( (!\old_ADCstb~q\ & (\Mult0~18\ & \ADCstb~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~18\,
	datad => \ALT_INV_ADCstb~input_o\,
	dataf => \ALT_INV_Mult1~315\,
	combout => \accum~27_combout\);

-- Location: LABCELL_X85_Y4_N48
\accum~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~26_combout\ = ( \Mult1~314\ & ( ((!\ADCstb~input_o\) # (\Mult0~17\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~314\ & ( (!\old_ADCstb~q\ & (\Mult0~17\ & \ADCstb~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~17\,
	datad => \ALT_INV_ADCstb~input_o\,
	dataf => \ALT_INV_Mult1~314\,
	combout => \accum~26_combout\);

-- Location: MLABCELL_X87_Y4_N6
\accum~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~25_combout\ = ( \Mult1~313\ & ( ((!\ADCstb~input_o\) # (\Mult0~16\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~313\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~16\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~16\,
	dataf => \ALT_INV_Mult1~313\,
	combout => \accum~25_combout\);

-- Location: MLABCELL_X87_Y4_N27
\accum~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~24_combout\ = (!\old_ADCstb~q\ & ((!\ADCstb~input_o\ & ((\Mult1~312\))) # (\ADCstb~input_o\ & (\Mult0~15\)))) # (\old_ADCstb~q\ & (((\Mult1~312\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~15\,
	datad => \ALT_INV_Mult1~312\,
	combout => \accum~24_combout\);

-- Location: LABCELL_X85_Y4_N39
\accum~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~23_combout\ = ( \Mult1~311\ & ( (!\ADCstb~input_o\) # ((\old_ADCstb~q\) # (\Mult0~14\)) ) ) # ( !\Mult1~311\ & ( (\ADCstb~input_o\ & (\Mult0~14\ & !\old_ADCstb~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~14\,
	datad => \ALT_INV_old_ADCstb~q\,
	dataf => \ALT_INV_Mult1~311\,
	combout => \accum~23_combout\);

-- Location: LABCELL_X88_Y4_N54
\accum~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~22_combout\ = ( \ADCstb~input_o\ & ( \Mult1~310\ & ( (\Mult0~13\) # (\old_ADCstb~q\) ) ) ) # ( !\ADCstb~input_o\ & ( \Mult1~310\ ) ) # ( \ADCstb~input_o\ & ( !\Mult1~310\ & ( (!\old_ADCstb~q\ & \Mult0~13\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011111111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_old_ADCstb~q\,
	datad => \ALT_INV_Mult0~13\,
	datae => \ALT_INV_ADCstb~input_o\,
	dataf => \ALT_INV_Mult1~310\,
	combout => \accum~22_combout\);

-- Location: MLABCELL_X87_Y4_N21
\accum~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~21_combout\ = ( \Mult1~309\ & ( ((!\ADCstb~input_o\) # (\Mult0~12\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~309\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~12\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_ADCstb~input_o\,
	datad => \ALT_INV_Mult0~12\,
	dataf => \ALT_INV_Mult1~309\,
	combout => \accum~21_combout\);

-- Location: LABCELL_X88_Y4_N12
\accum~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~20_combout\ = ( \Mult0~11\ & ( \Mult1~308\ ) ) # ( !\Mult0~11\ & ( \Mult1~308\ & ( (!\ADCstb~input_o\) # (\old_ADCstb~q\) ) ) ) # ( \Mult0~11\ & ( !\Mult1~308\ & ( (\ADCstb~input_o\ & !\old_ADCstb~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010101111101011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_old_ADCstb~q\,
	datae => \ALT_INV_Mult0~11\,
	dataf => \ALT_INV_Mult1~308\,
	combout => \accum~20_combout\);

-- Location: MLABCELL_X87_Y4_N45
\accum~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~19_combout\ = ( \Mult1~307\ & ( ((!\ADCstb~input_o\) # (\Mult0~10\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~307\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~10\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_Mult0~10\,
	dataf => \ALT_INV_Mult1~307\,
	combout => \accum~19_combout\);

-- Location: MLABCELL_X87_Y4_N3
\accum~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~18_combout\ = ( \Mult0~9\ & ( \Mult1~306\ ) ) # ( !\Mult0~9\ & ( \Mult1~306\ & ( (!\ADCstb~input_o\) # (\old_ADCstb~q\) ) ) ) # ( \Mult0~9\ & ( !\Mult1~306\ & ( (\ADCstb~input_o\ & !\old_ADCstb~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ADCstb~input_o\,
	datac => \ALT_INV_old_ADCstb~q\,
	datae => \ALT_INV_Mult0~9\,
	dataf => \ALT_INV_Mult1~306\,
	combout => \accum~18_combout\);

-- Location: LABCELL_X85_Y4_N33
\accum~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~17_combout\ = (!\ADCstb~input_o\ & (((\Mult1~mac_resulta\)))) # (\ADCstb~input_o\ & ((!\old_ADCstb~q\ & (\Mult0~8_resulta\)) # (\old_ADCstb~q\ & ((\Mult1~mac_resulta\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datab => \ALT_INV_old_ADCstb~q\,
	datac => \ALT_INV_Mult0~8_resulta\,
	datad => \ALT_INV_Mult1~mac_resulta\,
	combout => \accum~17_combout\);

-- Location: MLABCELL_X87_Y4_N36
\accum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \accum~0_combout\ = ( \Mult1~321\ & ( ((!\ADCstb~input_o\) # (\Mult0~24\)) # (\old_ADCstb~q\) ) ) # ( !\Mult1~321\ & ( (!\old_ADCstb~q\ & (\ADCstb~input_o\ & \Mult0~24\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_old_ADCstb~q\,
	datab => \ALT_INV_ADCstb~input_o\,
	datad => \ALT_INV_Mult0~24\,
	dataf => \ALT_INV_Mult1~321\,
	combout => \accum~0_combout\);

-- Location: FF_X87_Y4_N37
\accum[16]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~0_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[16]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y3_N30
\DACDAT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DACDAT[1]~0_combout\ = ( \old_ADCstb~q\ & ( \LessThan0~5_combout\ & ( (!\RST_N~input_o\) # ((cnt(27) & cnt(31))) ) ) ) # ( !\old_ADCstb~q\ & ( \LessThan0~5_combout\ & ( (!\RST_N~input_o\) # ((!\ADCstb~input_o\ & (cnt(27) & cnt(31)))) ) ) ) # ( 
-- \old_ADCstb~q\ & ( !\LessThan0~5_combout\ & ( (!\RST_N~input_o\) # (cnt(31)) ) ) ) # ( !\old_ADCstb~q\ & ( !\LessThan0~5_combout\ & ( (!\RST_N~input_o\) # ((!\ADCstb~input_o\ & cnt(31))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001111111111001100110011101100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADCstb~input_o\,
	datab => \ALT_INV_RST_N~input_o\,
	datac => ALT_INV_cnt(27),
	datad => ALT_INV_cnt(31),
	datae => \ALT_INV_old_ADCstb~q\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \DACDAT[1]~0_combout\);

-- Location: FF_X87_Y3_N1
\DACDAT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[16]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[0]~reg0_q\);

-- Location: FF_X85_Y4_N4
\accum[17]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~2_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[17]~_Duplicate_1_q\);

-- Location: LABCELL_X80_Y4_N36
\DACDAT[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DACDAT[1]~reg0feeder_combout\ = ( \accum[17]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accum[17]~_Duplicate_1_q\,
	combout => \DACDAT[1]~reg0feeder_combout\);

-- Location: FF_X80_Y4_N37
\DACDAT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DACDAT[1]~reg0feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[1]~reg0_q\);

-- Location: FF_X87_Y4_N40
\accum[18]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~3_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[18]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y3_N18
\DACDAT[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DACDAT[2]~reg0feeder_combout\ = ( \accum[18]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accum[18]~_Duplicate_1_q\,
	combout => \DACDAT[2]~reg0feeder_combout\);

-- Location: FF_X87_Y3_N19
\DACDAT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DACDAT[2]~reg0feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[2]~reg0_q\);

-- Location: FF_X87_Y4_N20
\accum[19]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~4_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[19]~_Duplicate_1_q\);

-- Location: FF_X87_Y4_N25
\DACDAT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[19]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[3]~reg0_q\);

-- Location: FF_X87_Y4_N34
\accum[20]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~5_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[20]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y3_N24
\DACDAT[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DACDAT[4]~reg0feeder_combout\ = ( \accum[20]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accum[20]~_Duplicate_1_q\,
	combout => \DACDAT[4]~reg0feeder_combout\);

-- Location: FF_X87_Y3_N26
\DACDAT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DACDAT[4]~reg0feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[4]~reg0_q\);

-- Location: FF_X87_Y4_N31
\accum[21]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~6_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[21]~_Duplicate_1_q\);

-- Location: FF_X88_Y4_N37
\DACDAT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[21]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[5]~reg0_q\);

-- Location: FF_X87_Y4_N13
\accum[22]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~7_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[22]~_Duplicate_1_q\);

-- Location: FF_X87_Y4_N1
\DACDAT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[22]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[6]~reg0_q\);

-- Location: FF_X85_Y4_N52
\accum[23]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~8_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[23]~_Duplicate_1_q\);

-- Location: FF_X83_Y2_N49
\DACDAT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[23]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[7]~reg0_q\);

-- Location: FF_X87_Y4_N53
\accum[24]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum~9_combout\,
	sload => VCC,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[24]~_Duplicate_1_q\);

-- Location: FF_X87_Y2_N26
\DACDAT[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[24]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[8]~reg0_q\);

-- Location: FF_X87_Y4_N7
\accum[25]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum~10_combout\,
	sload => VCC,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[25]~_Duplicate_1_q\);

-- Location: FF_X88_Y4_N17
\DACDAT[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[25]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[9]~reg0_q\);

-- Location: FF_X87_Y4_N44
\accum[26]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~11_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[26]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y5_N12
\DACDAT[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DACDAT[10]~reg0feeder_combout\ = ( \accum[26]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accum[26]~_Duplicate_1_q\,
	combout => \DACDAT[10]~reg0feeder_combout\);

-- Location: FF_X84_Y5_N13
\DACDAT[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DACDAT[10]~reg0feeder_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[10]~reg0_q\);

-- Location: FF_X87_Y4_N11
\accum[27]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~12_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[27]~_Duplicate_1_q\);

-- Location: FF_X88_Y4_N58
\DACDAT[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[27]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[11]~reg0_q\);

-- Location: FF_X87_Y4_N55
\accum[28]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~13_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[28]~_Duplicate_1_q\);

-- Location: FF_X88_Y4_N56
\DACDAT[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[28]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[12]~reg0_q\);

-- Location: FF_X87_Y4_N16
\accum[29]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~14_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[29]~_Duplicate_1_q\);

-- Location: FF_X88_Y4_N40
\DACDAT[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[29]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[13]~reg0_q\);

-- Location: FF_X85_Y4_N16
\accum[30]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \accum~15_combout\,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[30]~_Duplicate_1_q\);

-- Location: FF_X88_Y4_N10
\DACDAT[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[30]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[14]~reg0_q\);

-- Location: FF_X87_Y4_N59
\accum[31]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum~16_combout\,
	sload => VCC,
	ena => \accum[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accum[31]~_Duplicate_1_q\);

-- Location: FF_X88_Y4_N7
\DACDAT[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \accum[31]~_Duplicate_1_q\,
	sclr => \ALT_INV_RST_N~input_o\,
	sload => VCC,
	ena => \DACDAT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACDAT[15]~reg0_q\);

-- Location: LABCELL_X80_Y2_N24
\ADCrdy~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADCrdy~reg0feeder_combout\ = ( \RST_N~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_RST_N~input_o\,
	combout => \ADCrdy~reg0feeder_combout\);

-- Location: FF_X80_Y2_N25
\ADCrdy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ADCrdy~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADCrdy~reg0_q\);

-- Location: LABCELL_X81_Y4_N0
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\Add0~125_sumout\ & ( !\Add0~121_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~121_sumout\,
	datae => \ALT_INV_Add0~125_sumout\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X80_Y4_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\Add0~113_sumout\ & ( !\Add0~101_sumout\ & ( (\Equal0~3_combout\ & (!\Add0~117_sumout\ & (!\Add0~109_sumout\ & !\Add0~105_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_Add0~117_sumout\,
	datac => \ALT_INV_Add0~109_sumout\,
	datad => \ALT_INV_Add0~105_sumout\,
	datae => \ALT_INV_Add0~113_sumout\,
	dataf => \ALT_INV_Add0~101_sumout\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X83_Y3_N18
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\Add0~97_sumout\ & ( !\Add0~85_sumout\ & ( (!\Add0~93_sumout\ & (!\Add0~89_sumout\ & (!\Add0~81_sumout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~93_sumout\,
	datab => \ALT_INV_Add0~89_sumout\,
	datac => \ALT_INV_Add0~81_sumout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_Add0~97_sumout\,
	dataf => \ALT_INV_Add0~85_sumout\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X82_Y4_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Add0~73_sumout\ & ( !\Add0~61_sumout\ & ( (!\Add0~69_sumout\ & (!\Add0~65_sumout\ & (!\Add0~57_sumout\ & !\Add0~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~69_sumout\,
	datab => \ALT_INV_Add0~65_sumout\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => \ALT_INV_Add0~77_sumout\,
	datae => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X81_Y4_N6
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Add0~41_sumout\ & ( !\Add0~49_sumout\ & ( (!\Add0~53_sumout\ & (!\Add0~37_sumout\ & (!\Add0~45_sumout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~53_sumout\,
	datab => \ALT_INV_Add0~37_sumout\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Add0~41_sumout\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X84_Y3_N36
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\Add0~17_sumout\ & ( !\Add0~21_sumout\ & ( (\Equal0~1_combout\ & (!\Add0~33_sumout\ & (!\Add0~25_sumout\ & !\Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_Add0~29_sumout\,
	datae => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X84_Y3_N48
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~2_combout\ & ( !\Add0~13_sumout\ & ( (!\Add0~5_sumout\ & (!\Add0~9_sumout\ & (!\Add0~1_sumout\ & \Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \Equal0~6_combout\);

-- Location: FF_X84_Y3_N49
\DACstb~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Equal0~6_combout\,
	sclr => \DACstb~0_combout\,
	ena => \DACstb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DACstb~reg0_q\);

-- Location: IOIBUF_X22_Y81_N52
\DACrdy~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACrdy,
	o => \DACrdy~input_o\);

-- Location: LABCELL_X53_Y3_N0
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


