LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;


entity fir_filter is
port 
(
      ADCDAT : IN  STD_LOGIC_VECTOR(15 downto 0);          
      DACDAT : OUT STD_LOGIC_VECTOR(15 downto 0);         
	  ADCrdy : OUT STD_LOGIC; 
	  DACrdy : IN  STD_LOGIC; 
	  ADCstb : IN  STD_LOGIC; 
	  DACstb : OUT STD_LOGIC;   
	  RST_N  : IN  STD_LOGIC; 
	  CLOCK_50: IN  STD_LOGIC 
);
end entity;
architecture rtl of fir_filter is
type sht_line is array (6 downto 0) of std_logic_vector(15 downto 0); 
type coefficients is array(7 downto 0) of std_logic_vector(15 downto 0);
type product is array (7 downto 0) of std_logic_vector (31 downto 0);
-- Declare the shift register signal
signal fir_sht: sht_line;
signal accum: signed (34 downto 0):= (others => '0');
signal old_ADCstb: std_logic;
--signal y: std_logic_vector (31 downto 0):= (others => '0');

constant coeff: coefficients := (b"1111101100010100",
											b"0001111010010011",
											b"0011000010110111",
											b"0100000000000000", 
											b"0100000000000000",
											b"0011000010110111",
											b"0001111010010011",
											b"1111101100010100");
	
					
begin 
process (CLOCK_50)
variable cnt:integer;
variable i:integer;  
  
begin 
if (rising_edge(CLOCK_50)) then 
	             old_ADCstb <= ADCstb;
				 -- Reset 
	          if (RST_N = '0') then
					cnt := 7;
					DACDAT <= b"0000000000000000"; 
					ADCrdy <= '0';   
					DACstb <= '0';      
					    
    		      for i in 6 downto 0 loop
					fir_sht(i)<="0000000000000000";

               end loop;
					
			  else   
				ADCrdy <= '1';  
				if (old_ADCstb='0' and ADCstb='1') then
				fir_sht(6) <= ADCDAT; 
				fir_sht(5 downto 0) <= fir_sht( 6 downto 1); 
			   cnt:=7;          
			   accum <= resize(signed(coeff(cnt))*signed(ADCDAT),35);
--				accum(34 downto 32)  <= (others=>'0'); 
			
		
		
				               
			   DACstb <= '0';			
	elsif (cnt > 0) then   
	cnt:=cnt-1;  
	accum  <= (accum+(signed(coeff(cnt))*signed(fir_sht(cnt))));
	DACDAT <= std_logic_vector(accum(31 DOWNTO 16));   
	DACstb <= '0';      

			if(cnt=0)then
			DACstb <= '1';

end if;
       end if;
       end if;
       end if;
end process;
end rtl;


