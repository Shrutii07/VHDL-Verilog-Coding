library ieee;
use ieee.std_logic_1164.all;

entity eqcomp_data is
port(a,b: in std_logic_vector(3 downto 0);
	equals: out std_logic);
end eqcomp_data;

architecture arch_eqcomp of eqcomp_data is
begin
	equals <= (a(3) xnor b(3)) and
			  (a(2) xnor b(2)) and
			  (a(1) xnor b(1)) and
			  (a(0) xnor a(0));
end arch_eqcomp;
