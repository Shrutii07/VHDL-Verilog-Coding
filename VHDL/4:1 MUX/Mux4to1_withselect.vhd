library IEEE; 
use IEEE.std_logic_1164.all; 
entity Mux4to1_withselect is  
port( 
d0 : in std_logic; 
d1 : in std_logic; 
d2 : in std_logic; 
d3 : in std_logic; 
s : in std_logic_vector(1 downto 0); 
y : out std_logic
); 
end Mux4to1_withselect; 
architecture m1 of Mux4to1_withselect is begin 
 with s select 
 y <= d0 when "00", 
 d1 when "01", 
 d2 when "10", 
 d3 when "11"; 
end m1; 
