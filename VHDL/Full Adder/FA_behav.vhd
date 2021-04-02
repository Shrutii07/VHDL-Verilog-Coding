library IEEE; 
use ieee.std_logic_1164.all; 
entity FA_behav is 
  port ( a : in std_logic; 
   b : in std_logic; 
   c : in std_logic; 
   s : out std_logic; 
   cr : out std_logic); 
end FA_behav; 
architecture Behavioral of FA_behav is 
begin 
   process(a,b,c) 
   begin 
     if(a='0' and b='0' and c='0')then 
       s<='0'; 
       cr<='0'; 
     elsif( a='0' and b='0' and c='1')then 
       s<='1'; 
       cr<='0'; 
     elsif( a='0' and b='1' and c='0')then 
       s<='1'; 
       cr<='0'; 
     elsif( a='0' and b='1' and c='1')then 
       s<='0';
       cr<='1'; 
     elsif( a='1' and b='0' and c='0')then  
       s<='1'; 
       cr<='0'; 
     elsif( a='1' and b='0' and c='1')then  
        s<='0'; 
       cr<='1'; 
     elsif( a='1' and b='1' and c='0')then  
       s<='0'; 
       cr<='1'; 
     else 
       s<='1'; 
       cr<='1'; 
     end if; 
   end process; 
end Behavioral; 
