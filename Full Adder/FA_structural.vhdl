library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
entity ha is 
port ( 
A, B : in STD_LOGIC; 
s, cr: out STD_LOGIC 
); 
end ha; 
architecture df of ha is 
begin 
s<=A and B; 
cr<=A xor B; 
end df; 
  
library ieee; 
use ieee.std_logic_1164.all; 
entity or_gate is 
port ( 
A, B : in STD_LOGIC; 
C : out STD_LOGIC 
); 
end or_gate; 
architecture df of or_gate is begin 
C<=A or B; 
end df;
  
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity FA_structural is 
Port ( 
A,B,C : in STD_LOGIC; 
sum, carry : out STD_LOGIC 
); 
end FA_structural; 
architecture structural of FA_structural is 
component or_gate is 
port ( 
A, B : in STD_LOGIC; 
C : out STD_LOGIC 
); 
end component or_gate; 
component ha is 
port ( 
A, B : in STD_LOGIC; 
s, cr: out STD_LOGIC 
); 
end component ha; 
  
signal w1, w2, w3: STD_LOGIC; 
begin 
u1: ha port map ( 
A => A, B => B, s=> w1, cr=>w2 ); 
u2: ha port map ( 
A=> w1, B=> C, s=> sum, cr=> w3 ); 
u3: or_gate port map ( 
A=> w2, B=> w3, C=>carry ); 
  
end structural;
