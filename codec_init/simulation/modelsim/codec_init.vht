LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY codec_init_vhd_tst IS
END codec_init_vhd_tst;
ARCHITECTURE codec_init_arch OF codec_init_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL RES_N : STD_LOGIC;
SIGNAL SCLK : STD_LOGIC;
SIGNAL SDIN : STD_LOGIC;
SIGNAL bcnt1 : integer;    --bcnt output
SIGNAL wcnt1 :  integer;    --wcnt output
SIGNAL fdiv1 :  integer;		--fdiv output
COMPONENT codec_init
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	RES_N : IN STD_LOGIC;
	SCLK : OUT STD_LOGIC;
	SDIN : OUT STD_LOGIC;
	bcnt1    : out integer;    --bcnt output
	wcnt1    : out integer;    --wcnt output
	fdiv1    : out integer		--fdiv output
	);
END COMPONENT;
BEGIN
	i1 : codec_init
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	RES_N => RES_N,
	SCLK => SCLK,
	SDIN => SDIN,
	bcnt1 => bcnt1,
	wcnt1 => wcnt1,
	fdiv1 => fdiv1
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
      RES_N <= '0';
		wait for 2700 ns;
		RES_N <= '1';  -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS reset;  
                                       
END codec_init_arch;
