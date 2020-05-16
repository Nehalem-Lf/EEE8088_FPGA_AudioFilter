LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
use ieee.numeric_std.all;
use ieee.math_real.all;    

--USE ieee.std_logic_unsigned.all;  
--use IEEE.STD_LOGIC_ARITH.ALL;
                     

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
SIGNAL Vs : signed (15 downto 0);


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
   for i in 1 to 500000000 loop -- specify here the length of the simulation run
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
		for ia in 1 to 5000 loop
		ADCstb <= '1';
		wait for 10 ns;
		ADCstb <= '0';
		wait for 385.56 us;
		end loop;
wait;
end process DAstrobe;

signal_samples_proc: 
PROCESS
        VARIABLE v_sin : real; -- genereated sine value
        VARIABLE ib : integer; -- sample number
        CONSTANT Ts : real := 1.0/44100; -- sampling period
        CONSTANT f : real := 2000.0; -- frequency of the sine wave
        CONSTANT A : integer := 32000; -- amplitude
        CONSTANT Ns : integer := 2000; -- number of samples to simulate
        
        
BEGIN
        FOR ib IN 0 TO Ns LOOP
                
                v_sin := real(A) * sin(real(ib) * Ts * f * real(2) * math_2_pi);
                Vs <= to_signed(integer(v_sin), 16);
				ADCDAT <= std_logic_vector(Vs);
                WAIT FOR Ts * 64.0 sec ;
        END LOOP;
        WAIT;
END PROCESS;
                                        
END fir_filter_arch;
