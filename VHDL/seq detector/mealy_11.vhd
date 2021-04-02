library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity mealy_11 is 
 port(
   clk, din, rst: in std_logic; 
    dout: out std_logic); 
end mealy_11; 
  
architecture behav of mealy_11 is 
type state is (st0, st1); 
signal present_state, next_state: state; 
begin 
 sync_process: process(clk) 
 begin 
 if rising_edge(clk) then 
 if rst='1' then 
 present_state<=st0; 
 else 
 present_state<=next_state; 
 end if; 
 end if; 
 end process; 
  
 state_output_process: process(present_state, din)  begin 
 dout<='0'; 
 case(present_state) is  
 when st0=> 
 if din='0' then 
  next_state<=st0; 
  dout<='0'; 
 else 
  next_state<=st1; 
  dout<='0'; 
 end if; 
 when st1=> 
 if din='0' then 
 next_state<=st0; 
 dout<='0'; 
 else 
 next_state<=st1; 
 dout<='1'; 
 end if; 
 end case; 
end process;
end behav; 
