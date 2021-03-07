library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity half_sub_tb is
end entity;

architecture tb of half_sub_tb is
component HS_Behave is
Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
      Y : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal A,Y : STD_LOGIC_VECTOR (1 downto 0);
begin
uut: HS_Behave port map(A => A, Y => Y);

stim: process
begin
A <= "00";
wait for 20 ns;

A <= "01";
wait for 20 ns;

A <= "10";
wait for 20 ns;

A <= "11";
wait for 20 ns;
wait;

end process;
end tb;
