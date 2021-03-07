library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity full_sub_tb is
end entity;

architecture tb of full_sub_tb is
component F_SUBTRACTOR_BEHAVIORAL is
Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
      Y : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal A: STD_LOGIC_VECTOR(2 downto 0);
signal Y: STD_LOGIC_VECTOR(1 downto 0);
begin

uut: F_SUBTRACTOR_BEHAVIORAL port map(A => A, Y => Y);
stim:process
begin

A <= "000";
wait for 20 ns;

A <= "001";
wait for 20 ns;

A <= "010";
wait for 20 ns;

A <= "011";
wait for 20 ns;

A <= "100";
wait for 20 ns;

A <= "101";
wait for 20 ns;

A <= "110";
wait for 20 ns;

A <= "111";
wait for 20 ns;
wait;

end process;

end tb;
