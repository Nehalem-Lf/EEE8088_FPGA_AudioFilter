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

-- DATE "02/17/2020 12:02:10"

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

ENTITY 	codec IS
    PORT (
	CLOCK_50 : IN std_logic;
	RES_N : IN std_logic;
	SCLK : OUT std_logic;
	SDIN : OUT std_logic
	);
END codec;

-- Design Ports Information
-- SCLK	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDIN	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RES_N	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF codec IS
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \RES_N~input_o\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \wcnt~2_combout\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \fcnt[0]~8_combout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \fcnt[1]~0_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \fcnt[31]~2_combout\ : std_logic;
SIGNAL \fcnt[13]~3_combout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \fcnt[4]~5_combout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \fcnt[5]~6_combout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \fcnt[6]~7_combout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \fcnt[7]~9_combout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \fcnt[8]~1_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \fcnt[31]~4_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \wcnt[1]~0_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \wcnt~1_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \wcnt~3_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \wcnt~4_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \bcnt~3_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \bcnt[0]~1_combout\ : std_logic;
SIGNAL \bcnt[0]~2_combout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \bcnt[2]~6_combout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \bcnt[3]~5_combout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \bcnt[4]~7_combout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \bcnt[13]~feeder_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \bcnt[31]~4_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \bcnt[0]~0_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \shift_r~83_combout\ : std_logic;
SIGNAL \shift_r~0_combout\ : std_logic;
SIGNAL \shift_r[98]~1_combout\ : std_logic;
SIGNAL \shift_r[6]~feeder_combout\ : std_logic;
SIGNAL \shift_r[8]~feeder_combout\ : std_logic;
SIGNAL \shift_r~82_combout\ : std_logic;
SIGNAL \shift_r[11]~feeder_combout\ : std_logic;
SIGNAL \shift_r~81_combout\ : std_logic;
SIGNAL \shift_r[16]~feeder_combout\ : std_logic;
SIGNAL \shift_r~80_combout\ : std_logic;
SIGNAL \shift_r~79_combout\ : std_logic;
SIGNAL \shift_r~78_combout\ : std_logic;
SIGNAL \shift_r[22]~feeder_combout\ : std_logic;
SIGNAL \shift_r[23]~feeder_combout\ : std_logic;
SIGNAL \shift_r[28]~feeder_combout\ : std_logic;
SIGNAL \shift_r~77_combout\ : std_logic;
SIGNAL \shift_r~76_combout\ : std_logic;
SIGNAL \shift_r[41]~feeder_combout\ : std_logic;
SIGNAL \shift_r~75_combout\ : std_logic;
SIGNAL \shift_r~74_combout\ : std_logic;
SIGNAL \shift_r~73_combout\ : std_logic;
SIGNAL \shift_r~72_combout\ : std_logic;
SIGNAL \shift_r~71_combout\ : std_logic;
SIGNAL \shift_r[50]~feeder_combout\ : std_logic;
SIGNAL \shift_r[53]~feeder_combout\ : std_logic;
SIGNAL \shift_r~70_combout\ : std_logic;
SIGNAL \shift_r[55]~feeder_combout\ : std_logic;
SIGNAL \shift_r~69_combout\ : std_logic;
SIGNAL \shift_r~68_combout\ : std_logic;
SIGNAL \shift_r~67_combout\ : std_logic;
SIGNAL \shift_r[61]~feeder_combout\ : std_logic;
SIGNAL \shift_r~66_combout\ : std_logic;
SIGNAL \shift_r~65_combout\ : std_logic;
SIGNAL \shift_r~64_combout\ : std_logic;
SIGNAL \shift_r~63_combout\ : std_logic;
SIGNAL \shift_r~62_combout\ : std_logic;
SIGNAL \shift_r~61_combout\ : std_logic;
SIGNAL \shift_r[79]~feeder_combout\ : std_logic;
SIGNAL \shift_r[81]~feeder_combout\ : std_logic;
SIGNAL \shift_r~60_combout\ : std_logic;
SIGNAL \shift_r~59_combout\ : std_logic;
SIGNAL \shift_r~58_combout\ : std_logic;
SIGNAL \shift_r~57_combout\ : std_logic;
SIGNAL \shift_r~56_combout\ : std_logic;
SIGNAL \shift_r[94]~feeder_combout\ : std_logic;
SIGNAL \shift_r[95]~feeder_combout\ : std_logic;
SIGNAL \shift_r~55_combout\ : std_logic;
SIGNAL \shift_r[97]~feeder_combout\ : std_logic;
SIGNAL \shift_r[100]~feeder_combout\ : std_logic;
SIGNAL \shift_r[101]~feeder_combout\ : std_logic;
SIGNAL \shift_r~54_combout\ : std_logic;
SIGNAL \shift_r~53_combout\ : std_logic;
SIGNAL \shift_r[108]~feeder_combout\ : std_logic;
SIGNAL \shift_r[109]~feeder_combout\ : std_logic;
SIGNAL \shift_r~52_combout\ : std_logic;
SIGNAL \shift_r[115]~feeder_combout\ : std_logic;
SIGNAL \shift_r~51_combout\ : std_logic;
SIGNAL \shift_r~50_combout\ : std_logic;
SIGNAL \shift_r~49_combout\ : std_logic;
SIGNAL \shift_r~48_combout\ : std_logic;
SIGNAL \shift_r[125]~feeder_combout\ : std_logic;
SIGNAL \shift_r~47_combout\ : std_logic;
SIGNAL \shift_r~46_combout\ : std_logic;
SIGNAL \shift_r[128]~feeder_combout\ : std_logic;
SIGNAL \shift_r[129]~feeder_combout\ : std_logic;
SIGNAL \shift_r~45_combout\ : std_logic;
SIGNAL \shift_r[135]~feeder_combout\ : std_logic;
SIGNAL \shift_r~44_combout\ : std_logic;
SIGNAL \shift_r[139]~feeder_combout\ : std_logic;
SIGNAL \shift_r~43_combout\ : std_logic;
SIGNAL \shift_r~42_combout\ : std_logic;
SIGNAL \shift_r[147]~feeder_combout\ : std_logic;
SIGNAL \shift_r~41_combout\ : std_logic;
SIGNAL \shift_r~40_combout\ : std_logic;
SIGNAL \shift_r[152]~feeder_combout\ : std_logic;
SIGNAL \shift_r~39_combout\ : std_logic;
SIGNAL \shift_r~38_combout\ : std_logic;
SIGNAL \shift_r[155]~feeder_combout\ : std_logic;
SIGNAL \shift_r~37_combout\ : std_logic;
SIGNAL \shift_r~36_combout\ : std_logic;
SIGNAL \shift_r~35_combout\ : std_logic;
SIGNAL \shift_r~34_combout\ : std_logic;
SIGNAL \shift_r~33_combout\ : std_logic;
SIGNAL \shift_r~32_combout\ : std_logic;
SIGNAL \shift_r~31_combout\ : std_logic;
SIGNAL \shift_r~30_combout\ : std_logic;
SIGNAL \shift_r~29_combout\ : std_logic;
SIGNAL \shift_r~28_combout\ : std_logic;
SIGNAL \shift_r~27_combout\ : std_logic;
SIGNAL \shift_r~26_combout\ : std_logic;
SIGNAL \shift_r~25_combout\ : std_logic;
SIGNAL \shift_r~24_combout\ : std_logic;
SIGNAL \shift_r~23_combout\ : std_logic;
SIGNAL \shift_r~22_combout\ : std_logic;
SIGNAL \shift_r~21_combout\ : std_logic;
SIGNAL \shift_r~20_combout\ : std_logic;
SIGNAL \shift_r[202]~feeder_combout\ : std_logic;
SIGNAL \shift_r~19_combout\ : std_logic;
SIGNAL \shift_r~18_combout\ : std_logic;
SIGNAL \shift_r~17_combout\ : std_logic;
SIGNAL \shift_r[214]~feeder_combout\ : std_logic;
SIGNAL \shift_r[215]~feeder_combout\ : std_logic;
SIGNAL \shift_r~16_combout\ : std_logic;
SIGNAL \shift_r~15_combout\ : std_logic;
SIGNAL \shift_r~14_combout\ : std_logic;
SIGNAL \shift_r~13_combout\ : std_logic;
SIGNAL \shift_r~12_combout\ : std_logic;
SIGNAL \shift_r[221]~feeder_combout\ : std_logic;
SIGNAL \shift_r[224]~feeder_combout\ : std_logic;
SIGNAL \shift_r[230]~feeder_combout\ : std_logic;
SIGNAL \shift_r[232]~feeder_combout\ : std_logic;
SIGNAL \shift_r~11_combout\ : std_logic;
SIGNAL \shift_r~10_combout\ : std_logic;
SIGNAL \shift_r~9_combout\ : std_logic;
SIGNAL \shift_r[240]~feeder_combout\ : std_logic;
SIGNAL \shift_r[243]~feeder_combout\ : std_logic;
SIGNAL \shift_r[246]~feeder_combout\ : std_logic;
SIGNAL \shift_r~8_combout\ : std_logic;
SIGNAL \shift_r~7_combout\ : std_logic;
SIGNAL \shift_r~6_combout\ : std_logic;
SIGNAL \shift_r~5_combout\ : std_logic;
SIGNAL \shift_r[253]~feeder_combout\ : std_logic;
SIGNAL \shift_r[254]~feeder_combout\ : std_logic;
SIGNAL \shift_r~4_combout\ : std_logic;
SIGNAL \shift_r~3_combout\ : std_logic;
SIGNAL \shift_r~2_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \sdin_1~1_combout\ : std_logic;
SIGNAL \sdin_1~2_combout\ : std_logic;
SIGNAL \sdin_1~q\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \sdin_1~en_q\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \SCLK~0_combout\ : std_logic;
SIGNAL \SCLK~reg0_q\ : std_logic;
SIGNAL fcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL bcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL wcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL shift_r : std_logic_vector(263 DOWNTO 0);
SIGNAL ALT_INV_shift_r : std_logic_vector(263 DOWNTO 0);
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL ALT_INV_wcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_bcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL ALT_INV_fcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_RES_N~input_o\ : std_logic;
SIGNAL \ALT_INV_shift_r~0_combout\ : std_logic;
SIGNAL \ALT_INV_bcnt~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~8_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~7_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_SCLK~reg0_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_RES_N <= RES_N;
SCLK <= ww_SCLK;
SDIN <= ww_SDIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_shift_r(229) <= NOT shift_r(229);
ALT_INV_shift_r(231) <= NOT shift_r(231);
ALT_INV_shift_r(233) <= NOT shift_r(233);
ALT_INV_shift_r(235) <= NOT shift_r(235);
ALT_INV_shift_r(239) <= NOT shift_r(239);
ALT_INV_shift_r(242) <= NOT shift_r(242);
ALT_INV_shift_r(245) <= NOT shift_r(245);
ALT_INV_shift_r(248) <= NOT shift_r(248);
ALT_INV_shift_r(253) <= NOT shift_r(253);
ALT_INV_shift_r(257) <= NOT shift_r(257);
ALT_INV_shift_r(259) <= NOT shift_r(259);
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add1~125_sumout\ <= NOT \Add1~125_sumout\;
\ALT_INV_Add1~121_sumout\ <= NOT \Add1~121_sumout\;
\ALT_INV_Add1~113_sumout\ <= NOT \Add1~113_sumout\;
\ALT_INV_Add1~65_sumout\ <= NOT \Add1~65_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
ALT_INV_shift_r(263) <= NOT shift_r(263);
\ALT_INV_Add2~125_sumout\ <= NOT \Add2~125_sumout\;
\ALT_INV_Add2~121_sumout\ <= NOT \Add2~121_sumout\;
\ALT_INV_Add2~113_sumout\ <= NOT \Add2~113_sumout\;
\ALT_INV_Add2~109_sumout\ <= NOT \Add2~109_sumout\;
\ALT_INV_Add2~105_sumout\ <= NOT \Add2~105_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
ALT_INV_wcnt(22) <= NOT wcnt(22);
ALT_INV_wcnt(23) <= NOT wcnt(23);
ALT_INV_wcnt(24) <= NOT wcnt(24);
ALT_INV_wcnt(10) <= NOT wcnt(10);
ALT_INV_wcnt(9) <= NOT wcnt(9);
ALT_INV_wcnt(25) <= NOT wcnt(25);
ALT_INV_wcnt(26) <= NOT wcnt(26);
ALT_INV_wcnt(11) <= NOT wcnt(11);
ALT_INV_wcnt(14) <= NOT wcnt(14);
ALT_INV_wcnt(28) <= NOT wcnt(28);
ALT_INV_wcnt(13) <= NOT wcnt(13);
ALT_INV_wcnt(12) <= NOT wcnt(12);
ALT_INV_wcnt(20) <= NOT wcnt(20);
ALT_INV_wcnt(21) <= NOT wcnt(21);
ALT_INV_wcnt(16) <= NOT wcnt(16);
ALT_INV_wcnt(2) <= NOT wcnt(2);
ALT_INV_wcnt(17) <= NOT wcnt(17);
ALT_INV_wcnt(18) <= NOT wcnt(18);
ALT_INV_wcnt(19) <= NOT wcnt(19);
ALT_INV_wcnt(15) <= NOT wcnt(15);
ALT_INV_wcnt(27) <= NOT wcnt(27);
ALT_INV_wcnt(8) <= NOT wcnt(8);
ALT_INV_wcnt(7) <= NOT wcnt(7);
ALT_INV_wcnt(6) <= NOT wcnt(6);
ALT_INV_wcnt(5) <= NOT wcnt(5);
ALT_INV_wcnt(4) <= NOT wcnt(4);
ALT_INV_wcnt(30) <= NOT wcnt(30);
ALT_INV_wcnt(29) <= NOT wcnt(29);
ALT_INV_bcnt(1) <= NOT bcnt(1);
ALT_INV_bcnt(6) <= NOT bcnt(6);
ALT_INV_bcnt(5) <= NOT bcnt(5);
ALT_INV_bcnt(21) <= NOT bcnt(21);
ALT_INV_bcnt(24) <= NOT bcnt(24);
ALT_INV_bcnt(30) <= NOT bcnt(30);
ALT_INV_bcnt(29) <= NOT bcnt(29);
ALT_INV_bcnt(27) <= NOT bcnt(27);
ALT_INV_bcnt(26) <= NOT bcnt(26);
ALT_INV_bcnt(25) <= NOT bcnt(25);
ALT_INV_bcnt(12) <= NOT bcnt(12);
ALT_INV_bcnt(23) <= NOT bcnt(23);
ALT_INV_bcnt(13) <= NOT bcnt(13);
ALT_INV_bcnt(28) <= NOT bcnt(28);
ALT_INV_bcnt(11) <= NOT bcnt(11);
ALT_INV_bcnt(10) <= NOT bcnt(10);
ALT_INV_bcnt(8) <= NOT bcnt(8);
ALT_INV_bcnt(7) <= NOT bcnt(7);
ALT_INV_bcnt(19) <= NOT bcnt(19);
ALT_INV_bcnt(18) <= NOT bcnt(18);
ALT_INV_bcnt(17) <= NOT bcnt(17);
ALT_INV_bcnt(16) <= NOT bcnt(16);
ALT_INV_bcnt(15) <= NOT bcnt(15);
ALT_INV_bcnt(14) <= NOT bcnt(14);
ALT_INV_bcnt(22) <= NOT bcnt(22);
ALT_INV_bcnt(9) <= NOT bcnt(9);
ALT_INV_bcnt(20) <= NOT bcnt(20);
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
ALT_INV_fcnt(2) <= NOT fcnt(2);
ALT_INV_fcnt(23) <= NOT fcnt(23);
ALT_INV_fcnt(22) <= NOT fcnt(22);
ALT_INV_fcnt(21) <= NOT fcnt(21);
ALT_INV_fcnt(20) <= NOT fcnt(20);
ALT_INV_fcnt(19) <= NOT fcnt(19);
ALT_INV_fcnt(18) <= NOT fcnt(18);
ALT_INV_fcnt(17) <= NOT fcnt(17);
ALT_INV_fcnt(16) <= NOT fcnt(16);
ALT_INV_fcnt(15) <= NOT fcnt(15);
ALT_INV_fcnt(14) <= NOT fcnt(14);
ALT_INV_fcnt(13) <= NOT fcnt(13);
ALT_INV_fcnt(29) <= NOT fcnt(29);
ALT_INV_fcnt(28) <= NOT fcnt(28);
ALT_INV_fcnt(27) <= NOT fcnt(27);
ALT_INV_fcnt(26) <= NOT fcnt(26);
ALT_INV_fcnt(25) <= NOT fcnt(25);
ALT_INV_fcnt(24) <= NOT fcnt(24);
ALT_INV_fcnt(12) <= NOT fcnt(12);
ALT_INV_fcnt(10) <= NOT fcnt(10);
ALT_INV_fcnt(9) <= NOT fcnt(9);
ALT_INV_fcnt(11) <= NOT fcnt(11);
ALT_INV_fcnt(30) <= NOT fcnt(30);
ALT_INV_fcnt(3) <= NOT fcnt(3);
\ALT_INV_RES_N~input_o\ <= NOT \RES_N~input_o\;
ALT_INV_shift_r(20) <= NOT shift_r(20);
ALT_INV_shift_r(21) <= NOT shift_r(21);
ALT_INV_shift_r(44) <= NOT shift_r(44);
ALT_INV_shift_r(48) <= NOT shift_r(48);
ALT_INV_shift_r(49) <= NOT shift_r(49);
ALT_INV_shift_r(54) <= NOT shift_r(54);
ALT_INV_shift_r(57) <= NOT shift_r(57);
ALT_INV_shift_r(58) <= NOT shift_r(58);
ALT_INV_shift_r(68) <= NOT shift_r(68);
ALT_INV_shift_r(77) <= NOT shift_r(77);
ALT_INV_shift_r(78) <= NOT shift_r(78);
ALT_INV_shift_r(82) <= NOT shift_r(82);
ALT_INV_shift_r(92) <= NOT shift_r(92);
ALT_INV_shift_r(93) <= NOT shift_r(93);
ALT_INV_shift_r(96) <= NOT shift_r(96);
ALT_INV_shift_r(107) <= NOT shift_r(107);
ALT_INV_shift_r(114) <= NOT shift_r(114);
ALT_INV_shift_r(116) <= NOT shift_r(116);
ALT_INV_shift_r(124) <= NOT shift_r(124);
ALT_INV_shift_r(126) <= NOT shift_r(126);
ALT_INV_shift_r(127) <= NOT shift_r(127);
ALT_INV_shift_r(138) <= NOT shift_r(138);
ALT_INV_shift_r(140) <= NOT shift_r(140);
ALT_INV_shift_r(148) <= NOT shift_r(148);
ALT_INV_shift_r(153) <= NOT shift_r(153);
ALT_INV_shift_r(154) <= NOT shift_r(154);
ALT_INV_shift_r(164) <= NOT shift_r(164);
ALT_INV_shift_r(171) <= NOT shift_r(171);
ALT_INV_shift_r(172) <= NOT shift_r(172);
ALT_INV_shift_r(173) <= NOT shift_r(173);
ALT_INV_shift_r(188) <= NOT shift_r(188);
ALT_INV_shift_r(192) <= NOT shift_r(192);
ALT_INV_shift_r(193) <= NOT shift_r(193);
ALT_INV_shift_r(196) <= NOT shift_r(196);
ALT_INV_shift_r(201) <= NOT shift_r(201);
ALT_INV_shift_r(212) <= NOT shift_r(212);
ALT_INV_shift_r(213) <= NOT shift_r(213);
ALT_INV_shift_r(216) <= NOT shift_r(216);
ALT_INV_shift_r(217) <= NOT shift_r(217);
ALT_INV_shift_r(218) <= NOT shift_r(218);
ALT_INV_shift_r(219) <= NOT shift_r(219);
ALT_INV_shift_r(220) <= NOT shift_r(220);
ALT_INV_shift_r(236) <= NOT shift_r(236);
ALT_INV_shift_r(249) <= NOT shift_r(249);
ALT_INV_shift_r(250) <= NOT shift_r(250);
ALT_INV_shift_r(251) <= NOT shift_r(251);
ALT_INV_shift_r(252) <= NOT shift_r(252);
ALT_INV_shift_r(260) <= NOT shift_r(260);
\ALT_INV_shift_r~0_combout\ <= NOT \shift_r~0_combout\;
\ALT_INV_bcnt~3_combout\ <= NOT \bcnt~3_combout\;
\ALT_INV_Equal2~8_combout\ <= NOT \Equal2~8_combout\;
\ALT_INV_process_0~9_combout\ <= NOT \process_0~9_combout\;
\ALT_INV_Equal2~7_combout\ <= NOT \Equal2~7_combout\;
\ALT_INV_process_0~8_combout\ <= NOT \process_0~8_combout\;
\ALT_INV_process_0~7_combout\ <= NOT \process_0~7_combout\;
\ALT_INV_Equal5~3_combout\ <= NOT \Equal5~3_combout\;
\ALT_INV_Equal5~2_combout\ <= NOT \Equal5~2_combout\;
\ALT_INV_process_0~6_combout\ <= NOT \process_0~6_combout\;
\ALT_INV_process_0~5_combout\ <= NOT \process_0~5_combout\;
\ALT_INV_process_0~4_combout\ <= NOT \process_0~4_combout\;
ALT_INV_wcnt(31) <= NOT wcnt(31);
ALT_INV_wcnt(3) <= NOT wcnt(3);
ALT_INV_wcnt(0) <= NOT wcnt(0);
ALT_INV_wcnt(1) <= NOT wcnt(1);
\ALT_INV_process_0~3_combout\ <= NOT \process_0~3_combout\;
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_Equal2~6_combout\ <= NOT \Equal2~6_combout\;
\ALT_INV_Equal2~5_combout\ <= NOT \Equal2~5_combout\;
ALT_INV_bcnt(4) <= NOT bcnt(4);
ALT_INV_bcnt(2) <= NOT bcnt(2);
ALT_INV_bcnt(3) <= NOT bcnt(3);
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
ALT_INV_bcnt(31) <= NOT bcnt(31);
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
ALT_INV_bcnt(0) <= NOT bcnt(0);
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal5~1_combout\ <= NOT \Equal5~1_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
ALT_INV_fcnt(7) <= NOT fcnt(7);
ALT_INV_fcnt(0) <= NOT fcnt(0);
\ALT_INV_Equal5~0_combout\ <= NOT \Equal5~0_combout\;
ALT_INV_fcnt(6) <= NOT fcnt(6);
ALT_INV_fcnt(5) <= NOT fcnt(5);
ALT_INV_fcnt(4) <= NOT fcnt(4);
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
ALT_INV_fcnt(31) <= NOT fcnt(31);
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_fcnt(8) <= NOT fcnt(8);
ALT_INV_fcnt(1) <= NOT fcnt(1);
\ALT_INV_SCLK~reg0_q\ <= NOT \SCLK~reg0_q\;
ALT_INV_shift_r(0) <= NOT shift_r(0);
ALT_INV_shift_r(5) <= NOT shift_r(5);
ALT_INV_shift_r(7) <= NOT shift_r(7);
ALT_INV_shift_r(8) <= NOT shift_r(8);
ALT_INV_shift_r(10) <= NOT shift_r(10);
ALT_INV_shift_r(11) <= NOT shift_r(11);
ALT_INV_shift_r(15) <= NOT shift_r(15);
ALT_INV_shift_r(17) <= NOT shift_r(17);
ALT_INV_shift_r(19) <= NOT shift_r(19);
ALT_INV_shift_r(22) <= NOT shift_r(22);
ALT_INV_shift_r(27) <= NOT shift_r(27);
ALT_INV_shift_r(28) <= NOT shift_r(28);
ALT_INV_shift_r(35) <= NOT shift_r(35);
ALT_INV_shift_r(40) <= NOT shift_r(40);
ALT_INV_shift_r(41) <= NOT shift_r(41);
ALT_INV_shift_r(43) <= NOT shift_r(43);
ALT_INV_shift_r(47) <= NOT shift_r(47);
ALT_INV_shift_r(52) <= NOT shift_r(52);
ALT_INV_shift_r(53) <= NOT shift_r(53);
ALT_INV_shift_r(56) <= NOT shift_r(56);
ALT_INV_shift_r(60) <= NOT shift_r(60);
ALT_INV_shift_r(65) <= NOT shift_r(65);
ALT_INV_shift_r(67) <= NOT shift_r(67);
ALT_INV_shift_r(72) <= NOT shift_r(72);
ALT_INV_shift_r(76) <= NOT shift_r(76);
ALT_INV_shift_r(80) <= NOT shift_r(80);
ALT_INV_shift_r(81) <= NOT shift_r(81);
ALT_INV_shift_r(89) <= NOT shift_r(89);
ALT_INV_shift_r(91) <= NOT shift_r(91);
ALT_INV_shift_r(94) <= NOT shift_r(94);
ALT_INV_shift_r(95) <= NOT shift_r(95);
ALT_INV_shift_r(99) <= NOT shift_r(99);
ALT_INV_shift_r(100) <= NOT shift_r(100);
ALT_INV_shift_r(104) <= NOT shift_r(104);
ALT_INV_shift_r(106) <= NOT shift_r(106);
ALT_INV_shift_r(108) <= NOT shift_r(108);
ALT_INV_shift_r(113) <= NOT shift_r(113);
ALT_INV_shift_r(115) <= NOT shift_r(115);
ALT_INV_shift_r(120) <= NOT shift_r(120);
ALT_INV_shift_r(123) <= NOT shift_r(123);
ALT_INV_shift_r(125) <= NOT shift_r(125);
ALT_INV_shift_r(128) <= NOT shift_r(128);
ALT_INV_shift_r(130) <= NOT shift_r(130);
ALT_INV_shift_r(134) <= NOT shift_r(134);
ALT_INV_shift_r(137) <= NOT shift_r(137);
ALT_INV_shift_r(139) <= NOT shift_r(139);
ALT_INV_shift_r(146) <= NOT shift_r(146);
ALT_INV_shift_r(147) <= NOT shift_r(147);
ALT_INV_shift_r(151) <= NOT shift_r(151);
ALT_INV_shift_r(152) <= NOT shift_r(152);
ALT_INV_shift_r(161) <= NOT shift_r(161);
ALT_INV_shift_r(163) <= NOT shift_r(163);
ALT_INV_shift_r(167) <= NOT shift_r(167);
ALT_INV_shift_r(170) <= NOT shift_r(170);
ALT_INV_shift_r(177) <= NOT shift_r(177);
ALT_INV_shift_r(185) <= NOT shift_r(185);
ALT_INV_shift_r(187) <= NOT shift_r(187);
ALT_INV_shift_r(191) <= NOT shift_r(191);
ALT_INV_shift_r(195) <= NOT shift_r(195);
ALT_INV_shift_r(200) <= NOT shift_r(200);
ALT_INV_shift_r(209) <= NOT shift_r(209);
ALT_INV_shift_r(211) <= NOT shift_r(211);
ALT_INV_shift_r(214) <= NOT shift_r(214);
ALT_INV_shift_r(215) <= NOT shift_r(215);
ALT_INV_shift_r(223) <= NOT shift_r(223);

-- Location: IOOBUF_X89_Y25_N56
\SDIN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sdin_1~q\,
	oe => \sdin_1~en_q\,
	devoe => ww_devoe,
	o => ww_SDIN);

-- Location: IOOBUF_X89_Y20_N96
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

-- Location: LABCELL_X83_Y25_N27
\Equal2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (bcnt(0) & \Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~6_combout\,
	combout => \Equal2~8_combout\);

-- Location: IOIBUF_X89_Y25_N38
\RES_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RES_N,
	o => \RES_N~input_o\);

-- Location: LABCELL_X80_Y26_N0
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( !wcnt(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~86\ = CARRY(( !wcnt(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(0),
	cin => GND,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X81_Y26_N54
\wcnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \wcnt~2_combout\ = ( \Add0~85_sumout\ & ( !\RES_N~input_o\ ) ) # ( !\Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RES_N~input_o\,
	dataf => \ALT_INV_Add0~85_sumout\,
	combout => \wcnt~2_combout\);

-- Location: MLABCELL_X82_Y23_N0
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( !fcnt(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~122\ = CARRY(( !fcnt(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(0),
	cin => GND,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: LABCELL_X81_Y23_N57
\fcnt[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[0]~8_combout\ = ( \Equal1~5_combout\ & ( \Equal2~6_combout\ & ( (bcnt(0) & (\RES_N~input_o\ & \process_0~6_combout\)) ) ) ) # ( !\Equal1~5_combout\ & ( \Equal2~6_combout\ & ( (!\Add2~121_sumout\ & \RES_N~input_o\) ) ) ) # ( !\Equal1~5_combout\ & ( 
-- !\Equal2~6_combout\ & ( (!\Add2~121_sumout\ & \RES_N~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000001010000010100000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~121_sumout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_RES_N~input_o\,
	datad => \ALT_INV_process_0~6_combout\,
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => \ALT_INV_Equal2~6_combout\,
	combout => \fcnt[0]~8_combout\);

-- Location: FF_X81_Y23_N59
\fcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fcnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(0));

-- Location: MLABCELL_X82_Y23_N3
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( fcnt(1) ) + ( VCC ) + ( \Add2~122\ ))
-- \Add2~2\ = CARRY(( fcnt(1) ) + ( VCC ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(1),
	cin => \Add2~122\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X83_Y24_N12
\fcnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[1]~0_combout\ = ( \process_0~6_combout\ & ( \Add2~1_sumout\ & ( (!\Equal2~6_combout\) # ((!\RES_N~input_o\) # ((!bcnt(0)) # (!\Equal1~5_combout\))) ) ) ) # ( !\process_0~6_combout\ & ( \Add2~1_sumout\ ) ) # ( \process_0~6_combout\ & ( 
-- !\Add2~1_sumout\ & ( (!\RES_N~input_o\) # ((\Equal1~5_combout\ & ((!\Equal2~6_combout\) # (!bcnt(0))))) ) ) ) # ( !\process_0~6_combout\ & ( !\Add2~1_sumout\ & ( (!\RES_N~input_o\) # (\Equal1~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~6_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~6_combout\,
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \fcnt[1]~0_combout\);

-- Location: FF_X83_Y24_N14
\fcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(1));

-- Location: MLABCELL_X82_Y23_N6
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( fcnt(2) ) + ( VCC ) + ( \Add2~2\ ))
-- \Add2~118\ = CARRY(( fcnt(2) ) + ( VCC ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fcnt(2),
	cin => \Add2~2\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: LABCELL_X83_Y23_N6
\fcnt[31]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[31]~2_combout\ = ( \Equal1~5_combout\ ) # ( !\Equal1~5_combout\ & ( !\RES_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RES_N~input_o\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \fcnt[31]~2_combout\);

-- Location: LABCELL_X81_Y25_N6
\fcnt[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[13]~3_combout\ = ( \Equal2~6_combout\ & ( \Equal1~5_combout\ & ( (!\RES_N~input_o\) # ((!bcnt(0)) # (!\process_0~6_combout\)) ) ) ) # ( !\Equal2~6_combout\ & ( \Equal1~5_combout\ ) ) # ( \Equal2~6_combout\ & ( !\Equal1~5_combout\ ) ) # ( 
-- !\Equal2~6_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RES_N~input_o\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_process_0~6_combout\,
	datae => \ALT_INV_Equal2~6_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \fcnt[13]~3_combout\);

-- Location: FF_X82_Y23_N8
\fcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~117_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(2));

-- Location: MLABCELL_X82_Y23_N9
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( fcnt(3) ) + ( VCC ) + ( \Add2~118\ ))
-- \Add2~10\ = CARRY(( fcnt(3) ) + ( VCC ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(3),
	cin => \Add2~118\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X82_Y23_N11
\fcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(3));

-- Location: MLABCELL_X82_Y23_N12
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( fcnt(4) ) + ( VCC ) + ( \Add2~10\ ))
-- \Add2~106\ = CARRY(( fcnt(4) ) + ( VCC ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(4),
	cin => \Add2~10\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: LABCELL_X83_Y24_N45
\fcnt[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[4]~5_combout\ = ( \process_0~6_combout\ & ( \Add2~105_sumout\ & ( (!bcnt(0)) # ((!\Equal1~5_combout\) # ((!\RES_N~input_o\) # (!\Equal2~6_combout\))) ) ) ) # ( !\process_0~6_combout\ & ( \Add2~105_sumout\ ) ) # ( \process_0~6_combout\ & ( 
-- !\Add2~105_sumout\ & ( (!\RES_N~input_o\) # ((\Equal1~5_combout\ & ((!bcnt(0)) # (!\Equal2~6_combout\)))) ) ) ) # ( !\process_0~6_combout\ & ( !\Add2~105_sumout\ & ( (!\RES_N~input_o\) # (\Equal1~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal1~5_combout\,
	datac => \ALT_INV_RES_N~input_o\,
	datad => \ALT_INV_Equal2~6_combout\,
	datae => \ALT_INV_process_0~6_combout\,
	dataf => \ALT_INV_Add2~105_sumout\,
	combout => \fcnt[4]~5_combout\);

-- Location: FF_X83_Y24_N47
\fcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(4));

-- Location: MLABCELL_X82_Y23_N15
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( fcnt(5) ) + ( VCC ) + ( \Add2~106\ ))
-- \Add2~110\ = CARRY(( fcnt(5) ) + ( VCC ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(5),
	cin => \Add2~106\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: LABCELL_X83_Y24_N15
\fcnt[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[5]~6_combout\ = ( \process_0~6_combout\ & ( \Add2~109_sumout\ & ( (!\Equal2~6_combout\) # ((!\RES_N~input_o\) # ((!\Equal1~5_combout\) # (!bcnt(0)))) ) ) ) # ( !\process_0~6_combout\ & ( \Add2~109_sumout\ ) ) # ( \process_0~6_combout\ & ( 
-- !\Add2~109_sumout\ & ( (!\RES_N~input_o\) # ((\Equal1~5_combout\ & ((!\Equal2~6_combout\) # (!bcnt(0))))) ) ) ) # ( !\process_0~6_combout\ & ( !\Add2~109_sumout\ & ( (!\RES_N~input_o\) # (\Equal1~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~6_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Equal1~5_combout\,
	datad => ALT_INV_bcnt(0),
	datae => \ALT_INV_process_0~6_combout\,
	dataf => \ALT_INV_Add2~109_sumout\,
	combout => \fcnt[5]~6_combout\);

-- Location: FF_X83_Y24_N17
\fcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fcnt[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(5));

-- Location: MLABCELL_X82_Y23_N18
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( fcnt(6) ) + ( VCC ) + ( \Add2~110\ ))
-- \Add2~114\ = CARRY(( fcnt(6) ) + ( VCC ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(6),
	cin => \Add2~110\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: LABCELL_X81_Y24_N42
\fcnt[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[6]~7_combout\ = ( \Equal1~5_combout\ & ( \Equal2~6_combout\ & ( (!\process_0~6_combout\) # ((!bcnt(0)) # (!\RES_N~input_o\)) ) ) ) # ( !\Equal1~5_combout\ & ( \Equal2~6_combout\ & ( (!\RES_N~input_o\) # (\Add2~113_sumout\) ) ) ) # ( 
-- \Equal1~5_combout\ & ( !\Equal2~6_combout\ ) ) # ( !\Equal1~5_combout\ & ( !\Equal2~6_combout\ & ( (!\RES_N~input_o\) # (\Add2~113_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111111111111111111110000111111111111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~6_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_RES_N~input_o\,
	datad => \ALT_INV_Add2~113_sumout\,
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => \ALT_INV_Equal2~6_combout\,
	combout => \fcnt[6]~7_combout\);

-- Location: FF_X81_Y24_N44
\fcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fcnt[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(6));

-- Location: MLABCELL_X82_Y23_N21
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( fcnt(7) ) + ( VCC ) + ( \Add2~114\ ))
-- \Add2~126\ = CARRY(( fcnt(7) ) + ( VCC ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(7),
	cin => \Add2~114\,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: LABCELL_X83_Y24_N42
\fcnt[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[7]~9_combout\ = ( \process_0~6_combout\ & ( \Add2~125_sumout\ & ( (!bcnt(0)) # ((!\Equal1~5_combout\) # ((!\Equal2~6_combout\) # (!\RES_N~input_o\))) ) ) ) # ( !\process_0~6_combout\ & ( \Add2~125_sumout\ ) ) # ( \process_0~6_combout\ & ( 
-- !\Add2~125_sumout\ & ( (!\RES_N~input_o\) # ((\Equal1~5_combout\ & ((!bcnt(0)) # (!\Equal2~6_combout\)))) ) ) ) # ( !\process_0~6_combout\ & ( !\Add2~125_sumout\ & ( (!\RES_N~input_o\) # (\Equal1~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal1~5_combout\,
	datac => \ALT_INV_Equal2~6_combout\,
	datad => \ALT_INV_RES_N~input_o\,
	datae => \ALT_INV_process_0~6_combout\,
	dataf => \ALT_INV_Add2~125_sumout\,
	combout => \fcnt[7]~9_combout\);

-- Location: FF_X83_Y24_N44
\fcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fcnt[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(7));

-- Location: MLABCELL_X82_Y23_N24
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( fcnt(8) ) + ( VCC ) + ( \Add2~126\ ))
-- \Add2~6\ = CARRY(( fcnt(8) ) + ( VCC ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(8),
	cin => \Add2~126\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X81_Y24_N3
\fcnt[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[8]~1_combout\ = ( \Equal1~5_combout\ & ( \Equal2~6_combout\ & ( (!\RES_N~input_o\) # ((!bcnt(0)) # (!\process_0~6_combout\)) ) ) ) # ( !\Equal1~5_combout\ & ( \Equal2~6_combout\ & ( (!\RES_N~input_o\) # (\Add2~5_sumout\) ) ) ) # ( \Equal1~5_combout\ 
-- & ( !\Equal2~6_combout\ ) ) # ( !\Equal1~5_combout\ & ( !\Equal2~6_combout\ & ( (!\RES_N~input_o\) # (\Add2~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111111111111111110101111101011111111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RES_N~input_o\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Add2~5_sumout\,
	datad => \ALT_INV_process_0~6_combout\,
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => \ALT_INV_Equal2~6_combout\,
	combout => \fcnt[8]~1_combout\);

-- Location: FF_X81_Y24_N5
\fcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fcnt[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(8));

-- Location: MLABCELL_X82_Y23_N27
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( fcnt(9) ) + ( VCC ) + ( \Add2~6\ ))
-- \Add2~22\ = CARRY(( fcnt(9) ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(9),
	cin => \Add2~6\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X82_Y23_N29
\fcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(9));

-- Location: MLABCELL_X82_Y23_N30
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( fcnt(10) ) + ( VCC ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( fcnt(10) ) + ( VCC ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fcnt(10),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X82_Y23_N32
\fcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(10));

-- Location: MLABCELL_X82_Y23_N33
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( fcnt(11) ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~18\ = CARRY(( fcnt(11) ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(11),
	cin => \Add2~26\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X82_Y23_N35
\fcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(11));

-- Location: MLABCELL_X82_Y23_N36
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( fcnt(12) ) + ( VCC ) + ( \Add2~18\ ))
-- \Add2~30\ = CARRY(( fcnt(12) ) + ( VCC ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(12),
	cin => \Add2~18\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X82_Y23_N38
\fcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(12));

-- Location: MLABCELL_X82_Y23_N39
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( fcnt(13) ) + ( VCC ) + ( \Add2~30\ ))
-- \Add2~62\ = CARRY(( fcnt(13) ) + ( VCC ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(13),
	cin => \Add2~30\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X82_Y23_N41
\fcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(13));

-- Location: MLABCELL_X82_Y23_N42
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( fcnt(14) ) + ( VCC ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( fcnt(14) ) + ( VCC ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fcnt(14),
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X82_Y23_N44
\fcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(14));

-- Location: MLABCELL_X82_Y23_N45
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( fcnt(15) ) + ( VCC ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( fcnt(15) ) + ( VCC ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(15),
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X82_Y23_N47
\fcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(15));

-- Location: MLABCELL_X82_Y23_N48
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( fcnt(16) ) + ( VCC ) + ( \Add2~70\ ))
-- \Add2~74\ = CARRY(( fcnt(16) ) + ( VCC ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(16),
	cin => \Add2~70\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X82_Y23_N50
\fcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(16));

-- Location: MLABCELL_X82_Y23_N51
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( fcnt(17) ) + ( VCC ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( fcnt(17) ) + ( VCC ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(17),
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X82_Y23_N53
\fcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~77_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(17));

-- Location: MLABCELL_X82_Y23_N54
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( fcnt(18) ) + ( VCC ) + ( \Add2~78\ ))
-- \Add2~82\ = CARRY(( fcnt(18) ) + ( VCC ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(18),
	cin => \Add2~78\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X82_Y23_N56
\fcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~81_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(18));

-- Location: MLABCELL_X82_Y23_N57
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( fcnt(19) ) + ( VCC ) + ( \Add2~82\ ))
-- \Add2~86\ = CARRY(( fcnt(19) ) + ( VCC ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(19),
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X82_Y23_N59
\fcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~85_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(19));

-- Location: MLABCELL_X82_Y22_N0
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( fcnt(20) ) + ( VCC ) + ( \Add2~86\ ))
-- \Add2~90\ = CARRY(( fcnt(20) ) + ( VCC ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(20),
	cin => \Add2~86\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X82_Y22_N2
\fcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~89_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(20));

-- Location: MLABCELL_X82_Y22_N3
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( fcnt(21) ) + ( VCC ) + ( \Add2~90\ ))
-- \Add2~94\ = CARRY(( fcnt(21) ) + ( VCC ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(21),
	cin => \Add2~90\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X82_Y22_N5
\fcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~93_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(21));

-- Location: MLABCELL_X82_Y22_N6
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( fcnt(22) ) + ( VCC ) + ( \Add2~94\ ))
-- \Add2~98\ = CARRY(( fcnt(22) ) + ( VCC ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fcnt(22),
	cin => \Add2~94\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X82_Y22_N8
\fcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~97_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(22));

-- Location: MLABCELL_X82_Y22_N9
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( fcnt(23) ) + ( VCC ) + ( \Add2~98\ ))
-- \Add2~102\ = CARRY(( fcnt(23) ) + ( VCC ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(23),
	cin => \Add2~98\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X82_Y22_N11
\fcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~101_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(23));

-- Location: LABCELL_X83_Y24_N24
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !fcnt(20) & ( !fcnt(22) & ( (!fcnt(18) & (!fcnt(23) & (!fcnt(19) & !fcnt(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(18),
	datab => ALT_INV_fcnt(23),
	datac => ALT_INV_fcnt(19),
	datad => ALT_INV_fcnt(21),
	datae => ALT_INV_fcnt(20),
	dataf => ALT_INV_fcnt(22),
	combout => \Equal1~3_combout\);

-- Location: MLABCELL_X82_Y22_N12
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( fcnt(24) ) + ( VCC ) + ( \Add2~102\ ))
-- \Add2~34\ = CARRY(( fcnt(24) ) + ( VCC ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fcnt(24),
	cin => \Add2~102\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X82_Y22_N14
\fcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(24));

-- Location: MLABCELL_X82_Y22_N15
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( fcnt(25) ) + ( VCC ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( fcnt(25) ) + ( VCC ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(25),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X82_Y22_N17
\fcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(25));

-- Location: MLABCELL_X82_Y22_N18
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( fcnt(26) ) + ( VCC ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( fcnt(26) ) + ( VCC ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(26),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X82_Y22_N20
\fcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(26));

-- Location: MLABCELL_X82_Y22_N21
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( fcnt(27) ) + ( VCC ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( fcnt(27) ) + ( VCC ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(27),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X82_Y22_N23
\fcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(27));

-- Location: MLABCELL_X82_Y22_N24
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( fcnt(28) ) + ( VCC ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( fcnt(28) ) + ( VCC ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(28),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X82_Y22_N26
\fcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(28));

-- Location: MLABCELL_X82_Y22_N27
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( fcnt(29) ) + ( VCC ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( fcnt(29) ) + ( VCC ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fcnt(29),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X82_Y22_N29
\fcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(29));

-- Location: MLABCELL_X82_Y22_N54
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !fcnt(29) & ( !fcnt(28) & ( (!fcnt(27) & (!fcnt(24) & (!fcnt(26) & !fcnt(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(27),
	datab => ALT_INV_fcnt(24),
	datac => ALT_INV_fcnt(26),
	datad => ALT_INV_fcnt(25),
	datae => ALT_INV_fcnt(29),
	dataf => ALT_INV_fcnt(28),
	combout => \Equal1~1_combout\);

-- Location: MLABCELL_X82_Y22_N30
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( fcnt(30) ) + ( VCC ) + ( \Add2~54\ ))
-- \Add2~14\ = CARRY(( fcnt(30) ) + ( VCC ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fcnt(30),
	cin => \Add2~54\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X82_Y22_N32
\fcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	sclr => \fcnt[31]~2_combout\,
	ena => \fcnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(30));

-- Location: LABCELL_X83_Y24_N33
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !fcnt(30) & ( (!fcnt(9) & (!fcnt(12) & (!fcnt(10) & !fcnt(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(9),
	datab => ALT_INV_fcnt(12),
	datac => ALT_INV_fcnt(10),
	datad => ALT_INV_fcnt(11),
	dataf => ALT_INV_fcnt(30),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X82_Y22_N33
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( !fcnt(31) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(31),
	cin => \Add2~14\,
	sumout => \Add2~57_sumout\);

-- Location: LABCELL_X83_Y24_N30
\fcnt[31]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fcnt[31]~4_combout\ = ( \Add2~57_sumout\ & ( (!\RES_N~input_o\) # (\Equal1~5_combout\) ) ) # ( !\Add2~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_RES_N~input_o\,
	dataf => \ALT_INV_Add2~57_sumout\,
	combout => \fcnt[31]~4_combout\);

-- Location: FF_X83_Y24_N32
\fcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fcnt[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcnt(31));

-- Location: LABCELL_X83_Y24_N36
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !fcnt(15) & ( !fcnt(17) & ( (!fcnt(16) & (fcnt(31) & (!fcnt(14) & !fcnt(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(16),
	datab => ALT_INV_fcnt(31),
	datac => ALT_INV_fcnt(14),
	datad => ALT_INV_fcnt(13),
	datae => ALT_INV_fcnt(15),
	dataf => ALT_INV_fcnt(17),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X83_Y24_N54
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !fcnt(4) & ( !fcnt(5) & ( (!fcnt(3) & (fcnt(0) & (!fcnt(6) & !fcnt(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(3),
	datab => ALT_INV_fcnt(0),
	datac => ALT_INV_fcnt(6),
	datad => ALT_INV_fcnt(7),
	datae => ALT_INV_fcnt(4),
	dataf => ALT_INV_fcnt(5),
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X83_Y24_N51
\Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = ( !fcnt(2) & ( (!fcnt(8) & !fcnt(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fcnt(8),
	datac => ALT_INV_fcnt(1),
	dataf => ALT_INV_fcnt(2),
	combout => \Equal5~1_combout\);

-- Location: LABCELL_X83_Y24_N6
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( \Equal1~4_combout\ & ( \Equal5~1_combout\ & ( (\Equal1~3_combout\ & (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~3_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Equal5~1_combout\,
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X81_Y25_N48
\wcnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wcnt[1]~0_combout\ = ( \Equal2~6_combout\ & ( \Equal1~5_combout\ & ( (!\RES_N~input_o\) # ((!\process_0~6_combout\ & bcnt(0))) ) ) ) # ( !\Equal2~6_combout\ & ( \Equal1~5_combout\ & ( !\RES_N~input_o\ ) ) ) # ( \Equal2~6_combout\ & ( !\Equal1~5_combout\ 
-- & ( !\RES_N~input_o\ ) ) ) # ( !\Equal2~6_combout\ & ( !\Equal1~5_combout\ & ( !\RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~6_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_RES_N~input_o\,
	datae => \ALT_INV_Equal2~6_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \wcnt[1]~0_combout\);

-- Location: FF_X81_Y26_N56
\wcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wcnt~2_combout\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(0));

-- Location: LABCELL_X80_Y26_N3
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( wcnt(1) ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( wcnt(1) ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(1),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X81_Y26_N0
\wcnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \wcnt~1_combout\ = ( \Add0~81_sumout\ ) # ( !\Add0~81_sumout\ & ( !\RES_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RES_N~input_o\,
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \wcnt~1_combout\);

-- Location: FF_X81_Y26_N2
\wcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wcnt~1_combout\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(1));

-- Location: LABCELL_X80_Y26_N6
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( wcnt(2) ) + ( VCC ) + ( \Add0~82\ ))
-- \Add0~50\ = CARRY(( wcnt(2) ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_wcnt(2),
	cin => \Add0~82\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X80_Y26_N8
\wcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(2));

-- Location: LABCELL_X80_Y26_N9
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( wcnt(3) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~90\ = CARRY(( wcnt(3) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(3),
	cin => \Add0~50\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X81_Y26_N18
\wcnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \wcnt~3_combout\ = ( \Add0~89_sumout\ ) # ( !\Add0~89_sumout\ & ( !\RES_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RES_N~input_o\,
	dataf => \ALT_INV_Add0~89_sumout\,
	combout => \wcnt~3_combout\);

-- Location: FF_X80_Y26_N5
\wcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \wcnt~3_combout\,
	sload => VCC,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(3));

-- Location: LABCELL_X80_Y26_N12
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( wcnt(4) ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~10\ = CARRY(( wcnt(4) ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_wcnt(4),
	cin => \Add0~90\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X80_Y26_N14
\wcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(4));

-- Location: LABCELL_X80_Y26_N15
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( wcnt(5) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( wcnt(5) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(5),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X80_Y26_N17
\wcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(5));

-- Location: LABCELL_X80_Y26_N18
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( wcnt(6) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( wcnt(6) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(6),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X80_Y26_N20
\wcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(6));

-- Location: LABCELL_X80_Y26_N21
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( wcnt(7) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( wcnt(7) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(7),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X80_Y26_N23
\wcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(7));

-- Location: LABCELL_X80_Y26_N24
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( wcnt(8) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( wcnt(8) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(8),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X80_Y26_N26
\wcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(8));

-- Location: LABCELL_X80_Y26_N27
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( wcnt(9) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~110\ = CARRY(( wcnt(9) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(9),
	cin => \Add0~26\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X80_Y26_N29
\wcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(9));

-- Location: LABCELL_X80_Y26_N30
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( wcnt(10) ) + ( VCC ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( wcnt(10) ) + ( VCC ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_wcnt(10),
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X80_Y26_N32
\wcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(10));

-- Location: LABCELL_X80_Y26_N33
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( wcnt(11) ) + ( VCC ) + ( \Add0~114\ ))
-- \Add0~98\ = CARRY(( wcnt(11) ) + ( VCC ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(11),
	cin => \Add0~114\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X80_Y26_N35
\wcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(11));

-- Location: LABCELL_X80_Y26_N36
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( wcnt(12) ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~66\ = CARRY(( wcnt(12) ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(12),
	cin => \Add0~98\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X80_Y26_N38
\wcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(12));

-- Location: LABCELL_X80_Y26_N39
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( wcnt(13) ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( wcnt(13) ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(13),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X80_Y26_N41
\wcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(13));

-- Location: LABCELL_X80_Y26_N42
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( wcnt(14) ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~78\ = CARRY(( wcnt(14) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_wcnt(14),
	cin => \Add0~70\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X80_Y26_N44
\wcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(14));

-- Location: LABCELL_X80_Y26_N45
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( wcnt(15) ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~34\ = CARRY(( wcnt(15) ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(15),
	cin => \Add0~78\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X80_Y26_N47
\wcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(15));

-- Location: LABCELL_X80_Y26_N48
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( wcnt(16) ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~54\ = CARRY(( wcnt(16) ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(16),
	cin => \Add0~34\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X80_Y26_N50
\wcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(16));

-- Location: LABCELL_X80_Y26_N51
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( wcnt(17) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~46\ = CARRY(( wcnt(17) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(17),
	cin => \Add0~54\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X80_Y26_N53
\wcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(17));

-- Location: LABCELL_X80_Y26_N54
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( wcnt(18) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( wcnt(18) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(18),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X80_Y26_N56
\wcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(18));

-- Location: LABCELL_X80_Y26_N57
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( wcnt(19) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( wcnt(19) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(19),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X80_Y26_N59
\wcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(19));

-- Location: LABCELL_X80_Y25_N36
\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = ( !wcnt(16) & ( !wcnt(15) & ( (!wcnt(2) & (!wcnt(19) & (!wcnt(18) & !wcnt(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(2),
	datab => ALT_INV_wcnt(19),
	datac => ALT_INV_wcnt(18),
	datad => ALT_INV_wcnt(17),
	datae => ALT_INV_wcnt(16),
	dataf => ALT_INV_wcnt(15),
	combout => \process_0~2_combout\);

-- Location: LABCELL_X80_Y25_N0
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( wcnt(20) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~62\ = CARRY(( wcnt(20) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(20),
	cin => \Add0~38\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X80_Y25_N2
\wcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(20));

-- Location: LABCELL_X80_Y25_N3
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( wcnt(21) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( wcnt(21) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(21),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X80_Y25_N5
\wcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(21));

-- Location: LABCELL_X80_Y25_N6
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( wcnt(22) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~126\ = CARRY(( wcnt(22) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_wcnt(22),
	cin => \Add0~58\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X80_Y25_N8
\wcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(22));

-- Location: LABCELL_X80_Y25_N9
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( wcnt(23) ) + ( VCC ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( wcnt(23) ) + ( VCC ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(23),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X80_Y25_N11
\wcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(23));

-- Location: LABCELL_X80_Y25_N12
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( wcnt(24) ) + ( VCC ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( wcnt(24) ) + ( VCC ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_wcnt(24),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X80_Y25_N14
\wcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(24));

-- Location: LABCELL_X80_Y25_N15
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( wcnt(25) ) + ( VCC ) + ( \Add0~118\ ))
-- \Add0~106\ = CARRY(( wcnt(25) ) + ( VCC ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(25),
	cin => \Add0~118\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X80_Y25_N17
\wcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(25));

-- Location: LABCELL_X80_Y25_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( wcnt(26) ) + ( VCC ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( wcnt(26) ) + ( VCC ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(26),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X80_Y25_N20
\wcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(26));

-- Location: LABCELL_X80_Y25_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( wcnt(27) ) + ( VCC ) + ( \Add0~102\ ))
-- \Add0~30\ = CARRY(( wcnt(27) ) + ( VCC ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(27),
	cin => \Add0~102\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X80_Y25_N23
\wcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(27));

-- Location: LABCELL_X80_Y25_N24
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( wcnt(28) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~74\ = CARRY(( wcnt(28) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(28),
	cin => \Add0~30\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X80_Y25_N26
\wcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(28));

-- Location: LABCELL_X80_Y25_N27
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( wcnt(29) ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~2\ = CARRY(( wcnt(29) ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wcnt(29),
	cin => \Add0~74\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X80_Y25_N29
\wcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(29));

-- Location: LABCELL_X80_Y25_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( wcnt(30) ) + ( VCC ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( wcnt(30) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_wcnt(30),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X80_Y25_N32
\wcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \ALT_INV_RES_N~input_o\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(30));

-- Location: LABCELL_X79_Y25_N48
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !wcnt(29) & ( !wcnt(30) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_wcnt(29),
	dataf => ALT_INV_wcnt(30),
	combout => \process_0~0_combout\);

-- Location: LABCELL_X80_Y25_N48
\process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ( !wcnt(10) & ( !wcnt(23) & ( (!wcnt(22) & (!wcnt(25) & (!wcnt(9) & !wcnt(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(22),
	datab => ALT_INV_wcnt(25),
	datac => ALT_INV_wcnt(9),
	datad => ALT_INV_wcnt(24),
	datae => ALT_INV_wcnt(10),
	dataf => ALT_INV_wcnt(23),
	combout => \process_0~5_combout\);

-- Location: LABCELL_X80_Y25_N42
\process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = ( !wcnt(13) & ( !wcnt(28) & ( (!wcnt(20) & (!wcnt(14) & (!wcnt(21) & !wcnt(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(20),
	datab => ALT_INV_wcnt(14),
	datac => ALT_INV_wcnt(21),
	datad => ALT_INV_wcnt(12),
	datae => ALT_INV_wcnt(13),
	dataf => ALT_INV_wcnt(28),
	combout => \process_0~3_combout\);

-- Location: LABCELL_X81_Y25_N36
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( !wcnt(7) & ( !wcnt(8) & ( (!wcnt(6) & (!wcnt(27) & (!wcnt(5) & !wcnt(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(6),
	datab => ALT_INV_wcnt(27),
	datac => ALT_INV_wcnt(5),
	datad => ALT_INV_wcnt(4),
	datae => ALT_INV_wcnt(7),
	dataf => ALT_INV_wcnt(8),
	combout => \process_0~1_combout\);

-- Location: LABCELL_X80_Y25_N33
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( !wcnt(31) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wcnt(31),
	cin => \Add0~6\,
	sumout => \Add0~93_sumout\);

-- Location: LABCELL_X81_Y26_N39
\wcnt~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \wcnt~4_combout\ = ( \Add0~93_sumout\ & ( !\RES_N~input_o\ ) ) # ( !\Add0~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RES_N~input_o\,
	dataf => \ALT_INV_Add0~93_sumout\,
	combout => \wcnt~4_combout\);

-- Location: FF_X81_Y26_N41
\wcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wcnt~4_combout\,
	ena => \wcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wcnt(31));

-- Location: LABCELL_X81_Y26_N6
\process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ( !wcnt(1) & ( !wcnt(26) & ( (wcnt(0) & (wcnt(31) & (!wcnt(3) & !wcnt(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wcnt(0),
	datab => ALT_INV_wcnt(31),
	datac => ALT_INV_wcnt(3),
	datad => ALT_INV_wcnt(11),
	datae => ALT_INV_wcnt(1),
	dataf => ALT_INV_wcnt(26),
	combout => \process_0~4_combout\);

-- Location: LABCELL_X80_Y25_N54
\process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ( \process_0~1_combout\ & ( \process_0~4_combout\ & ( (\process_0~2_combout\ & (\process_0~0_combout\ & (\process_0~5_combout\ & \process_0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~2_combout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_process_0~5_combout\,
	datad => \ALT_INV_process_0~3_combout\,
	datae => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_process_0~4_combout\,
	combout => \process_0~6_combout\);

-- Location: LABCELL_X83_Y25_N18
\bcnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt~3_combout\ = ( \Equal1~5_combout\ & ( (!bcnt(0)) # ((!\process_0~6_combout\) # (!\Equal2~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datac => \ALT_INV_process_0~6_combout\,
	datad => \ALT_INV_Equal2~6_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \bcnt~3_combout\);

-- Location: MLABCELL_X82_Y25_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !bcnt(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !bcnt(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: MLABCELL_X82_Y25_N3
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( bcnt(1) ) + ( VCC ) + ( \Add1~2\ ))
-- \Add1~118\ = CARRY(( bcnt(1) ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(1),
	cin => \Add1~2\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: LABCELL_X81_Y25_N21
\bcnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[0]~1_combout\ = ( \Equal2~6_combout\ & ( bcnt(0) ) ) # ( !\Equal2~6_combout\ & ( bcnt(0) & ( !\RES_N~input_o\ ) ) ) # ( \Equal2~6_combout\ & ( !bcnt(0) & ( !\RES_N~input_o\ ) ) ) # ( !\Equal2~6_combout\ & ( !bcnt(0) & ( !\RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RES_N~input_o\,
	datae => \ALT_INV_Equal2~6_combout\,
	dataf => ALT_INV_bcnt(0),
	combout => \bcnt[0]~1_combout\);

-- Location: LABCELL_X81_Y25_N45
\bcnt[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[0]~2_combout\ = ( \Equal2~6_combout\ & ( \Equal1~5_combout\ & ( (!\process_0~6_combout\) # ((!bcnt(0)) # (!\RES_N~input_o\)) ) ) ) # ( !\Equal2~6_combout\ & ( \Equal1~5_combout\ ) ) # ( \Equal2~6_combout\ & ( !\Equal1~5_combout\ & ( !\RES_N~input_o\ 
-- ) ) ) # ( !\Equal2~6_combout\ & ( !\Equal1~5_combout\ & ( !\RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~6_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_RES_N~input_o\,
	datae => \ALT_INV_Equal2~6_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \bcnt[0]~2_combout\);

-- Location: FF_X82_Y25_N5
\bcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(1));

-- Location: MLABCELL_X82_Y25_N6
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( bcnt(2) ) + ( VCC ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( bcnt(2) ) + ( VCC ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(2),
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: LABCELL_X83_Y25_N48
\bcnt[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[2]~6_combout\ = ( \Add1~121_sumout\ & ( ((!\RES_N~input_o\) # (bcnt(2))) # (\bcnt~3_combout\) ) ) # ( !\Add1~121_sumout\ & ( (!\RES_N~input_o\) # ((!\bcnt~3_combout\ & ((bcnt(2)))) # (\bcnt~3_combout\ & (\Equal2~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcnt~3_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Equal2~8_combout\,
	datad => ALT_INV_bcnt(2),
	dataf => \ALT_INV_Add1~121_sumout\,
	combout => \bcnt[2]~6_combout\);

-- Location: FF_X83_Y25_N50
\bcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(2));

-- Location: MLABCELL_X82_Y25_N9
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( bcnt(3) ) + ( VCC ) + ( \Add1~122\ ))
-- \Add1~114\ = CARRY(( bcnt(3) ) + ( VCC ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(3),
	cin => \Add1~122\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: LABCELL_X83_Y25_N39
\bcnt[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[3]~5_combout\ = ( \bcnt~3_combout\ & ( ((!\RES_N~input_o\) # (\Add1~113_sumout\)) # (\Equal2~8_combout\) ) ) # ( !\bcnt~3_combout\ & ( (!\RES_N~input_o\) # (bcnt(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~8_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Add1~113_sumout\,
	datad => ALT_INV_bcnt(3),
	dataf => \ALT_INV_bcnt~3_combout\,
	combout => \bcnt[3]~5_combout\);

-- Location: FF_X83_Y25_N41
\bcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(3));

-- Location: MLABCELL_X82_Y25_N12
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( bcnt(4) ) + ( VCC ) + ( \Add1~114\ ))
-- \Add1~126\ = CARRY(( bcnt(4) ) + ( VCC ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(4),
	cin => \Add1~114\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: LABCELL_X83_Y25_N36
\bcnt[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[4]~7_combout\ = ( \bcnt~3_combout\ & ( ((!\RES_N~input_o\) # (\Add1~125_sumout\)) # (\Equal2~8_combout\) ) ) # ( !\bcnt~3_combout\ & ( (!\RES_N~input_o\) # (bcnt(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~8_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Add1~125_sumout\,
	datad => ALT_INV_bcnt(4),
	dataf => \ALT_INV_bcnt~3_combout\,
	combout => \bcnt[4]~7_combout\);

-- Location: FF_X83_Y25_N38
\bcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(4));

-- Location: MLABCELL_X82_Y25_N15
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( bcnt(5) ) + ( VCC ) + ( \Add1~126\ ))
-- \Add1~106\ = CARRY(( bcnt(5) ) + ( VCC ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(5),
	cin => \Add1~126\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X82_Y25_N17
\bcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(5));

-- Location: MLABCELL_X82_Y25_N18
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( bcnt(6) ) + ( VCC ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( bcnt(6) ) + ( VCC ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(6),
	cin => \Add1~106\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X82_Y25_N20
\bcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(6));

-- Location: MLABCELL_X82_Y25_N21
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( bcnt(7) ) + ( VCC ) + ( \Add1~110\ ))
-- \Add1~42\ = CARRY(( bcnt(7) ) + ( VCC ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(7),
	cin => \Add1~110\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X82_Y25_N23
\bcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(7));

-- Location: MLABCELL_X82_Y25_N24
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( bcnt(8) ) + ( VCC ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( bcnt(8) ) + ( VCC ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(8),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X82_Y25_N26
\bcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(8));

-- Location: MLABCELL_X82_Y25_N27
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( bcnt(9) ) + ( VCC ) + ( \Add1~46\ ))
-- \Add1~10\ = CARRY(( bcnt(9) ) + ( VCC ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(9),
	cin => \Add1~46\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X82_Y25_N29
\bcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(9));

-- Location: MLABCELL_X82_Y25_N30
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( bcnt(10) ) + ( VCC ) + ( \Add1~10\ ))
-- \Add1~50\ = CARRY(( bcnt(10) ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcnt(10),
	cin => \Add1~10\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X82_Y25_N32
\bcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(10));

-- Location: MLABCELL_X82_Y25_N33
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( bcnt(11) ) + ( VCC ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( bcnt(11) ) + ( VCC ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(11),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X82_Y25_N35
\bcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(11));

-- Location: MLABCELL_X82_Y25_N36
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( bcnt(12) ) + ( VCC ) + ( \Add1~54\ ))
-- \Add1~74\ = CARRY(( bcnt(12) ) + ( VCC ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(12),
	cin => \Add1~54\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X82_Y25_N38
\bcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(12));

-- Location: MLABCELL_X82_Y25_N39
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( bcnt(13) ) + ( VCC ) + ( \Add1~74\ ))
-- \Add1~62\ = CARRY(( bcnt(13) ) + ( VCC ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(13),
	cin => \Add1~74\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: LABCELL_X81_Y25_N15
\bcnt[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[13]~feeder_combout\ = ( \Add1~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~61_sumout\,
	combout => \bcnt[13]~feeder_combout\);

-- Location: FF_X81_Y25_N17
\bcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[13]~feeder_combout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(13));

-- Location: MLABCELL_X82_Y25_N42
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( bcnt(14) ) + ( VCC ) + ( \Add1~62\ ))
-- \Add1~18\ = CARRY(( bcnt(14) ) + ( VCC ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcnt(14),
	cin => \Add1~62\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X82_Y25_N44
\bcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(14));

-- Location: MLABCELL_X82_Y25_N45
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( bcnt(15) ) + ( VCC ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( bcnt(15) ) + ( VCC ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(15),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X82_Y25_N47
\bcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(15));

-- Location: MLABCELL_X82_Y25_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( bcnt(16) ) + ( VCC ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( bcnt(16) ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcnt(16),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X82_Y24_N38
\bcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add1~25_sumout\,
	sclr => \bcnt[0]~1_combout\,
	sload => VCC,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(16));

-- Location: MLABCELL_X82_Y25_N51
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( bcnt(17) ) + ( VCC ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( bcnt(17) ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(17),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X82_Y25_N53
\bcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(17));

-- Location: MLABCELL_X82_Y25_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( bcnt(18) ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( bcnt(18) ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(18),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X82_Y25_N56
\bcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(18));

-- Location: MLABCELL_X82_Y25_N57
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( bcnt(19) ) + ( VCC ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( bcnt(19) ) + ( VCC ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(19),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X82_Y25_N59
\bcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(19));

-- Location: MLABCELL_X82_Y24_N0
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( bcnt(20) ) + ( VCC ) + ( \Add1~38\ ))
-- \Add1~6\ = CARRY(( bcnt(20) ) + ( VCC ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(20),
	cin => \Add1~38\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X82_Y24_N2
\bcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(20));

-- Location: MLABCELL_X82_Y24_N3
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( bcnt(21) ) + ( VCC ) + ( \Add1~6\ ))
-- \Add1~102\ = CARRY(( bcnt(21) ) + ( VCC ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(21),
	cin => \Add1~6\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X82_Y24_N5
\bcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(21));

-- Location: MLABCELL_X82_Y24_N6
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( bcnt(22) ) + ( VCC ) + ( \Add1~102\ ))
-- \Add1~14\ = CARRY(( bcnt(22) ) + ( VCC ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcnt(22),
	cin => \Add1~102\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X82_Y24_N8
\bcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(22));

-- Location: MLABCELL_X82_Y24_N9
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( bcnt(23) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~70\ = CARRY(( bcnt(23) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(23),
	cin => \Add1~14\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X82_Y24_N11
\bcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(23));

-- Location: MLABCELL_X82_Y24_N12
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( bcnt(24) ) + ( VCC ) + ( \Add1~70\ ))
-- \Add1~98\ = CARRY(( bcnt(24) ) + ( VCC ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcnt(24),
	cin => \Add1~70\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X82_Y24_N14
\bcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(24));

-- Location: MLABCELL_X82_Y24_N15
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( bcnt(25) ) + ( VCC ) + ( \Add1~98\ ))
-- \Add1~78\ = CARRY(( bcnt(25) ) + ( VCC ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(25),
	cin => \Add1~98\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X82_Y24_N17
\bcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(25));

-- Location: MLABCELL_X82_Y24_N18
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( bcnt(26) ) + ( VCC ) + ( \Add1~78\ ))
-- \Add1~82\ = CARRY(( bcnt(26) ) + ( VCC ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(26),
	cin => \Add1~78\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X82_Y24_N20
\bcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(26));

-- Location: MLABCELL_X82_Y24_N21
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( bcnt(27) ) + ( VCC ) + ( \Add1~82\ ))
-- \Add1~86\ = CARRY(( bcnt(27) ) + ( VCC ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(27),
	cin => \Add1~82\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X82_Y24_N23
\bcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(27));

-- Location: MLABCELL_X82_Y24_N24
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( bcnt(28) ) + ( VCC ) + ( \Add1~86\ ))
-- \Add1~58\ = CARRY(( bcnt(28) ) + ( VCC ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(28),
	cin => \Add1~86\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X82_Y24_N26
\bcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(28));

-- Location: MLABCELL_X82_Y24_N27
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( bcnt(29) ) + ( VCC ) + ( \Add1~58\ ))
-- \Add1~90\ = CARRY(( bcnt(29) ) + ( VCC ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bcnt(29),
	cin => \Add1~58\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X82_Y24_N29
\bcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	sclr => \bcnt[0]~1_combout\,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(29));

-- Location: MLABCELL_X82_Y24_N30
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( bcnt(30) ) + ( VCC ) + ( \Add1~90\ ))
-- \Add1~94\ = CARRY(( bcnt(30) ) + ( VCC ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcnt(30),
	cin => \Add1~90\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X82_Y25_N50
\bcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add1~93_sumout\,
	sclr => \bcnt[0]~1_combout\,
	sload => VCC,
	ena => \bcnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(30));

-- Location: LABCELL_X81_Y24_N54
\Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( !bcnt(21) & ( !bcnt(6) & ( (!bcnt(29) & (!bcnt(24) & (!bcnt(5) & !bcnt(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(29),
	datab => ALT_INV_bcnt(24),
	datac => ALT_INV_bcnt(5),
	datad => ALT_INV_bcnt(30),
	datae => ALT_INV_bcnt(21),
	dataf => ALT_INV_bcnt(6),
	combout => \Equal2~4_combout\);

-- Location: LABCELL_X81_Y25_N30
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !bcnt(7) & ( !bcnt(28) & ( (!bcnt(11) & (!bcnt(8) & (!bcnt(10) & !bcnt(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(11),
	datab => ALT_INV_bcnt(8),
	datac => ALT_INV_bcnt(10),
	datad => ALT_INV_bcnt(13),
	datae => ALT_INV_bcnt(7),
	dataf => ALT_INV_bcnt(28),
	combout => \Equal2~2_combout\);

-- Location: MLABCELL_X82_Y24_N39
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !bcnt(17) & ( !bcnt(18) & ( (!bcnt(16) & (!bcnt(14) & (!bcnt(19) & !bcnt(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(16),
	datab => ALT_INV_bcnt(14),
	datac => ALT_INV_bcnt(19),
	datad => ALT_INV_bcnt(15),
	datae => ALT_INV_bcnt(17),
	dataf => ALT_INV_bcnt(18),
	combout => \Equal2~1_combout\);

-- Location: MLABCELL_X82_Y24_N57
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !bcnt(9) & ( (!bcnt(22) & !bcnt(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcnt(22),
	datad => ALT_INV_bcnt(20),
	dataf => ALT_INV_bcnt(9),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X83_Y25_N24
\Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = ( !bcnt(3) & ( (!bcnt(1) & (!bcnt(2) & !bcnt(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcnt(1),
	datac => ALT_INV_bcnt(2),
	datad => ALT_INV_bcnt(4),
	dataf => ALT_INV_bcnt(3),
	combout => \Equal2~5_combout\);

-- Location: MLABCELL_X82_Y24_N33
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( !bcnt(31) ) + ( VCC ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(31),
	cin => \Add1~94\,
	sumout => \Add1~65_sumout\);

-- Location: LABCELL_X83_Y25_N51
\bcnt[31]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[31]~4_combout\ = ( \Add1~65_sumout\ & ( (!\RES_N~input_o\) # ((!\bcnt~3_combout\ & ((bcnt(31)))) # (\bcnt~3_combout\ & (\Equal2~8_combout\))) ) ) # ( !\Add1~65_sumout\ & ( ((!\RES_N~input_o\) # (bcnt(31))) # (\bcnt~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111111110111011111111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcnt~3_combout\,
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_Equal2~8_combout\,
	datad => ALT_INV_bcnt(31),
	dataf => \ALT_INV_Add1~65_sumout\,
	combout => \bcnt[31]~4_combout\);

-- Location: FF_X83_Y25_N53
\bcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \bcnt[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcnt(31));

-- Location: MLABCELL_X82_Y24_N48
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( !bcnt(12) & ( bcnt(31) & ( (!bcnt(27) & (!bcnt(25) & (!bcnt(26) & !bcnt(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(27),
	datab => ALT_INV_bcnt(25),
	datac => ALT_INV_bcnt(26),
	datad => ALT_INV_bcnt(23),
	datae => ALT_INV_bcnt(12),
	dataf => ALT_INV_bcnt(31),
	combout => \Equal2~3_combout\);

-- Location: LABCELL_X81_Y25_N54
\Equal2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = ( \Equal2~5_combout\ & ( \Equal2~3_combout\ & ( (\Equal2~4_combout\ & (\Equal2~2_combout\ & (\Equal2~1_combout\ & \Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~4_combout\,
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_Equal2~5_combout\,
	dataf => \ALT_INV_Equal2~3_combout\,
	combout => \Equal2~6_combout\);

-- Location: LABCELL_X83_Y25_N0
\bcnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcnt[0]~0_combout\ = ( bcnt(0) & ( \Equal1~5_combout\ & ( ((!\Add1~1_sumout\) # (!\RES_N~input_o\)) # (\Equal2~6_combout\) ) ) ) # ( !bcnt(0) & ( \Equal1~5_combout\ & ( (!\Add1~1_sumout\) # (!\RES_N~input_o\) ) ) ) # ( bcnt(0) & ( !\Equal1~5_combout\ ) ) 
-- # ( !bcnt(0) & ( !\Equal1~5_combout\ & ( !\RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111111111111111100001111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~6_combout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_RES_N~input_o\,
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \bcnt[0]~0_combout\);

-- Location: FF_X83_Y25_N2
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

-- Location: LABCELL_X83_Y25_N6
\process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = ( !bcnt(0) & ( bcnt(3) & ( (!bcnt(4) & (bcnt(1) & !bcnt(2))) ) ) ) # ( bcnt(0) & ( !bcnt(3) & ( (!bcnt(4) & (bcnt(1) & !bcnt(2))) # (bcnt(4) & (!bcnt(1) & bcnt(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001000010010000100000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(4),
	datab => ALT_INV_bcnt(1),
	datac => ALT_INV_bcnt(2),
	datae => ALT_INV_bcnt(0),
	dataf => ALT_INV_bcnt(3),
	combout => \process_0~9_combout\);

-- Location: MLABCELL_X82_Y24_N54
\Equal2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = ( \Equal2~2_combout\ & ( (\Equal2~4_combout\ & (\Equal2~1_combout\ & (\Equal2~3_combout\ & \Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~4_combout\,
	datab => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_Equal2~3_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \Equal2~7_combout\);

-- Location: LABCELL_X81_Y24_N6
\shift_r~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~83_combout\ = ( shift_r(0) & ( \RES_N~input_o\ ) ) # ( shift_r(0) & ( !\RES_N~input_o\ ) ) # ( !shift_r(0) & ( !\RES_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_shift_r(0),
	dataf => \ALT_INV_RES_N~input_o\,
	combout => \shift_r~83_combout\);

-- Location: MLABCELL_X84_Y24_N51
\shift_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~0_combout\ = ( \Equal1~5_combout\ & ( \Equal2~7_combout\ & ( (!\process_0~9_combout\ & ((!\Equal2~5_combout\) # (bcnt(0)))) ) ) ) # ( \Equal1~5_combout\ & ( !\Equal2~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => ALT_INV_bcnt(0),
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~0_combout\);

-- Location: FF_X81_Y24_N7
\shift_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~83_combout\,
	sclr => \shift_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(0));

-- Location: LABCELL_X83_Y24_N18
\shift_r[98]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[98]~1_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (!\RES_N~input_o\) # ((!\process_0~9_combout\ & ((!\Equal2~5_combout\) # (bcnt(0))))) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ & ( !\RES_N~input_o\ ) ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ & ( !\RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_RES_N~input_o\,
	datac => \ALT_INV_process_0~9_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r[98]~1_combout\);

-- Location: FF_X83_Y24_N29
\shift_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(0),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(1));

-- Location: FF_X83_Y24_N5
\shift_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(1),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(2));

-- Location: FF_X83_Y24_N59
\shift_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(2),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(3));

-- Location: FF_X80_Y24_N5
\shift_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(3),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(4));

-- Location: FF_X80_Y24_N58
\shift_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(4),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(5));

-- Location: LABCELL_X80_Y24_N36
\shift_r[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[6]~feeder_combout\ = ( shift_r(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(5),
	combout => \shift_r[6]~feeder_combout\);

-- Location: FF_X80_Y24_N37
\shift_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[6]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(6));

-- Location: FF_X83_Y25_N28
\shift_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(6),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(7));

-- Location: LABCELL_X85_Y25_N27
\shift_r[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[8]~feeder_combout\ = ( shift_r(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(7),
	combout => \shift_r[8]~feeder_combout\);

-- Location: FF_X85_Y25_N28
\shift_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[8]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(8));

-- Location: MLABCELL_X84_Y25_N27
\shift_r~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~82_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (shift_r(8)) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((!bcnt(0) & (\Equal2~7_combout\ & \Equal2~5_combout\))) # (shift_r(8)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000010111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~7_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => ALT_INV_shift_r(8),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~82_combout\);

-- Location: FF_X84_Y25_N28
\shift_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~82_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(9));

-- Location: FF_X85_Y25_N35
\shift_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(9),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(10));

-- Location: LABCELL_X85_Y25_N30
\shift_r[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[11]~feeder_combout\ = shift_r(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_shift_r(10),
	combout => \shift_r[11]~feeder_combout\);

-- Location: FF_X85_Y25_N32
\shift_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[11]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(11));

-- Location: LABCELL_X85_Y25_N36
\shift_r~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~81_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((\Equal2~5_combout\ & !bcnt(0))) # (shift_r(11))) # (\process_0~9_combout\) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(11) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => ALT_INV_shift_r(11),
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~81_combout\);

-- Location: FF_X85_Y25_N38
\shift_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~81_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(12));

-- Location: FF_X85_Y25_N2
\shift_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(12),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(13));

-- Location: FF_X85_Y25_N5
\shift_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(13),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(14));

-- Location: FF_X85_Y25_N20
\shift_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(14),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(15));

-- Location: LABCELL_X85_Y25_N21
\shift_r[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[16]~feeder_combout\ = shift_r(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(15),
	combout => \shift_r[16]~feeder_combout\);

-- Location: FF_X85_Y25_N23
\shift_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[16]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(16));

-- Location: FF_X85_Y25_N26
\shift_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(16),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(17));

-- Location: LABCELL_X85_Y25_N54
\shift_r~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~80_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (\Equal2~7_combout\) # (shift_r(17)) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((\Equal2~5_combout\ & (!bcnt(0) & \Equal2~7_combout\))) # (shift_r(17)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101011101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(17),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~80_combout\);

-- Location: FF_X85_Y25_N56
\shift_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~80_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(18));

-- Location: FF_X85_Y25_N58
\shift_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(18),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(19));

-- Location: LABCELL_X79_Y24_N51
\shift_r~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~79_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (\Equal2~7_combout\) # (shift_r(19)) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((\Equal2~7_combout\ & (\Equal2~5_combout\ & !bcnt(0)))) # (shift_r(19)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010111010101010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(19),
	datab => \ALT_INV_Equal2~7_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => ALT_INV_bcnt(0),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~79_combout\);

-- Location: FF_X79_Y24_N52
\shift_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~79_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(20));

-- Location: LABCELL_X85_Y25_N42
\shift_r~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~78_combout\ = ( shift_r(20) & ( \Equal1~5_combout\ ) ) # ( !shift_r(20) & ( \Equal1~5_combout\ & ( (\Equal2~7_combout\ & (((\Equal2~5_combout\ & !bcnt(0))) # (\process_0~9_combout\))) ) ) ) # ( shift_r(20) & ( !\Equal1~5_combout\ ) ) # ( 
-- !shift_r(20) & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000011101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal2~7_combout\,
	datae => ALT_INV_shift_r(20),
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~78_combout\);

-- Location: FF_X85_Y25_N43
\shift_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~78_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(21));

-- Location: LABCELL_X85_Y24_N33
\shift_r[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[22]~feeder_combout\ = ( shift_r(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(21),
	combout => \shift_r[22]~feeder_combout\);

-- Location: FF_X85_Y24_N35
\shift_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[22]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(22));

-- Location: LABCELL_X85_Y24_N30
\shift_r[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[23]~feeder_combout\ = shift_r(22)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_shift_r(22),
	combout => \shift_r[23]~feeder_combout\);

-- Location: FF_X85_Y24_N32
\shift_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[23]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(23));

-- Location: FF_X85_Y24_N5
\shift_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(23),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(24));

-- Location: FF_X85_Y24_N2
\shift_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(24),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(25));

-- Location: FF_X85_Y24_N11
\shift_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(25),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(26));

-- Location: FF_X85_Y24_N7
\shift_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(26),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(27));

-- Location: MLABCELL_X84_Y26_N24
\shift_r[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[28]~feeder_combout\ = ( shift_r(27) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(27),
	combout => \shift_r[28]~feeder_combout\);

-- Location: FF_X84_Y26_N26
\shift_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[28]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(28));

-- Location: MLABCELL_X84_Y26_N39
\shift_r~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~77_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((\Equal2~5_combout\ & !bcnt(0))) # (\process_0~9_combout\)) # (shift_r(28)) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(28) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(28),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_process_0~9_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~77_combout\);

-- Location: FF_X84_Y26_N41
\shift_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~77_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(29));

-- Location: FF_X84_Y26_N14
\shift_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(29),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(30));

-- Location: FF_X84_Y26_N17
\shift_r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(30),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(31));

-- Location: FF_X84_Y26_N11
\shift_r[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(31),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(32));

-- Location: FF_X84_Y26_N23
\shift_r[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(32),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(33));

-- Location: FF_X84_Y26_N20
\shift_r[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(33),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(34));

-- Location: FF_X84_Y26_N47
\shift_r[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(34),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(35));

-- Location: MLABCELL_X84_Y26_N3
\shift_r~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~76_combout\ = ( shift_r(35) & ( \Equal1~5_combout\ ) ) # ( !shift_r(35) & ( \Equal1~5_combout\ & ( (\Equal2~7_combout\ & (((!bcnt(0) & \Equal2~5_combout\)) # (\process_0~9_combout\))) ) ) ) # ( shift_r(35) & ( !\Equal1~5_combout\ ) ) # ( 
-- !shift_r(35) & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000010111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal2~7_combout\,
	datae => ALT_INV_shift_r(35),
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~76_combout\);

-- Location: FF_X84_Y26_N5
\shift_r[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~76_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(36));

-- Location: FF_X84_Y26_N2
\shift_r[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(36),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(37));

-- Location: FF_X84_Y26_N43
\shift_r[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(37),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(38));

-- Location: FF_X84_Y26_N38
\shift_r[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(38),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(39));

-- Location: FF_X84_Y26_N8
\shift_r[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(39),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(40));

-- Location: MLABCELL_X84_Y26_N27
\shift_r[41]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[41]~feeder_combout\ = shift_r(40)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_shift_r(40),
	combout => \shift_r[41]~feeder_combout\);

-- Location: FF_X84_Y26_N28
\shift_r[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[41]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(41));

-- Location: MLABCELL_X84_Y26_N54
\shift_r~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~75_combout\ = ( bcnt(0) & ( \Equal1~5_combout\ & ( ((\process_0~9_combout\ & \Equal2~7_combout\)) # (shift_r(41)) ) ) ) # ( !bcnt(0) & ( \Equal1~5_combout\ & ( ((\Equal2~7_combout\ & ((\Equal2~5_combout\) # (\process_0~9_combout\)))) # 
-- (shift_r(41)) ) ) ) # ( bcnt(0) & ( !\Equal1~5_combout\ ) ) # ( !bcnt(0) & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000111111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => \ALT_INV_Equal2~7_combout\,
	datad => ALT_INV_shift_r(41),
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~75_combout\);

-- Location: FF_X84_Y26_N56
\shift_r[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~75_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(42));

-- Location: FF_X84_Y26_N59
\shift_r[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(42),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(43));

-- Location: MLABCELL_X84_Y26_N33
\shift_r~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~74_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (\Equal2~7_combout\) # (shift_r(43)) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((!bcnt(0) & (\Equal2~5_combout\ & \Equal2~7_combout\))) # (shift_r(43)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111001011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_shift_r(43),
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~74_combout\);

-- Location: FF_X84_Y26_N34
\shift_r[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~74_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(44));

-- Location: LABCELL_X83_Y26_N27
\shift_r~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~73_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # ((!bcnt(0) & \Equal2~5_combout\))) # (shift_r(44)) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(44)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(44)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(44),
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~73_combout\);

-- Location: FF_X83_Y26_N29
\shift_r[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~73_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(45));

-- Location: FF_X83_Y26_N25
\shift_r[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(45),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(46));

-- Location: FF_X84_Y24_N50
\shift_r[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(46),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(47));

-- Location: MLABCELL_X84_Y22_N39
\shift_r~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~72_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # ((\Equal2~5_combout\ & !bcnt(0)))) # (shift_r(47)) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(47)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(47)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011111110111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(47),
	datab => \ALT_INV_Equal1~5_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => ALT_INV_bcnt(0),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~72_combout\);

-- Location: FF_X84_Y22_N41
\shift_r[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~72_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(48));

-- Location: MLABCELL_X84_Y22_N6
\shift_r~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~71_combout\ = ( \process_0~9_combout\ & ( \Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # (shift_r(48))) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( \Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # ((\Equal2~7_combout\ & 
-- !bcnt(0)))) # (shift_r(48)) ) ) ) # ( \process_0~9_combout\ & ( !\Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # (shift_r(48))) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~5_combout\ & ( (!\Equal1~5_combout\) # (shift_r(48)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110111011111111111011100111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_shift_r(48),
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \shift_r~71_combout\);

-- Location: FF_X84_Y22_N7
\shift_r[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~71_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(49));

-- Location: MLABCELL_X84_Y23_N57
\shift_r[50]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[50]~feeder_combout\ = ( shift_r(49) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(49),
	combout => \shift_r[50]~feeder_combout\);

-- Location: FF_X84_Y23_N59
\shift_r[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[50]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(50));

-- Location: FF_X84_Y23_N56
\shift_r[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(50),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(51));

-- Location: FF_X84_Y23_N28
\shift_r[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(51),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(52));

-- Location: MLABCELL_X84_Y23_N24
\shift_r[53]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[53]~feeder_combout\ = ( shift_r(52) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(52),
	combout => \shift_r[53]~feeder_combout\);

-- Location: FF_X84_Y23_N25
\shift_r[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[53]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(53));

-- Location: LABCELL_X85_Y23_N39
\shift_r~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~70_combout\ = ( \Equal1~5_combout\ & ( shift_r(53) ) ) # ( !\Equal1~5_combout\ & ( shift_r(53) ) ) # ( \Equal1~5_combout\ & ( !shift_r(53) & ( (\Equal2~7_combout\ & (((!bcnt(0) & \Equal2~5_combout\)) # (\process_0~9_combout\))) ) ) ) # ( 
-- !\Equal1~5_combout\ & ( !shift_r(53) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000100010011000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_Equal2~7_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => ALT_INV_shift_r(53),
	combout => \shift_r~70_combout\);

-- Location: FF_X85_Y23_N40
\shift_r[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~70_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(54));

-- Location: MLABCELL_X84_Y26_N51
\shift_r[55]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[55]~feeder_combout\ = ( shift_r(54) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(54),
	combout => \shift_r[55]~feeder_combout\);

-- Location: FF_X84_Y26_N52
\shift_r[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[55]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(55));

-- Location: FF_X84_Y26_N49
\shift_r[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(55),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(56));

-- Location: LABCELL_X81_Y24_N27
\shift_r~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~69_combout\ = ( \Equal1~5_combout\ & ( \Equal2~7_combout\ & ( (((\Equal2~5_combout\ & !bcnt(0))) # (shift_r(56))) # (\process_0~9_combout\) ) ) ) # ( !\Equal1~5_combout\ & ( \Equal2~7_combout\ ) ) # ( \Equal1~5_combout\ & ( !\Equal2~7_combout\ & 
-- ( shift_r(56) ) ) ) # ( !\Equal1~5_combout\ & ( !\Equal2~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111111111111111111110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~5_combout\,
	datab => \ALT_INV_process_0~9_combout\,
	datac => ALT_INV_bcnt(0),
	datad => ALT_INV_shift_r(56),
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~69_combout\);

-- Location: FF_X81_Y24_N28
\shift_r[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~69_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(57));

-- Location: LABCELL_X81_Y24_N48
\shift_r~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~68_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (((!bcnt(0) & \Equal2~5_combout\)) # (shift_r(57))) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(57)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(57)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101110111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => ALT_INV_shift_r(57),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~68_combout\);

-- Location: FF_X81_Y24_N50
\shift_r[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~68_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(58));

-- Location: LABCELL_X80_Y24_N6
\shift_r~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~67_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (shift_r(58)) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((!bcnt(0) & (\Equal2~7_combout\ & \Equal2~5_combout\))) # (shift_r(58)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000010111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~7_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => ALT_INV_shift_r(58),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~67_combout\);

-- Location: FF_X80_Y24_N8
\shift_r[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~67_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(59));

-- Location: FF_X80_Y24_N31
\shift_r[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(59),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(60));

-- Location: MLABCELL_X87_Y24_N21
\shift_r[61]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[61]~feeder_combout\ = ( shift_r(60) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(60),
	combout => \shift_r[61]~feeder_combout\);

-- Location: FF_X87_Y24_N22
\shift_r[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[61]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(61));

-- Location: FF_X84_Y25_N32
\shift_r[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(61),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(62));

-- Location: FF_X84_Y25_N16
\shift_r[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(62),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(63));

-- Location: FF_X80_Y24_N53
\shift_r[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(63),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(64));

-- Location: FF_X80_Y24_N47
\shift_r[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(64),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(65));

-- Location: LABCELL_X80_Y24_N54
\shift_r~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~66_combout\ = ( bcnt(0) & ( \Equal1~5_combout\ & ( ((\process_0~9_combout\ & \Equal2~7_combout\)) # (shift_r(65)) ) ) ) # ( !bcnt(0) & ( \Equal1~5_combout\ & ( ((\Equal2~7_combout\ & ((\process_0~9_combout\) # (\Equal2~5_combout\)))) # 
-- (shift_r(65)) ) ) ) # ( bcnt(0) & ( !\Equal1~5_combout\ ) ) # ( !bcnt(0) & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011011111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~5_combout\,
	datab => ALT_INV_shift_r(65),
	datac => \ALT_INV_process_0~9_combout\,
	datad => \ALT_INV_Equal2~7_combout\,
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~66_combout\);

-- Location: FF_X80_Y24_N55
\shift_r[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~66_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(66));

-- Location: FF_X85_Y25_N16
\shift_r[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(66),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(67));

-- Location: LABCELL_X85_Y25_N51
\shift_r~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~65_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((!bcnt(0) & \Equal2~5_combout\)) # (shift_r(67))) # (\process_0~9_combout\) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(67) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_process_0~9_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => ALT_INV_shift_r(67),
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~65_combout\);

-- Location: FF_X85_Y25_N52
\shift_r[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~65_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(68));

-- Location: LABCELL_X80_Y24_N21
\shift_r~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~64_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (shift_r(68)) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((!bcnt(0) & (\Equal2~5_combout\ & \Equal2~7_combout\))) # (shift_r(68)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000010111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => \ALT_INV_Equal2~7_combout\,
	datad => ALT_INV_shift_r(68),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~64_combout\);

-- Location: FF_X80_Y24_N22
\shift_r[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~64_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(69));

-- Location: FF_X87_Y24_N43
\shift_r[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(69),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(70));

-- Location: FF_X87_Y24_N1
\shift_r[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(70),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(71));

-- Location: FF_X84_Y22_N11
\shift_r[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(71),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(72));

-- Location: MLABCELL_X84_Y22_N3
\shift_r~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~63_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # ((!bcnt(0) & \Equal2~5_combout\))) # (shift_r(72)) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(72)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(72)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => ALT_INV_shift_r(72),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~63_combout\);

-- Location: FF_X84_Y22_N5
\shift_r[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~63_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(73));

-- Location: FF_X84_Y22_N38
\shift_r[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(73),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(74));

-- Location: FF_X84_Y22_N47
\shift_r[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(74),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(75));

-- Location: FF_X84_Y22_N2
\shift_r[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(75),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(76));

-- Location: MLABCELL_X84_Y22_N42
\shift_r~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~62_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # ((!bcnt(0) & \Equal2~5_combout\))) # (shift_r(76)) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(76)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(76)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111001011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_shift_r(76),
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~62_combout\);

-- Location: FF_X84_Y22_N44
\shift_r[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~62_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(77));

-- Location: MLABCELL_X84_Y22_N51
\shift_r~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~61_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # ((!bcnt(0) & \Equal2~5_combout\))) # (shift_r(77)) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(77)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(77)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111001011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_shift_r(77),
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~61_combout\);

-- Location: FF_X84_Y22_N53
\shift_r[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~61_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(78));

-- Location: MLABCELL_X84_Y23_N21
\shift_r[79]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[79]~feeder_combout\ = ( shift_r(78) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(78),
	combout => \shift_r[79]~feeder_combout\);

-- Location: FF_X84_Y23_N23
\shift_r[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[79]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(79));

-- Location: FF_X84_Y23_N20
\shift_r[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(79),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(80));

-- Location: MLABCELL_X84_Y23_N15
\shift_r[81]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[81]~feeder_combout\ = shift_r(80)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(80),
	combout => \shift_r[81]~feeder_combout\);

-- Location: FF_X84_Y23_N16
\shift_r[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[81]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(81));

-- Location: MLABCELL_X84_Y22_N30
\shift_r~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~60_combout\ = ( \process_0~9_combout\ & ( shift_r(81) ) ) # ( !\process_0~9_combout\ & ( shift_r(81) ) ) # ( \process_0~9_combout\ & ( !shift_r(81) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( !shift_r(81) 
-- & ( (!\Equal1~5_combout\) # ((!bcnt(0) & (\Equal2~7_combout\ & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110010111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~7_combout\,
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(81),
	combout => \shift_r~60_combout\);

-- Location: FF_X84_Y22_N31
\shift_r[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~60_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(82));

-- Location: MLABCELL_X84_Y22_N33
\shift_r~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~59_combout\ = ( \process_0~9_combout\ & ( shift_r(82) ) ) # ( !\process_0~9_combout\ & ( shift_r(82) ) ) # ( \process_0~9_combout\ & ( !shift_r(82) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( !shift_r(82) 
-- & ( (!\Equal1~5_combout\) # ((!bcnt(0) & (\Equal2~7_combout\ & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000010111111110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~7_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(82),
	combout => \shift_r~59_combout\);

-- Location: FF_X84_Y22_N34
\shift_r[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~59_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(83));

-- Location: FF_X85_Y24_N50
\shift_r[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(83),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(84));

-- Location: FF_X85_Y24_N53
\shift_r[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(84),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(85));

-- Location: FF_X85_Y24_N20
\shift_r[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(85),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(86));

-- Location: FF_X85_Y24_N23
\shift_r[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(86),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(87));

-- Location: FF_X85_Y24_N38
\shift_r[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(87),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(88));

-- Location: FF_X85_Y24_N40
\shift_r[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(88),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(89));

-- Location: LABCELL_X83_Y22_N42
\shift_r~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~58_combout\ = ( \Equal2~7_combout\ & ( \Equal2~5_combout\ & ( ((!bcnt(0)) # ((!\Equal1~5_combout\) # (\process_0~9_combout\))) # (shift_r(89)) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal2~5_combout\ & ( (!\Equal1~5_combout\) # (shift_r(89)) ) ) ) # 
-- ( \Equal2~7_combout\ & ( !\Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # (\process_0~9_combout\)) # (shift_r(89)) ) ) ) # ( !\Equal2~7_combout\ & ( !\Equal2~5_combout\ & ( (!\Equal1~5_combout\) # (shift_r(89)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111111111110101111101011111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(89),
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_process_0~9_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \shift_r~58_combout\);

-- Location: FF_X83_Y22_N43
\shift_r[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~58_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(90));

-- Location: FF_X84_Y22_N23
\shift_r[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(90),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(91));

-- Location: MLABCELL_X84_Y22_N18
\shift_r~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~57_combout\ = ( shift_r(91) & ( \Equal2~7_combout\ ) ) # ( !shift_r(91) & ( \Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (((!bcnt(0) & \Equal2~5_combout\)) # (\process_0~9_combout\)) ) ) ) # ( shift_r(91) & ( !\Equal2~7_combout\ ) ) # ( 
-- !shift_r(91) & ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111110111011111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => \ALT_INV_process_0~9_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal2~5_combout\,
	datae => ALT_INV_shift_r(91),
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~57_combout\);

-- Location: FF_X84_Y22_N20
\shift_r[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~57_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(92));

-- Location: MLABCELL_X84_Y22_N15
\shift_r~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~56_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (((!bcnt(0) & \Equal2~5_combout\)) # (shift_r(92))) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(92)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(92)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001110111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal1~5_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => ALT_INV_shift_r(92),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~56_combout\);

-- Location: FF_X84_Y22_N16
\shift_r[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~56_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(93));

-- Location: MLABCELL_X84_Y23_N12
\shift_r[94]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[94]~feeder_combout\ = ( shift_r(93) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(93),
	combout => \shift_r[94]~feeder_combout\);

-- Location: FF_X84_Y23_N13
\shift_r[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[94]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(94));

-- Location: LABCELL_X83_Y23_N54
\shift_r[95]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[95]~feeder_combout\ = ( shift_r(94) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(94),
	combout => \shift_r[95]~feeder_combout\);

-- Location: FF_X83_Y23_N55
\shift_r[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[95]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(95));

-- Location: LABCELL_X80_Y24_N27
\shift_r~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~55_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (shift_r(95)) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((\Equal2~5_combout\ & (\Equal2~7_combout\ & !bcnt(0)))) # (shift_r(95)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100011111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~5_combout\,
	datab => \ALT_INV_Equal2~7_combout\,
	datac => ALT_INV_shift_r(95),
	datad => ALT_INV_bcnt(0),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~55_combout\);

-- Location: FF_X80_Y24_N29
\shift_r[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~55_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(96));

-- Location: LABCELL_X85_Y24_N57
\shift_r[97]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[97]~feeder_combout\ = ( shift_r(96) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(96),
	combout => \shift_r[97]~feeder_combout\);

-- Location: FF_X85_Y24_N59
\shift_r[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[97]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(97));

-- Location: FF_X85_Y24_N56
\shift_r[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(97),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(98));

-- Location: FF_X85_Y24_N28
\shift_r[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(98),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(99));

-- Location: LABCELL_X85_Y24_N24
\shift_r[100]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[100]~feeder_combout\ = ( shift_r(99) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(99),
	combout => \shift_r[100]~feeder_combout\);

-- Location: FF_X85_Y24_N25
\shift_r[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[100]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(100));

-- Location: LABCELL_X85_Y24_N45
\shift_r[101]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[101]~feeder_combout\ = ( shift_r(100) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(100),
	combout => \shift_r[101]~feeder_combout\);

-- Location: FF_X85_Y24_N47
\shift_r[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[101]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(101));

-- Location: FF_X85_Y24_N44
\shift_r[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(101),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(102));

-- Location: FF_X85_Y24_N17
\shift_r[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(102),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(103));

-- Location: FF_X85_Y24_N13
\shift_r[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(103),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(104));

-- Location: MLABCELL_X87_Y24_N54
\shift_r~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~54_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((!bcnt(0) & \Equal2~5_combout\)) # (shift_r(104))) # (\process_0~9_combout\) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(104) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => ALT_INV_bcnt(0),
	datac => ALT_INV_shift_r(104),
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~54_combout\);

-- Location: FF_X87_Y24_N56
\shift_r[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~54_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(105));

-- Location: FF_X87_Y24_N58
\shift_r[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(105),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(106));

-- Location: MLABCELL_X87_Y24_N3
\shift_r~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~53_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((\Equal2~5_combout\ & !bcnt(0))) # (\process_0~9_combout\)) # (shift_r(106)) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(106) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(106),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_process_0~9_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~53_combout\);

-- Location: FF_X87_Y24_N4
\shift_r[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~53_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(107));

-- Location: MLABCELL_X84_Y23_N30
\shift_r[108]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[108]~feeder_combout\ = ( shift_r(107) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(107),
	combout => \shift_r[108]~feeder_combout\);

-- Location: FF_X84_Y23_N31
\shift_r[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[108]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(108));

-- Location: MLABCELL_X84_Y23_N45
\shift_r[109]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[109]~feeder_combout\ = ( shift_r(108) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(108),
	combout => \shift_r[109]~feeder_combout\);

-- Location: FF_X84_Y23_N47
\shift_r[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[109]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(109));

-- Location: FF_X84_Y23_N44
\shift_r[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(109),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(110));

-- Location: FF_X84_Y23_N41
\shift_r[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(110),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(111));

-- Location: FF_X84_Y23_N38
\shift_r[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(111),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(112));

-- Location: FF_X84_Y23_N34
\shift_r[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(112),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(113));

-- Location: MLABCELL_X87_Y24_N45
\shift_r~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~52_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((\Equal2~5_combout\ & !bcnt(0))) # (\process_0~9_combout\)) # (shift_r(113)) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(113) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(113),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_process_0~9_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~52_combout\);

-- Location: FF_X87_Y24_N46
\shift_r[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~52_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(114));

-- Location: LABCELL_X88_Y24_N45
\shift_r[115]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[115]~feeder_combout\ = ( shift_r(114) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(114),
	combout => \shift_r[115]~feeder_combout\);

-- Location: FF_X88_Y24_N47
\shift_r[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[115]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(115));

-- Location: MLABCELL_X87_Y24_N6
\shift_r~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~51_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((!bcnt(0) & \Equal2~5_combout\)) # (shift_r(115))) # (\process_0~9_combout\) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(115) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => ALT_INV_bcnt(0),
	datac => ALT_INV_shift_r(115),
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~51_combout\);

-- Location: FF_X87_Y24_N7
\shift_r[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~51_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(116));

-- Location: MLABCELL_X87_Y24_N15
\shift_r~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~50_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((\Equal2~5_combout\ & !bcnt(0))) # (shift_r(116))) # (\process_0~9_combout\) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(116) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => ALT_INV_shift_r(116),
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~50_combout\);

-- Location: FF_X87_Y24_N16
\shift_r[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~50_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(117));

-- Location: FF_X87_Y24_N13
\shift_r[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(117),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(118));

-- Location: FF_X88_Y24_N26
\shift_r[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(118),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(119));

-- Location: FF_X88_Y24_N31
\shift_r[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(119),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(120));

-- Location: MLABCELL_X87_Y24_N24
\shift_r~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~49_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((!bcnt(0) & \Equal2~5_combout\)) # (\process_0~9_combout\)) # (shift_r(120)) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(120) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(120),
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_process_0~9_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~49_combout\);

-- Location: FF_X87_Y24_N25
\shift_r[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~49_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(121));

-- Location: FF_X87_Y24_N34
\shift_r[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(121),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(122));

-- Location: FF_X87_Y24_N50
\shift_r[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(122),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(123));

-- Location: MLABCELL_X87_Y24_N36
\shift_r~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~48_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((!bcnt(0) & \Equal2~5_combout\)) # (shift_r(123))) # (\process_0~9_combout\) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(123) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => ALT_INV_bcnt(0),
	datac => ALT_INV_shift_r(123),
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~48_combout\);

-- Location: FF_X87_Y24_N37
\shift_r[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~48_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(124));

-- Location: LABCELL_X88_Y24_N15
\shift_r[125]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[125]~feeder_combout\ = ( shift_r(124) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(124),
	combout => \shift_r[125]~feeder_combout\);

-- Location: FF_X88_Y24_N17
\shift_r[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[125]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(125));

-- Location: MLABCELL_X87_Y24_N51
\shift_r~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~47_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((\Equal2~5_combout\ & !bcnt(0))) # (\process_0~9_combout\)) # (shift_r(125)) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(125) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(125),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_process_0~9_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~47_combout\);

-- Location: FF_X87_Y24_N53
\shift_r[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~47_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(126));

-- Location: MLABCELL_X87_Y24_N30
\shift_r~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~46_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((!bcnt(0) & \Equal2~5_combout\)) # (shift_r(126))) # (\process_0~9_combout\) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(126) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => ALT_INV_bcnt(0),
	datac => ALT_INV_shift_r(126),
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~46_combout\);

-- Location: FF_X87_Y24_N31
\shift_r[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~46_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(127));

-- Location: MLABCELL_X84_Y23_N51
\shift_r[128]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[128]~feeder_combout\ = ( shift_r(127) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(127),
	combout => \shift_r[128]~feeder_combout\);

-- Location: FF_X84_Y23_N53
\shift_r[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[128]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(128));

-- Location: MLABCELL_X84_Y23_N48
\shift_r[129]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[129]~feeder_combout\ = shift_r(128)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_shift_r(128),
	combout => \shift_r[129]~feeder_combout\);

-- Location: FF_X84_Y23_N50
\shift_r[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[129]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(129));

-- Location: FF_X83_Y23_N2
\shift_r[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(129),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(130));

-- Location: LABCELL_X83_Y25_N33
\shift_r~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~45_combout\ = ( \process_0~9_combout\ & ( shift_r(130) ) ) # ( !\process_0~9_combout\ & ( shift_r(130) ) ) # ( \process_0~9_combout\ & ( !shift_r(130) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(130) & ( (!\Equal1~5_combout\) # ((\Equal2~5_combout\ & (!bcnt(0) & \Equal2~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~5_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~7_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(130),
	combout => \shift_r~45_combout\);

-- Location: FF_X83_Y25_N34
\shift_r[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~45_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(131));

-- Location: FF_X84_Y25_N4
\shift_r[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(131),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(132));

-- Location: FF_X84_Y24_N41
\shift_r[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(132),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(133));

-- Location: FF_X84_Y24_N11
\shift_r[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(133),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(134));

-- Location: MLABCELL_X84_Y24_N6
\shift_r[135]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[135]~feeder_combout\ = shift_r(134)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_shift_r(134),
	combout => \shift_r[135]~feeder_combout\);

-- Location: FF_X84_Y24_N8
\shift_r[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[135]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(135));

-- Location: FF_X84_Y24_N5
\shift_r[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(135),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(136));

-- Location: FF_X84_Y24_N1
\shift_r[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(136),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(137));

-- Location: LABCELL_X79_Y24_N42
\shift_r~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~44_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (shift_r(137)) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((\Equal2~7_combout\ & (\Equal2~5_combout\ & !bcnt(0)))) # (shift_r(137)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100010000111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => ALT_INV_shift_r(137),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~44_combout\);

-- Location: FF_X79_Y24_N43
\shift_r[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~44_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(138));

-- Location: MLABCELL_X84_Y24_N42
\shift_r[139]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[139]~feeder_combout\ = ( shift_r(138) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(138),
	combout => \shift_r[139]~feeder_combout\);

-- Location: FF_X84_Y24_N43
\shift_r[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[139]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(139));

-- Location: LABCELL_X83_Y25_N42
\shift_r~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~43_combout\ = ( bcnt(0) & ( \Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # ((\Equal2~7_combout\ & \process_0~9_combout\))) # (shift_r(139)) ) ) ) # ( !bcnt(0) & ( \Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # (shift_r(139))) # 
-- (\Equal2~7_combout\) ) ) ) # ( bcnt(0) & ( !\Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # ((\Equal2~7_combout\ & \process_0~9_combout\))) # (shift_r(139)) ) ) ) # ( !bcnt(0) & ( !\Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # ((\Equal2~7_combout\ & 
-- \process_0~9_combout\))) # (shift_r(139)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110111111100111111011111110111111101111111001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_shift_r(139),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_process_0~9_combout\,
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \shift_r~43_combout\);

-- Location: FF_X83_Y25_N43
\shift_r[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~43_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(140));

-- Location: LABCELL_X83_Y25_N57
\shift_r~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~42_combout\ = ( bcnt(0) & ( \Equal1~5_combout\ & ( ((\Equal2~7_combout\ & \process_0~9_combout\)) # (shift_r(140)) ) ) ) # ( !bcnt(0) & ( \Equal1~5_combout\ & ( ((\Equal2~7_combout\ & ((\Equal2~5_combout\) # (\process_0~9_combout\)))) # 
-- (shift_r(140)) ) ) ) # ( bcnt(0) & ( !\Equal1~5_combout\ ) ) # ( !bcnt(0) & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100011111010111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => \ALT_INV_process_0~9_combout\,
	datac => ALT_INV_shift_r(140),
	datad => \ALT_INV_Equal2~5_combout\,
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~42_combout\);

-- Location: FF_X83_Y25_N58
\shift_r[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~42_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(141));

-- Location: FF_X84_Y25_N10
\shift_r[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(141),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(142));

-- Location: FF_X84_Y23_N11
\shift_r[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(142),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(143));

-- Location: FF_X84_Y23_N7
\shift_r[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(143),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(144));

-- Location: FF_X84_Y23_N5
\shift_r[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(144),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(145));

-- Location: FF_X84_Y23_N1
\shift_r[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(145),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(146));

-- Location: LABCELL_X85_Y23_N57
\shift_r[147]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[147]~feeder_combout\ = ( shift_r(146) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(146),
	combout => \shift_r[147]~feeder_combout\);

-- Location: FF_X85_Y23_N58
\shift_r[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[147]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(147));

-- Location: LABCELL_X83_Y25_N12
\shift_r~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~41_combout\ = ( bcnt(0) & ( \Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # ((\Equal2~7_combout\ & \process_0~9_combout\))) # (shift_r(147)) ) ) ) # ( !bcnt(0) & ( \Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # (\Equal2~7_combout\)) # 
-- (shift_r(147)) ) ) ) # ( bcnt(0) & ( !\Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # ((\Equal2~7_combout\ & \process_0~9_combout\))) # (shift_r(147)) ) ) ) # ( !bcnt(0) & ( !\Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # ((\Equal2~7_combout\ & 
-- \process_0~9_combout\))) # (shift_r(147)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110111111101011111011111110111111101111111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(147),
	datab => \ALT_INV_Equal2~7_combout\,
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_process_0~9_combout\,
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \shift_r~41_combout\);

-- Location: FF_X83_Y25_N13
\shift_r[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~41_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(148));

-- Location: MLABCELL_X84_Y25_N54
\shift_r~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~40_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (\Equal2~7_combout\) # (shift_r(148)) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((\Equal2~5_combout\ & (!bcnt(0) & \Equal2~7_combout\))) # (shift_r(148)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101011101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(148),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~40_combout\);

-- Location: FF_X84_Y25_N56
\shift_r[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~40_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(149));

-- Location: FF_X84_Y25_N2
\shift_r[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(149),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(150));

-- Location: FF_X84_Y25_N34
\shift_r[151]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(150),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(151));

-- Location: MLABCELL_X87_Y24_N18
\shift_r[152]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[152]~feeder_combout\ = ( shift_r(151) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(151),
	combout => \shift_r[152]~feeder_combout\);

-- Location: FF_X87_Y24_N19
\shift_r[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[152]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(152));

-- Location: LABCELL_X85_Y23_N18
\shift_r~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~39_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (\Equal2~7_combout\) # (shift_r(152)) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((!bcnt(0) & (\Equal2~5_combout\ & \Equal2~7_combout\))) # (shift_r(152)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010111010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(152),
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~39_combout\);

-- Location: FF_X85_Y23_N20
\shift_r[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~39_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(153));

-- Location: LABCELL_X85_Y23_N0
\shift_r~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~38_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (\Equal2~7_combout\) # (shift_r(153)) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((!bcnt(0) & (\Equal2~5_combout\ & \Equal2~7_combout\))) # (shift_r(153)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010111010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(153),
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~38_combout\);

-- Location: FF_X85_Y23_N1
\shift_r[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~38_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(154));

-- Location: MLABCELL_X84_Y24_N45
\shift_r[155]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[155]~feeder_combout\ = ( shift_r(154) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(154),
	combout => \shift_r[155]~feeder_combout\);

-- Location: FF_X84_Y24_N47
\shift_r[155]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[155]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(155));

-- Location: FF_X84_Y25_N50
\shift_r[156]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(155),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(156));

-- Location: FF_X84_Y25_N47
\shift_r[157]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(156),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(157));

-- Location: FF_X84_Y25_N44
\shift_r[158]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(157),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(158));

-- Location: FF_X84_Y25_N41
\shift_r[159]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(158),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(159));

-- Location: FF_X84_Y25_N37
\shift_r[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(159),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(160));

-- Location: FF_X84_Y25_N58
\shift_r[161]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(160),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(161));

-- Location: MLABCELL_X84_Y25_N51
\shift_r~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~37_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (shift_r(161)) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((!bcnt(0) & (\Equal2~5_combout\ & \Equal2~7_combout\))) # (shift_r(161)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000010111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => \ALT_INV_Equal2~7_combout\,
	datad => ALT_INV_shift_r(161),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~37_combout\);

-- Location: FF_X84_Y25_N52
\shift_r[162]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~37_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(162));

-- Location: FF_X84_Y25_N25
\shift_r[163]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(162),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(163));

-- Location: LABCELL_X83_Y22_N57
\shift_r~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~36_combout\ = ( \process_0~9_combout\ & ( shift_r(163) ) ) # ( !\process_0~9_combout\ & ( shift_r(163) ) ) # ( \process_0~9_combout\ & ( !shift_r(163) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(163) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(163),
	combout => \shift_r~36_combout\);

-- Location: FF_X83_Y22_N58
\shift_r[164]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~36_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(164));

-- Location: LABCELL_X83_Y22_N54
\shift_r~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~35_combout\ = ( \process_0~9_combout\ & ( shift_r(164) ) ) # ( !\process_0~9_combout\ & ( shift_r(164) ) ) # ( \process_0~9_combout\ & ( !shift_r(164) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(164) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(164),
	combout => \shift_r~35_combout\);

-- Location: FF_X83_Y22_N56
\shift_r[165]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~35_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(165));

-- Location: FF_X83_Y22_N4
\shift_r[166]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(165),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(166));

-- Location: FF_X84_Y22_N25
\shift_r[167]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(166),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(167));

-- Location: LABCELL_X83_Y22_N51
\shift_r~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~34_combout\ = ( \process_0~9_combout\ & ( shift_r(167) ) ) # ( !\process_0~9_combout\ & ( shift_r(167) ) ) # ( \process_0~9_combout\ & ( !shift_r(167) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(167) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(167),
	combout => \shift_r~34_combout\);

-- Location: FF_X83_Y22_N52
\shift_r[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~34_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(168));

-- Location: FF_X83_Y22_N47
\shift_r[169]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(168),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(169));

-- Location: FF_X83_Y22_N13
\shift_r[170]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(169),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(170));

-- Location: LABCELL_X83_Y22_N48
\shift_r~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~33_combout\ = ( \process_0~9_combout\ & ( shift_r(170) ) ) # ( !\process_0~9_combout\ & ( shift_r(170) ) ) # ( \process_0~9_combout\ & ( !shift_r(170) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(170) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(170),
	combout => \shift_r~33_combout\);

-- Location: FF_X83_Y22_N50
\shift_r[171]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~33_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(171));

-- Location: LABCELL_X83_Y22_N21
\shift_r~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~32_combout\ = ( \process_0~9_combout\ & ( shift_r(171) ) ) # ( !\process_0~9_combout\ & ( shift_r(171) ) ) # ( \process_0~9_combout\ & ( !shift_r(171) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(171) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(171),
	combout => \shift_r~32_combout\);

-- Location: FF_X83_Y22_N22
\shift_r[172]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~32_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(172));

-- Location: LABCELL_X83_Y22_N18
\shift_r~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~31_combout\ = ( \process_0~9_combout\ & ( shift_r(172) ) ) # ( !\process_0~9_combout\ & ( shift_r(172) ) ) # ( \process_0~9_combout\ & ( !shift_r(172) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(172) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(172),
	combout => \shift_r~31_combout\);

-- Location: FF_X83_Y22_N20
\shift_r[173]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~31_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(173));

-- Location: LABCELL_X83_Y22_N15
\shift_r~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~30_combout\ = ( bcnt(0) & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # (\process_0~9_combout\)) # (shift_r(173)) ) ) ) # ( !bcnt(0) & ( \Equal2~7_combout\ & ( (((!\Equal1~5_combout\) # (\Equal2~5_combout\)) # (\process_0~9_combout\)) # 
-- (shift_r(173)) ) ) ) # ( bcnt(0) & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(173)) ) ) ) # ( !bcnt(0) & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(173)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111011111111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(173),
	datab => \ALT_INV_process_0~9_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~30_combout\);

-- Location: FF_X83_Y22_N16
\shift_r[174]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~30_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(174));

-- Location: FF_X87_Y24_N29
\shift_r[175]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(174),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(175));

-- Location: FF_X87_Y24_N10
\shift_r[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(175),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(176));

-- Location: FF_X87_Y24_N40
\shift_r[177]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(176),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(177));

-- Location: LABCELL_X83_Y25_N30
\shift_r~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~29_combout\ = ( \process_0~9_combout\ & ( shift_r(177) ) ) # ( !\process_0~9_combout\ & ( shift_r(177) ) ) # ( \process_0~9_combout\ & ( !shift_r(177) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(177) & ( (!\Equal1~5_combout\) # ((\Equal2~5_combout\ & (!bcnt(0) & \Equal2~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~5_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(177),
	combout => \shift_r~29_combout\);

-- Location: FF_X83_Y25_N31
\shift_r[178]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~29_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(178));

-- Location: FF_X83_Y25_N8
\shift_r[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(178),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(179));

-- Location: FF_X83_Y26_N23
\shift_r[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(179),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(180));

-- Location: FF_X83_Y26_N53
\shift_r[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(180),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(181));

-- Location: FF_X83_Y26_N50
\shift_r[182]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(181),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(182));

-- Location: FF_X83_Y26_N59
\shift_r[183]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(182),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(183));

-- Location: FF_X83_Y26_N56
\shift_r[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(183),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(184));

-- Location: FF_X83_Y26_N16
\shift_r[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(184),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(185));

-- Location: LABCELL_X83_Y26_N6
\shift_r~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~28_combout\ = ( \Equal1~5_combout\ & ( \Equal2~5_combout\ & ( ((\Equal2~7_combout\ & ((!bcnt(0)) # (\process_0~9_combout\)))) # (shift_r(185)) ) ) ) # ( !\Equal1~5_combout\ & ( \Equal2~5_combout\ ) ) # ( \Equal1~5_combout\ & ( !\Equal2~5_combout\ 
-- & ( ((\process_0~9_combout\ & \Equal2~7_combout\)) # (shift_r(185)) ) ) ) # ( !\Equal1~5_combout\ & ( !\Equal2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000111110001111111111111111111110011111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_Equal2~7_combout\,
	datac => ALT_INV_shift_r(185),
	datad => ALT_INV_bcnt(0),
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \shift_r~28_combout\);

-- Location: FF_X83_Y26_N8
\shift_r[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~28_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(186));

-- Location: FF_X83_Y26_N10
\shift_r[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(186),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(187));

-- Location: LABCELL_X83_Y26_N3
\shift_r~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~27_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # ((!bcnt(0) & \Equal2~5_combout\))) # (shift_r(187)) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(187)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(187)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(187),
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~27_combout\);

-- Location: FF_X83_Y26_N5
\shift_r[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~27_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(188));

-- Location: LABCELL_X83_Y26_N12
\shift_r~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~26_combout\ = ( bcnt(0) & ( \Equal1~5_combout\ & ( ((\process_0~9_combout\ & \Equal2~7_combout\)) # (shift_r(188)) ) ) ) # ( !bcnt(0) & ( \Equal1~5_combout\ & ( ((\Equal2~7_combout\ & ((\Equal2~5_combout\) # (\process_0~9_combout\)))) # 
-- (shift_r(188)) ) ) ) # ( bcnt(0) & ( !\Equal1~5_combout\ ) ) # ( !bcnt(0) & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111011111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_shift_r(188),
	datad => \ALT_INV_Equal2~7_combout\,
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~26_combout\);

-- Location: FF_X83_Y26_N13
\shift_r[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~26_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(189));

-- Location: FF_X83_Y26_N2
\shift_r[190]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(189),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(190));

-- Location: FF_X83_Y26_N31
\shift_r[191]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(190),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(191));

-- Location: LABCELL_X83_Y26_N33
\shift_r~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~25_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # ((!bcnt(0) & \Equal2~5_combout\))) # (shift_r(191)) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(191)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(191)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(191),
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~25_combout\);

-- Location: FF_X83_Y26_N34
\shift_r[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~25_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(192));

-- Location: LABCELL_X83_Y26_N18
\shift_r~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~24_combout\ = ( \process_0~9_combout\ & ( \Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # (shift_r(192))) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( \Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # ((\Equal2~7_combout\ & 
-- !bcnt(0)))) # (shift_r(192)) ) ) ) # ( \process_0~9_combout\ & ( !\Equal2~5_combout\ & ( ((!\Equal1~5_combout\) # (shift_r(192))) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~5_combout\ & ( (!\Equal1~5_combout\) # (shift_r(192)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111101111111011111110111111100111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_shift_r(192),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => ALT_INV_bcnt(0),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \shift_r~24_combout\);

-- Location: FF_X83_Y26_N19
\shift_r[193]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~24_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(193));

-- Location: LABCELL_X83_Y26_N36
\shift_r~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~23_combout\ = ( bcnt(0) & ( \Equal2~7_combout\ & ( (!\Equal1~5_combout\) # ((shift_r(193)) # (\process_0~9_combout\)) ) ) ) # ( !bcnt(0) & ( \Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (((shift_r(193)) # (\process_0~9_combout\)) # 
-- (\Equal2~5_combout\)) ) ) ) # ( bcnt(0) & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(193)) ) ) ) # ( !bcnt(0) & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(193)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110111111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => \ALT_INV_process_0~9_combout\,
	datad => ALT_INV_shift_r(193),
	datae => ALT_INV_bcnt(0),
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~23_combout\);

-- Location: FF_X83_Y26_N38
\shift_r[194]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~23_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(194));

-- Location: FF_X83_Y26_N40
\shift_r[195]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(194),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(195));

-- Location: LABCELL_X83_Y26_N45
\shift_r~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~22_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # ((!bcnt(0) & \Equal2~5_combout\))) # (shift_r(195)) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(195)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(195)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(195),
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~22_combout\);

-- Location: FF_X83_Y26_N46
\shift_r[196]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~22_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(196));

-- Location: MLABCELL_X84_Y25_N6
\shift_r~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~21_combout\ = ( \process_0~9_combout\ & ( \Equal1~5_combout\ & ( (\Equal2~7_combout\) # (shift_r(196)) ) ) ) # ( !\process_0~9_combout\ & ( \Equal1~5_combout\ & ( ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) # (shift_r(196)) ) ) ) # ( 
-- \process_0~9_combout\ & ( !\Equal1~5_combout\ ) ) # ( !\process_0~9_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101011101010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(196),
	datab => \ALT_INV_Equal2~7_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~21_combout\);

-- Location: FF_X84_Y25_N7
\shift_r[197]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~21_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(197));

-- Location: FF_X84_Y25_N22
\shift_r[198]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(197),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(198));

-- Location: FF_X83_Y25_N56
\shift_r[199]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(198),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(199));

-- Location: FF_X83_Y25_N16
\shift_r[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(199),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(200));

-- Location: LABCELL_X79_Y24_N27
\shift_r~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~20_combout\ = ( \Equal2~7_combout\ & ( \Equal1~5_combout\ & ( (((!bcnt(0) & \Equal2~5_combout\)) # (\process_0~9_combout\)) # (shift_r(200)) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal1~5_combout\ & ( shift_r(200) ) ) ) # ( \Equal2~7_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal2~7_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_shift_r(200),
	datad => \ALT_INV_process_0~9_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \shift_r~20_combout\);

-- Location: FF_X79_Y24_N28
\shift_r[201]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~20_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(201));

-- Location: MLABCELL_X84_Y25_N18
\shift_r[202]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[202]~feeder_combout\ = ( shift_r(201) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(201),
	combout => \shift_r[202]~feeder_combout\);

-- Location: FF_X84_Y25_N19
\shift_r[202]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[202]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(202));

-- Location: FF_X83_Y25_N10
\shift_r[203]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(202),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(203));

-- Location: FF_X83_Y25_N26
\shift_r[204]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(203),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(204));

-- Location: FF_X83_Y25_N46
\shift_r[205]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(204),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(205));

-- Location: FF_X84_Y25_N14
\shift_r[206]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(205),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(206));

-- Location: FF_X83_Y23_N11
\shift_r[207]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(206),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(207));

-- Location: FF_X83_Y23_N8
\shift_r[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(207),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(208));

-- Location: FF_X83_Y23_N4
\shift_r[209]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(208),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(209));

-- Location: MLABCELL_X84_Y22_N54
\shift_r~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~19_combout\ = ( \process_0~9_combout\ & ( \Equal2~5_combout\ & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\) # (shift_r(209))) ) ) ) # ( !\process_0~9_combout\ & ( \Equal2~5_combout\ & ( (!\Equal1~5_combout\) # (((!bcnt(0) & 
-- \Equal2~7_combout\)) # (shift_r(209))) ) ) ) # ( \process_0~9_combout\ & ( !\Equal2~5_combout\ & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\) # (shift_r(209))) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~5_combout\ & ( (!\Equal1~5_combout\) # 
-- (shift_r(209)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111111111110111011111110111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => ALT_INV_shift_r(209),
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \shift_r~19_combout\);

-- Location: FF_X84_Y22_N56
\shift_r[210]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~19_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(210));

-- Location: FF_X84_Y22_N59
\shift_r[211]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(210),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(211));

-- Location: MLABCELL_X84_Y22_N27
\shift_r~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~18_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( ((!\Equal1~5_combout\) # ((!bcnt(0) & \Equal2~5_combout\))) # (shift_r(211)) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(211)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(211)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111001011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_shift_r(211),
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~18_combout\);

-- Location: FF_X84_Y22_N28
\shift_r[212]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~18_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(212));

-- Location: LABCELL_X83_Y22_N36
\shift_r~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~17_combout\ = ( \process_0~9_combout\ & ( shift_r(212) ) ) # ( !\process_0~9_combout\ & ( shift_r(212) ) ) # ( \process_0~9_combout\ & ( !shift_r(212) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(212) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(212),
	combout => \shift_r~17_combout\);

-- Location: FF_X83_Y22_N38
\shift_r[213]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~17_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(213));

-- Location: LABCELL_X83_Y23_N42
\shift_r[214]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[214]~feeder_combout\ = ( shift_r(213) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(213),
	combout => \shift_r[214]~feeder_combout\);

-- Location: FF_X83_Y23_N44
\shift_r[214]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[214]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(214));

-- Location: LABCELL_X83_Y23_N45
\shift_r[215]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[215]~feeder_combout\ = shift_r(214)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_shift_r(214),
	combout => \shift_r[215]~feeder_combout\);

-- Location: FF_X83_Y23_N46
\shift_r[215]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[215]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(215));

-- Location: LABCELL_X83_Y22_N27
\shift_r~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~16_combout\ = ( \process_0~9_combout\ & ( shift_r(215) ) ) # ( !\process_0~9_combout\ & ( shift_r(215) ) ) # ( \process_0~9_combout\ & ( !shift_r(215) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(215) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(215),
	combout => \shift_r~16_combout\);

-- Location: FF_X83_Y22_N28
\shift_r[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~16_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(216));

-- Location: LABCELL_X83_Y22_N24
\shift_r~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~15_combout\ = ( \process_0~9_combout\ & ( shift_r(216) ) ) # ( !\process_0~9_combout\ & ( shift_r(216) ) ) # ( \process_0~9_combout\ & ( !shift_r(216) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(216) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(216),
	combout => \shift_r~15_combout\);

-- Location: FF_X83_Y22_N26
\shift_r[217]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~15_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(217));

-- Location: LABCELL_X83_Y22_N33
\shift_r~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~14_combout\ = ( \process_0~9_combout\ & ( shift_r(217) ) ) # ( !\process_0~9_combout\ & ( shift_r(217) ) ) # ( \process_0~9_combout\ & ( !shift_r(217) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(217) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (\Equal2~5_combout\ & !bcnt(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010000111111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(217),
	combout => \shift_r~14_combout\);

-- Location: FF_X83_Y22_N35
\shift_r[218]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~14_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(218));

-- Location: LABCELL_X83_Y22_N30
\shift_r~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~13_combout\ = ( \process_0~9_combout\ & ( shift_r(218) ) ) # ( !\process_0~9_combout\ & ( shift_r(218) ) ) # ( \process_0~9_combout\ & ( !shift_r(218) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(218) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (\Equal2~5_combout\ & !bcnt(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110000111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => \ALT_INV_Equal1~5_combout\,
	datad => ALT_INV_bcnt(0),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(218),
	combout => \shift_r~13_combout\);

-- Location: FF_X83_Y22_N32
\shift_r[219]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~13_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(219));

-- Location: LABCELL_X83_Y22_N39
\shift_r~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~12_combout\ = ( \process_0~9_combout\ & ( shift_r(219) ) ) # ( !\process_0~9_combout\ & ( shift_r(219) ) ) # ( \process_0~9_combout\ & ( !shift_r(219) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(219) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(219),
	combout => \shift_r~12_combout\);

-- Location: FF_X83_Y22_N40
\shift_r[220]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~12_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(220));

-- Location: LABCELL_X83_Y23_N36
\shift_r[221]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[221]~feeder_combout\ = ( shift_r(220) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(220),
	combout => \shift_r[221]~feeder_combout\);

-- Location: FF_X83_Y23_N38
\shift_r[221]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[221]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(221));

-- Location: FF_X83_Y23_N53
\shift_r[222]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(221),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(222));

-- Location: FF_X83_Y23_N50
\shift_r[223]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(222),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(223));

-- Location: LABCELL_X83_Y23_N33
\shift_r[224]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[224]~feeder_combout\ = shift_r(223)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(223),
	combout => \shift_r[224]~feeder_combout\);

-- Location: FF_X83_Y23_N35
\shift_r[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[224]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(224));

-- Location: FF_X83_Y23_N32
\shift_r[225]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(224),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(225));

-- Location: FF_X83_Y23_N17
\shift_r[226]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(225),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(226));

-- Location: FF_X83_Y23_N14
\shift_r[227]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(226),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(227));

-- Location: FF_X83_Y23_N23
\shift_r[228]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(227),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(228));

-- Location: FF_X83_Y23_N19
\shift_r[229]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(228),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(229));

-- Location: LABCELL_X83_Y23_N27
\shift_r[230]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[230]~feeder_combout\ = ( shift_r(229) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(229),
	combout => \shift_r[230]~feeder_combout\);

-- Location: FF_X83_Y23_N29
\shift_r[230]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[230]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(230));

-- Location: FF_X83_Y23_N26
\shift_r[231]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(230),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(231));

-- Location: LABCELL_X83_Y23_N57
\shift_r[232]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[232]~feeder_combout\ = shift_r(231)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_r(231),
	combout => \shift_r[232]~feeder_combout\);

-- Location: FF_X83_Y23_N59
\shift_r[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[232]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(232));

-- Location: FF_X83_Y23_N40
\shift_r[233]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(232),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(233));

-- Location: LABCELL_X83_Y22_N0
\shift_r~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~11_combout\ = ( \Equal2~7_combout\ & ( \Equal2~5_combout\ & ( (!\Equal1~5_combout\) # ((!bcnt(0)) # ((\process_0~9_combout\) # (shift_r(233)))) ) ) ) # ( !\Equal2~7_combout\ & ( \Equal2~5_combout\ & ( (!\Equal1~5_combout\) # (shift_r(233)) ) ) ) 
-- # ( \Equal2~7_combout\ & ( !\Equal2~5_combout\ & ( (!\Equal1~5_combout\) # ((\process_0~9_combout\) # (shift_r(233))) ) ) ) # ( !\Equal2~7_combout\ & ( !\Equal2~5_combout\ & ( (!\Equal1~5_combout\) # (shift_r(233)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111111111110101111101011111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => ALT_INV_bcnt(0),
	datac => ALT_INV_shift_r(233),
	datad => \ALT_INV_process_0~9_combout\,
	datae => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \shift_r~11_combout\);

-- Location: FF_X83_Y22_N1
\shift_r[234]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~11_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(234));

-- Location: FF_X84_Y22_N49
\shift_r[235]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(234),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(235));

-- Location: LABCELL_X83_Y22_N9
\shift_r~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~10_combout\ = ( \process_0~9_combout\ & ( shift_r(235) ) ) # ( !\process_0~9_combout\ & ( shift_r(235) ) ) # ( \process_0~9_combout\ & ( !shift_r(235) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(235) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(235),
	combout => \shift_r~10_combout\);

-- Location: FF_X83_Y22_N11
\shift_r[236]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~10_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(236));

-- Location: LABCELL_X83_Y22_N6
\shift_r~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~9_combout\ = ( \process_0~9_combout\ & ( shift_r(236) ) ) # ( !\process_0~9_combout\ & ( shift_r(236) ) ) # ( \process_0~9_combout\ & ( !shift_r(236) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(236) & ( (!\Equal1~5_combout\) # ((\Equal2~7_combout\ & (!bcnt(0) & \Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~7_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(236),
	combout => \shift_r~9_combout\);

-- Location: FF_X83_Y22_N7
\shift_r[237]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~9_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(237));

-- Location: FF_X84_Y24_N17
\shift_r[238]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(237),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(238));

-- Location: FF_X84_Y24_N14
\shift_r[239]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(238),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(239));

-- Location: MLABCELL_X84_Y24_N57
\shift_r[240]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[240]~feeder_combout\ = shift_r(239)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_shift_r(239),
	combout => \shift_r[240]~feeder_combout\);

-- Location: FF_X84_Y24_N59
\shift_r[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[240]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(240));

-- Location: FF_X84_Y24_N56
\shift_r[241]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(240),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(241));

-- Location: FF_X84_Y24_N28
\shift_r[242]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(241),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(242));

-- Location: MLABCELL_X84_Y24_N24
\shift_r[243]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[243]~feeder_combout\ = ( shift_r(242) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(242),
	combout => \shift_r[243]~feeder_combout\);

-- Location: FF_X84_Y24_N26
\shift_r[243]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[243]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(243));

-- Location: FF_X84_Y24_N23
\shift_r[244]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(243),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(244));

-- Location: FF_X84_Y24_N19
\shift_r[245]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(244),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(245));

-- Location: LABCELL_X80_Y24_N15
\shift_r[246]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[246]~feeder_combout\ = ( shift_r(245) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(245),
	combout => \shift_r[246]~feeder_combout\);

-- Location: FF_X80_Y24_N16
\shift_r[246]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[246]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(246));

-- Location: FF_X83_Y24_N23
\shift_r[247]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(246),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(247));

-- Location: FF_X83_Y24_N40
\shift_r[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(247),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(248));

-- Location: LABCELL_X81_Y24_N30
\shift_r~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~8_combout\ = ( \process_0~9_combout\ & ( shift_r(248) ) ) # ( !\process_0~9_combout\ & ( shift_r(248) ) ) # ( \process_0~9_combout\ & ( !shift_r(248) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(248) & ( (!\Equal1~5_combout\) # ((\Equal2~5_combout\ & (!bcnt(0) & \Equal2~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~5_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(248),
	combout => \shift_r~8_combout\);

-- Location: FF_X81_Y24_N32
\shift_r[249]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~8_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(249));

-- Location: LABCELL_X81_Y24_N33
\shift_r~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~7_combout\ = ( \process_0~9_combout\ & ( shift_r(249) ) ) # ( !\process_0~9_combout\ & ( shift_r(249) ) ) # ( \process_0~9_combout\ & ( !shift_r(249) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(249) & ( (!\Equal1~5_combout\) # ((\Equal2~5_combout\ & (!bcnt(0) & \Equal2~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~5_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~7_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(249),
	combout => \shift_r~7_combout\);

-- Location: FF_X81_Y24_N34
\shift_r[250]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~7_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(250));

-- Location: MLABCELL_X82_Y22_N45
\shift_r~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~6_combout\ = ( \process_0~9_combout\ & ( shift_r(250) ) ) # ( !\process_0~9_combout\ & ( shift_r(250) ) ) # ( \process_0~9_combout\ & ( !shift_r(250) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(250) & ( (!\Equal1~5_combout\) # ((\Equal2~5_combout\ & (!bcnt(0) & \Equal2~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111010101010101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_bcnt(0),
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(250),
	combout => \shift_r~6_combout\);

-- Location: FF_X82_Y22_N46
\shift_r[251]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~6_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(251));

-- Location: MLABCELL_X82_Y22_N42
\shift_r~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~5_combout\ = ( \process_0~9_combout\ & ( shift_r(251) ) ) # ( !\process_0~9_combout\ & ( shift_r(251) ) ) # ( \process_0~9_combout\ & ( !shift_r(251) & ( (!\Equal1~5_combout\) # (\Equal2~7_combout\) ) ) ) # ( !\process_0~9_combout\ & ( 
-- !shift_r(251) & ( (!\Equal1~5_combout\) # ((\Equal2~5_combout\ & (\Equal2~7_combout\ & !bcnt(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101010101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => \ALT_INV_Equal2~7_combout\,
	datad => ALT_INV_bcnt(0),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => ALT_INV_shift_r(251),
	combout => \shift_r~5_combout\);

-- Location: FF_X82_Y22_N43
\shift_r[252]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~5_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(252));

-- Location: MLABCELL_X84_Y24_N30
\shift_r[253]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[253]~feeder_combout\ = ( shift_r(252) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(252),
	combout => \shift_r[253]~feeder_combout\);

-- Location: FF_X84_Y24_N31
\shift_r[253]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[253]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(253));

-- Location: MLABCELL_X84_Y24_N36
\shift_r[254]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r[254]~feeder_combout\ = ( shift_r(253) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_shift_r(253),
	combout => \shift_r[254]~feeder_combout\);

-- Location: FF_X84_Y24_N38
\shift_r[254]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r[254]~feeder_combout\,
	sclr => \ALT_INV_shift_r~0_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(254));

-- Location: FF_X84_Y24_N35
\shift_r[255]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(254),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(255));

-- Location: FF_X84_Y24_N53
\shift_r[256]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(255),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(256));

-- Location: FF_X80_Y24_N19
\shift_r[257]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(256),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(257));

-- Location: LABCELL_X81_Y24_N12
\shift_r~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~4_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (((!bcnt(0) & \Equal2~5_combout\)) # (shift_r(257))) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(257)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(257)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101110111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~5_combout\,
	datad => ALT_INV_shift_r(257),
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~4_combout\);

-- Location: FF_X81_Y24_N13
\shift_r[258]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~4_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(258));

-- Location: FF_X85_Y23_N25
\shift_r[259]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(258),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(259));

-- Location: LABCELL_X85_Y23_N6
\shift_r~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~3_combout\ = ( \Equal1~5_combout\ & ( \Equal2~5_combout\ & ( ((\Equal2~7_combout\ & ((!bcnt(0)) # (\process_0~9_combout\)))) # (shift_r(259)) ) ) ) # ( !\Equal1~5_combout\ & ( \Equal2~5_combout\ ) ) # ( \Equal1~5_combout\ & ( !\Equal2~5_combout\ 
-- & ( ((\process_0~9_combout\ & \Equal2~7_combout\)) # (shift_r(259)) ) ) ) # ( !\Equal1~5_combout\ & ( !\Equal2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001011111111111111111111111110000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => ALT_INV_bcnt(0),
	datac => \ALT_INV_Equal2~7_combout\,
	datad => ALT_INV_shift_r(259),
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \shift_r~3_combout\);

-- Location: FF_X85_Y23_N8
\shift_r[260]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~3_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(260));

-- Location: LABCELL_X85_Y23_N15
\shift_r~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_r~2_combout\ = ( \process_0~9_combout\ & ( \Equal2~7_combout\ ) ) # ( !\process_0~9_combout\ & ( \Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (((!bcnt(0) & \Equal2~5_combout\)) # (shift_r(260))) ) ) ) # ( \process_0~9_combout\ & ( 
-- !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(260)) ) ) ) # ( !\process_0~9_combout\ & ( !\Equal2~7_combout\ & ( (!\Equal1~5_combout\) # (shift_r(260)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => ALT_INV_bcnt(0),
	datac => ALT_INV_shift_r(260),
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_process_0~9_combout\,
	dataf => \ALT_INV_Equal2~7_combout\,
	combout => \shift_r~2_combout\);

-- Location: FF_X85_Y23_N16
\shift_r[261]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shift_r~2_combout\,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(261));

-- Location: FF_X80_Y24_N25
\shift_r[262]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(261),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(262));

-- Location: FF_X83_Y24_N19
\shift_r[263]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => shift_r(262),
	sclr => \ALT_INV_shift_r~0_combout\,
	sload => VCC,
	ena => \shift_r[98]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_r(263));

-- Location: LABCELL_X83_Y25_N21
\process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = ( bcnt(2) & ( (bcnt(0) & (!bcnt(1) & (bcnt(3) & bcnt(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => ALT_INV_bcnt(1),
	datac => ALT_INV_bcnt(3),
	datad => ALT_INV_bcnt(4),
	dataf => ALT_INV_bcnt(2),
	combout => \process_0~7_combout\);

-- Location: LABCELL_X81_Y24_N18
\process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = ( \Equal2~0_combout\ & ( \process_0~7_combout\ & ( (\Equal2~4_combout\ & (\Equal2~3_combout\ & (\Equal2~2_combout\ & \Equal2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~4_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_Equal2~2_combout\,
	datad => \ALT_INV_Equal2~1_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_process_0~7_combout\,
	combout => \process_0~8_combout\);

-- Location: LABCELL_X83_Y24_N0
\Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = ( fcnt(4) & ( fcnt(3) & ( (fcnt(6) & (fcnt(5) & (!fcnt(0) & fcnt(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(6),
	datab => ALT_INV_fcnt(5),
	datac => ALT_INV_fcnt(0),
	datad => ALT_INV_fcnt(7),
	datae => ALT_INV_fcnt(4),
	dataf => ALT_INV_fcnt(3),
	combout => \Equal5~2_combout\);

-- Location: LABCELL_X83_Y24_N9
\Equal5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = ( \Equal5~2_combout\ & ( \Equal5~1_combout\ & ( (\Equal1~3_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~3_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal5~2_combout\,
	dataf => \ALT_INV_Equal5~1_combout\,
	combout => \Equal5~3_combout\);

-- Location: LABCELL_X81_Y24_N36
\sdin_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sdin_1~1_combout\ = ( \Equal5~3_combout\ & ( \Equal2~6_combout\ & ( (!\process_0~8_combout\ & ((!\Equal1~5_combout\) # ((bcnt(0) & shift_r(263))))) ) ) ) # ( !\Equal5~3_combout\ & ( \Equal2~6_combout\ & ( (!\Equal1~5_combout\) # ((bcnt(0) & 
-- shift_r(263))) ) ) ) # ( \Equal5~3_combout\ & ( !\Equal2~6_combout\ & ( (!\process_0~8_combout\ & ((!\Equal1~5_combout\) # (shift_r(263)))) ) ) ) # ( !\Equal5~3_combout\ & ( !\Equal2~6_combout\ & ( (!\Equal1~5_combout\) # (shift_r(263)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100110000000011110001111100011111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => ALT_INV_shift_r(263),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_process_0~8_combout\,
	datae => \ALT_INV_Equal5~3_combout\,
	dataf => \ALT_INV_Equal2~6_combout\,
	combout => \sdin_1~1_combout\);

-- Location: MLABCELL_X82_Y24_N42
\sdin_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sdin_1~2_combout\ = ( \Equal1~5_combout\ & ( \Equal2~6_combout\ ) ) # ( !\Equal1~5_combout\ & ( \Equal2~6_combout\ & ( (!\RES_N~input_o\) # ((\Equal5~3_combout\ & ((\process_0~8_combout\) # (bcnt(0))))) ) ) ) # ( \Equal1~5_combout\ & ( 
-- !\Equal2~6_combout\ ) ) # ( !\Equal1~5_combout\ & ( !\Equal2~6_combout\ & ( (!\RES_N~input_o\) # ((\process_0~8_combout\ & \Equal5~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111111111111111111111000001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcnt(0),
	datab => \ALT_INV_process_0~8_combout\,
	datac => \ALT_INV_Equal5~3_combout\,
	datad => \ALT_INV_RES_N~input_o\,
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => \ALT_INV_Equal2~6_combout\,
	combout => \sdin_1~2_combout\);

-- Location: FF_X81_Y24_N37
sdin_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sdin_1~1_combout\,
	ena => \sdin_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdin_1~q\);

-- Location: LABCELL_X83_Y24_N48
\process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = ( \Equal1~5_combout\ & ( (!\process_0~9_combout\) # (!\Equal2~7_combout\) ) ) # ( !\Equal1~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~9_combout\,
	datad => \ALT_INV_Equal2~7_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \process_0~10_combout\);

-- Location: FF_X83_Y24_N49
\sdin_1~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \process_0~10_combout\,
	ena => \sdin_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdin_1~en_q\);

-- Location: LABCELL_X83_Y23_N3
\Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ( fcnt(6) & ( fcnt(5) & ( fcnt(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(4),
	datae => ALT_INV_fcnt(6),
	dataf => ALT_INV_fcnt(5),
	combout => \Equal5~0_combout\);

-- Location: LABCELL_X79_Y22_N15
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !fcnt(7) & ( fcnt(2) & ( fcnt(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fcnt(0),
	datae => ALT_INV_fcnt(7),
	dataf => ALT_INV_fcnt(2),
	combout => \Equal3~0_combout\);

-- Location: MLABCELL_X82_Y22_N48
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( \Equal1~1_combout\ & ( \Equal1~0_combout\ & ( (\Equal5~0_combout\ & (\Equal1~3_combout\ & (\Equal1~2_combout\ & \Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: MLABCELL_X82_Y22_N36
\SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SCLK~0_combout\ = ( \SCLK~reg0_q\ & ( \Equal3~1_combout\ & ( (!fcnt(3) & (((fcnt(8) & fcnt(1))) # (\RES_N~input_o\))) # (fcnt(3) & (\RES_N~input_o\ & ((fcnt(1)) # (fcnt(8))))) ) ) ) # ( !\SCLK~reg0_q\ & ( \Equal3~1_combout\ & ( (!fcnt(3) & (fcnt(8) & 
-- fcnt(1))) ) ) ) # ( \SCLK~reg0_q\ & ( !\Equal3~1_combout\ & ( \RES_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000010100010001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fcnt(3),
	datab => \ALT_INV_RES_N~input_o\,
	datac => ALT_INV_fcnt(8),
	datad => ALT_INV_fcnt(1),
	datae => \ALT_INV_SCLK~reg0_q\,
	dataf => \ALT_INV_Equal3~1_combout\,
	combout => \SCLK~0_combout\);

-- Location: FF_X82_Y22_N37
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

-- Location: LABCELL_X85_Y23_N33
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


