library ieee;
use ieee.std_logic_1164.all;

entity ShiftLeft2 is
   generic(N: Natural := 32);
   port( x: in std_logic_vector(N-1 downto 0);
         y: out std_logic_vector(N-1 downto 0));
end ShiftLeft2;

architecture dataflow of ShiftLeft2 is
begin

   y <= x(N-3 downto 0) & "00";

end dataflow;
