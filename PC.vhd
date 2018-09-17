library IEEE;

use IEEE.std_logic_1164.all;

entity PC is
port(clk:in std_logic;
     AddressIn:in std_logic_vector(31 downto 0);
     AddressOut:out std_logic_vector(31 downto 0));
end PC;

architecture behav of PC is
signal count:integer:=0;
begin
process(clk)
begin
if clk'event and clk ='1' then	
	if count = 0 then
		AddressOut <= X"00000000";
	else
		AddressOut <= AddressIn;
	end if;
	count := count +1;
end if;
end process;
end behav;