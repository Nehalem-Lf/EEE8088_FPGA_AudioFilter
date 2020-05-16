library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity sin_table is
port (
  i_clk          : in  std_logic;
  i_addr         : in  std_logic_vector(4 downto 0);
  o_data         : out std_logic_vector(7 downto 0));
end sin_table;
architecture rtl of sin_table is
type t_sin_table is array(0 to 31) of integer range 0 to 255;
constant C_SIN_TABLE  : t_sin_table := (
  128,  153,  177,  200,  219,  235,  247,  254,  255,  254,  247,  235,  219,  200,  177,  153,
  128,  103,   79,   56,   37,   21,    9,    2,    0,    2,    9,   21,   37,   56,   79,  103);
begin
--------------------------------------------------------------------
p_table : process(i_clk)
begin
  if(rising_edge(i_clk)) then
    o_data  <= std_logic_vector(to_unsigned(C_SIN_TABLE(to_integer(unsigned(i_addr))),16));
  end if;
end process p_table;
end rtl;