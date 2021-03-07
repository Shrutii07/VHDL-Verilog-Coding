library ieee;
use ieee.std_logic_1164.all;

entity sipo_syncreset_tb is
end sipo_syncreset_tb;

architecture tb of sipo_syncreset_tb is
component sipo_syncreset
port (clk, clear, input_data: in std_logic;
Q: buffer std_logic_vector(7 downto 0) );
end component;

signal clk, clear: std_logic:='1';
signal input_data: std_logic:='1';
signal Q: std_logic_vector(7 downto 0):="00000000";

begin
uut : sipo_syncreset
port map (clk => clk,
clear => clear,
Input_Data => Input_Data,
Q=>Q);

clock : process
begin
clear<='0';
--1000 1101 is the sequence
Input_Data <= '1';
clk<='1';
wait for 50 ps;
clk<='0';
wait for 50 ps;

Input_Data <= '0';
clk<='1';
wait for 50 ps;
clk<='0';
wait for 50 ps;

Input_Data <= '0';
clk<='1';
wait for 50 ps;
clk<='0';
wait for 50 ps;

Input_Data <= '0';
clk<='1';
wait for 50 ps;
clk<='0';
wait for 50 ps;

Input_Data <= '1';
clk<='1';
wait for 50 ps;
clk<='0';
wait for 50 ps;

Input_Data <= '1';
clk<='1';
wait for 50 ps;
clk<='0';
wait for 50 ps;

Input_Data <= '0';
clk<='1';
wait for 50 ps;
clk<='0';
wait for 50 ps;

Input_Data <= '1';
clk<='1';
wait for 50 ps;
clk<='0';
wait for 50 ps;
end process;

end tb;
