-- 4 bit ring counter test bench
-- including necessary libraries
library IEEE; 
use ieee.std_logic_1164.all;


entity ring_counter_tb is  -- entity of test bench
end entity;

architecture tb of ring_counter_tb is
component ring_counter is
port ( ORI : in std_logic; -- Overriding input 
   CLK : in std_logic;   -- clock pulse
   Q: buffer std_logic_vector(3 downto 0));  -- output
end component;

signal ORI : std_logic;
signal CLK : std_logic;
signal Q : std_logic_vector(3 downto 0);

begin
uut: ring_counter port map (ORI => ORI, CLK => CLK, Q => Q);
sim: process
begin


ORI <= '0';  -- setting ORI as 0
CLK <= '1';
wait for 20 ns;
CLK <= '0';
wait for 20 ns;
ORI <= '1';  -- setting ORI as 1

for i in 0 to 8 loop -- generating clock pulse of time period 40ns and 50% duty cycle of 9 cycles
	CLK <= '1';
	wait for 20 ns;
	CLK <= '0';
	wait for 20 ns;
end loop;
end process;
end tb;
