library ieee;
use ieee.std_logic_1164.all;

entity encoder_8t3 is 
port(inp: in std_logic_vector(7 downto 0);
     op: out std_logic_vector(2 downto 0));
end encoder_8t3;

architecture encoder_arch of encoder_8t3 is
begin
	process(inp)
	begin
	op(0)<= inp(7) or inp(5) or inp(3) or inp(1);
	op(1)<= inp(2) or inp(3) or inp(4) or inp(7);
	op(2)<= inp(7) or inp(6) or inp(5) or inp(4);
	end process;
end encoder_arch;
