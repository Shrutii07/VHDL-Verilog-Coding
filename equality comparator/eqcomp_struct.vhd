library ieee;
use ieee.std_logic_1164.all;
entity xnor2 is
port (i1,i2:in std_logic; o1: out std_logic);
end xnor2;
architecture xn of xnor2 is
begin
o1 <= i1 xnor i2;
end xn;

library ieee;
use ieee.std_logic_1164.all;
entity my_and4 is
port (i1, i2, i3, i4: in std_logic; 
		o1: out std_logic);
end my_and4;
architecture an1 of my_and4 is
begin
o1 <= i1 and i2 and i3 and i4;
end an1;

library ieee;
use ieee.std_logic_1164.all;
entity eqcomp_struct is
port(a,b: in std_logic_vector(3 downto 0);
	equals: out std_logic);
end eqcomp_struct;

architecture arch_eqcomp of eqcomp_struct is

component xnor2
port (i1, i2:in std_logic;
	  o1: out std_logic);
end component;

component my_and4
port (i1, i2, i3, i4: in std_logic;
		o1:out std_logic);
end component;

signal int: std_logic_vector(3 downto 0);
begin
gen1: for i in 0 to 3 generate
	c: xnor2 port map (a(i),b(i),int(i));
end generate gen1;

c4: my_and4 port map (int(0),int(1),int(2),int(3),equals);

end arch_eqcomp;
