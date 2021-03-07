library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity upcounter_tb is
end entity;

architecture tb of upcounter_tb is
  component counter is
  Port ( clock,resetn,E : in STD_LOGIC;
  Q : out integer range 0 to 255);
end component;

signal clock,resetn,E : STD_LOGIC := '1';
signal Qt : integer range 0 to 255;
signal Q : integer range 0 to 255;

begin

  uut: counter port map(
  clock => clock,
  resetn => resetn,
  E => E,
  Q=>Q);

  clk: process
  begin
  resetn <= '0';
  clock <= '1';
  wait for 50 ps;
  clock <= '0';
  wait for 50 ps;
end process;
end tb;
