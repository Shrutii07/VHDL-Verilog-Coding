library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity FA_dataflow is 
Port ( a : in STD_LOGIC; 
b : in STD_LOGIC; 
cin : in STD_LOGIC; 
s : out STD_LOGIC; 
cout : out STD_LOGIC); 
end FA_dataflow; 
architecture dataflow of FA_dataflow is 
begin 
s <= (a xor b) xor cin; 
cout <= (a and b) or (b and cin) or (a and cin); 
end dataflow; 
