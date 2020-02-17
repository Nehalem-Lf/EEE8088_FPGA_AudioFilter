library ieee;
use ieee.std_logic_1164.all;

entity strobe is
	port 
	(
		clk	: in std_logic;
		reset	: in std_logic;
		stb	: out std_logic
	);

end entity;

architecture rtl of strobe is

	signal x: integer;

begin

	process (clk, reset)
	begin
		if reset = '1' then
			x <= 9;
		elsif (rising_edge(clk)) then

			if (x = 0) then
				x <= 9;
				stb <= '1';
			else
				x <= x-1;
				stb <= '0';
			end if;

		end if;
	end process;


end rtl;
