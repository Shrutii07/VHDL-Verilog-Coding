library ieee;
use ieee.std_logic_1164.all;

entity mux_6_to_1 is
	port (I: in std_logic_vector(5 downto 0);
	S: in std_logic_vector(2 downto 0);
	O: out std_logic);
end Mux_6_to_1;

architecture data_flow of mux_6_to_1 is
begin
	O <= I(0) when S="000" else
	I(1) when S="001" else
	I(2) when S="010" else
	I(3) when S="011" else
	I(4) when S="100" else
	I(5) when S="101" else
	'0';
end data_flow;
