library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4to1_ifelse is
port(
	A, B, C, D: in STD_LOGIC;
	S0, S1: in STD_LOGIC;
	Z: out STD_LOGIC
);
end Mux4to1_ifelse;

architecture bhv of Mux4to1_ifelse is
begin
process (A, B, C, D, S0, S1) is
begin
if (S0 = '1' and S1 = '0') then
	z <= A;
elsif (S0 = '1' and S1 = '0') then
	z <= B;
elsif (S0 = '0' and S1 = '1') then
	z <= C;
else
	z <= D;
end if;
end process;
end bhv;
