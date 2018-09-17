library IEEE;
use IEEE.std_logic_1164.all;

entity and_generic is
   generic(N: Natural := 1);
port(x,y:in std_logic_vector(N-1 downto 0);
     z:  out std_logic);
end and_generic;

architecture behav of and_generic is
signal temp : std_logic_vector(n-1 downto 0) := (others => '1');
begin

   z <= '1' when x = temp and y = temp else '0';

end;
