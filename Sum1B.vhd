library ieee;
use ieee.std_logic_1164.all;

entity Sum1B is 
	port(
	a_i,b_i : in std_logic;
	c_i : in std_logic;
	s_i : out std_logic;
	c_i_mas_1 : out std_logic);
end Sum1B;
	
architecture behavioral of Sum1B is
begin
	s_i <= c_i xor (a_i xor b_i);
	c_i_mas_1 <= (a_i or b_i) or (c_i and (a_i xor b_i));
end behavioral;
	