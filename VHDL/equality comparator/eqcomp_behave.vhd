library ieee;
use ieee.std_logic_1164.all;

entity eqcomp_behave is
port(a,b: in std_logic_vector(3 downto 0);
	equals: out std_logic);
end eqcomp_behave;

architecture arch_eqcomp of eqcomp_behave is
begin
eqproc: process(a,b)
begin
	if a= b then 
		equals <= '1';
	else
		equals <= '0';
	end if;
end process;
end arch_eqcomp;
