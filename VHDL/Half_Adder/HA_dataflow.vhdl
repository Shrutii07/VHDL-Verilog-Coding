library ieee;
use ieee.std_logic_1164.all;

entity HA_dataflow is
port(a ,b: in std_logic;
sum , carry_out: out std_logic);
end HA_dataflow;

architecture dataflow of HA_dataflow is
begin
sum <= a xor b;
carry_out <= a and b;
end dataflow;
