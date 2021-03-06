library ieee;
use ieee.std_logic_1164.all;

entity codec_init is
	port 
	(
		CLOCK_50	: in  std_logic;	-- master clock
		RES_N		: in  std_logic;	-- reset, active 0
		SCLK		: out std_logic;	-- serial clock
		SDIN		: out std_logic;		-- serial data
		bcnt1    : out integer;    --bcnt output
		wcnt1    : out integer;    --wcnt output
		fdiv1    : out integer		--fdiv output
	);

end entity;

architecture rtl of codec_init is

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


-- declare a shift register
signal sht_r : std_logic_vector (11*24-1 downto 0);
-- declare an internal signal to be copied into SIDN

-- declare the bit counter;  -- bit counter, runs at 100kHz,
signal bcnt: integer range 28 downto 0:=28;
-- bits 28, 19, 10, 1 and 0 are special
-- declare the word counter; -- word counter, runs at about 5kHz
signal wcnt: integer range 10 downto 0:=10;

-- declare the counter for the bit length; -- frequency divider counter,
-- runs at 50MHz

signal f_div: integer range 499 downto 0:=499;



begin

	process (CLOCK_50)
	begin
	 if (rising_edge(CLOCK_50)) then
		-----------------------------
		-- reset actions
			if (RES_N = '0') then
			-- reset the counters to an appropriate state
			    f_div <=499;  	-- load the frequency divider,
					-- 50MHz/500=100kHz bus speed
		    	 sht_r <= sdin_load;	-- load the shift register
			    bcnt<=28;	-- load the bit counter,
					-- 29 bits in the word protocol
			    wcnt<=10;	-- load the word counter, 11 words
			    -- reset the outputs to an appropriate state
			  	 SDIN<='1';
				 SCLK<='0';
		
		-- deadlock in the end
			
			elsif (wcnt=0 and bcnt=0 and f_div=0) then 
			      SCLK <= '1';
			-- do nothing, wait for the next reset

		   -- modify reference counters
	    	-- for frequency divider, bits and words
		
			-- modify reference counters
		   -- for frequency divider, bits and words
			elsif (f_div=0) then -- at the end of each bit 
				    f_div<=499; -- reload the frequency divider counter
				
				if (bcnt = 0) then -- at the end of each word
					 bcnt<=28;	-- reset the bit counter
					 wcnt<= wcnt-1;	--modify the word counter
				else	-- the bit is not the end of a word
					 bcnt<= bcnt-1;	--modify the bit counter
				end if;
				
		   else	-- if not the end of the bit
				f_div<= f_div-1; -- modify the frequency divider
		end if;
			
	-- generating SCLK, it is going up and then down inside each bit
			
		   if (f_div= 375) then	-- condition when SCLK goes up
				 SCLK <= '1';
			elsif (f_div = 125) then	-- condition when SCLK goes down
				 SCLK <= '0';
			end if;
		
		 --generating---- serial--- data output
		
		   -- start transition condition
		if (bcnt=28) then     
			if(f_div=499) then
			 SDIN<='1';
			elsif(f_div=250) then
					 SDIN<='0';
			end if;
			----ack ---bit--- condition-------------
		elsif (bcnt=19 or bcnt=10 or bcnt=1) then 
					SDIN<='Z';
			---- stop ---transition ---condition-----
		elsif (bcnt=0) then   
				if (wcnt/=0)then
				if(f_div<=250)then
				         SDIN<='1'; 
				else
				         SDIN<='0';
				end if;
	--------------Last stop------------------------
		else
			if(f_div=499) then
			   SDIN<='0';
			elsif (f_div=250) then
				SDIN<='1';
		   end if;	

     end if;
			-- condition for the non-special bits
			elsif(bcnt/=28 or bcnt/=19 or bcnt/=10 or bcnt/=1 or bcnt/=0)and (f_div=499) then  
	
				sht_r (11*24-1 downto 1)<=sht_r (11*24-2 downto 0); -- shifting
			   SDIN<= sht_r (11*24-1);
	      end if;
end if;
bcnt1 <= bcnt;
wcnt1 <= wcnt;
fdiv1 <= f_div;
		
end process;
end rtl;