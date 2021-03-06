library ieee;
use ieee.std_logic_1164.all;

--4:1 mux using when-else statement
entity Mux4to1_whenelse is
port (D: in std_logic_vector(0 to 3);
S: in std_logic_vector (0 to 1);
O: out std_logic);
end Mux4to1_whenelse;

architecture m1 of Mux4to1_whenelse is 
begin
O <= D(0) when S="00" else
D(1) when S="01" else
D(2) when S="10" else
D(3) when S="11" else
'0';
end m1;
