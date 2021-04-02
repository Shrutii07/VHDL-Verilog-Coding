library ieee;
use ieee.std_logic_1164.all;

entity eqcomp is
port(a,b: in std_logic_vector(3 downto 0);
	equals: out std_logic);
end eqcomp;

architecture arch_eqcomp of eqcomp is
begin
	equals<='1' when (a=b) else '0';
end arch_eqcomp;
