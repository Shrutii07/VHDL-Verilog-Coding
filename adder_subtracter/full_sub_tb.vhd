library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity full_sub_tb is
end full_sub_tb;

architecture tb of full_sub_tb is
component full_sub is
Port ( A, B, Cin : in  STD_LOGIC;
	Cout, Diff : out STD_LOGIC);
end component;

signal A, B, Cin, Cout, Diff: STD_Logic;
begin
test: full_sub port map(A => A, B=> B, Cin => Cin, Cout => Cout, Diff => Diff);

process
begin
A <= '0';
B <= '0';
Cin <= '0';
wait for 20 ns;

Cin <= '1';
wait for 20 ns;

B <= '1';
Cin <= '0';
wait for 20 ns;

Cin <= '1';
wait for 20 ns;

A <= '1';
B <= '0';
Cin <= '0';
wait for 20 ns;

Cin <= '1';
wait for 20 ns;

B <= '1';
Cin <= '0';
wait for 20 ns;

Cin <= '1';
wait;

end process;
end tb;
