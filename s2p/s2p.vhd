-- This file is an example only. There exist many other ways... 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s2p is 
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

architecture rtl of s2p is
--	Internal Signals
signal ADCDAT_reg : std_logic_vector(15 downto 0);
signal old_BCLK : std_logic;
signal bit_ADC : integer;
begin

	process (CLOCK_50)
	begin
		if (rising_edge(CLOCK_50)) then
		-------------begin sync design----------------
		
		-- reset actions (synchronous)
			if (RST_N = '0') then
				ADCstb <='0';
				ADCDAT_reg <= b"0000000000000000";
				bit_ADC <= 15;
			else
				old_BCLK <= AUD_BCLK; -- needed for change detection on BCLK input
		-- input channel
				if (old_BCLK='0' and AUD_BCLK='1') then --rising edge of AUD_BCLK
			  
					if (AUD_ADCLRCK = '1') then -- condition for the start of the protocol
						bit_ADC <= 15; -- load the bit counter
						ADCDAT_reg(15) <= AUD_ADCDAT ; -- read the first bit of the packet
						ADCstb <= '0';
					elsif (bit_ADC>0) then -- condition for the data bits of the left channel
						ADCDAT_reg(bit_ADC) <= AUD_ADCDAT ; 	-- input one bit
						bit_ADC <= bit_ADC - 1;	-- advance the bit counter
--						if (bit_ADC=0) then	-- condition for the strobe of ADC parallel interface
--							ADCstb <= '1';
--						end if;
					end if;
					
				end if;
				
--				if ( = '1') then	-- condition to drop the ADC strobe
--					ADCstb ='0';
--				end if;
		
--		-- output channel
--				if (...) then -- start condition
--					...;
--					...;
--				elsif (...) then -- each following falling edge
--					...; -- produce DAC serial data bit
--					...;
--				end if;
--				
--				if (...) then -- condition for loading DAC parallel register
--					...;
--				end if;
--		
		
			end if;
			
		-------------end sync design----------------
		end if;
	end process;
	ADCDAT <= ADCDAT_reg;
	
end rtl;
								
			
					

