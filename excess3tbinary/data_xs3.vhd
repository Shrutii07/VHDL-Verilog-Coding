-- 4 bit excess-3 to binary convertor

library ieee;
use ieee.std_logic_1164.all;

entity e3tobin_df is
	port ( ex3 : in std_logic_vector(3 downto 0);
		   bin : out std_logic_vector( 3 downto 0));
end e3tobin_df;

architecture arch_df of e3tobin_df is
begin

bin(3) <= (ex3(3) and ex3(2)) or (ex3(3) and ex3(1) and ex3(0));
bin(2) <= ((not(ex3(2))) and (not(ex3(1))) ) or ( ex3(2) and ex3(1) and ex3(0)) or ( (not(ex3(3))) and ex3(1) and (not(ex3(0))) );
bin(1) <= ( (not(ex3(1))) and ex3(0) ) or (ex3(1) and (not(ex3(0))) ) ;
bin(0) <= not(ex3(0));

end arch_df;
