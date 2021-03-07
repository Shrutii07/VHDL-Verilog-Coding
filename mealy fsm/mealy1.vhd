library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity mealy1 is 
 port(
   clk, x, rst: in std_logic; 
   z: out std_logic_vector (1 downto 0));
 end mealy1; 
  
architecture behav of mealy1 is 
type state is (s0,s1,s2,s3,s4,s5,s6,s7); 
  signal present_state, next_state: state; 
begin 
 sync_process: process(clk) 
 begin 
 if rising_edge(clk) then 
 if rst='1' then 
 present_state<=s0; 
 else 
 present_state<=next_state; 
 end if; 
 end if; 
 end process; 
  
 state_output_process: process(present_state, x) 
   begin 
 z<="00"; 
 case(present_state) is 
 when s0=> 
 if x='0' then 
 next_state<=s1;  z<="00"; 
 else 
 next_state<=s3;  z<="00"; 
 end if; 
  
 when s1=> 
 if x='0' then 
 next_state<=s1;  z<="00"; 
 else 
 next_state<=s2;  z<="00"; 
 end if; 
  
 when s2=> 
 if x='0' then 
 next_state<=s4;  z<="10"; 
 else 
 next_state<=s3;  z<="00"; 
 end if; 
  
 when s3=>
 if x='0' then 
 next_state<=s4;  z<="00"; 
 else 
 next_state<=s3;  z<="00"; 
 end if; 
  
 when s4=> 
 if x='0' then 
 next_state<=s5;  z<="01"; 
 else 
 next_state<=s2;  z<="00"; 
 end if; 
  
 when s5=> 
 if x='0' then 
 next_state<=s5;  z<="00"; 
 else 
 next_state<=s6;  z<="00"; 
 end if; 
  
 when s6=> 
 if x='0' then
 next_state<=s7; 
 z<="00"; 
 else 
 next_state<=s6; 
 z<="00"; 
 end if; 
  
 when s7=> 
 if x='0' then 
 next_state<=s5; 
 z<="01"; 
 else 
 next_state<=s6; 
 z<="00"; 
 end if; 
  
 end case; 
end process; 
end behav; 
