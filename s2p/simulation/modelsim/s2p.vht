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
-- Generated on "03/02/2020 11:20:24"
                                                            
-- Vhdl Test Bench template for design  :  s2p
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY s2p_vhd_tst IS
END s2p_vhd_tst;
ARCHITECTURE s2p_arch OF s2p_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADCDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ADCrdy : STD_LOGIC;
SIGNAL ADCstb : STD_LOGIC;
SIGNAL AUD_ADCDAT : STD_LOGIC;
SIGNAL AUD_ADCLRCK : STD_LOGIC;
SIGNAL AUD_BCLK : STD_LOGIC;
SIGNAL AUD_DACDAT : STD_LOGIC;
SIGNAL AUD_DACLRCK : STD_LOGIC;
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DACDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DACrdy : STD_LOGIC;
SIGNAL DACstb : STD_LOGIC;
SIGNAL RST_N : STD_LOGIC;
COMPONENT s2p
	PORT (
	ADCDAT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ADCrdy : IN STD_LOGIC;
	ADCstb : OUT STD_LOGIC;
	AUD_ADCDAT : IN STD_LOGIC;
	AUD_ADCLRCK : IN STD_LOGIC;
	AUD_BCLK : IN STD_LOGIC;
	AUD_DACDAT : OUT STD_LOGIC;
	AUD_DACLRCK : IN STD_LOGIC;
	CLOCK_50 : IN STD_LOGIC;
	DACDAT : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DACrdy : OUT STD_LOGIC;
	DACstb : IN STD_LOGIC;
	RST_N : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : s2p
	PORT MAP (
-- list connections between master ports and signals
	ADCDAT => ADCDAT,
	ADCrdy => ADCrdy,
	ADCstb => ADCstb,
	AUD_ADCDAT => AUD_ADCDAT,
	AUD_ADCLRCK => AUD_ADCLRCK,
	AUD_BCLK => AUD_BCLK,
	AUD_DACDAT => AUD_DACDAT,
	AUD_DACLRCK => AUD_DACLRCK,
	CLOCK_50 => CLOCK_50,
	DACDAT => DACDAT,
	DACrdy => DACrdy,
	DACstb => DACstb,
	RST_N => RST_N
	);
clock : PROCESS                                               
variable i : integer;-- variable declarations                                     
BEGIN                                                        
   for i in 1 to 20000 loop -- specify here the length of the simulation run
     CLOCK_50 <= '0';
     wait for 10 ns;
     CLOCK_50 <= '1';
     wait for 10 ns;
     end loop;     -- code that executes only once                      
WAIT;                                                       
END PROCESS clock;                                           
reset : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
      RST_N <= '0';
		wait for 10000 ns;
		RST_N <= '1';  -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS reset;  

data : PROCESS
BEGIN
		AUD_ADCDAT <='0';
		wait for 20000 ns;
		AUD_ADCDAT <='1';
		wait for 20 ns;
		AUD_ADCDAT <='0';
		wait for 20 ns;
		AUD_ADCDAT <='0';
		wait for 20 ns;
				AUD_ADCDAT <='1';
		wait for 20 ns;
				AUD_ADCDAT <='1';
		wait for 20 ns;
				AUD_ADCDAT <='1';
		wait for 20 ns;
				AUD_ADCDAT <='1';
		wait for 20 ns;
				AUD_ADCDAT <='1';
		wait for 20 ns;
				AUD_ADCDAT <='0';
		wait for 20 ns;
				AUD_ADCDAT <='0';
		wait for 20 ns;
				AUD_ADCDAT <='0';
		wait for 20 ns;
				AUD_ADCDAT <='0';
		wait for 20 ns;
				AUD_ADCDAT <='0';
		wait for 20 ns;
				AUD_ADCDAT <='0';
		wait for 20 ns;
						AUD_ADCDAT <='1';
		wait for 20 ns;
						AUD_ADCDAT <='1';
		wait for 20 ns;
						AUD_ADCDAT <='1';
		wait for 20 ns;
						AUD_ADCDAT <='0';
		wait for 20 ns;
						AUD_ADCDAT <='0';
		wait for 20 ns;
						AUD_ADCDAT <='0';
		wait for 20 ns;
								AUD_ADCDAT <='1';
		wait for 20 ns;
		
		
END PROCESS data;

BCLK : PROCESS
BEGIN
		AUD_BCLK <= '0';
		wait for 20000 ns;
		AUD_BCLK <= '1';
		wait;
END PROCESS BCLK;

ADCLRCK : process
begin
		AUD_ADCLRCK <= '1';
		wait;
END process ADCLRCK;
END s2p_arch;