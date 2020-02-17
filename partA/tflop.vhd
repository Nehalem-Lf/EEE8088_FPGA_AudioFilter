library ieee;
use ieee.std_logic_1164.all;

entity tflop is

	port 
	(
		clk	: in  std_logic;
		T		: in  std_logic;
		reset	: in  std_logic;
		Q		: out std_logic
	);

end entity;

architecture rtl of tflop is

	signal x: std_logic;

begin

	process (clk, reset)
	begin
	   if (reset = '1') then
			x <= '0';
		elsif (rising_edge(clk)) then

			if (T = '1') then

				x <= not x;

			end if;
		end if;
	end process;

	Q <= x;

end rtl;
