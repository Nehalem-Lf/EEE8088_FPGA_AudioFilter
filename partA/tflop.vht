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
-- Generated on "01/31/2020 12:39:23"
                                                            
-- Vhdl Test Bench template for design  :  tflop
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tflop_vhd_tst IS
END tflop_vhd_tst;



ARCHITECTURE tflop_arch OF tflop_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL clk : STD_LOGIC;
	SIGNAL Q : STD_LOGIC;
	SIGNAL reset : STD_LOGIC;
	SIGNAL T : STD_LOGIC;
	COMPONENT tflop
		PORT (
			clk : IN STD_LOGIC;
			Q : OUT STD_LOGIC;
			reset : IN STD_LOGIC;
			T : IN STD_LOGIC
			);
	END COMPONENT;
BEGIN
	i1 : 
		tflop
			PORT MAP (
		-- list connections between master ports and signals
			clk => clk,
			Q => Q,
			reset => reset,
			T => T
			);


	clk_proc : 
	 PROCESS 
		variable i : integer; 
	 BEGIN -- code that executes only once                                                    
		for i in 1 to 20 loop -- specify here the length of the simulation run 
		  clk <= '0'; 
		  wait for 10 ns; 
		  clk <= '1'; 
		  wait for 10 ns; 
		  end loop; 
		  WAIT; 
	 END PROCESS; 
 
	stim: 
		PROCESS
		BEGIN
			reset <= '0';
			T <= '1';
			wait for 20 ns;
			reset <= '1';
			wait for 20 ns;
			reset <= '0';
			wait for 100 ns;
			T <= '0';
			wait;
		END PROCESS;
 
 
 
END tflop_arch;
