--8 bit shift register with synchronous clk

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sync_4b is
port(
clk : in std_logic;
Input_Data: in std_logic;
Q: buffer std_logic_vector(7 downto 0) );
end sync_4b;

architecture arch of sync_4b is
begin

process (clk)
	begin
	if (CLK'event and CLK='1') then
		Q(0) <= Input_Data;
		Q(7 downto 1) <= Q(6 downto 0);
	end if;
end process;
end arch;
