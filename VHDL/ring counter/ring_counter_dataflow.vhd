-- 4 bit ring counter using dataflow model

-- import necessary libraries
library ieee;
use ieee.std_logic_1164.all;

entity ring_counter_dataflow is
port( ORI: in std_logic; --Over Riding Input bit 
	  CLK: in std_logic; --Clock pulse
	  Q: buffer std_logic_vector(3 downto 0) -- 4 bit Output of ring counter where Q= "Q3 Q2 Q1 Q0" 
	);
end ring_counter_dataflow;

architecture arch_dataflow of ring_counter_dataflow is
begin
Q<= "0001" when ORI='0' else --When ORI bit is clear, reset output values to "0001", CLK becomes Dont Care 
	"0010" when falling_edge(CLK) and Q<="0001" else --Check previous state of output at every falling edge of clock, and accordingly change the output Q
	"0100" when falling_edge(CLK) and Q<="0010" else 
	"1000" when falling_edge(CLK) and Q<="0100" else
	"0001" when falling_edge(CLK) and Q<="1000" else 
	unaffected; --Redirecting the previous value of Q to itself, rather than leaving it dangling
end arch_dataflow;
