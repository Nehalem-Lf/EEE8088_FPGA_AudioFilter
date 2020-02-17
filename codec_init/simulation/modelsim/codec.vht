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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/17/2020 11:44:38"
                                                            
-- Vhdl Test Bench template for design  :  codec
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY codec_vhd_tst IS
END codec_vhd_tst;
ARCHITECTURE codec_arch OF codec_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL RES_N : STD_LOGIC;
SIGNAL SCLK : STD_LOGIC;
SIGNAL SDIN : STD_LOGIC;
COMPONENT codec
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	RES_N : IN STD_LOGIC;
	SCLK : OUT STD_LOGIC;
	SDIN : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : codec
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	RES_N => RES_N,
	SCLK => SCLK,
	SDIN => SDIN
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS  
	variable i : integer;                                            
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        for i in 1 to 2000 loop -- specify here the length of the simulation run 
			  CLOCK_50 <= '0'; 
			  wait for 10 ns; 
			  CLOCK_50 <= '1'; 
			  wait for 10 ns; 
			  end loop; 
		RES_N <= '0';
		wait for 20 ns;
		RES_N <= '1';
			   
WAIT;                                                        
END PROCESS always;                                          
END codec_arch;
