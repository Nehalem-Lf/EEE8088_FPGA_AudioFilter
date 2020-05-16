LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
use ieee.numeric_std.all;
use ieee.math_real.all;                             

ENTITY s2p_adaptor_vhd_tst IS
END s2p_adaptor_vhd_tst;
ARCHITECTURE s2p_adaptor_arch OF s2p_adaptor_vhd_tst IS
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
COMPONENT s2p_adaptor
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
	i1 : s2p_adaptor
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
-- variable declarations                                                                                           
variable i : integer;-- variable declarations                                     
BEGIN                                                        
   for i in 1 to 5000000 loop -- specify here the length of the simulation run
     CLOCK_50 <= '0';
     wait for 10 ns;
     CLOCK_50 <= '1';
     wait for 10 ns;
     end loop;     -- code that executes only once                      
WAIT;                                                       
END PROCESS clock;         -- code that executes only once   

rst :process
begin
	RST_N <= '1';
--	ADCrdy <= '1';
--	DACrdy <= '1';
wait;
end process rst;

BCLK :process
variable i1 :integer;
begin
	AUD_BCLK <='0';
	wait for 11.34 us;
	for i1 in 1 to 2000 loop
	AUD_BCLK <='1';
	wait for 11.34 us;
	AUD_BCLK <='0';
	wait for 11.34 us;
	end loop;
wait;
end process BCLK;

ADCLRCK :process
variable i2 :integer;
begin
	AUD_ADCLRCK <= '0';
	AUD_DACLRCK <= '0';
	wait for 22.68 us;
	for i2 in 1 to 200 loop
	AUD_ADCLRCK <= '1';
	AUD_DACLRCK <= '1';
	wait for 22.68 us;
	AUD_ADCLRCK <= '0';
	AUD_DACLRCK <= '0';
	wait for 385.56 us;
	end loop;
wait;
end process ADCLRCK;

--AudioIn :process
--variable i3 :integer;
--begin
--	for i3 in 1 to 2000 loop
--	AUD_ADCDAT <='1';
--	wait for 22.68 us;
--	AUD_ADCDAT <='0';
--	wait for 22.68 us;
--	end loop;
--wait;
--end process AudioIn;

signal_samples_proc: 
PROCESS
        VARIABLE v_sin : real; -- genereated sine value
        VARIABLE i : integer; -- sample number
        CONSTANT Ts : real := 1.0/44100; -- sampling period
        CONSTANT f : real := 1000.0; -- frequency of the sine wave
        CONSTANT A : integer := 32000; -- amplitude
        CONSTANT Ns : integer := 200; -- number of samples to simulate
BEGIN
        FOR i IN 0 TO Ns LOOP
                v_sin := sin(2 * math_2_pi * f * Ts * i);
                AUD_ADCDAT := to_signed(integer(v_sin), 16);
                WAIT FOR Ts*64.0;
        END LOOP;
        WAIT;
END PROCESS;

DACDAT <= ADCDAT;
DACstb <= ADCstb;

END s2p_adaptor_arch;

