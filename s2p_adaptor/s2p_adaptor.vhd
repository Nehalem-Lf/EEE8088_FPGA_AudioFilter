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
--input s2p
signal cnt1: integer range 15 downto -1 ;
signal cnt2: integer range 15 downto -1 ;
signal old_BCLK :std_logic;
signal old_AUD_DACLRCK:std_logic;
signal shr:std_logic_vector(15 downto 0);
signal ADCstb2:std_logic;
signal DACrdy2:std_logic;
begin

	process (CLOCK_50)
	variable bit_ADC: integer;
	begin
	if (rising_edge(CLOCK_50)) then
		-------------begin sync design----------------
		
		-- reset actions (synchronous)
		if (RST_N = '0') then
				old_BCLK<='0';
				cnt1<=15;
				cnt2<=15;
				ADCstb2<='0';
			else
				old_BCLK <= AUD_BCLK; -- needed for change detection on BCLK input
		
		old_AUD_DACLRCK <=AUD_DACLRCK;
		
		
		
		-- input channel
		  if (old_BCLK='0' and AUD_BCLK='1') then --rising edge of AUD_BCLK
			  
				if (AUD_ADCLRCK='1') then -- condition for the start of the protocol
						cnt1<=14; -- load the bit counter
						ADCDAT(15)<=AUD_ADCDAT; -- read the first bit of the packet
						
				elsif (cnt1>=0) then -- condition for the data bits of the left channel
						ADCDAT(cnt1)<=AUD_ADCDAT; 	-- input one bit
					   cnt1<=cnt1-1;	-- advance the bit counter
			if (cnt1=0) then	-- condition for the strobe of ADC parallel interface
				ADCstb2<='1';
				end if;
			end if;
					
		  end if;
				
		  if (ADCstb2='1') then	-- condition to drop the ADC strobe
			   ADCstb2<='0';
		  end if;
		
		
		
		
		
		-- Start of a new sample: reset counters, send out first bit      
	if (old_AUD_DACLRCK = '0' and AUD_DACLRCK = '1' ) then	                                     
	cnt2<=14;                                    
    AUD_DACDAT <= shr(15);                         
	-- Other left channel serial data bits: Send bits and Update count 
	elsif (old_BCLK='1' and AUD_BCLK='0' and cnt2 >= 0) then	       
	cnt2<=cnt2-1;            
	AUD_DACDAT <= shr(cnt2);                              
	-- Keep output low when not sending data - cleaner on signal tap.   
	elsif (old_BCLK='1' and AUD_BCLK='0' and cnt2 <0) then	                                     
	AUD_DACDAT <= '0'; 
    shr <= DACDAT;  	
	end if;                              
--	-- Load parallel register when filter ready & not sending previous   
--	if (DACstb = '1' and cnt2 = 0) then	                              
--shr <= DACDAT;                              
--	end if;              
	
		
--		-- output channel
--		 	   if(AUD_DACLRCK<='1') then -- start condition
--				
--            cnt2<=14; 						
--			  AUD_DACDAT <=shr(15);	-- the MSB will be o/p first
--     
--				 elsif (old_BCLK='1' and AUD_BCLK='0') then -- each following falling edge
--					AUD_DACDAT<=shr(cnt2); -- produce DAC serial data bit
--				 	cnt2<=cnt2-1;
--				end if;
--				
--				if (cnt2=0) then -- condition for loading DAC parallel register
--					DACrdy2<='1';-- ready to receive the data from FIR filter
--				end if;
--		if(DACrdy2='1') then
--			DACrdy2<='0';
--				end if;
--		
			end if;
			
		-------------end sync design----------------
	end if;
end process;
	
	ADCstb<=ADCstb2;
	--DACrdy<=DACrdy2;
	
end rtl;
								