-- 4 bit excess-3 to binary convertor

LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY excs3tbin IS
PORT(
		ex3 : in std_logic_vector(3 DOWNTO 0);
		bin : out std_logic_vector(3 DOWNTO 0);
		valid: out std_logic
	);
end excs3tbin;

ARCHITECTURE arch OF excs3tbin IS
BEGIN
process(ex3)
begin
if (ex3 = "0000" or ex3 = "0001" or ex3 = "0010") then
	valid <= '1';
	bin <= "1111";
else
	valid <= '0';
	bin <= ex3 - "0011";
end if;
end process;
end arch;
