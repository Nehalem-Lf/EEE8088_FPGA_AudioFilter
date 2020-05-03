LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

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
	ADCDAT : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	ADCrdy : IN STD_LOGIC;
	ADCstb : BUFFER STD_LOGIC;
	AUD_ADCDAT : IN STD_LOGIC;
	AUD_ADCLRCK : IN STD_LOGIC;
	AUD_BCLK : IN STD_LOGIC;
	AUD_DACDAT : BUFFER STD_LOGIC;
	AUD_DACLRCK : IN STD_LOGIC;
	CLOCK_50 : IN STD_LOGIC;
	DACDAT : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DACrdy : BUFFER STD_LOGIC;
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
   for i in 1 to 500000 loop -- specify here the length of the simulation run
     CLOCK_50 <= '0';
     wait for 10 ns;
     CLOCK_50 <= '1';
     wait for 10 ns;
     end loop;     -- code that executes only once                      
WAIT;                                                       
END PROCESS clock;         -- code that executes only once                                                   
END s2p_adaptor_arch;
