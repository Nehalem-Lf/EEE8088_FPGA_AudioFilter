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

-- DATE "04/29/2020 17:29:47"

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
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	codec_init IS
    PORT (
	CLOCK_50 : IN std_logic;
	RES_N : IN std_logic;
	SCLK : OUT std_logic;
	SDIN : OUT std_logic;
	bcnt1 : OUT STD.STANDARD.integer;
	wcnt1 : OUT STD.STANDARD.integer;
	fdiv1 : OUT STD.STANDARD.integer
	);
END codec_init;

-- Design Ports Information
-- SCLK	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDIN	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[5]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[6]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[9]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[11]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[12]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[13]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[14]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[15]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[16]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[17]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[18]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[19]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[20]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[21]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[22]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[23]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[24]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[25]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[26]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[27]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[28]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[29]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[30]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcnt1[31]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[0]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[1]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[2]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[5]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[6]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[7]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[8]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[9]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[10]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[12]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[15]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[16]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[17]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[18]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[19]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[20]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[21]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[22]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[23]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[24]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[25]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[26]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[27]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[28]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[29]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[30]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wcnt1[31]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[2]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[4]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[6]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[7]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[8]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[9]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[10]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[11]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[12]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[14]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[16]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[17]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[18]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[19]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[20]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[21]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[22]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[23]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[24]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[25]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[26]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[27]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[28]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[29]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[30]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fdiv1[31]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RES_N	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF codec_init IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_RES_N : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_SDIN : std_logic;
SIGNAL ww_bcnt1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wcnt1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_fdiv1 : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RES_N~input_o\ : std_logic;
SIGNAL \wcnt~0_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \f_div[0]~0_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \f_div[1]~1_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \f_div[3]~3_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \f_div[4]~4_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \f_div[5]~5_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \f_div[6]~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \wcnt[0]~1_combout\ : std_logic;
SIGNAL \wcnt~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \wcnt~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \bcnt[0]~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \bcnt[1]~1_combout\ : std_logic;
SIGNAL \bcnt[2]~4_combout\ : std_logic;
SIGNAL \bcnt[2]~8_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bcnt[3]~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \bcnt[4]~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \f_div[7]~7_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \f_div[8]~8_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \f_div[2]~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \SDIN~2_combout\ : std_logic;
SIGNAL \SDIN~3_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \sht_r~0_combout\ : std_logic;
SIGNAL \sht_r~84_combout\ : std_logic;
SIGNAL \sht_r~1_combout\ : std_logic;
SIGNAL \sht_r[250]~2_combout\ : std_logic;
SIGNAL \sht_r~83_combout\ : std_logic;
SIGNAL \sht_r[10]~feeder_combout\ : std_logic;
SIGNAL \sht_r~82_combout\ : std_logic;
SIGNAL \sht_r~81_combout\ : std_logic;
SIGNAL \sht_r~80_combout\ : std_logic;
SIGNAL \sht_r~79_combout\ : std_logic;
SIGNAL \sht_r[25]~feeder_combout\ : std_logic;
SIGNAL \sht_r~78_combout\ : std_logic;
SIGNAL \sht_r[31]~feeder_combout\ : std_logic;
SIGNAL \sht_r[32]~feeder_combout\ : std_logic;
SIGNAL \sht_r[34]~feeder_combout\ : std_logic;
SIGNAL \sht_r~77_combout\ : std_logic;
SIGNAL \sht_r[37]~feeder_combout\ : std_logic;
SIGNAL \sht_r[40]~feeder_combout\ : std_logic;
SIGNAL \sht_r~76_combout\ : std_logic;
SIGNAL \sht_r~75_combout\ : std_logic;
SIGNAL \sht_r~74_combout\ : std_logic;
SIGNAL \sht_r~73_combout\ : std_logic;
SIGNAL \sht_r~72_combout\ : std_logic;
SIGNAL \sht_r[51]~feeder_combout\ : std_logic;
SIGNAL \sht_r~71_combout\ : std_logic;
SIGNAL \sht_r[55]~feeder_combout\ : std_logic;
SIGNAL \sht_r~70_combout\ : std_logic;
SIGNAL \sht_r~69_combout\ : std_logic;
SIGNAL \sht_r~68_combout\ : std_logic;
SIGNAL \sht_r~67_combout\ : std_logic;
SIGNAL \sht_r~66_combout\ : std_logic;
SIGNAL \sht_r~65_combout\ : std_logic;
SIGNAL \sht_r~64_combout\ : std_logic;
SIGNAL \sht_r[74]~feeder_combout\ : std_logic;
SIGNAL \sht_r~63_combout\ : std_logic;
SIGNAL \sht_r~62_combout\ : std_logic;
SIGNAL \sht_r~61_combout\ : std_logic;
SIGNAL \sht_r~60_combout\ : std_logic;
SIGNAL \sht_r~59_combout\ : std_logic;
SIGNAL \sht_r~58_combout\ : std_logic;
SIGNAL \sht_r~57_combout\ : std_logic;
SIGNAL \sht_r~56_combout\ : std_logic;
SIGNAL \sht_r[101]~feeder_combout\ : std_logic;
SIGNAL \sht_r~55_combout\ : std_logic;
SIGNAL \sht_r~54_combout\ : std_logic;
SIGNAL \sht_r~53_combout\ : std_logic;
SIGNAL \sht_r~52_combout\ : std_logic;
SIGNAL \sht_r~51_combout\ : std_logic;
SIGNAL \sht_r~50_combout\ : std_logic;
SIGNAL \sht_r~49_combout\ : std_logic;
SIGNAL \sht_r~48_combout\ : std_logic;
SIGNAL \sht_r~47_combout\ : std_logic;
SIGNAL \sht_r~46_combout\ : std_logic;
SIGNAL \sht_r[133]~feeder_combout\ : std_logic;
SIGNAL \sht_r[135]~feeder_combout\ : std_logic;
SIGNAL \sht_r~45_combout\ : std_logic;
SIGNAL \sht_r~44_combout\ : std_logic;
SIGNAL \sht_r~43_combout\ : std_logic;
SIGNAL \sht_r~42_combout\ : std_logic;
SIGNAL \sht_r~41_combout\ : std_logic;
SIGNAL \sht_r[150]~feeder_combout\ : std_logic;
SIGNAL \sht_r~40_combout\ : std_logic;
SIGNAL \sht_r~39_combout\ : std_logic;
SIGNAL \sht_r~38_combout\ : std_logic;
SIGNAL \sht_r~37_combout\ : std_logic;
SIGNAL \sht_r~36_combout\ : std_logic;
SIGNAL \sht_r[166]~feeder_combout\ : std_logic;
SIGNAL \sht_r~35_combout\ : std_logic;
SIGNAL \sht_r[169]~feeder_combout\ : std_logic;
SIGNAL \sht_r~34_combout\ : std_logic;
SIGNAL \sht_r~33_combout\ : std_logic;
SIGNAL \sht_r~32_combout\ : std_logic;
SIGNAL \sht_r~31_combout\ : std_logic;
SIGNAL \sht_r[175]~feeder_combout\ : std_logic;
SIGNAL \sht_r[176]~feeder_combout\ : std_logic;
SIGNAL \sht_r[177]~feeder_combout\ : std_logic;
SIGNAL \sht_r~30_combout\ : std_logic;
SIGNAL \sht_r~29_combout\ : std_logic;
SIGNAL \sht_r~28_combout\ : std_logic;
SIGNAL \sht_r~27_combout\ : std_logic;
SIGNAL \sht_r~26_combout\ : std_logic;
SIGNAL \sht_r~25_combout\ : std_logic;
SIGNAL \sht_r~24_combout\ : std_logic;
SIGNAL \sht_r[195]~feeder_combout\ : std_logic;
SIGNAL \sht_r~23_combout\ : std_logic;
SIGNAL \sht_r~22_combout\ : std_logic;
SIGNAL \sht_r~21_combout\ : std_logic;
SIGNAL \sht_r~20_combout\ : std_logic;
SIGNAL \sht_r~19_combout\ : std_logic;
SIGNAL \sht_r~18_combout\ : std_logic;
SIGNAL \sht_r~17_combout\ : std_logic;
SIGNAL \sht_r~16_combout\ : std_logic;
SIGNAL \sht_r~15_combout\ : std_logic;
SIGNAL \sht_r~14_combout\ : std_logic;
SIGNAL \sht_r~13_combout\ : std_logic;
SIGNAL \sht_r[221]~feeder_combout\ : std_logic;
SIGNAL \sht_r[222]~feeder_combout\ : std_logic;
SIGNAL \sht_r[224]~feeder_combout\ : std_logic;
SIGNAL \sht_r[226]~feeder_combout\ : std_logic;
SIGNAL \sht_r[229]~feeder_combout\ : std_logic;
SIGNAL \sht_r[230]~feeder_combout\ : std_logic;
SIGNAL \sht_r[231]~feeder_combout\ : std_logic;
SIGNAL \sht_r[232]~feeder_combout\ : std_logic;
SIGNAL \sht_r~12_combout\ : std_logic;
SIGNAL \sht_r~11_combout\ : std_logic;
SIGNAL \sht_r~10_combout\ : std_logic;
SIGNAL \sht_r[238]~feeder_combout\ : std_logic;
SIGNAL \sht_r[243]~feeder_combout\ : std_logic;
SIGNAL \sht_r[246]~feeder_combout\ : std_logic;
SIGNAL \sht_r[247]~feeder_combout\ : std_logic;
SIGNAL \sht_r~9_combout\ : std_logic;
SIGNAL \sht_r~8_combout\ : std_logic;
SIGNAL \sht_r~7_combout\ : std_logic;
SIGNAL \sht_r~6_combout\ : std_logic;
SIGNAL \sht_r[253]~feeder_combout\ : std_logic;
SIGNAL \sht_r[254]~feeder_combout\ : std_logic;
SIGNAL \sht_r~5_combout\ : std_logic;
SIGNAL \sht_r~4_combout\ : std_logic;
SIGNAL \sht_r~3_combout\ : std_logic;
SIGNAL \SDIN~4_combout\ : std_logic;
SIGNAL \SDIN~1_combout\ : std_logic;
SIGNAL \SDIN~5_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \SDIN~6_combout\ : std_logic;
SIGNAL \SDIN~7_combout\ : std_logic;
SIGNAL \SDIN~reg0_q\ : std_logic;
SIGNAL \SDIN~8_combout\ : std_logic;
SIGNAL \SDIN~en_q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \SCLK~0_combout\ : std_logic;
SIGNAL \SCLK~reg0_q\ : std_logic;
SIGNAL wcnt : std_logic_vector(3 DOWNTO 0);
SIGNAL sht_r : std_logic_vector(263 DOWNTO 0);
SIGNAL bcnt : std_logic_vector(4 DOWNTO 0);
SIGNAL f_div : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_sht_r : std_logic_vector(263 DOWNTO 1);
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL ALT_INV_wcnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RES_N~input_o\ : std_logic;
SIGNAL \ALT_INV_sht_r~1_combout\ : std_logic;
SIGNAL \ALT_INV_sht_r~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_SDIN~6_combout\ : std_logic;
SIGNAL \ALT_INV_SDIN~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ALT_INV_SDIN~3_combout\ : std_logic;
SIGNAL \ALT_INV_SDIN~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_SDIN~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL ALT_INV_f_div : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_bcnt : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_SCLK~reg0_q\ : std_logic;
SIGNAL \ALT_INV_bcnt[2]~4_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_RES_N <= RES_N;
SCLK <= ww_SCLK;
SDIN <= ww_SDIN;
bcnt1 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_bcnt1));
wcnt1 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_wcnt1));
fdiv1 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_fdiv1));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_sht_r(185) <= NOT sht_r(185);
ALT_INV_sht_r(187) <= NOT sht_r(187);
ALT_INV_sht_r(191) <= NOT sht_r(191);
ALT_INV_sht_r(195) <= NOT sht_r(195);
ALT_INV_sht_r(200) <= NOT sht_r(200);
ALT_INV_sht_r(209) <= NOT sht_r(209);
ALT_INV_sht_r(211) <= NOT sht_r(211);
ALT_INV_sht_r(215) <= NOT sht_r(215);
ALT_INV_sht_r(221) <= NOT sht_r(221);
ALT_INV_sht_r(223) <= NOT sht_r(223);
ALT_INV_sht_r(225) <= NOT sht_r(225);
ALT_INV_sht_r(228) <= NOT sht_r(228);
ALT_INV_sht_r(229) <= NOT sht_r(229);
ALT_INV_sht_r(230) <= NOT sht_r(230);
ALT_INV_sht_r(231) <= NOT sht_r(231);
ALT_INV_sht_r(233) <= NOT sht_r(233);
ALT_INV_sht_r(235) <= NOT sht_r(235);
ALT_INV_sht_r(242) <= NOT sht_r(242);
ALT_INV_sht_r(245) <= NOT sht_r(245);
ALT_INV_sht_r(246) <= NOT sht_r(246);
ALT_INV_sht_r(248) <= NOT sht_r(248);
ALT_INV_sht_r(253) <= NOT sht_r(253);
ALT_INV_sht_r(257) <= NOT sht_r(257);
ALT_INV_sht_r(259) <= NOT sht_r(259);
ALT_INV_sht_r(263) <= NOT sht_r(263);
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
ALT_INV_wcnt(2) <= NOT wcnt(2);
\ALT_INV_RES_N~input_o\ <= NOT \RES_N~input_o\;
ALT_INV_sht_r(9) <= NOT sht_r(9);
ALT_INV_sht_r(20) <= NOT sht_r(20);
ALT_INV_sht_r(36) <= NOT sht_r(36);
ALT_INV_sht_r(44) <= NOT sht_r(44);
ALT_INV_sht_r(48) <= NOT sht_r(48);
ALT_INV_sht_r(54) <= NOT sht_r(54);
ALT_INV_sht_r(57) <= NOT sht_r(57);
ALT_INV_sht_r(58) <= NOT sht_r(58);
ALT_INV_sht_r(68) <= NOT sht_r(68);
ALT_INV_sht_r(73) <= NOT sht_r(73);
ALT_INV_sht_r(77) <= NOT sht_r(77);
ALT_INV_sht_r(82) <= NOT sht_r(82);
ALT_INV_sht_r(92) <= NOT sht_r(92);
ALT_INV_sht_r(116) <= NOT sht_r(116);
ALT_INV_sht_r(126) <= NOT sht_r(126);
ALT_INV_sht_r(140) <= NOT sht_r(140);
ALT_INV_sht_r(148) <= NOT sht_r(148);
ALT_INV_sht_r(149) <= NOT sht_r(149);
ALT_INV_sht_r(153) <= NOT sht_r(153);
ALT_INV_sht_r(164) <= NOT sht_r(164);
ALT_INV_sht_r(165) <= NOT sht_r(165);
ALT_INV_sht_r(168) <= NOT sht_r(168);
ALT_INV_sht_r(171) <= NOT sht_r(171);
ALT_INV_sht_r(172) <= NOT sht_r(172);
ALT_INV_sht_r(173) <= NOT sht_r(173);
ALT_INV_sht_r(174) <= NOT sht_r(174);
ALT_INV_sht_r(188) <= NOT sht_r(188);
ALT_INV_sht_r(192) <= NOT sht_r(192);
ALT_INV_sht_r(193) <= NOT sht_r(193);
ALT_INV_sht_r(194) <= NOT sht_r(194);
ALT_INV_sht_r(196) <= NOT sht_r(196);
ALT_INV_sht_r(212) <= NOT sht_r(212);
ALT_INV_sht_r(216) <= NOT sht_r(216);
ALT_INV_sht_r(217) <= NOT sht_r(217);
ALT_INV_sht_r(218) <= NOT sht_r(218);
ALT_INV_sht_r(219) <= NOT sht_r(219);
ALT_INV_sht_r(220) <= NOT sht_r(220);
ALT_INV_sht_r(236) <= NOT sht_r(236);
ALT_INV_sht_r(237) <= NOT sht_r(237);
ALT_INV_sht_r(249) <= NOT sht_r(249);
ALT_INV_sht_r(250) <= NOT sht_r(250);
ALT_INV_sht_r(251) <= NOT sht_r(251);
ALT_INV_sht_r(252) <= NOT sht_r(252);
ALT_INV_sht_r(260) <= NOT sht_r(260);
\ALT_INV_sht_r~1_combout\ <= NOT \sht_r~1_combout\;
\ALT_INV_sht_r~0_combout\ <= NOT \sht_r~0_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_SDIN~6_combout\ <= NOT \SDIN~6_combout\;
\ALT_INV_SDIN~4_combout\ <= NOT \SDIN~4_combout\;
\ALT_INV_Equal9~0_combout\ <= NOT \Equal9~0_combout\;
\ALT_INV_Equal10~0_combout\ <= NOT \Equal10~0_combout\;
\ALT_INV_SDIN~3_combout\ <= NOT \SDIN~3_combout\;
\ALT_INV_SDIN~2_combout\ <= NOT \SDIN~2_combout\;
\ALT_INV_Equal5~0_combout\ <= NOT \Equal5~0_combout\;
\ALT_INV_SDIN~1_combout\ <= NOT \SDIN~1_combout\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal4~2_combout\ <= NOT \Equal4~2_combout\;
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
ALT_INV_f_div(8) <= NOT f_div(8);
ALT_INV_f_div(7) <= NOT f_div(7);
ALT_INV_f_div(6) <= NOT f_div(6);
ALT_INV_f_div(5) <= NOT f_div(5);
ALT_INV_f_div(4) <= NOT f_div(4);
ALT_INV_f_div(3) <= NOT f_div(3);
ALT_INV_f_div(2) <= NOT f_div(2);
ALT_INV_f_div(1) <= NOT f_div(1);
ALT_INV_f_div(0) <= NOT f_div(0);
ALT_INV_wcnt(3) <= NOT wcnt(3);
ALT_INV_wcnt(1) <= NOT wcnt(1);
ALT_INV_wcnt(0) <= NOT wcnt(0);
ALT_INV_bcnt(4) <= NOT bcnt(4);
ALT_INV_bcnt(3) <= NOT bcnt(3);
ALT_INV_bcnt(2) <= NOT bcnt(2);
ALT_INV_bcnt(1) <= NOT bcnt(1);
ALT_INV_bcnt(0) <= NOT bcnt(0);
\ALT_INV_SCLK~reg0_q\ <= NOT \SCLK~reg0_q\;
\ALT_INV_bcnt[2]~4_combout\ <= NOT \bcnt[2]~4_combout\;
ALT_INV_sht_r(1) <= NOT sht_r(1);
ALT_INV_sht_r(8) <= NOT sht_r(8);
ALT_INV_sht_r(11) <= NOT sht_r(11);
ALT_INV_sht_r(17) <= NOT sht_r(17);
ALT_INV_sht_r(19) <= NOT sht_r(19);
ALT_INV_sht_r(24) <= NOT sht_r(24);
ALT_INV_sht_r(28) <= NOT sht_r(28);
ALT_INV_sht_r(30) <= NOT sht_r(30);
ALT_INV_sht_r(31) <= NOT sht_r(31);
ALT_INV_sht_r(33) <= NOT sht_r(33);
ALT_INV_sht_r(35) <= NOT sht_r(35);
ALT_INV_sht_r(39) <= NOT sht_r(39);
ALT_INV_sht_r(41) <= NOT sht_r(41);
ALT_INV_sht_r(43) <= NOT sht_r(43);
ALT_INV_sht_r(47) <= NOT sht_r(47);
ALT_INV_sht_r(50) <= NOT sht_r(50);
ALT_INV_sht_r(53) <= NOT sht_r(53);
ALT_INV_sht_r(56) <= NOT sht_r(56);
ALT_INV_sht_r(65) <= NOT sht_r(65);
ALT_INV_sht_r(67) <= NOT sht_r(67);
ALT_INV_sht_r(72) <= NOT sht_r(72);
ALT_INV_sht_r(76) <= NOT sht_r(76);
ALT_INV_sht_r(81) <= NOT sht_r(81);
ALT_INV_sht_r(89) <= NOT sht_r(89);
ALT_INV_sht_r(91) <= NOT sht_r(91);
ALT_INV_sht_r(95) <= NOT sht_r(95);
ALT_INV_sht_r(100) <= NOT sht_r(100);
ALT_INV_sht_r(104) <= NOT sht_r(104);
ALT_INV_sht_r(106) <= NOT sht_r(106);
ALT_INV_sht_r(113) <= NOT sht_r(113);
ALT_INV_sht_r(115) <= NOT sht_r(115);
ALT_INV_sht_r(120) <= NOT sht_r(120);
ALT_INV_sht_r(123) <= NOT sht_r(123);
ALT_INV_sht_r(125) <= NOT sht_r(125);
ALT_INV_sht_r(130) <= NOT sht_r(130);
ALT_INV_sht_r(132) <= NOT sht_r(132);
ALT_INV_sht_r(134) <= NOT sht_r(134);
ALT_INV_sht_r(137) <= NOT sht_r(137);
ALT_INV_sht_r(139) <= NOT sht_r(139);
ALT_INV_sht_r(147) <= NOT sht_r(147);
ALT_INV_sht_r(152) <= NOT sht_r(152);
ALT_INV_sht_r(161) <= NOT sht_r(161);
ALT_INV_sht_r(163) <= NOT sht_r(163);
ALT_INV_sht_r(167) <= NOT sht_r(167);
ALT_INV_sht_r(170) <= NOT sht_r(170);
ALT_INV_sht_r(175) <= NOT sht_r(175);
ALT_INV_sht_r(176) <= NOT sht_r(176);
ALT_INV_sht_r(177) <= NOT sht_r(177);

-- Location: IOOBUF_X89_Y8_N5
\SDIN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SDIN~reg0_q\,
	oe => \SDIN~en_q\,
	devoe => ww_devoe,
	o => ww_SDIN);

-- Location: IOOBUF_X89_Y6_N39
\SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SCLK~reg0_q\,
	devoe => ww_devoe,
	o => ww_SCLK);

-- Location: IOOBUF_X89_Y6_N5
\bcnt1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bcnt(0),
	devoe => ww_devoe,
	o => ww_bcnt1(0));

-- Location: IOOBUF_X89_Y9_N5
\bcnt1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bcnt(1),
	devoe => ww_devoe,
	o => ww_bcnt1(1));

-- Location: IOOBUF_X89_Y8_N22
\bcnt1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_bcnt(2),
	devoe => ww_devoe,
	o => ww_bcnt1(2));

-- Location: IOOBUF_X89_Y8_N56
\bcnt1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_bcnt(3),
	devoe => ww_devoe,
	o => ww_bcnt1(3));

-- Location: IOOBUF_X89_Y4_N45
\bcnt1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_bcnt(4),
	devoe => ww_devoe,
	o => ww_bcnt1(4));

-- Location: IOOBUF_X74_Y0_N76
\bcnt1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(5));

-- Location: IOOBUF_X8_Y0_N2
\bcnt1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(6));

-- Location: IOOBUF_X84_Y0_N2
\bcnt1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(7));

-- Location: IOOBUF_X30_Y81_N2
\bcnt1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(8));

-- Location: IOOBUF_X40_Y0_N2
\bcnt1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(9));

-- Location: IOOBUF_X22_Y81_N19
\bcnt1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(10));

-- Location: IOOBUF_X14_Y0_N53
\bcnt1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(11));

-- Location: IOOBUF_X16_Y0_N19
\bcnt1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(12));

-- Location: IOOBUF_X30_Y81_N53
\bcnt1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(13));

-- Location: IOOBUF_X24_Y0_N19
\bcnt1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(14));

-- Location: IOOBUF_X4_Y0_N36
\bcnt1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(15));

-- Location: IOOBUF_X22_Y0_N53
\bcnt1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(16));

-- Location: IOOBUF_X72_Y0_N53
\bcnt1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(17));

-- Location: IOOBUF_X88_Y0_N37
\bcnt1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(18));

-- Location: IOOBUF_X89_Y13_N39
\bcnt1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(19));

-- Location: IOOBUF_X6_Y0_N53
\bcnt1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(20));

-- Location: IOOBUF_X22_Y0_N36
\bcnt1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(21));

-- Location: IOOBUF_X76_Y0_N19
\bcnt1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(22));

-- Location: IOOBUF_X2_Y81_N93
\bcnt1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(23));

-- Location: IOOBUF_X54_Y0_N36
\bcnt1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(24));

-- Location: IOOBUF_X14_Y0_N19
\bcnt1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(25));

-- Location: IOOBUF_X68_Y0_N36
\bcnt1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(26));

-- Location: IOOBUF_X89_Y20_N62
\bcnt1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(27));

-- Location: IOOBUF_X62_Y0_N53
\bcnt1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(28));

-- Location: IOOBUF_X32_Y0_N53
\bcnt1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(29));

-- Location: IOOBUF_X54_Y0_N53
\bcnt1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(30));

-- Location: IOOBUF_X28_Y81_N19
\bcnt1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_bcnt1(31));

-- Location: IOOBUF_X82_Y0_N76
\wcnt1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wcnt(0),
	devoe => ww_devoe,
	o => ww_wcnt1(0));

-- Location: IOOBUF_X80_Y0_N36
\wcnt1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_wcnt(1),
	devoe => ww_devoe,
	o => ww_wcnt1(1));

-- Location: IOOBUF_X80_Y0_N53
\wcnt1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wcnt(2),
	devoe => ww_devoe,
	o => ww_wcnt1(2));

-- Location: IOOBUF_X80_Y0_N2
\wcnt1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_wcnt(3),
	devoe => ww_devoe,
	o => ww_wcnt1(3));

-- Location: IOOBUF_X32_Y81_N19
\wcnt1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(4));

-- Location: IOOBUF_X89_Y21_N56
\wcnt1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(5));

-- Location: IOOBUF_X8_Y81_N53
\wcnt1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(6));

-- Location: IOOBUF_X78_Y0_N2
\wcnt1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(7));

-- Location: IOOBUF_X68_Y0_N19
\wcnt1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(8));

-- Location: IOOBUF_X88_Y0_N54
\wcnt1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(9));

-- Location: IOOBUF_X24_Y0_N36
\wcnt1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(10));

-- Location: IOOBUF_X68_Y0_N2
\wcnt1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(11));

-- Location: IOOBUF_X52_Y0_N19
\wcnt1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(12));

-- Location: IOOBUF_X36_Y81_N53
\wcnt1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(13));

-- Location: IOOBUF_X34_Y81_N76
\wcnt1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(14));

-- Location: IOOBUF_X89_Y4_N62
\wcnt1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(15));

-- Location: IOOBUF_X16_Y0_N2
\wcnt1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(16));

-- Location: IOOBUF_X16_Y0_N53
\wcnt1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(17));

-- Location: IOOBUF_X14_Y81_N53
\wcnt1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(18));

-- Location: IOOBUF_X16_Y0_N36
\wcnt1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(19));

-- Location: IOOBUF_X62_Y0_N36
\wcnt1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(20));

-- Location: IOOBUF_X34_Y81_N42
\wcnt1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(21));

-- Location: IOOBUF_X40_Y81_N2
\wcnt1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(22));

-- Location: IOOBUF_X22_Y81_N36
\wcnt1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(23));

-- Location: IOOBUF_X72_Y0_N36
\wcnt1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(24));

-- Location: IOOBUF_X12_Y0_N36
\wcnt1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(25));

-- Location: IOOBUF_X62_Y0_N19
\wcnt1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(26));

-- Location: IOOBUF_X64_Y0_N2
\wcnt1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(27));

-- Location: IOOBUF_X4_Y0_N19
\wcnt1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(28));

-- Location: IOOBUF_X34_Y0_N93
\wcnt1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(29));

-- Location: IOOBUF_X86_Y0_N19
\wcnt1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(30));

-- Location: IOOBUF_X89_Y11_N79
\wcnt1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_wcnt1(31));

-- Location: IOOBUF_X89_Y9_N22
\fdiv1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_f_div(0),
	devoe => ww_devoe,
	o => ww_fdiv1(0));

-- Location: IOOBUF_X89_Y11_N62
\fdiv1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_f_div(1),
	devoe => ww_devoe,
	o => ww_fdiv1(1));

-- Location: IOOBUF_X89_Y11_N45
\fdiv1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => f_div(2),
	devoe => ww_devoe,
	o => ww_fdiv1(2));

-- Location: IOOBUF_X89_Y6_N22
\fdiv1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => f_div(3),
	devoe => ww_devoe,
	o => ww_fdiv1(3));

-- Location: IOOBUF_X89_Y4_N96
\fdiv1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_f_div(4),
	devoe => ww_devoe,
	o => ww_fdiv1(4));

-- Location: IOOBUF_X89_Y8_N39
\fdiv1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_f_div(5),
	devoe => ww_devoe,
	o => ww_fdiv1(5));

-- Location: IOOBUF_X89_Y6_N56
\fdiv1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_f_div(6),
	devoe => ww_devoe,
	o => ww_fdiv1(6));

-- Location: IOOBUF_X89_Y11_N96
\fdiv1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_f_div(7),
	devoe => ww_devoe,
	o => ww_fdiv1(7));

-- Location: IOOBUF_X89_Y9_N39
\fdiv1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_f_div(8),
	devoe => ww_devoe,
	o => ww_fdiv1(8));

-- Location: IOOBUF_X26_Y0_N93
\fdiv1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(9));

-- Location: IOOBUF_X20_Y0_N53
\fdiv1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(10));

-- Location: IOOBUF_X18_Y0_N93
\fdiv1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(11));

-- Location: IOOBUF_X56_Y0_N36
\fdiv1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(12));

-- Location: IOOBUF_X88_Y0_N20
\fdiv1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(13));

-- Location: IOOBUF_X64_Y0_N19
\fdiv1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(14));

-- Location: IOOBUF_X40_Y81_N53
\fdiv1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(15));

-- Location: IOOBUF_X72_Y0_N19
\fdiv1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(16));

-- Location: IOOBUF_X76_Y0_N53
\fdiv1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(17));

-- Location: IOOBUF_X26_Y0_N42
\fdiv1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(18));

-- Location: IOOBUF_X16_Y81_N2
\fdiv1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(19));

-- Location: IOOBUF_X89_Y21_N22
\fdiv1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(20));

-- Location: IOOBUF_X30_Y81_N19
\fdiv1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(21));

-- Location: IOOBUF_X2_Y81_N76
\fdiv1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(22));

-- Location: IOOBUF_X56_Y0_N53
\fdiv1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(23));

-- Location: IOOBUF_X58_Y0_N42
\fdiv1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(24));

-- Location: IOOBUF_X10_Y0_N76
\fdiv1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(25));

-- Location: IOOBUF_X38_Y0_N36
\fdiv1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(26));

-- Location: IOOBUF_X89_Y16_N22
\fdiv1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(27));

-- Location: IOOBUF_X4_Y81_N2
\fdiv1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(28));

-- Location: IOOBUF_X36_Y0_N36
\fdiv1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(29));

-- Location: IOOBUF_X2_Y0_N42
\fdiv1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(30));

-- Location: IOOBUF_X74_Y0_N59
\fdiv1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fdiv1(31));

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

-- Location: IOIBUF_X89_Y9_N55
\RES_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RES_N,
	o => \RES_N~input_o\);

-- Location: LABCELL_X81_Y8_N45
\wcnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wcnt~0_combout\ = (\RES_N~input_o\ & !wcnt(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RES_N~input_o\,
	datad => ALT_INV_wcnt(0),
	combout => \wcnt~0_combout\);

-- Location: MLABCELL_X84_Y8_N30
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !f_div(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( !f_div(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_f_div(0),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: MLABCELL_X82_Y8_N39
\f_div[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_div[0]~0_combout\ = ( \Equal2~0_combout\ & ( \Add2~1_sumout\ & ( (\Equal1~0_combout\ & (\Equal4~1_combout\ & (\Equal0~0_combout\ & \RES_N~input_o\))) ) ) ) # ( \Equal2~0_combout\ & ( !\Add2~1_sumout\ & ( (\RES_N~input_o\ & ((!\Equal4~1_combout\) # 
-- ((\Equal1~0_combout\ & \Equal0~0_combout\)))) ) ) ) # ( !\Equal2~0_combout\ & ( !\Add2~1_sumout\ & ( \RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001100110100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal4~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_RES_N~input_o\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \f_div[0]~0_combout\);

-- Location: FF_X82_Y8_N41
\f_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_div[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => f_div(0));

-- Location: MLABCELL_X84_Y8_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !f_div(1) ) + ( VCC ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !f_div(1) ) + ( VCC ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_f_div(1),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X80_Y8_N3
\f_div[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_div[1]~1_combout\ = ( \Equal0~0_combout\ & ( \Add2~5_sumout\ & ( (\RES_N~input_o\ & (\Equal2~0_combout\ & (\Equal4~1_combout\ & \Equal1~0_combout\))) ) ) ) # ( \Equal0~0_combout\ & ( !\Add2~5_sumout\ & ( (\RES_N~input_o\ & ((!\Equal2~0_combout\) # 
-- ((!\Equal4~1_combout\) # (\Equal1~0_combout\)))) ) ) ) # ( !\Equal0~0_combout\ & ( !\Add2~5_sumout\ & ( (\RES_N~input_o\ & ((!\Equal2~0_combout\) # (!\Equal4~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RES_N~input_o\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Equal4~1_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Add2~5_sumout\,
	combout => \f_div[1]~1_combout\);

-- Location: FF_X81_Y8_N14
\f_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \f_div[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => f_div(1));

-- Location: MLABCELL_X84_Y8_N36
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( f_div(2) ) + ( VCC ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( f_div(2) ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_f_div(2),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X84_Y8_N39
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( f_div(3) ) + ( VCC ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( f_div(3) ) + ( VCC ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_f_div(3),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X82_Y8_N45
\f_div[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_div[3]~3_combout\ = ( \Equal4~1_combout\ & ( (!\Equal2~0_combout\ & (\RES_N~input_o\ & \Add2~13_sumout\)) ) ) # ( !\Equal4~1_combout\ & ( (\RES_N~input_o\ & \Add2~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_RES_N~input_o\,
	datad => \ALT_INV_Add2~13_sumout\,
	dataf => \ALT_INV_Equal4~1_combout\,
	combout => \f_div[3]~3_combout\);

-- Location: FF_X82_Y8_N47
\f_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_div[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => f_div(3));

-- Location: MLABCELL_X84_Y8_N42
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !f_div(4) ) + ( VCC ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !f_div(4) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_f_div(4),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X81_Y8_N39
\f_div[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_div[4]~4_combout\ = ( \Equal2~0_combout\ & ( \Add2~17_sumout\ & ( (\Equal4~1_combout\ & (\RES_N~input_o\ & (\Equal1~0_combout\ & \Equal0~0_combout\))) ) ) ) # ( \Equal2~0_combout\ & ( !\Add2~17_sumout\ & ( (\RES_N~input_o\ & ((!\Equal4~1_combout\) # 
-- ((\Equal1~0_combout\ & \Equal0~0_combout\)))) ) ) ) # ( !\Equal2~0_combout\ & ( !\Add2~17_sumout\ & ( \RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001000100010001100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~1_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Add2~17_sumout\,
	combout => \f_div[4]~4_combout\);

-- Location: FF_X81_Y8_N41
\f_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_div[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => f_div(4));

-- Location: MLABCELL_X84_Y8_N45
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !f_div(5) ) + ( VCC ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !f_div(5) ) + ( VCC ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_f_div(5),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: MLABCELL_X82_Y8_N21
\f_div[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_div[5]~5_combout\ = ( \Equal2~0_combout\ & ( \Add2~21_sumout\ & ( (\Equal1~0_combout\ & (\Equal4~1_combout\ & (\RES_N~input_o\ & \Equal0~0_combout\))) ) ) ) # ( \Equal2~0_combout\ & ( !\Add2~21_sumout\ & ( (\RES_N~input_o\ & ((!\Equal4~1_combout\) # 
-- ((\Equal1~0_combout\ & \Equal0~0_combout\)))) ) ) ) # ( !\Equal2~0_combout\ & ( !\Add2~21_sumout\ & ( \RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000000110100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal4~1_combout\,
	datac => \ALT_INV_RES_N~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Add2~21_sumout\,
	combout => \f_div[5]~5_combout\);

-- Location: FF_X82_Y8_N23
\f_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_div[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => f_div(5));

-- Location: MLABCELL_X84_Y8_N48
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !f_div(6) ) + ( VCC ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !f_div(6) ) + ( VCC ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_f_div(6),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X82_Y8_N36
\f_div[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_div[6]~6_combout\ = ( \Equal2~0_combout\ & ( \Add2~25_sumout\ & ( (\Equal1~0_combout\ & (\Equal4~1_combout\ & (\RES_N~input_o\ & \Equal0~0_combout\))) ) ) ) # ( \Equal2~0_combout\ & ( !\Add2~25_sumout\ & ( (\RES_N~input_o\ & ((!\Equal4~1_combout\) # 
-- ((\Equal1~0_combout\ & \Equal0~0_combout\)))) ) ) ) # ( !\Equal2~0_combout\ & ( !\Add2~25_sumout\ & ( \RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000000110100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal4~1_combout\,
	datac => \ALT_INV_RES_N~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Add2~25_sumout\,
	combout => \f_div[6]~6_combout\);

-- Location: FF_X82_Y8_N38
\f_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_div[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => f_div(6));

-- Location: LABCELL_X81_Y8_N48
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( f_div(5) & ( f_div(0) & ( (!f_div(2) & (f_div(4) & (!f_div(3) & f_div(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => ALT_INV_f_div(4),
	datac => ALT_INV_f_div(3),
	datad => ALT_INV_f_div(6),
	datae => ALT_INV_f_div(5),
	dataf => ALT_INV_f_div(0),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X81_Y8_N42
\wcnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \wcnt[0]~1_combout\ = ( \Equal1~0_combout\ & ( (!\RES_N~input_o\) # ((\Equal2~0_combout\ & (!\Equal0~0_combout\ & \Equal4~1_combout\))) ) ) # ( !\Equal1~0_combout\ & ( !\RES_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110111001100110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal4~1_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \wcnt[0]~1_combout\);

-- Location: FF_X81_Y8_N47
\wcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wcnt~0_combout\,
	ena => \wcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(0));

-- Location: LABCELL_X81_Y8_N18
\wcnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \wcnt~2_combout\ = ( wcnt(0) & ( (\RES_N~input_o\ & wcnt(1)) ) ) # ( !wcnt(0) & ( (\RES_N~input_o\ & !wcnt(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RES_N~input_o\,
	datad => ALT_INV_wcnt(1),
	dataf => ALT_INV_wcnt(0),
	combout => \wcnt~2_combout\);

-- Location: FF_X81_Y8_N20
\wcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wcnt~2_combout\,
	ena => \wcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(1));

-- Location: LABCELL_X81_Y8_N24
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( wcnt(0) & ( wcnt(2) ) ) # ( !wcnt(0) & ( !wcnt(1) $ (!wcnt(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(1),
	datad => ALT_INV_wcnt(2),
	dataf => ALT_INV_wcnt(0),
	combout => \Add0~0_combout\);

-- Location: FF_X81_Y8_N26
\wcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(2));

-- Location: LABCELL_X81_Y8_N57
\wcnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \wcnt~3_combout\ = ( wcnt(2) & ( (\RES_N~input_o\ & wcnt(3)) ) ) # ( !wcnt(2) & ( (\RES_N~input_o\ & (!wcnt(3) $ (((!wcnt(1)) # (wcnt(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100011000100000010001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(1),
	datab => \ALT_INV_RES_N~input_o\,
	datac => ALT_INV_wcnt(0),
	datad => ALT_INV_wcnt(3),
	dataf => ALT_INV_wcnt(2),
	combout => \wcnt~3_combout\);

-- Location: FF_X81_Y8_N59
\wcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wcnt~3_combout\,
	ena => \wcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(3));

-- Location: LABCELL_X81_Y8_N3
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( wcnt(1) & ( (!wcnt(2) & (wcnt(3) & !wcnt(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(2),
	datac => ALT_INV_wcnt(3),
	datad => ALT_INV_wcnt(0),
	dataf => ALT_INV_wcnt(1),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X80_Y8_N48
\bcnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[0]~0_combout\ = ( bcnt(0) & ( \Equal1~0_combout\ & ( (\RES_N~input_o\ & ((!\Equal4~1_combout\) # ((!\Equal2~0_combout\) # (\Equal0~0_combout\)))) ) ) ) # ( bcnt(0) & ( !\Equal1~0_combout\ & ( (\RES_N~input_o\ & ((!\Equal4~1_combout\) # 
-- (!\Equal2~0_combout\))) ) ) ) # ( !bcnt(0) & ( !\Equal1~0_combout\ & ( (\RES_N~input_o\ & (\Equal4~1_combout\ & \Equal2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010101000101010000000000000000000101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RES_N~input_o\,
	datab => \ALT_INV_Equal4~1_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \bcnt[0]~0_combout\);

-- Location: FF_X80_Y8_N50
\bcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(0));

-- Location: LABCELL_X81_Y8_N54
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & \Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Equal4~1_combout\,
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X81_Y8_N30
\bcnt[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[1]~1_combout\ = ( bcnt(1) & ( \Equal2~1_combout\ & ( (\RES_N~input_o\ & ((!\Equal1~0_combout\ & ((bcnt(0)))) # (\Equal1~0_combout\ & (\Equal0~0_combout\)))) ) ) ) # ( !bcnt(1) & ( \Equal2~1_combout\ & ( (!\Equal1~0_combout\ & (\RES_N~input_o\ & 
-- !bcnt(0))) ) ) ) # ( bcnt(1) & ( !\Equal2~1_combout\ & ( \RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100100010000000000000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_bcnt(0),
	datae => ALT_INV_bcnt(1),
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \bcnt[1]~1_combout\);

-- Location: FF_X81_Y8_N32
\bcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(1));

-- Location: LABCELL_X81_Y8_N12
\bcnt[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[2]~4_combout\ = ( !\Equal1~0_combout\ & ( (!\RES_N~input_o\) # (!bcnt(2) $ (((\Equal2~1_combout\ & (!bcnt(0) & !bcnt(1)))))) ) ) # ( \Equal1~0_combout\ & ( (!\RES_N~input_o\) # ((!bcnt(2)) # ((\Equal2~1_combout\ & (!\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1110111111011100111111111101110011111111110011001111111111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~1_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_bcnt(2),
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => ALT_INV_bcnt(1),
	datag => ALT_INV_bcnt(0),
	combout => \bcnt[2]~4_combout\);

-- Location: LABCELL_X81_Y8_N9
\bcnt[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[2]~8_combout\ = ( !\bcnt[2]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_bcnt[2]~4_combout\,
	combout => \bcnt[2]~8_combout\);

-- Location: FF_X81_Y8_N11
\bcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(2));

-- Location: LABCELL_X80_Y8_N24
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( !bcnt(1) & ( (!bcnt(0) & bcnt(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(0),
	datad => ALT_INV_bcnt(2),
	dataf => ALT_INV_bcnt(1),
	combout => \Add1~0_combout\);

-- Location: LABCELL_X80_Y8_N6
\bcnt[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[3]~2_combout\ = ( bcnt(3) & ( \Add1~0_combout\ & ( (\RES_N~input_o\ & ((!\Equal2~1_combout\) # ((\Equal0~0_combout\ & \Equal1~0_combout\)))) ) ) ) # ( !bcnt(3) & ( \Add1~0_combout\ & ( (\RES_N~input_o\ & (!\Equal1~0_combout\ & \Equal2~1_combout\)) ) 
-- ) ) # ( bcnt(3) & ( !\Add1~0_combout\ & ( (\RES_N~input_o\ & (((!\Equal1~0_combout\) # (!\Equal2~1_combout\)) # (\Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101000100000000010100000101010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RES_N~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal2~1_combout\,
	datae => ALT_INV_bcnt(3),
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \bcnt[3]~2_combout\);

-- Location: FF_X80_Y8_N8
\bcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(3));

-- Location: LABCELL_X83_Y8_N54
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( !bcnt(0) & ( !bcnt(1) & ( (bcnt(2) & bcnt(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcnt(2),
	datad => ALT_INV_bcnt(3),
	datae => ALT_INV_bcnt(0),
	dataf => ALT_INV_bcnt(1),
	combout => \Add1~1_combout\);

-- Location: LABCELL_X80_Y8_N9
\bcnt[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[4]~3_combout\ = ( bcnt(4) & ( \Add1~1_combout\ & ( (\RES_N~input_o\ & ((!\Equal2~1_combout\) # ((\Equal0~0_combout\ & \Equal1~0_combout\)))) ) ) ) # ( !bcnt(4) & ( \Add1~1_combout\ & ( (\RES_N~input_o\ & (\Equal2~1_combout\ & !\Equal1~0_combout\)) ) 
-- ) ) # ( bcnt(4) & ( !\Add1~1_combout\ & ( (\RES_N~input_o\ & (((!\Equal2~1_combout\) # (!\Equal1~0_combout\)) # (\Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101000100000101000000000101000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RES_N~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => ALT_INV_bcnt(4),
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \bcnt[4]~3_combout\);

-- Location: FF_X80_Y8_N11
\bcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(4));

-- Location: LABCELL_X80_Y8_N18
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( bcnt(4) & ( (!bcnt(1) & (bcnt(3) & (!bcnt(0) & bcnt(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(1),
	datab => ALT_INV_bcnt(3),
	datac => ALT_INV_bcnt(0),
	datad => ALT_INV_bcnt(2),
	dataf => ALT_INV_bcnt(4),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X84_Y8_N51
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !f_div(7) ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( !f_div(7) ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_f_div(7),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: LABCELL_X81_Y8_N36
\f_div[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_div[7]~7_combout\ = ( \Equal2~0_combout\ & ( \Add2~29_sumout\ & ( (\Equal4~1_combout\ & (\RES_N~input_o\ & (\Equal0~0_combout\ & \Equal1~0_combout\))) ) ) ) # ( \Equal2~0_combout\ & ( !\Add2~29_sumout\ & ( (\RES_N~input_o\ & ((!\Equal4~1_combout\) # 
-- ((\Equal0~0_combout\ & \Equal1~0_combout\)))) ) ) ) # ( !\Equal2~0_combout\ & ( !\Add2~29_sumout\ & ( \RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001000100010001100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~1_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Add2~29_sumout\,
	combout => \f_div[7]~7_combout\);

-- Location: FF_X81_Y8_N38
\f_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_div[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => f_div(7));

-- Location: MLABCELL_X84_Y8_N54
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( !f_div(8) ) + ( VCC ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_f_div(8),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\);

-- Location: MLABCELL_X82_Y8_N18
\f_div[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_div[8]~8_combout\ = ( \Equal2~0_combout\ & ( \Add2~33_sumout\ & ( (\Equal1~0_combout\ & (\Equal4~1_combout\ & (\Equal0~0_combout\ & \RES_N~input_o\))) ) ) ) # ( \Equal2~0_combout\ & ( !\Add2~33_sumout\ & ( (\RES_N~input_o\ & ((!\Equal4~1_combout\) # 
-- ((\Equal1~0_combout\ & \Equal0~0_combout\)))) ) ) ) # ( !\Equal2~0_combout\ & ( !\Add2~33_sumout\ & ( \RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001100110100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal4~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_RES_N~input_o\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Add2~33_sumout\,
	combout => \f_div[8]~8_combout\);

-- Location: FF_X82_Y8_N20
\f_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_div[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => f_div(8));

-- Location: MLABCELL_X82_Y8_N15
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( f_div(1) & ( (f_div(8) & f_div(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(8),
	datac => ALT_INV_f_div(7),
	dataf => ALT_INV_f_div(1),
	combout => \Equal4~1_combout\);

-- Location: MLABCELL_X82_Y8_N6
\f_div[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_div[2]~2_combout\ = ( \Equal2~0_combout\ & ( \Add2~9_sumout\ & ( (\RES_N~input_o\ & !\Equal4~1_combout\) ) ) ) # ( !\Equal2~0_combout\ & ( \Add2~9_sumout\ & ( \RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RES_N~input_o\,
	datad => \ALT_INV_Equal4~1_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Add2~9_sumout\,
	combout => \f_div[2]~2_combout\);

-- Location: FF_X81_Y8_N53
\f_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \f_div[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => f_div(2));

-- Location: MLABCELL_X82_Y8_N12
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !f_div(1) & ( (!f_div(3) & !f_div(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_f_div(3),
	datac => ALT_INV_f_div(8),
	dataf => ALT_INV_f_div(1),
	combout => \Equal3~0_combout\);

-- Location: MLABCELL_X82_Y8_N30
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( !f_div(5) & ( !f_div(4) & ( (!f_div(6) & !f_div(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_f_div(6),
	datad => ALT_INV_f_div(0),
	datae => ALT_INV_f_div(5),
	dataf => ALT_INV_f_div(4),
	combout => \Equal4~0_combout\);

-- Location: LABCELL_X81_Y8_N21
\Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = ( \Equal4~0_combout\ & ( (!f_div(2) & (\Equal3~0_combout\ & !f_div(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(7),
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Equal10~0_combout\);

-- Location: LABCELL_X81_Y8_N27
\SDIN~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDIN~2_combout\ = ( !f_div(7) & ( (f_div(3) & (!f_div(4) & (!f_div(6) & !f_div(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(3),
	datab => ALT_INV_f_div(4),
	datac => ALT_INV_f_div(6),
	datad => ALT_INV_f_div(5),
	dataf => ALT_INV_f_div(7),
	combout => \SDIN~2_combout\);

-- Location: LABCELL_X80_Y8_N57
\SDIN~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDIN~3_combout\ = ( f_div(2) & ( \SDIN~2_combout\ ) ) # ( !f_div(2) & ( (\SDIN~2_combout\ & (!f_div(1) & !f_div(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SDIN~2_combout\,
	datac => ALT_INV_f_div(1),
	datad => ALT_INV_f_div(0),
	dataf => ALT_INV_f_div(2),
	combout => \SDIN~3_combout\);

-- Location: LABCELL_X80_Y8_N15
\Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ( !bcnt(1) & ( (!bcnt(0) & (!bcnt(3) & (!bcnt(4) & !bcnt(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => ALT_INV_bcnt(3),
	datac => ALT_INV_bcnt(4),
	datad => ALT_INV_bcnt(2),
	dataf => ALT_INV_bcnt(1),
	combout => \Equal5~0_combout\);

-- Location: LABCELL_X81_Y8_N0
\Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = ( f_div(0) & ( (f_div(8) & (!f_div(2) & !f_div(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_f_div(8),
	datac => ALT_INV_f_div(2),
	datad => ALT_INV_f_div(1),
	dataf => ALT_INV_f_div(0),
	combout => \Equal9~0_combout\);

-- Location: MLABCELL_X82_Y8_N51
\sht_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~0_combout\ = ( bcnt(2) & ( bcnt(1) & ( (!bcnt(3) & (bcnt(4) & !bcnt(0))) # (bcnt(3) & (!bcnt(4) & bcnt(0))) ) ) ) # ( bcnt(2) & ( !bcnt(1) & ( (bcnt(3) & bcnt(4)) ) ) ) # ( !bcnt(2) & ( !bcnt(1) & ( (!bcnt(3) & (!bcnt(4) & !bcnt(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000110000001100000000000000000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcnt(3),
	datac => ALT_INV_bcnt(4),
	datad => ALT_INV_bcnt(0),
	datae => ALT_INV_bcnt(2),
	dataf => ALT_INV_bcnt(1),
	combout => \sht_r~0_combout\);

-- Location: LABCELL_X85_Y8_N48
\sht_r~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~84_combout\ = ( sht_r(1) & ( \RES_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RES_N~input_o\,
	datae => ALT_INV_sht_r(1),
	combout => \sht_r~84_combout\);

-- Location: MLABCELL_X82_Y8_N24
\sht_r~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~1_combout\ = ( !f_div(7) & ( !\sht_r~0_combout\ & ( (!f_div(2) & (\Equal4~0_combout\ & \Equal3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_f_div(7),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~1_combout\);

-- Location: FF_X85_Y8_N49
\sht_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~84_combout\,
	asdata => VCC,
	sload => \sht_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(1));

-- Location: MLABCELL_X82_Y8_N54
\sht_r[250]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[250]~2_combout\ = ( f_div(7) & ( \sht_r~0_combout\ & ( !\RES_N~input_o\ ) ) ) # ( !f_div(7) & ( \sht_r~0_combout\ & ( !\RES_N~input_o\ ) ) ) # ( f_div(7) & ( !\sht_r~0_combout\ & ( !\RES_N~input_o\ ) ) ) # ( !f_div(7) & ( !\sht_r~0_combout\ & ( 
-- (!\RES_N~input_o\) # ((!f_div(2) & (\Equal4~0_combout\ & \Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110010111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => \ALT_INV_Equal4~0_combout\,
	datac => \ALT_INV_RES_N~input_o\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_f_div(7),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r[250]~2_combout\);

-- Location: FF_X82_Y7_N50
\sht_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(1),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(2));

-- Location: FF_X82_Y7_N23
\sht_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(2),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(3));

-- Location: FF_X82_Y7_N20
\sht_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(3),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(4));

-- Location: FF_X82_Y7_N29
\sht_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(4),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(5));

-- Location: FF_X82_Y7_N25
\sht_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(5),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(6));

-- Location: FF_X82_Y7_N31
\sht_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(6),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(7));

-- Location: FF_X82_Y7_N35
\sht_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(7),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(8));

-- Location: MLABCELL_X82_Y7_N51
\sht_r~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~83_combout\ = ( \Equal4~0_combout\ & ( \sht_r~0_combout\ ) ) # ( !\Equal4~0_combout\ & ( \sht_r~0_combout\ ) ) # ( \Equal4~0_combout\ & ( !\sht_r~0_combout\ & ( ((!\Equal3~0_combout\) # ((sht_r(8)) # (f_div(2)))) # (f_div(7)) ) ) ) # ( 
-- !\Equal4~0_combout\ & ( !\sht_r~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_f_div(2),
	datad => ALT_INV_sht_r(8),
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~83_combout\);

-- Location: FF_X82_Y7_N52
\sht_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~83_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(9));

-- Location: LABCELL_X83_Y7_N45
\sht_r[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[10]~feeder_combout\ = ( sht_r(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(9),
	combout => \sht_r[10]~feeder_combout\);

-- Location: FF_X83_Y7_N46
\sht_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[10]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(10));

-- Location: FF_X82_Y7_N5
\sht_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(10),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(11));

-- Location: MLABCELL_X82_Y7_N54
\sht_r~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~82_combout\ = ( \Equal4~0_combout\ & ( \sht_r~0_combout\ ) ) # ( !\Equal4~0_combout\ & ( \sht_r~0_combout\ ) ) # ( \Equal4~0_combout\ & ( !\sht_r~0_combout\ & ( (((!\Equal3~0_combout\) # (f_div(7))) # (f_div(2))) # (sht_r(11)) ) ) ) # ( 
-- !\Equal4~0_combout\ & ( !\sht_r~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sht_r(11),
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~82_combout\);

-- Location: FF_X82_Y7_N55
\sht_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~82_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(12));

-- Location: FF_X82_Y7_N59
\sht_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(12),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(13));

-- Location: FF_X82_Y7_N14
\sht_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(13),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(14));

-- Location: FF_X82_Y7_N17
\sht_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(14),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(15));

-- Location: FF_X82_Y7_N8
\sht_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(15),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(16));

-- Location: FF_X82_Y7_N10
\sht_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(16),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(17));

-- Location: MLABCELL_X82_Y7_N36
\sht_r~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~81_combout\ = ( sht_r(17) & ( \sht_r~0_combout\ ) ) # ( !sht_r(17) & ( \sht_r~0_combout\ ) ) # ( sht_r(17) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(17) & ( !\sht_r~0_combout\ & ( (!\Equal4~0_combout\) # (((!\Equal3~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_sht_r(17),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~81_combout\);

-- Location: FF_X82_Y7_N38
\sht_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~81_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(18));

-- Location: FF_X82_Y7_N40
\sht_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(18),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(19));

-- Location: MLABCELL_X82_Y7_N0
\sht_r~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~80_combout\ = ( sht_r(19) & ( \sht_r~0_combout\ ) ) # ( !sht_r(19) & ( \sht_r~0_combout\ ) ) # ( sht_r(19) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(19) & ( !\sht_r~0_combout\ & ( (((!\Equal4~0_combout\) # (!\Equal3~0_combout\)) # (f_div(2))) # 
-- (f_div(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_sht_r(19),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~80_combout\);

-- Location: FF_X82_Y7_N1
\sht_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~80_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(20));

-- Location: MLABCELL_X82_Y7_N45
\sht_r~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~79_combout\ = ( sht_r(20) & ( \sht_r~0_combout\ ) ) # ( !sht_r(20) & ( \sht_r~0_combout\ ) ) # ( sht_r(20) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(20) & ( !\sht_r~0_combout\ & ( (!\Equal4~0_combout\) # ((!\Equal3~0_combout\) # ((f_div(7)) # 
-- (f_div(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_f_div(2),
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_sht_r(20),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~79_combout\);

-- Location: FF_X82_Y7_N46
\sht_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~79_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(21));

-- Location: FF_X83_Y7_N17
\sht_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(21),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(22));

-- Location: FF_X83_Y7_N14
\sht_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(22),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(23));

-- Location: FF_X83_Y7_N35
\sht_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(23),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(24));

-- Location: LABCELL_X83_Y7_N30
\sht_r[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[25]~feeder_combout\ = sht_r(24)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(24),
	combout => \sht_r[25]~feeder_combout\);

-- Location: FF_X83_Y7_N32
\sht_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[25]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(25));

-- Location: FF_X83_Y7_N38
\sht_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(25),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(26));

-- Location: FF_X83_Y7_N41
\sht_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(26),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(27));

-- Location: FF_X83_Y7_N2
\sht_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(27),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(28));

-- Location: LABCELL_X83_Y7_N54
\sht_r~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~78_combout\ = ( \Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( !\Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\sht_r~0_combout\ & ( ((!\Equal4~0_combout\) # ((f_div(7)) # (f_div(2)))) # (sht_r(28)) ) ) ) # ( 
-- !\Equal3~0_combout\ & ( !\sht_r~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sht_r(28),
	datab => \ALT_INV_Equal4~0_combout\,
	datac => ALT_INV_f_div(2),
	datad => ALT_INV_f_div(7),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~78_combout\);

-- Location: FF_X83_Y7_N56
\sht_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~78_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(29));

-- Location: FF_X83_Y7_N58
\sht_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(29),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(30));

-- Location: LABCELL_X83_Y7_N24
\sht_r[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[31]~feeder_combout\ = ( sht_r(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(30),
	combout => \sht_r[31]~feeder_combout\);

-- Location: FF_X83_Y7_N26
\sht_r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[31]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(31));

-- Location: LABCELL_X83_Y7_N27
\sht_r[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[32]~feeder_combout\ = sht_r(31)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sht_r(31),
	combout => \sht_r[32]~feeder_combout\);

-- Location: FF_X83_Y7_N29
\sht_r[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[32]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(32));

-- Location: FF_X83_Y7_N8
\sht_r[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(32),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(33));

-- Location: LABCELL_X83_Y7_N9
\sht_r[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[34]~feeder_combout\ = sht_r(33)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(33),
	combout => \sht_r[34]~feeder_combout\);

-- Location: FF_X83_Y7_N10
\sht_r[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[34]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(34));

-- Location: FF_X83_Y7_N50
\sht_r[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(34),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(35));

-- Location: LABCELL_X83_Y7_N51
\sht_r~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~77_combout\ = ( \Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( !\Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\sht_r~0_combout\ & ( (((!\Equal4~0_combout\) # (f_div(2))) # (f_div(7))) # (sht_r(35)) ) ) ) # ( 
-- !\Equal3~0_combout\ & ( !\sht_r~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sht_r(35),
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~77_combout\);

-- Location: FF_X83_Y7_N53
\sht_r[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~77_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(36));

-- Location: LABCELL_X83_Y7_N18
\sht_r[37]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[37]~feeder_combout\ = sht_r(36)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(36),
	combout => \sht_r[37]~feeder_combout\);

-- Location: FF_X83_Y7_N20
\sht_r[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[37]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(37));

-- Location: FF_X83_Y7_N23
\sht_r[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(37),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(38));

-- Location: FF_X83_Y7_N4
\sht_r[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(38),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(39));

-- Location: LABCELL_X83_Y8_N9
\sht_r[40]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[40]~feeder_combout\ = ( sht_r(39) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(39),
	combout => \sht_r[40]~feeder_combout\);

-- Location: FF_X83_Y8_N11
\sht_r[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[40]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(40));

-- Location: FF_X83_Y8_N46
\sht_r[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(40),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(41));

-- Location: MLABCELL_X84_Y8_N27
\sht_r~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~76_combout\ = ( f_div(2) & ( \Equal4~0_combout\ ) ) # ( !f_div(2) & ( \Equal4~0_combout\ & ( (((!\Equal3~0_combout\) # (sht_r(41))) # (f_div(7))) # (\sht_r~0_combout\) ) ) ) # ( f_div(2) & ( !\Equal4~0_combout\ ) ) # ( !f_div(2) & ( 
-- !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sht_r~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_sht_r(41),
	datae => ALT_INV_f_div(2),
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~76_combout\);

-- Location: FF_X84_Y8_N29
\sht_r[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~76_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(42));

-- Location: FF_X83_Y8_N34
\sht_r[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(42),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(43));

-- Location: MLABCELL_X78_Y8_N18
\sht_r~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~75_combout\ = ( \sht_r~0_combout\ & ( sht_r(43) ) ) # ( !\sht_r~0_combout\ & ( sht_r(43) ) ) # ( \sht_r~0_combout\ & ( !sht_r(43) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(43) & ( (!\Equal4~0_combout\) # (((!\Equal3~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(43),
	combout => \sht_r~75_combout\);

-- Location: FF_X78_Y8_N19
\sht_r[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~75_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(44));

-- Location: MLABCELL_X78_Y8_N36
\sht_r~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~74_combout\ = ( \sht_r~0_combout\ & ( \Equal4~0_combout\ ) ) # ( !\sht_r~0_combout\ & ( \Equal4~0_combout\ & ( ((!\Equal3~0_combout\) # ((sht_r(44)) # (f_div(2)))) # (f_div(7)) ) ) ) # ( \sht_r~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\sht_r~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_f_div(2),
	datad => ALT_INV_sht_r(44),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~74_combout\);

-- Location: FF_X78_Y8_N38
\sht_r[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~74_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(45));

-- Location: FF_X78_Y8_N56
\sht_r[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(45),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(46));

-- Location: FF_X78_Y8_N41
\sht_r[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(46),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(47));

-- Location: MLABCELL_X78_Y8_N21
\sht_r~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~73_combout\ = ( \sht_r~0_combout\ & ( sht_r(47) ) ) # ( !\sht_r~0_combout\ & ( sht_r(47) ) ) # ( \sht_r~0_combout\ & ( !sht_r(47) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(47) & ( (!\Equal4~0_combout\) # (((!\Equal3~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(47),
	combout => \sht_r~73_combout\);

-- Location: FF_X78_Y8_N23
\sht_r[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~73_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(48));

-- Location: MLABCELL_X78_Y8_N57
\sht_r~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~72_combout\ = ( \sht_r~0_combout\ & ( \Equal4~0_combout\ ) ) # ( !\sht_r~0_combout\ & ( \Equal4~0_combout\ & ( (((!\Equal3~0_combout\) # (sht_r(48))) # (f_div(7))) # (f_div(2)) ) ) ) # ( \sht_r~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\sht_r~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_sht_r(48),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~72_combout\);

-- Location: FF_X78_Y8_N58
\sht_r[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~72_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(49));

-- Location: FF_X79_Y8_N58
\sht_r[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(49),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(50));

-- Location: LABCELL_X79_Y8_N54
\sht_r[51]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[51]~feeder_combout\ = ( sht_r(50) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(50),
	combout => \sht_r[51]~feeder_combout\);

-- Location: FF_X79_Y8_N56
\sht_r[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[51]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(51));

-- Location: FF_X79_Y8_N16
\sht_r[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(51),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(52));

-- Location: FF_X80_Y8_N47
\sht_r[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(52),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(53));

-- Location: LABCELL_X83_Y9_N6
\sht_r~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~71_combout\ = ( \sht_r~0_combout\ & ( sht_r(53) ) ) # ( !\sht_r~0_combout\ & ( sht_r(53) ) ) # ( \sht_r~0_combout\ & ( !sht_r(53) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(53) & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(53),
	combout => \sht_r~71_combout\);

-- Location: FF_X83_Y9_N7
\sht_r[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~71_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(54));

-- Location: MLABCELL_X82_Y9_N48
\sht_r[55]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[55]~feeder_combout\ = ( sht_r(54) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(54),
	combout => \sht_r[55]~feeder_combout\);

-- Location: FF_X82_Y9_N49
\sht_r[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[55]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(55));

-- Location: FF_X82_Y9_N35
\sht_r[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(55),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(56));

-- Location: MLABCELL_X82_Y9_N30
\sht_r~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~70_combout\ = ( f_div(2) & ( \Equal3~0_combout\ ) ) # ( !f_div(2) & ( \Equal3~0_combout\ & ( (((!\Equal4~0_combout\) # (sht_r(56))) # (f_div(7))) # (\sht_r~0_combout\) ) ) ) # ( f_div(2) & ( !\Equal3~0_combout\ ) ) # ( !f_div(2) & ( 
-- !\Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sht_r~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_sht_r(56),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_f_div(2),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \sht_r~70_combout\);

-- Location: FF_X82_Y9_N31
\sht_r[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~70_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(57));

-- Location: MLABCELL_X82_Y9_N27
\sht_r~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~69_combout\ = ( sht_r(57) & ( \sht_r~0_combout\ ) ) # ( !sht_r(57) & ( \sht_r~0_combout\ ) ) # ( sht_r(57) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(57) & ( !\sht_r~0_combout\ & ( ((!\Equal4~0_combout\) # ((!\Equal3~0_combout\) # (f_div(7)))) # 
-- (f_div(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => \ALT_INV_Equal4~0_combout\,
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_sht_r(57),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~69_combout\);

-- Location: FF_X82_Y9_N29
\sht_r[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~69_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(58));

-- Location: MLABCELL_X82_Y9_N18
\sht_r~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~68_combout\ = ( sht_r(58) & ( \sht_r~0_combout\ ) ) # ( !sht_r(58) & ( \sht_r~0_combout\ ) ) # ( sht_r(58) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(58) & ( !\sht_r~0_combout\ & ( ((!\Equal4~0_combout\) # ((!\Equal3~0_combout\) # (f_div(7)))) # 
-- (f_div(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => \ALT_INV_Equal4~0_combout\,
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_sht_r(58),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~68_combout\);

-- Location: FF_X82_Y9_N20
\sht_r[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~68_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(59));

-- Location: FF_X82_Y9_N17
\sht_r[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(59),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(60));

-- Location: FF_X82_Y9_N14
\sht_r[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(60),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(61));

-- Location: FF_X82_Y9_N44
\sht_r[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(61),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(62));

-- Location: FF_X82_Y9_N47
\sht_r[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(62),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(63));

-- Location: FF_X82_Y9_N2
\sht_r[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(63),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(64));

-- Location: FF_X82_Y9_N5
\sht_r[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(64),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(65));

-- Location: MLABCELL_X82_Y9_N21
\sht_r~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~67_combout\ = ( sht_r(65) & ( \sht_r~0_combout\ ) ) # ( !sht_r(65) & ( \sht_r~0_combout\ ) ) # ( sht_r(65) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(65) & ( !\sht_r~0_combout\ & ( ((!\Equal4~0_combout\) # ((!\Equal3~0_combout\) # (f_div(7)))) # 
-- (f_div(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => \ALT_INV_Equal4~0_combout\,
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_sht_r(65),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~67_combout\);

-- Location: FF_X82_Y9_N23
\sht_r[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~67_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(66));

-- Location: FF_X82_Y9_N7
\sht_r[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(66),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(67));

-- Location: MLABCELL_X82_Y9_N9
\sht_r~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~66_combout\ = ( f_div(2) & ( \Equal3~0_combout\ ) ) # ( !f_div(2) & ( \Equal3~0_combout\ & ( ((!\Equal4~0_combout\) # ((\sht_r~0_combout\) # (f_div(7)))) # (sht_r(67)) ) ) ) # ( f_div(2) & ( !\Equal3~0_combout\ ) ) # ( !f_div(2) & ( 
-- !\Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sht_r(67),
	datab => \ALT_INV_Equal4~0_combout\,
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_sht_r~0_combout\,
	datae => ALT_INV_f_div(2),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \sht_r~66_combout\);

-- Location: FF_X82_Y9_N11
\sht_r[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~66_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(68));

-- Location: MLABCELL_X82_Y9_N36
\sht_r~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~65_combout\ = ( \Equal3~0_combout\ & ( \Equal4~0_combout\ & ( (((f_div(7)) # (\sht_r~0_combout\)) # (sht_r(68))) # (f_div(2)) ) ) ) # ( !\Equal3~0_combout\ & ( \Equal4~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\Equal3~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => ALT_INV_sht_r(68),
	datac => \ALT_INV_sht_r~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~65_combout\);

-- Location: FF_X82_Y9_N38
\sht_r[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~65_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(69));

-- Location: FF_X82_Y9_N41
\sht_r[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(69),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(70));

-- Location: FF_X82_Y9_N55
\sht_r[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(70),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(71));

-- Location: FF_X82_Y9_N59
\sht_r[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(71),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(72));

-- Location: MLABCELL_X82_Y9_N24
\sht_r~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~64_combout\ = ( sht_r(72) & ( \sht_r~0_combout\ ) ) # ( !sht_r(72) & ( \sht_r~0_combout\ ) ) # ( sht_r(72) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(72) & ( !\sht_r~0_combout\ & ( ((!\Equal4~0_combout\) # ((!\Equal3~0_combout\) # (f_div(7)))) # 
-- (f_div(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => \ALT_INV_Equal4~0_combout\,
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_sht_r(72),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~64_combout\);

-- Location: FF_X82_Y9_N26
\sht_r[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~64_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(73));

-- Location: LABCELL_X81_Y9_N57
\sht_r[74]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[74]~feeder_combout\ = ( sht_r(73) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(73),
	combout => \sht_r[74]~feeder_combout\);

-- Location: FF_X81_Y9_N59
\sht_r[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[74]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(74));

-- Location: FF_X81_Y9_N56
\sht_r[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(74),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(75));

-- Location: FF_X81_Y9_N41
\sht_r[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(75),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(76));

-- Location: LABCELL_X81_Y9_N36
\sht_r~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~63_combout\ = ( \Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( !\Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\sht_r~0_combout\ & ( (!\Equal4~0_combout\) # (((f_div(2)) # (f_div(7))) # (sht_r(76))) ) ) ) # ( 
-- !\Equal3~0_combout\ & ( !\sht_r~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_sht_r(76),
	datac => ALT_INV_f_div(7),
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~63_combout\);

-- Location: FF_X81_Y9_N37
\sht_r[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~63_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(77));

-- Location: LABCELL_X81_Y9_N45
\sht_r~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~62_combout\ = ( \Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( !\Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\sht_r~0_combout\ & ( (((!\Equal4~0_combout\) # (f_div(2))) # (sht_r(77))) # (f_div(7)) ) ) ) # ( 
-- !\Equal3~0_combout\ & ( !\sht_r~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_sht_r(77),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~62_combout\);

-- Location: FF_X81_Y9_N47
\sht_r[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~62_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(78));

-- Location: FF_X81_Y9_N44
\sht_r[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(78),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(79));

-- Location: FF_X81_Y9_N5
\sht_r[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(79),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(80));

-- Location: FF_X81_Y9_N1
\sht_r[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(80),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(81));

-- Location: LABCELL_X81_Y9_N27
\sht_r~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~61_combout\ = ( sht_r(81) & ( \sht_r~0_combout\ ) ) # ( !sht_r(81) & ( \sht_r~0_combout\ ) ) # ( sht_r(81) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(81) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_sht_r(81),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~61_combout\);

-- Location: FF_X81_Y9_N29
\sht_r[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~61_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(82));

-- Location: LABCELL_X81_Y9_N18
\sht_r~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~60_combout\ = ( sht_r(82) & ( \sht_r~0_combout\ ) ) # ( !sht_r(82) & ( \sht_r~0_combout\ ) ) # ( sht_r(82) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(82) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => ALT_INV_sht_r(82),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~60_combout\);

-- Location: FF_X81_Y9_N20
\sht_r[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~60_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(83));

-- Location: FF_X81_Y9_N11
\sht_r[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(83),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(84));

-- Location: FF_X81_Y9_N8
\sht_r[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(84),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(85));

-- Location: FF_X81_Y9_N35
\sht_r[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(85),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(86));

-- Location: FF_X81_Y9_N14
\sht_r[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(86),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(87));

-- Location: FF_X81_Y9_N17
\sht_r[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(87),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(88));

-- Location: FF_X81_Y9_N31
\sht_r[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(88),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(89));

-- Location: LABCELL_X81_Y9_N21
\sht_r~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~59_combout\ = ( sht_r(89) & ( \sht_r~0_combout\ ) ) # ( !sht_r(89) & ( \sht_r~0_combout\ ) ) # ( sht_r(89) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(89) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_sht_r(89),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~59_combout\);

-- Location: FF_X81_Y9_N23
\sht_r[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~59_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(90));

-- Location: FF_X81_Y9_N49
\sht_r[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(90),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(91));

-- Location: LABCELL_X81_Y9_N51
\sht_r~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~58_combout\ = ( \Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( !\Equal3~0_combout\ & ( \sht_r~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\sht_r~0_combout\ & ( (!\Equal4~0_combout\) # (((f_div(2)) # (f_div(7))) # (sht_r(91))) ) ) ) # ( 
-- !\Equal3~0_combout\ & ( !\sht_r~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_sht_r(91),
	datac => ALT_INV_f_div(7),
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~58_combout\);

-- Location: FF_X81_Y9_N52
\sht_r[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~58_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(92));

-- Location: LABCELL_X79_Y8_N12
\sht_r~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~57_combout\ = ( \Equal4~0_combout\ & ( f_div(7) ) ) # ( !\Equal4~0_combout\ & ( f_div(7) ) ) # ( \Equal4~0_combout\ & ( !f_div(7) & ( (((!\Equal3~0_combout\) # (f_div(2))) # (sht_r(92))) # (\sht_r~0_combout\) ) ) ) # ( !\Equal4~0_combout\ & ( 
-- !f_div(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sht_r~0_combout\,
	datab => ALT_INV_sht_r(92),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => ALT_INV_f_div(7),
	combout => \sht_r~57_combout\);

-- Location: FF_X79_Y8_N14
\sht_r[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~57_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(93));

-- Location: FF_X82_Y8_N58
\sht_r[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(93),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(94));

-- Location: FF_X82_Y8_N26
\sht_r[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(94),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(95));

-- Location: MLABCELL_X84_Y8_N6
\sht_r~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~56_combout\ = ( f_div(7) & ( sht_r(95) ) ) # ( !f_div(7) & ( sht_r(95) ) ) # ( f_div(7) & ( !sht_r(95) ) ) # ( !f_div(7) & ( !sht_r(95) & ( ((!\Equal3~0_combout\) # ((!\Equal4~0_combout\) # (f_div(2)))) # (\sht_r~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sht_r~0_combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => ALT_INV_f_div(7),
	dataf => ALT_INV_sht_r(95),
	combout => \sht_r~56_combout\);

-- Location: FF_X84_Y8_N7
\sht_r[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~56_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(96));

-- Location: FF_X80_Y8_N44
\sht_r[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(96),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(97));

-- Location: FF_X83_Y8_N56
\sht_r[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(97),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(98));

-- Location: FF_X83_Y8_N38
\sht_r[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(98),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(99));

-- Location: FF_X82_Y8_N13
\sht_r[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(99),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(100));

-- Location: LABCELL_X79_Y8_N9
\sht_r[101]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[101]~feeder_combout\ = ( sht_r(100) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(100),
	combout => \sht_r[101]~feeder_combout\);

-- Location: FF_X79_Y8_N11
\sht_r[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[101]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(101));

-- Location: FF_X79_Y8_N5
\sht_r[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(101),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(102));

-- Location: FF_X79_Y8_N8
\sht_r[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(102),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(103));

-- Location: FF_X79_Y8_N1
\sht_r[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(103),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(104));

-- Location: MLABCELL_X82_Y7_N42
\sht_r~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~55_combout\ = ( sht_r(104) & ( \sht_r~0_combout\ ) ) # ( !sht_r(104) & ( \sht_r~0_combout\ ) ) # ( sht_r(104) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(104) & ( !\sht_r~0_combout\ & ( (!\Equal4~0_combout\) # ((!\Equal3~0_combout\) # ((f_div(2)) # 
-- (f_div(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_f_div(7),
	datad => ALT_INV_f_div(2),
	datae => ALT_INV_sht_r(104),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~55_combout\);

-- Location: FF_X82_Y7_N44
\sht_r[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~55_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(105));

-- Location: FF_X81_Y7_N38
\sht_r[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(105),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(106));

-- Location: LABCELL_X81_Y7_N42
\sht_r~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~54_combout\ = ( sht_r(106) & ( \sht_r~0_combout\ ) ) # ( !sht_r(106) & ( \sht_r~0_combout\ ) ) # ( sht_r(106) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(106) & ( !\sht_r~0_combout\ & ( (((!\Equal3~0_combout\) # (!\Equal4~0_combout\)) # (f_div(2))) # 
-- (f_div(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_sht_r(106),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~54_combout\);

-- Location: FF_X81_Y7_N44
\sht_r[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~54_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(107));

-- Location: FF_X81_Y7_N59
\sht_r[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(107),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(108));

-- Location: FF_X81_Y7_N56
\sht_r[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(108),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(109));

-- Location: FF_X81_Y7_N17
\sht_r[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(109),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(110));

-- Location: FF_X81_Y7_N14
\sht_r[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(110),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(111));

-- Location: FF_X81_Y7_N20
\sht_r[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(111),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(112));

-- Location: FF_X81_Y7_N23
\sht_r[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(112),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(113));

-- Location: LABCELL_X81_Y7_N45
\sht_r~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~53_combout\ = ( sht_r(113) & ( \sht_r~0_combout\ ) ) # ( !sht_r(113) & ( \sht_r~0_combout\ ) ) # ( sht_r(113) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(113) & ( !\sht_r~0_combout\ & ( (((!\Equal4~0_combout\) # (!\Equal3~0_combout\)) # (f_div(2))) # 
-- (f_div(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_sht_r(113),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~53_combout\);

-- Location: FF_X81_Y7_N47
\sht_r[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~53_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(114));

-- Location: FF_X81_Y7_N40
\sht_r[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(114),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(115));

-- Location: LABCELL_X81_Y7_N24
\sht_r~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~52_combout\ = ( sht_r(115) & ( \sht_r~0_combout\ ) ) # ( !sht_r(115) & ( \sht_r~0_combout\ ) ) # ( sht_r(115) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(115) & ( !\sht_r~0_combout\ & ( (((!\Equal3~0_combout\) # (!\Equal4~0_combout\)) # (f_div(2))) # 
-- (f_div(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_sht_r(115),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~52_combout\);

-- Location: FF_X81_Y7_N25
\sht_r[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~52_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(116));

-- Location: LABCELL_X81_Y7_N27
\sht_r~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~51_combout\ = ( sht_r(116) & ( \sht_r~0_combout\ ) ) # ( !sht_r(116) & ( \sht_r~0_combout\ ) ) # ( sht_r(116) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(116) & ( !\sht_r~0_combout\ & ( (((!\Equal4~0_combout\) # (!\Equal3~0_combout\)) # (f_div(2))) # 
-- (f_div(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_sht_r(116),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~51_combout\);

-- Location: FF_X81_Y7_N29
\sht_r[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~51_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(117));

-- Location: FF_X81_Y7_N8
\sht_r[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(117),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(118));

-- Location: FF_X81_Y7_N10
\sht_r[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(118),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(119));

-- Location: FF_X81_Y7_N1
\sht_r[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(119),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(120));

-- Location: LABCELL_X81_Y7_N3
\sht_r~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~50_combout\ = ( \Equal3~0_combout\ & ( f_div(2) ) ) # ( !\Equal3~0_combout\ & ( f_div(2) ) ) # ( \Equal3~0_combout\ & ( !f_div(2) & ( (((!\Equal4~0_combout\) # (\sht_r~0_combout\)) # (sht_r(120))) # (f_div(7)) ) ) ) # ( !\Equal3~0_combout\ & ( 
-- !f_div(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_sht_r(120),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_sht_r~0_combout\,
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => ALT_INV_f_div(2),
	combout => \sht_r~50_combout\);

-- Location: FF_X81_Y7_N5
\sht_r[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~50_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(121));

-- Location: FF_X81_Y7_N32
\sht_r[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(121),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(122));

-- Location: FF_X81_Y7_N34
\sht_r[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(122),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(123));

-- Location: LABCELL_X81_Y7_N48
\sht_r~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~49_combout\ = ( sht_r(123) & ( \sht_r~0_combout\ ) ) # ( !sht_r(123) & ( \sht_r~0_combout\ ) ) # ( sht_r(123) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(123) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_sht_r(123),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~49_combout\);

-- Location: FF_X81_Y7_N49
\sht_r[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~49_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(124));

-- Location: FF_X81_Y7_N52
\sht_r[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(124),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(125));

-- Location: LABCELL_X79_Y8_N45
\sht_r~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~48_combout\ = ( \Equal4~0_combout\ & ( f_div(7) ) ) # ( !\Equal4~0_combout\ & ( f_div(7) ) ) # ( \Equal4~0_combout\ & ( !f_div(7) & ( (!\Equal3~0_combout\) # (((sht_r(125)) # (f_div(2))) # (\sht_r~0_combout\)) ) ) ) # ( !\Equal4~0_combout\ & ( 
-- !f_div(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => \ALT_INV_sht_r~0_combout\,
	datac => ALT_INV_f_div(2),
	datad => ALT_INV_sht_r(125),
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => ALT_INV_f_div(7),
	combout => \sht_r~48_combout\);

-- Location: FF_X79_Y8_N47
\sht_r[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~48_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(126));

-- Location: LABCELL_X79_Y8_N27
\sht_r~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~47_combout\ = ( \Equal4~0_combout\ & ( sht_r(126) ) ) # ( !\Equal4~0_combout\ & ( sht_r(126) ) ) # ( \Equal4~0_combout\ & ( !sht_r(126) & ( (!\Equal3~0_combout\) # (((f_div(7)) # (f_div(2))) # (\sht_r~0_combout\)) ) ) ) # ( !\Equal4~0_combout\ & ( 
-- !sht_r(126) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => \ALT_INV_sht_r~0_combout\,
	datac => ALT_INV_f_div(2),
	datad => ALT_INV_f_div(7),
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => ALT_INV_sht_r(126),
	combout => \sht_r~47_combout\);

-- Location: FF_X79_Y8_N29
\sht_r[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~47_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(127));

-- Location: FF_X79_Y8_N43
\sht_r[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(127),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(128));

-- Location: FF_X79_Y8_N25
\sht_r[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(128),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(129));

-- Location: FF_X78_Y8_N2
\sht_r[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(129),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(130));

-- Location: MLABCELL_X78_Y8_N9
\sht_r~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~46_combout\ = ( sht_r(130) & ( \Equal4~0_combout\ ) ) # ( !sht_r(130) & ( \Equal4~0_combout\ & ( ((!\Equal3~0_combout\) # ((f_div(7)) # (\sht_r~0_combout\))) # (f_div(2)) ) ) ) # ( sht_r(130) & ( !\Equal4~0_combout\ ) ) # ( !sht_r(130) & ( 
-- !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_sht_r~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_sht_r(130),
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~46_combout\);

-- Location: FF_X78_Y8_N10
\sht_r[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~46_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(131));

-- Location: FF_X78_Y8_N32
\sht_r[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(131),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(132));

-- Location: MLABCELL_X78_Y8_N3
\sht_r[133]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[133]~feeder_combout\ = sht_r(132)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(132),
	combout => \sht_r[133]~feeder_combout\);

-- Location: FF_X78_Y8_N5
\sht_r[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[133]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(133));

-- Location: FF_X78_Y8_N8
\sht_r[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(133),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(134));

-- Location: MLABCELL_X78_Y8_N15
\sht_r[135]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[135]~feeder_combout\ = sht_r(134)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(134),
	combout => \sht_r[135]~feeder_combout\);

-- Location: FF_X78_Y8_N17
\sht_r[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[135]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(135));

-- Location: FF_X78_Y8_N13
\sht_r[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(135),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(136));

-- Location: FF_X83_Y8_N4
\sht_r[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(136),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(137));

-- Location: MLABCELL_X78_Y8_N33
\sht_r~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~45_combout\ = ( \sht_r~0_combout\ & ( \Equal4~0_combout\ ) ) # ( !\sht_r~0_combout\ & ( \Equal4~0_combout\ & ( (((!\Equal3~0_combout\) # (sht_r(137))) # (f_div(7))) # (f_div(2)) ) ) ) # ( \sht_r~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\sht_r~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_sht_r(137),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~45_combout\);

-- Location: FF_X78_Y8_N34
\sht_r[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~45_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(138));

-- Location: FF_X79_Y8_N20
\sht_r[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(138),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(139));

-- Location: LABCELL_X79_Y8_N21
\sht_r~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~44_combout\ = ( \Equal3~0_combout\ & ( \Equal4~0_combout\ & ( (((sht_r(139)) # (\sht_r~0_combout\)) # (f_div(2))) # (f_div(7)) ) ) ) # ( !\Equal3~0_combout\ & ( \Equal4~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\Equal3~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_sht_r~0_combout\,
	datad => ALT_INV_sht_r(139),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~44_combout\);

-- Location: FF_X79_Y8_N23
\sht_r[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~44_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(140));

-- Location: LABCELL_X79_Y8_N36
\sht_r~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~43_combout\ = ( \Equal4~0_combout\ & ( \Equal3~0_combout\ & ( (((f_div(2)) # (f_div(7))) # (\sht_r~0_combout\)) # (sht_r(140)) ) ) ) # ( !\Equal4~0_combout\ & ( \Equal3~0_combout\ ) ) # ( \Equal4~0_combout\ & ( !\Equal3~0_combout\ ) ) # ( 
-- !\Equal4~0_combout\ & ( !\Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sht_r(140),
	datab => \ALT_INV_sht_r~0_combout\,
	datac => ALT_INV_f_div(7),
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \sht_r~43_combout\);

-- Location: FF_X79_Y8_N37
\sht_r[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~43_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(141));

-- Location: FF_X83_Y8_N25
\sht_r[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(141),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(142));

-- Location: FF_X79_Y8_N49
\sht_r[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(142),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(143));

-- Location: FF_X79_Y8_N34
\sht_r[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(143),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(144));

-- Location: FF_X80_Y8_N35
\sht_r[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(144),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(145));

-- Location: FF_X80_Y8_N32
\sht_r[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(145),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(146));

-- Location: FF_X84_Y8_N58
\sht_r[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(146),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(147));

-- Location: LABCELL_X83_Y8_N12
\sht_r~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~42_combout\ = ( \sht_r~0_combout\ & ( sht_r(147) ) ) # ( !\sht_r~0_combout\ & ( sht_r(147) ) ) # ( \sht_r~0_combout\ & ( !sht_r(147) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(147) & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(147),
	combout => \sht_r~42_combout\);

-- Location: FF_X83_Y8_N14
\sht_r[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~42_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(148));

-- Location: LABCELL_X83_Y8_N48
\sht_r~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~41_combout\ = ( \Equal3~0_combout\ & ( \Equal4~0_combout\ & ( (((f_div(7)) # (f_div(2))) # (sht_r(148))) # (\sht_r~0_combout\) ) ) ) # ( !\Equal3~0_combout\ & ( \Equal4~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\Equal3~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sht_r~0_combout\,
	datab => ALT_INV_sht_r(148),
	datac => ALT_INV_f_div(2),
	datad => ALT_INV_f_div(7),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~41_combout\);

-- Location: FF_X83_Y8_N50
\sht_r[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~41_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(149));

-- Location: LABCELL_X83_Y8_N0
\sht_r[150]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[150]~feeder_combout\ = sht_r(149)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(149),
	combout => \sht_r[150]~feeder_combout\);

-- Location: FF_X83_Y8_N2
\sht_r[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[150]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(150));

-- Location: FF_X83_Y8_N1
\sht_r[151]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(150),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(151));

-- Location: FF_X83_Y8_N44
\sht_r[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(151),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(152));

-- Location: LABCELL_X83_Y8_N39
\sht_r~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~40_combout\ = ( \sht_r~0_combout\ & ( \Equal4~0_combout\ ) ) # ( !\sht_r~0_combout\ & ( \Equal4~0_combout\ & ( (((!\Equal3~0_combout\) # (f_div(2))) # (sht_r(152))) # (f_div(7)) ) ) ) # ( \sht_r~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\sht_r~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_sht_r(152),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~40_combout\);

-- Location: FF_X84_Y8_N17
\sht_r[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \sht_r~40_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(153));

-- Location: LABCELL_X83_Y8_N27
\sht_r~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~39_combout\ = ( \Equal3~0_combout\ & ( \Equal4~0_combout\ & ( (((sht_r(153)) # (\sht_r~0_combout\)) # (f_div(2))) # (f_div(7)) ) ) ) # ( !\Equal3~0_combout\ & ( \Equal4~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\Equal3~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_sht_r~0_combout\,
	datad => ALT_INV_sht_r(153),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~39_combout\);

-- Location: FF_X84_Y8_N19
\sht_r[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \sht_r~39_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(154));

-- Location: FF_X80_Y8_N5
\sht_r[155]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(154),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(155));

-- Location: FF_X82_Y8_N31
\sht_r[156]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(155),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(156));

-- Location: FF_X82_Y8_N55
\sht_r[157]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(156),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(157));

-- Location: FF_X83_Y8_N53
\sht_r[158]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(157),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(158));

-- Location: FF_X82_Y8_N7
\sht_r[159]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(158),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(159));

-- Location: FF_X82_Y8_N34
\sht_r[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(159),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(160));

-- Location: FF_X82_Y8_N10
\sht_r[161]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(160),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(161));

-- Location: MLABCELL_X78_Y8_N27
\sht_r~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~38_combout\ = ( \sht_r~0_combout\ & ( \Equal4~0_combout\ ) ) # ( !\sht_r~0_combout\ & ( \Equal4~0_combout\ & ( ((!\Equal3~0_combout\) # ((f_div(7)) # (sht_r(161)))) # (f_div(2)) ) ) ) # ( \sht_r~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\sht_r~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_sht_r(161),
	datad => ALT_INV_f_div(7),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~38_combout\);

-- Location: FF_X78_Y8_N28
\sht_r[162]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~38_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(162));

-- Location: FF_X79_Y8_N40
\sht_r[163]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(162),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(163));

-- Location: MLABCELL_X78_Y8_N42
\sht_r~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~37_combout\ = ( \sht_r~0_combout\ & ( \Equal4~0_combout\ ) ) # ( !\sht_r~0_combout\ & ( \Equal4~0_combout\ & ( (((!\Equal3~0_combout\) # (f_div(7))) # (sht_r(163))) # (f_div(2)) ) ) ) # ( \sht_r~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\sht_r~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(2),
	datab => ALT_INV_sht_r(163),
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~37_combout\);

-- Location: FF_X78_Y8_N43
\sht_r[164]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~37_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(164));

-- Location: LABCELL_X79_Y8_N51
\sht_r~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~36_combout\ = ( \Equal4~0_combout\ & ( f_div(7) ) ) # ( !\Equal4~0_combout\ & ( f_div(7) ) ) # ( \Equal4~0_combout\ & ( !f_div(7) & ( (!\Equal3~0_combout\) # (((sht_r(164)) # (f_div(2))) # (\sht_r~0_combout\)) ) ) ) # ( !\Equal4~0_combout\ & ( 
-- !f_div(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => \ALT_INV_sht_r~0_combout\,
	datac => ALT_INV_f_div(2),
	datad => ALT_INV_sht_r(164),
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => ALT_INV_f_div(7),
	combout => \sht_r~36_combout\);

-- Location: FF_X79_Y8_N52
\sht_r[165]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~36_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(165));

-- Location: MLABCELL_X84_Y8_N21
\sht_r[166]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[166]~feeder_combout\ = ( sht_r(165) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(165),
	combout => \sht_r[166]~feeder_combout\);

-- Location: FF_X84_Y8_N23
\sht_r[166]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[166]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(166));

-- Location: FF_X84_Y8_N25
\sht_r[167]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(166),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(167));

-- Location: LABCELL_X83_Y8_N30
\sht_r~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~35_combout\ = ( f_div(2) & ( \Equal3~0_combout\ ) ) # ( !f_div(2) & ( \Equal3~0_combout\ & ( (!\Equal4~0_combout\) # (((f_div(7)) # (\sht_r~0_combout\)) # (sht_r(167))) ) ) ) # ( f_div(2) & ( !\Equal3~0_combout\ ) ) # ( !f_div(2) & ( 
-- !\Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_sht_r(167),
	datac => \ALT_INV_sht_r~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_f_div(2),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \sht_r~35_combout\);

-- Location: FF_X83_Y8_N32
\sht_r[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~35_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(168));

-- Location: LABCELL_X83_Y8_N6
\sht_r[169]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[169]~feeder_combout\ = sht_r(168)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sht_r(168),
	combout => \sht_r[169]~feeder_combout\);

-- Location: FF_X83_Y8_N8
\sht_r[169]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[169]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(169));

-- Location: FF_X83_Y8_N29
\sht_r[170]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(169),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(170));

-- Location: LABCELL_X79_Y8_N30
\sht_r~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~34_combout\ = ( \Equal4~0_combout\ & ( f_div(7) ) ) # ( !\Equal4~0_combout\ & ( f_div(7) ) ) # ( \Equal4~0_combout\ & ( !f_div(7) & ( (((!\Equal3~0_combout\) # (\sht_r~0_combout\)) # (f_div(2))) # (sht_r(170)) ) ) ) # ( !\Equal4~0_combout\ & ( 
-- !f_div(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sht_r(170),
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => \ALT_INV_sht_r~0_combout\,
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => ALT_INV_f_div(7),
	combout => \sht_r~34_combout\);

-- Location: FF_X79_Y8_N31
\sht_r[171]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~34_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(171));

-- Location: MLABCELL_X78_Y8_N48
\sht_r~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~33_combout\ = ( \sht_r~0_combout\ & ( sht_r(171) ) ) # ( !\sht_r~0_combout\ & ( sht_r(171) ) ) # ( \sht_r~0_combout\ & ( !sht_r(171) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(171) & ( (!\Equal4~0_combout\) # (((!\Equal3~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(171),
	combout => \sht_r~33_combout\);

-- Location: FF_X78_Y8_N50
\sht_r[172]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~33_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(172));

-- Location: MLABCELL_X78_Y8_N51
\sht_r~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~32_combout\ = ( \sht_r~0_combout\ & ( sht_r(172) ) ) # ( !\sht_r~0_combout\ & ( sht_r(172) ) ) # ( \sht_r~0_combout\ & ( !sht_r(172) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(172) & ( (!\Equal4~0_combout\) # (((!\Equal3~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(172),
	combout => \sht_r~32_combout\);

-- Location: FF_X78_Y8_N52
\sht_r[173]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~32_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(173));

-- Location: LABCELL_X81_Y9_N24
\sht_r~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~31_combout\ = ( sht_r(173) & ( \sht_r~0_combout\ ) ) # ( !sht_r(173) & ( \sht_r~0_combout\ ) ) # ( sht_r(173) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(173) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_sht_r(173),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~31_combout\);

-- Location: FF_X81_Y9_N25
\sht_r[174]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~31_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(174));

-- Location: MLABCELL_X82_Y9_N51
\sht_r[175]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[175]~feeder_combout\ = ( sht_r(174) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(174),
	combout => \sht_r[175]~feeder_combout\);

-- Location: FF_X82_Y9_N52
\sht_r[175]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[175]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(175));

-- Location: LABCELL_X83_Y9_N33
\sht_r[176]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[176]~feeder_combout\ = ( sht_r(175) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(175),
	combout => \sht_r[176]~feeder_combout\);

-- Location: FF_X83_Y9_N35
\sht_r[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[176]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(176));

-- Location: LABCELL_X83_Y9_N30
\sht_r[177]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[177]~feeder_combout\ = sht_r(176)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(176),
	combout => \sht_r[177]~feeder_combout\);

-- Location: FF_X83_Y9_N31
\sht_r[177]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[177]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(177));

-- Location: LABCELL_X83_Y9_N45
\sht_r~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~30_combout\ = ( \Equal3~0_combout\ & ( \Equal4~0_combout\ & ( (((sht_r(177)) # (f_div(7))) # (f_div(2))) # (\sht_r~0_combout\) ) ) ) # ( !\Equal3~0_combout\ & ( \Equal4~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\Equal3~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sht_r~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => ALT_INV_sht_r(177),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~30_combout\);

-- Location: FF_X83_Y9_N47
\sht_r[178]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~30_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(178));

-- Location: FF_X83_Y9_N29
\sht_r[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(178),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(179));

-- Location: FF_X83_Y9_N26
\sht_r[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(179),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(180));

-- Location: FF_X83_Y9_N2
\sht_r[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(180),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(181));

-- Location: FF_X83_Y9_N20
\sht_r[182]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(181),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(182));

-- Location: FF_X83_Y9_N22
\sht_r[183]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(182),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(183));

-- Location: FF_X83_Y9_N5
\sht_r[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(183),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(184));

-- Location: FF_X83_Y9_N43
\sht_r[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(184),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(185));

-- Location: LABCELL_X83_Y9_N9
\sht_r~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~29_combout\ = ( \sht_r~0_combout\ & ( sht_r(185) ) ) # ( !\sht_r~0_combout\ & ( sht_r(185) ) ) # ( \sht_r~0_combout\ & ( !sht_r(185) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(185) & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(185),
	combout => \sht_r~29_combout\);

-- Location: FF_X83_Y9_N10
\sht_r[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~29_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(186));

-- Location: FF_X83_Y9_N50
\sht_r[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(186),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(187));

-- Location: LABCELL_X83_Y9_N51
\sht_r~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~28_combout\ = ( \sht_r~0_combout\ & ( \Equal4~0_combout\ ) ) # ( !\sht_r~0_combout\ & ( \Equal4~0_combout\ & ( (((!\Equal3~0_combout\) # (f_div(7))) # (f_div(2))) # (sht_r(187)) ) ) ) # ( \sht_r~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\sht_r~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sht_r(187),
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~28_combout\);

-- Location: FF_X83_Y9_N52
\sht_r[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~28_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(188));

-- Location: LABCELL_X83_Y9_N54
\sht_r~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~27_combout\ = ( \Equal3~0_combout\ & ( f_div(2) ) ) # ( !\Equal3~0_combout\ & ( f_div(2) ) ) # ( \Equal3~0_combout\ & ( !f_div(2) & ( (!\Equal4~0_combout\) # (((f_div(7)) # (\sht_r~0_combout\)) # (sht_r(188))) ) ) ) # ( !\Equal3~0_combout\ & ( 
-- !f_div(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_sht_r(188),
	datac => \ALT_INV_sht_r~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => ALT_INV_f_div(2),
	combout => \sht_r~27_combout\);

-- Location: FF_X83_Y9_N56
\sht_r[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~27_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(189));

-- Location: FF_X83_Y9_N59
\sht_r[190]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(189),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(190));

-- Location: FF_X83_Y9_N14
\sht_r[191]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(190),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(191));

-- Location: LABCELL_X83_Y9_N15
\sht_r~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~26_combout\ = ( \Equal3~0_combout\ & ( \Equal4~0_combout\ & ( (((sht_r(191)) # (f_div(7))) # (f_div(2))) # (\sht_r~0_combout\) ) ) ) # ( !\Equal3~0_combout\ & ( \Equal4~0_combout\ ) ) # ( \Equal3~0_combout\ & ( !\Equal4~0_combout\ ) ) # ( 
-- !\Equal3~0_combout\ & ( !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sht_r~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => ALT_INV_sht_r(191),
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~26_combout\);

-- Location: FF_X83_Y9_N16
\sht_r[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~26_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(192));

-- Location: LABCELL_X83_Y9_N36
\sht_r~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~25_combout\ = ( \sht_r~0_combout\ & ( sht_r(192) ) ) # ( !\sht_r~0_combout\ & ( sht_r(192) ) ) # ( \sht_r~0_combout\ & ( !sht_r(192) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(192) & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(192),
	combout => \sht_r~25_combout\);

-- Location: FF_X83_Y9_N37
\sht_r[193]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~25_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(193));

-- Location: LABCELL_X83_Y9_N39
\sht_r~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~24_combout\ = ( \sht_r~0_combout\ & ( sht_r(193) ) ) # ( !\sht_r~0_combout\ & ( sht_r(193) ) ) # ( \sht_r~0_combout\ & ( !sht_r(193) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(193) & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(193),
	combout => \sht_r~24_combout\);

-- Location: FF_X83_Y9_N40
\sht_r[194]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~24_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(194));

-- Location: LABCELL_X83_Y10_N54
\sht_r[195]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[195]~feeder_combout\ = ( sht_r(194) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(194),
	combout => \sht_r[195]~feeder_combout\);

-- Location: FF_X83_Y10_N56
\sht_r[195]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[195]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(195));

-- Location: LABCELL_X83_Y10_N45
\sht_r~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~23_combout\ = ( sht_r(195) & ( \sht_r~0_combout\ ) ) # ( !sht_r(195) & ( \sht_r~0_combout\ ) ) # ( sht_r(195) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(195) & ( !\sht_r~0_combout\ & ( (!\Equal4~0_combout\) # (((!\Equal3~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_sht_r(195),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~23_combout\);

-- Location: FF_X83_Y10_N47
\sht_r[196]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~23_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(196));

-- Location: LABCELL_X83_Y10_N42
\sht_r~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~22_combout\ = ( sht_r(196) & ( \sht_r~0_combout\ ) ) # ( !sht_r(196) & ( \sht_r~0_combout\ ) ) # ( sht_r(196) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(196) & ( !\sht_r~0_combout\ & ( (!\Equal4~0_combout\) # (((!\Equal3~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_sht_r(196),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~22_combout\);

-- Location: FF_X83_Y10_N44
\sht_r[197]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~22_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(197));

-- Location: FF_X83_Y10_N41
\sht_r[198]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(197),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(198));

-- Location: FF_X83_Y10_N38
\sht_r[199]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(198),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(199));

-- Location: FF_X83_Y10_N35
\sht_r[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(199),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(200));

-- Location: LABCELL_X83_Y10_N30
\sht_r~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~21_combout\ = ( f_div(2) & ( \Equal3~0_combout\ ) ) # ( !f_div(2) & ( \Equal3~0_combout\ & ( (!\Equal4~0_combout\) # (((\sht_r~0_combout\) # (sht_r(200))) # (f_div(7))) ) ) ) # ( f_div(2) & ( !\Equal3~0_combout\ ) ) # ( !f_div(2) & ( 
-- !\Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_sht_r(200),
	datad => \ALT_INV_sht_r~0_combout\,
	datae => ALT_INV_f_div(2),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \sht_r~21_combout\);

-- Location: FF_X83_Y10_N32
\sht_r[201]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~21_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(201));

-- Location: FF_X83_Y10_N29
\sht_r[202]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(201),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(202));

-- Location: FF_X83_Y10_N26
\sht_r[203]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(202),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(203));

-- Location: FF_X83_Y10_N23
\sht_r[204]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(203),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(204));

-- Location: FF_X83_Y10_N20
\sht_r[205]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(204),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(205));

-- Location: FF_X83_Y10_N16
\sht_r[206]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(205),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(206));

-- Location: FF_X83_Y10_N14
\sht_r[207]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(206),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(207));

-- Location: FF_X83_Y10_N8
\sht_r[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(207),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(208));

-- Location: FF_X83_Y10_N11
\sht_r[209]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(208),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(209));

-- Location: LABCELL_X83_Y10_N0
\sht_r~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~20_combout\ = ( f_div(2) & ( \Equal3~0_combout\ ) ) # ( !f_div(2) & ( \Equal3~0_combout\ & ( (((!\Equal4~0_combout\) # (f_div(7))) # (sht_r(209))) # (\sht_r~0_combout\) ) ) ) # ( f_div(2) & ( !\Equal3~0_combout\ ) ) # ( !f_div(2) & ( 
-- !\Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sht_r~0_combout\,
	datab => ALT_INV_sht_r(209),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_f_div(2),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \sht_r~20_combout\);

-- Location: FF_X83_Y10_N2
\sht_r[210]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~20_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(210));

-- Location: FF_X83_Y10_N5
\sht_r[211]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(210),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(211));

-- Location: LABCELL_X83_Y10_N48
\sht_r~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~19_combout\ = ( sht_r(211) & ( \sht_r~0_combout\ ) ) # ( !sht_r(211) & ( \sht_r~0_combout\ ) ) # ( sht_r(211) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(211) & ( !\sht_r~0_combout\ & ( (!\Equal4~0_combout\) # (((!\Equal3~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_sht_r(211),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~19_combout\);

-- Location: FF_X83_Y10_N49
\sht_r[212]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~19_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(212));

-- Location: LABCELL_X83_Y10_N51
\sht_r~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~18_combout\ = ( sht_r(212) & ( \sht_r~0_combout\ ) ) # ( !sht_r(212) & ( \sht_r~0_combout\ ) ) # ( sht_r(212) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(212) & ( !\sht_r~0_combout\ & ( (!\Equal4~0_combout\) # (((!\Equal3~0_combout\) # (f_div(7))) # 
-- (f_div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => ALT_INV_f_div(2),
	datac => ALT_INV_f_div(7),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_sht_r(212),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~18_combout\);

-- Location: FF_X83_Y10_N52
\sht_r[213]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~18_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(213));

-- Location: FF_X82_Y10_N35
\sht_r[214]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(213),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(214));

-- Location: FF_X82_Y10_N32
\sht_r[215]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(214),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(215));

-- Location: MLABCELL_X82_Y10_N21
\sht_r~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~17_combout\ = ( sht_r(215) & ( \sht_r~0_combout\ ) ) # ( !sht_r(215) & ( \sht_r~0_combout\ ) ) # ( sht_r(215) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(215) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_sht_r(215),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~17_combout\);

-- Location: FF_X82_Y10_N23
\sht_r[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~17_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(216));

-- Location: MLABCELL_X82_Y10_N18
\sht_r~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~16_combout\ = ( sht_r(216) & ( \sht_r~0_combout\ ) ) # ( !sht_r(216) & ( \sht_r~0_combout\ ) ) # ( sht_r(216) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(216) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => ALT_INV_sht_r(216),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~16_combout\);

-- Location: FF_X82_Y10_N19
\sht_r[217]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~16_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(217));

-- Location: MLABCELL_X82_Y10_N15
\sht_r~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~15_combout\ = ( sht_r(217) & ( \sht_r~0_combout\ ) ) # ( !sht_r(217) & ( \sht_r~0_combout\ ) ) # ( sht_r(217) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(217) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_sht_r(217),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~15_combout\);

-- Location: FF_X82_Y10_N17
\sht_r[218]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~15_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(218));

-- Location: MLABCELL_X82_Y10_N12
\sht_r~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~14_combout\ = ( sht_r(218) & ( \sht_r~0_combout\ ) ) # ( !sht_r(218) & ( \sht_r~0_combout\ ) ) # ( sht_r(218) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(218) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => ALT_INV_sht_r(218),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~14_combout\);

-- Location: FF_X82_Y10_N14
\sht_r[219]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~14_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(219));

-- Location: MLABCELL_X82_Y10_N45
\sht_r~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~13_combout\ = ( f_div(2) & ( \Equal4~0_combout\ ) ) # ( !f_div(2) & ( \Equal4~0_combout\ & ( (!\Equal3~0_combout\) # (((f_div(7)) # (\sht_r~0_combout\)) # (sht_r(219))) ) ) ) # ( f_div(2) & ( !\Equal4~0_combout\ ) ) # ( !f_div(2) & ( 
-- !\Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_sht_r(219),
	datac => \ALT_INV_sht_r~0_combout\,
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_f_div(2),
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \sht_r~13_combout\);

-- Location: FF_X82_Y10_N47
\sht_r[220]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~13_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(220));

-- Location: LABCELL_X81_Y10_N42
\sht_r[221]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[221]~feeder_combout\ = ( sht_r(220) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(220),
	combout => \sht_r[221]~feeder_combout\);

-- Location: FF_X81_Y10_N44
\sht_r[221]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[221]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(221));

-- Location: LABCELL_X81_Y10_N33
\sht_r[222]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[222]~feeder_combout\ = sht_r(221)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(221),
	combout => \sht_r[222]~feeder_combout\);

-- Location: FF_X81_Y10_N35
\sht_r[222]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[222]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(222));

-- Location: FF_X81_Y10_N31
\sht_r[223]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(222),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(223));

-- Location: LABCELL_X81_Y10_N36
\sht_r[224]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[224]~feeder_combout\ = ( sht_r(223) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(223),
	combout => \sht_r[224]~feeder_combout\);

-- Location: FF_X81_Y10_N37
\sht_r[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[224]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(224));

-- Location: FF_X81_Y10_N28
\sht_r[225]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(224),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(225));

-- Location: LABCELL_X81_Y10_N24
\sht_r[226]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[226]~feeder_combout\ = ( sht_r(225) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(225),
	combout => \sht_r[226]~feeder_combout\);

-- Location: FF_X81_Y10_N26
\sht_r[226]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[226]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(226));

-- Location: FF_X81_Y10_N11
\sht_r[227]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(226),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(227));

-- Location: FF_X81_Y10_N8
\sht_r[228]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(227),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(228));

-- Location: LABCELL_X81_Y10_N39
\sht_r[229]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[229]~feeder_combout\ = sht_r(228)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(228),
	combout => \sht_r[229]~feeder_combout\);

-- Location: FF_X81_Y10_N41
\sht_r[229]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[229]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(229));

-- Location: LABCELL_X81_Y10_N45
\sht_r[230]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[230]~feeder_combout\ = sht_r(229)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sht_r(229),
	combout => \sht_r[230]~feeder_combout\);

-- Location: FF_X81_Y10_N46
\sht_r[230]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[230]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(230));

-- Location: MLABCELL_X82_Y10_N48
\sht_r[231]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[231]~feeder_combout\ = ( sht_r(230) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(230),
	combout => \sht_r[231]~feeder_combout\);

-- Location: FF_X82_Y10_N50
\sht_r[231]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[231]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(231));

-- Location: MLABCELL_X82_Y10_N51
\sht_r[232]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[232]~feeder_combout\ = sht_r(231)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sht_r(231),
	combout => \sht_r[232]~feeder_combout\);

-- Location: FF_X82_Y10_N52
\sht_r[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[232]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(232));

-- Location: FF_X82_Y10_N44
\sht_r[233]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(232),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(233));

-- Location: MLABCELL_X82_Y10_N3
\sht_r~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~12_combout\ = ( f_div(2) & ( \sht_r~0_combout\ ) ) # ( !f_div(2) & ( \sht_r~0_combout\ ) ) # ( f_div(2) & ( !\sht_r~0_combout\ ) ) # ( !f_div(2) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # ((!\Equal4~0_combout\) # ((f_div(7)) # 
-- (sht_r(233)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => \ALT_INV_Equal4~0_combout\,
	datac => ALT_INV_sht_r(233),
	datad => ALT_INV_f_div(7),
	datae => ALT_INV_f_div(2),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~12_combout\);

-- Location: FF_X82_Y10_N5
\sht_r[234]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~12_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(234));

-- Location: FF_X82_Y10_N2
\sht_r[235]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(234),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(235));

-- Location: MLABCELL_X82_Y10_N9
\sht_r~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~11_combout\ = ( sht_r(235) & ( \sht_r~0_combout\ ) ) # ( !sht_r(235) & ( \sht_r~0_combout\ ) ) # ( sht_r(235) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(235) & ( !\sht_r~0_combout\ & ( ((!\Equal4~0_combout\) # ((!\Equal3~0_combout\) # (f_div(2)))) # 
-- (f_div(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => \ALT_INV_Equal4~0_combout\,
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_sht_r(235),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~11_combout\);

-- Location: FF_X82_Y10_N10
\sht_r[236]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~11_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(236));

-- Location: MLABCELL_X82_Y10_N6
\sht_r~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~10_combout\ = ( sht_r(236) & ( \sht_r~0_combout\ ) ) # ( !sht_r(236) & ( \sht_r~0_combout\ ) ) # ( sht_r(236) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(236) & ( !\sht_r~0_combout\ & ( ((!\Equal4~0_combout\) # ((!\Equal3~0_combout\) # (f_div(2)))) # 
-- (f_div(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => \ALT_INV_Equal4~0_combout\,
	datac => \ALT_INV_Equal3~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => ALT_INV_sht_r(236),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~10_combout\);

-- Location: FF_X82_Y10_N7
\sht_r[237]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~10_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(237));

-- Location: LABCELL_X81_Y10_N0
\sht_r[238]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[238]~feeder_combout\ = ( sht_r(237) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(237),
	combout => \sht_r[238]~feeder_combout\);

-- Location: FF_X81_Y10_N2
\sht_r[238]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[238]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(238));

-- Location: FF_X81_Y10_N52
\sht_r[239]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(238),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(239));

-- Location: FF_X81_Y10_N50
\sht_r[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(239),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(240));

-- Location: FF_X81_Y10_N56
\sht_r[241]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(240),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(241));

-- Location: FF_X81_Y10_N58
\sht_r[242]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(241),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(242));

-- Location: LABCELL_X81_Y10_N3
\sht_r[243]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[243]~feeder_combout\ = ( sht_r(242) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(242),
	combout => \sht_r[243]~feeder_combout\);

-- Location: FF_X81_Y10_N5
\sht_r[243]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[243]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(243));

-- Location: FF_X81_Y10_N20
\sht_r[244]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(243),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(244));

-- Location: FF_X81_Y10_N22
\sht_r[245]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(244),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(245));

-- Location: LABCELL_X81_Y10_N12
\sht_r[246]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[246]~feeder_combout\ = ( sht_r(245) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(245),
	combout => \sht_r[246]~feeder_combout\);

-- Location: FF_X81_Y10_N13
\sht_r[246]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[246]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(246));

-- Location: LABCELL_X81_Y10_N15
\sht_r[247]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[247]~feeder_combout\ = ( sht_r(246) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(246),
	combout => \sht_r[247]~feeder_combout\);

-- Location: FF_X81_Y10_N16
\sht_r[247]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[247]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(247));

-- Location: FF_X83_Y8_N58
\sht_r[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(247),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(248));

-- Location: LABCELL_X83_Y8_N18
\sht_r~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~9_combout\ = ( \sht_r~0_combout\ & ( sht_r(248) ) ) # ( !\sht_r~0_combout\ & ( sht_r(248) ) ) # ( \sht_r~0_combout\ & ( !sht_r(248) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(248) & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(248),
	combout => \sht_r~9_combout\);

-- Location: FF_X83_Y8_N19
\sht_r[249]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~9_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(249));

-- Location: LABCELL_X83_Y8_N21
\sht_r~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~8_combout\ = ( \sht_r~0_combout\ & ( sht_r(249) ) ) # ( !\sht_r~0_combout\ & ( sht_r(249) ) ) # ( \sht_r~0_combout\ & ( !sht_r(249) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(249) & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(249),
	combout => \sht_r~8_combout\);

-- Location: FF_X83_Y8_N22
\sht_r[250]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~8_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(250));

-- Location: MLABCELL_X82_Y10_N27
\sht_r~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~7_combout\ = ( sht_r(250) & ( \sht_r~0_combout\ ) ) # ( !sht_r(250) & ( \sht_r~0_combout\ ) ) # ( sht_r(250) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(250) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_sht_r(250),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~7_combout\);

-- Location: FF_X82_Y10_N29
\sht_r[251]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~7_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(251));

-- Location: MLABCELL_X82_Y10_N24
\sht_r~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~6_combout\ = ( sht_r(251) & ( \sht_r~0_combout\ ) ) # ( !sht_r(251) & ( \sht_r~0_combout\ ) ) # ( sht_r(251) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(251) & ( !\sht_r~0_combout\ & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => ALT_INV_sht_r(251),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~6_combout\);

-- Location: FF_X82_Y10_N25
\sht_r[252]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~6_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(252));

-- Location: MLABCELL_X82_Y10_N57
\sht_r[253]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[253]~feeder_combout\ = ( sht_r(252) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(252),
	combout => \sht_r[253]~feeder_combout\);

-- Location: FF_X82_Y10_N58
\sht_r[253]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[253]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(253));

-- Location: MLABCELL_X82_Y10_N54
\sht_r[254]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r[254]~feeder_combout\ = ( sht_r(253) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sht_r(253),
	combout => \sht_r[254]~feeder_combout\);

-- Location: FF_X82_Y10_N56
\sht_r[254]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r[254]~feeder_combout\,
	sclr => \ALT_INV_sht_r~1_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(254));

-- Location: FF_X82_Y10_N41
\sht_r[255]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(254),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(255));

-- Location: FF_X82_Y10_N37
\sht_r[256]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(255),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(256));

-- Location: FF_X83_Y8_N41
\sht_r[257]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(256),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(257));

-- Location: LABCELL_X83_Y8_N15
\sht_r~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~5_combout\ = ( \sht_r~0_combout\ & ( sht_r(257) ) ) # ( !\sht_r~0_combout\ & ( sht_r(257) ) ) # ( \sht_r~0_combout\ & ( !sht_r(257) ) ) # ( !\sht_r~0_combout\ & ( !sht_r(257) & ( (!\Equal3~0_combout\) # (((!\Equal4~0_combout\) # (f_div(2))) # 
-- (f_div(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_f_div(7),
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_sht_r~0_combout\,
	dataf => ALT_INV_sht_r(257),
	combout => \sht_r~5_combout\);

-- Location: FF_X83_Y8_N17
\sht_r[258]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~5_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(258));

-- Location: FF_X82_Y8_N16
\sht_r[259]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(258),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(259));

-- Location: MLABCELL_X82_Y8_N3
\sht_r~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~4_combout\ = ( sht_r(259) & ( \sht_r~0_combout\ ) ) # ( !sht_r(259) & ( \sht_r~0_combout\ ) ) # ( sht_r(259) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(259) & ( !\sht_r~0_combout\ & ( ((!\Equal3~0_combout\) # ((!\Equal4~0_combout\) # (f_div(2)))) # 
-- (f_div(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => ALT_INV_sht_r(259),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~4_combout\);

-- Location: FF_X82_Y8_N5
\sht_r[260]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~4_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(260));

-- Location: MLABCELL_X82_Y8_N0
\sht_r~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sht_r~3_combout\ = ( sht_r(260) & ( \sht_r~0_combout\ ) ) # ( !sht_r(260) & ( \sht_r~0_combout\ ) ) # ( sht_r(260) & ( !\sht_r~0_combout\ ) ) # ( !sht_r(260) & ( !\sht_r~0_combout\ & ( ((!\Equal3~0_combout\) # ((!\Equal4~0_combout\) # (f_div(2)))) # 
-- (f_div(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_f_div(7),
	datab => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_f_div(2),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_sht_r(260),
	dataf => \ALT_INV_sht_r~0_combout\,
	combout => \sht_r~3_combout\);

-- Location: FF_X82_Y8_N2
\sht_r[261]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sht_r~3_combout\,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(261));

-- Location: FF_X82_Y8_N29
\sht_r[262]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(261),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(262));

-- Location: FF_X80_Y8_N56
\sht_r[263]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => sht_r(262),
	sclr => \ALT_INV_sht_r~1_combout\,
	sload => VCC,
	ena => \sht_r[250]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sht_r(263));

-- Location: LABCELL_X80_Y8_N54
\SDIN~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDIN~4_combout\ = ( \Equal1~0_combout\ & ( (\Equal5~0_combout\ & ((!\SDIN~2_combout\) # (!\Equal9~0_combout\))) ) ) # ( !\Equal1~0_combout\ & ( (!\Equal5~0_combout\ & (((sht_r(263))))) # (\Equal5~0_combout\ & ((!\SDIN~2_combout\) # 
-- ((!\Equal9~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011111110001100101111111000110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SDIN~2_combout\,
	datab => \ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_Equal9~0_combout\,
	datad => ALT_INV_sht_r(263),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \SDIN~4_combout\);

-- Location: LABCELL_X80_Y8_N27
\SDIN~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDIN~1_combout\ = ( \Equal1~0_combout\ & ( ((!wcnt(1)) # ((!wcnt(3)) # (wcnt(2)))) # (wcnt(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(0),
	datab => ALT_INV_wcnt(1),
	datac => ALT_INV_wcnt(2),
	datad => ALT_INV_wcnt(3),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \SDIN~1_combout\);

-- Location: LABCELL_X80_Y8_N36
\SDIN~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDIN~5_combout\ = ( \SDIN~1_combout\ & ( \Equal5~0_combout\ & ( \SDIN~4_combout\ ) ) ) # ( !\SDIN~1_combout\ & ( \Equal5~0_combout\ & ( \SDIN~4_combout\ ) ) ) # ( \SDIN~1_combout\ & ( !\Equal5~0_combout\ & ( ((!\SDIN~3_combout\ & f_div(8))) # 
-- (\SDIN~4_combout\) ) ) ) # ( !\SDIN~1_combout\ & ( !\Equal5~0_combout\ & ( (!\Equal10~0_combout\) # (\SDIN~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111000011111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal10~0_combout\,
	datab => \ALT_INV_SDIN~3_combout\,
	datac => \ALT_INV_SDIN~4_combout\,
	datad => ALT_INV_f_div(8),
	datae => \ALT_INV_SDIN~1_combout\,
	dataf => \ALT_INV_Equal5~0_combout\,
	combout => \SDIN~5_combout\);

-- Location: LABCELL_X80_Y8_N21
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( bcnt(0) & ( (bcnt(3) & (bcnt(2) & (!bcnt(1) $ (!bcnt(4))))) ) ) # ( !bcnt(0) & ( (bcnt(1) & (!bcnt(3) & (bcnt(4) & bcnt(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000100100000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(1),
	datab => ALT_INV_bcnt(3),
	datac => ALT_INV_bcnt(4),
	datad => ALT_INV_bcnt(2),
	dataf => ALT_INV_bcnt(0),
	combout => \process_0~1_combout\);

-- Location: LABCELL_X80_Y8_N30
\SDIN~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDIN~6_combout\ = ( \SDIN~2_combout\ & ( \Equal1~0_combout\ & ( \Equal9~0_combout\ ) ) ) # ( \SDIN~2_combout\ & ( !\Equal1~0_combout\ & ( (\Equal9~0_combout\ & \Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal9~0_combout\,
	datad => \ALT_INV_Equal5~0_combout\,
	datae => \ALT_INV_SDIN~2_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \SDIN~6_combout\);

-- Location: LABCELL_X80_Y8_N45
\SDIN~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDIN~7_combout\ = ( \Equal10~0_combout\ & ( \SDIN~6_combout\ ) ) # ( !\Equal10~0_combout\ & ( \SDIN~6_combout\ ) ) # ( \Equal10~0_combout\ & ( !\SDIN~6_combout\ ) ) # ( !\Equal10~0_combout\ & ( !\SDIN~6_combout\ & ( (!\RES_N~input_o\) # 
-- ((!\Equal5~0_combout\ & ((\SDIN~1_combout\) # (\process_0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111011101110111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RES_N~input_o\,
	datab => \ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_process_0~1_combout\,
	datad => \ALT_INV_SDIN~1_combout\,
	datae => \ALT_INV_Equal10~0_combout\,
	dataf => \ALT_INV_SDIN~6_combout\,
	combout => \SDIN~7_combout\);

-- Location: FF_X80_Y8_N37
\SDIN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \SDIN~5_combout\,
	ena => \SDIN~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDIN~reg0_q\);

-- Location: LABCELL_X80_Y8_N12
\SDIN~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDIN~8_combout\ = ( bcnt(1) & ( (!bcnt(2)) # ((!bcnt(0) & ((!bcnt(4)) # (bcnt(3)))) # (bcnt(0) & ((!bcnt(3)) # (bcnt(4))))) ) ) # ( !bcnt(1) & ( (!bcnt(0)) # ((!bcnt(3)) # ((!bcnt(4)) # (!bcnt(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111011111111111001111111111111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => ALT_INV_bcnt(3),
	datac => ALT_INV_bcnt(4),
	datad => ALT_INV_bcnt(2),
	dataf => ALT_INV_bcnt(1),
	combout => \SDIN~8_combout\);

-- Location: FF_X80_Y8_N13
\SDIN~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \SDIN~8_combout\,
	ena => \SDIN~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDIN~en_q\);

-- Location: LABCELL_X81_Y8_N6
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \Equal1~0_combout\ & ( (wcnt(1) & (wcnt(3) & (!wcnt(2) & !wcnt(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(1),
	datab => ALT_INV_wcnt(3),
	datac => ALT_INV_wcnt(2),
	datad => ALT_INV_wcnt(0),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \process_0~0_combout\);

-- Location: MLABCELL_X84_Y8_N15
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( f_div(7) & ( \Equal3~0_combout\ & ( (\Equal4~0_combout\ & f_div(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_f_div(2),
	datae => ALT_INV_f_div(7),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: MLABCELL_X82_Y8_N42
\Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = ( \Equal4~0_combout\ & ( (\Equal4~1_combout\ & (f_div(3) & f_div(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal4~1_combout\,
	datac => ALT_INV_f_div(3),
	datad => ALT_INV_f_div(2),
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Equal4~2_combout\);

-- Location: LABCELL_X85_Y8_N21
\SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SCLK~0_combout\ = ( \SCLK~reg0_q\ & ( \Equal4~2_combout\ & ( \Equal3~1_combout\ ) ) ) # ( !\SCLK~reg0_q\ & ( \Equal4~2_combout\ & ( \Equal3~1_combout\ ) ) ) # ( \SCLK~reg0_q\ & ( !\Equal4~2_combout\ & ( (\RES_N~input_o\) # (\Equal3~1_combout\) ) ) ) # ( 
-- !\SCLK~reg0_q\ & ( !\Equal4~2_combout\ & ( ((\process_0~0_combout\ & (\RES_N~input_o\ & \Equal2~1_combout\))) # (\Equal3~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001111110011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_RES_N~input_o\,
	datad => \ALT_INV_Equal2~1_combout\,
	datae => \ALT_INV_SCLK~reg0_q\,
	dataf => \ALT_INV_Equal4~2_combout\,
	combout => \SCLK~0_combout\);

-- Location: FF_X85_Y8_N22
\SCLK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \SCLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCLK~reg0_q\);

-- Location: LABCELL_X36_Y40_N0
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


