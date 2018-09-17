library IEEE;
use IEEE.std_logic_1164.all;

entity MUX is
   generic(N : Natural := 5);
port( x,y: in std_logic_vector(N-1 downto 0);
	sel: in std_logic;
	z: out std_logic_vector(N-1 downto 0));
end MUX;


architecture behav of MUX is
begin
process(sel)
begin
	if sel = '1' then 
		z <= y;
	else
		z <= x;
	end if;
end process;
end behav;
