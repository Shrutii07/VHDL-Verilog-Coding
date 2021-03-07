-- 4 bit carry look ahead adder
library ieee;
use ieee.std_logic_1164.all;

entity add4 is
	port(a,b: in std_logic_vector(3 downto 0);
	sum: out std_logic_vector(3 downto 0);
	cin: in std_logic;
	cout: out std_logic);
end add4;

architecture arch_add4 of add8 is
	signal carry: std_logic_vector(4 downto 0);
	signal g,p: std_logic_vector (3 downto 0);
	
	begin
		carry(0)<=cin;
		cout<=carry(4);
		
		glp: for i in 0 to 3 generate
		g(i) <= a(i) or b(i);
		p(i)<= a(i) or b(i);
		sum(i)<= a(i) xor b(i) xor carry(i);
		end generate;
		
		carry(1)<= g(0) or (p(0) and carry(0));
		
		carry(2)<= g(1) or (p(1) and g(0)) or (p(1) and p(0) and carry(0));
		
		carry(3)<= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and carry(0));
		
end arch_add8;
