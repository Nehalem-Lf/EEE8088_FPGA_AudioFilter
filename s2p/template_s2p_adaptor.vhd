-- This file is an example only. There exist many other ways... 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s2p_adaptor is 
port(					
--	Core Side - two parallel interfaces for input and output
	ADCDAT:		out 	std_logic_vector(15 downto 0);
	DACDAT:		in	std_logic_vector(15 downto 0);	
	DACrdy: 	out	std_logic;
	ADCrdy: 	in 	std_logic;
	DACstb: 	in	std_logic;
	ADCstb: 	out 	std_logic;
--	Audio Side in MASTER mode
	AUD_DACDAT: 	out	std_logic; -- serial data out
	AUD_ADCDAT: 	in 	std_logic; -- serial data in
	AUD_ADCLRCK:	in	std_logic; -- strobe for input
	AUD_DACLRCK:	in	std_logic; -- strobe for output
	AUD_BCLK: 	in	std_logic; -- serial interface "clock"
--	Control Signals
	CLOCK_50:	in	std_logic		;
	RST_N:		in	std_logic
);
end entity;

architecture rtl of s2p_adaptor is
--	Internal Signals
...

begin

	process (CLOCK_50)
	variable bit_ADC: integer;
	begin
		if (rising_edge(CLOCK_50)) then
		-------------begin sync design----------------
		
		-- reset actions (synchronous)
			if (RST_N = '0') then
				...
			else
				old_BCLK <= AUD_BCLK; -- needed for change detection on BCLK input
		-- input channel
				if (old_BCLK='0' and AUD_BCLK='1') then --rising edge of AUD_BCLK
			  
					if (...) then -- condition for the start of the protocol
						...; -- load the bit counter
						...; -- read the first bit og the packet
					elsif (...) then -- condition for the data bits of the left channel
						...; 	-- input one bit
						...;	-- advance the bit counter
						if (...) then	-- condition for the strobe of ADC parallel interface
							...;
						end if;
					end if;
					
				end if;
				
				if (...) then	-- condition to drop the ADC strobe
					...;
				end if;
		
		-- output channel
				if (...) then -- start condition
					...;
					...;
				elsif (...) then -- each following falling edge
					...; -- produce DAC serial data bit
					...;
				end if;
				
				if (...) then -- condition for loading DAC parallel register
					...;
				end if;
		
		
			end if;
			
		-------------end sync design----------------
		end if;
	end process;
	
	
end rtl;
								
			
					

