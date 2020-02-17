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
-- Generated on "01/31/2020 14:15:06"
                                                            
-- Vhdl Test Bench template for design  :  strobe
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY strobe_vhd_tst IS
END strobe_vhd_tst;
ARCHITECTURE strobe_arch OF strobe_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL stb : STD_LOGIC;
COMPONENT strobe
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	stb : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	
	i1 : strobe
		PORT MAP (
		-- list connections between master ports and signals
		clk => clk,
		reset => reset,
		stb => stb
		);


	clk_proc : PROCESS 
			variable i : integer; 	
		BEGIN -- code that executes only once                                                    
			for i in 1 to 50 loop -- specify here the length of the simulation run 
			  clk <= '0'; 
			  wait for 10 ns; 
			  clk <= '1'; 
			  wait for 10 ns; 
			  end loop; 
			  WAIT; 
		END PROCESS; 

	stim : PROCESS
		BEGIN
		reset <= '1';
		wait for 20 ns;
		reset <= '0';
		WAIT;
		END PROCESS;




	
END strobe_arch;
