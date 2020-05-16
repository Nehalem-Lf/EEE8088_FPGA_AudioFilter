LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
use ieee.numeric_std.all;
use ieee.math_real.all;                             

ENTITY fir_filter_vhd_tst IS
END fir_filter_vhd_tst;
ARCHITECTURE fir_filter_arch OF fir_filter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADCDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ADCrdy : STD_LOGIC;
SIGNAL ADCstb : STD_LOGIC;
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DACDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DACrdy : STD_LOGIC;
SIGNAL DACstb : STD_LOGIC;
SIGNAL RST_N : STD_LOGIC;

COMPONENT fir_filter
	PORT (
	ADCDAT : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ADCrdy : OUT STD_LOGIC;
	ADCstb : IN STD_LOGIC;
	CLOCK_50 : IN STD_LOGIC;
	DACDAT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DACrdy : IN STD_LOGIC;
	DACstb : OUT STD_LOGIC;
	RST_N : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fir_filter
	PORT MAP (
-- list connections between master ports and signals
	ADCDAT => ADCDAT,
	ADCrdy => ADCrdy,
	ADCstb => ADCstb,
	CLOCK_50 => CLOCK_50,
	DACDAT => DACDAT,
	DACrdy => DACrdy,
	DACstb => DACstb,
	RST_N => RST_N
	);
	

clock : PROCESS                                               
-- variable declarations                                                                                           
variable i : integer;-- variable declarations                                     
BEGIN                                                        
   for i in 1 to 500000 loop -- specify here the length of the simulation run
     CLOCK_50 <= '0';
     wait for 10 ns;
     CLOCK_50 <= '1';
     wait for 10 ns;
     end loop;     -- code that executes only once                      
WAIT;                                                       
END PROCESS clock;         -- code that executes only once                

reset : PROCESS                                              
                                     
BEGIN                                                         
		RST_N <= '1';  -- code executes for every event on sensitivity list 
--		ADCstb <= '0';
		DACrdy <= '1';
--		ADCDAT <= "1111111111111110";
		
WAIT;                                                        
END PROCESS reset;  

DAstrobe : process
variable ia :integer;
begin
		for i in 1 to 500 loop
		ADCstb <= '1';
		wait for 10 ns;
		ADCstb <= '0';
		wait for 385.56 us;
		end loop;
wait;
end process DAstrobe;

sin: PROCESS

        VARIABLE v_sin : real; -- genereated sine value
        VARIABLE i : integer; -- sample number
        CONSTANT Ts : real := 1.0/44100; -- sampling period
        CONSTANT f : real := 1000.0; -- frequency of the sine wave
        CONSTANT A : integer := 32000; -- amplitude
        CONSTANT Ns : integer := 200; -- number of samples to simulate
BEGIN
        FOR i IN 0 TO Ns LOOP
                v_sin := sin(2 * math_2_pi * f * Ts * i);
                ADCDAT := to_unsigned(integer(v_sin), 16);
                WAIT FOR Ts*64.0;
        END LOOP;
        WAIT;
END PROCESS sin;
                                        
END fir_filter_arch;
