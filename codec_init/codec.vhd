-- This file is an example only. There exist many other ways...

library ieee;
use ieee.std_logic_1164.all;

entity codec is
	port 
	(
		CLOCK_50	: in  std_logic;	-- master clock
		RES_N		: in  std_logic;	-- reset, active 0
		SCLK		: out std_logic;	-- serial clock
		SDIN		: out std_logic		-- serial data
	);

end entity;

architecture rtl of codec is

constant sdin_load : std_logic_vector (11*24-1 downto 0) := 
b"0011010_0_0001111_000000000"&
b"0011010_0_0000000_000011111"&
b"0011010_0_0000001_000110111"&
b"0011010_0_0000010_001111001"&
b"0011010_0_0000011_000110000"&
b"0011010_0_0000100_011010010"&
b"0011010_0_0000101_000000001"&
b"0011010_0_0000110_001100010"&
b"0011010_0_0000111_001000011"&
b"0011010_0_0001000_000100000"&
b"0011010_0_0001001_000000001";
-- 11 words, the first is reset (R15), the others are registers R0-9.
-- each word is 24 bit constructed as
-- chip address, r/w bit, reg address, reg data
-- these words do not include start, stop and ack bits, see packet format below


-- Packet format:				(bit number) 

---- start bit					28
-- 7 bits chip address,
-- 1 r/w bit,
--** ack					19
-- 8 high bits of reg. data,
--** ack					10
-- 8 low bits of reg. data,	
--** ack					1
---- stop bit					0



-- reg. data = 7 bit address + 9 bit config data, 16 bits total,
-- split as 8+8 bits in the packet, MSB go first.

signal shift_r : std_logic_Vector(11*24-1 downto 0);
-- declare a shift register
signal sdin_1 :std_logic;
-- declare an internal signal to be copied into SIDN

signal bcnt : integer;
-- declare the bit counter;  -- bit counter, runs at 100kHz,
-- bits 28, 19, 10, 1 and 0 are special
signal wcnt : integer;
-- declare the word counter; -- word counter, runs at about 5kHz

signal fcnt : integer;
-- declare the counter for the bit length; -- frequency divider counter,
-- runs at 50MHz



begin

	process (CLOCK_50)
	begin
		if (rising_edge(CLOCK_50)) then
		-----------------------------
		-- reset actions
			if (RES_N = '0') then
			-- reset the counters to an appropriate state
				fcnt <= 499;	-- load the frequency divider,
					-- 50MHz/500=100kHz bus speed
				shift_r <= sdin_load;	-- load the shift register
				bcnt <= 28;	-- load the bit counter,
					-- 29 bits in the word protocol
				wcnt <= 10;	-- load the word counter, 11 words
			-- reset the outputs to an appropriate state
				sdin_1 <= '1';
				sclk <= '0';
		
			elsif (wcnt = 0) and (bcnt = 0) and (fcnt = 0) then -- deadlock in the end
				-- do nothing, wait for the next reset

		-- modify reference counters
		-- for frequency divider, bits and words
			elsif (fcnt = 0) then -- at the end of each bit 
				fcnt <= 499; -- reload the frequency divider counter
				
				if (bcnt = 0) then -- at the end of each word
					bcnt <= 28;	-- reset the bit counter
					wcnt <= wcnt - 1;	--modify the word counter
				else	-- the bit is not the end of a word
					bcnt <= bcnt - 1;	--modify the bit counter
				end if;
				
			else	-- if not the end of the bit
				fcnt <= fcnt - 1; -- modify the frequency divider
			end if;
			
		-- generating SCLK, it is going up and then down inside each bit
			if (fcnt = 374) then	-- condition when SCLK goes up
				sclk <= '1';
			elsif (fcnt = 124) then	-- condition when SCLK goes down
				sclk <= '0';
			end if;
			
		-- generating serial data output
			if (fcnt = 249) and (bcnt = 28) then -- start transition condition
				sdin_1 <= '0';
			elsif (fcnt = 0) and ((bcnt = 20) or (bcnt = 11) or (bcnt =2)) then -- ack bit condition
				sdin_1 <= 'Z';
			elsif (bcnt = 1) and (fcnt = 0) then
				sdin_1 <= '0';
			elsif (fcnt = 249) and (bcnt = 0) then -- stop transition condition
				sdin_1 <= '1';
			elsif(fcnt = 0) and ((bcnt /= 0 ) or (bcnt /= 1)) then -- condition for the non-special bits
				shift_r <= shift_r((11*24-2) downto 0) & '0'; -- shifting
				sdin_1 <= shift_r(11*24-1);
			end if;
			
		-----------------------------		
		end if;
	end process;
			SDIN <= sdin_1;
	-- forming the output with high impedance states for ack-s
	-- SDIN <= 'Z' when (sdin_1 = 'Z' for ack bits...) 
					--else (SDIN <= sdin_1);

end rtl;