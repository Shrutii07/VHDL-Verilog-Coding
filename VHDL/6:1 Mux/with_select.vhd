library ieee;
use ieee.std_logic_1164.all;

entity mux_6_to_1 is
	port (I: in std_logic_vector(5 downto 0);
	S: in std_logic_vector(2 downto 0);
	O: out std_logic);
end Mux_6_to_1;

architecture data_flow of mux_6_to_1 is
begin
	with S select
	O <= I(0) when "000",
	I(1) when "001",
	I(2) when "010",
	I(3) when "011",
	I(4) when "100",
	I(5) when "101",
	'0' when "110",
	'0' when "111";
end data_flow;
