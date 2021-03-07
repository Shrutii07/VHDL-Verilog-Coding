-- test bench for all counter. (sync async code)
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counterall_tb is
end counterall_tb;

architecture counterall_tb_arch of counterall_tb is
component counterall is
port(clk,sreset,areset,ud:in std_logic;
     count: out integer range 0 to 255);
end component;

signal clk,sreset,areset,ud: std_logic;
signal count,tempcount: integer range 0 to 255;
begin
test: counterall port map (clk=>clk,sreset=>sreset,areset=>areset,ud=>ud,count=>count);
process
begin
clk<='0';
sreset<='1';
areset<='0';
wait for 100 ps;
clk<='1';
sreset<='1';
areset<='0';
wait for 100ps;
clk<='0';
sreset<='0';
areset<='0';
wait for 100ps;
clk<='1';
sreset<='0';
areset<='0';
wait for 100ps;
clk<='0';
sreset<='0';
areset<='0';
wait for 100ps;
clk<='1';
sreset<='0';
areset<='0';
wait for 100ps;
clk<='0';
sreset<='0';
areset<='1';
wait for 100ps;
clk<='1';
sreset<='0';
areset<='0';
wait for 100ps;
clk<='1';
sreset<='0';
areset<='0';
wait for 100ps;


end process;
end counterall_tb_arch;
