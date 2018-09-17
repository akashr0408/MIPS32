entity signExt is 
port (x: in std_logic_vector(15 downto 0);
      y: out std_logic_vector(31 downto 0)
);

end signExt;

architecture behav of signExt is
begin
y(31 downto 16) <=(others => x(15));
y(15 downto 0) <= x;
end behav;
