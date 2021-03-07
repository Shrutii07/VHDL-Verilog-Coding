library ieee;
use ieee.std_logic_1164.all;

entity my_d_ff is 
  port (
    d, clk: in std_logic;
    q: out std_logic);
 end my_d_ff;
  
architecture behave of my_d_ff is
  begin
      process(clk)
      begin
        if(clk`event and clk = '1') then
          q<=d;
        end if;
  end process;
end behave;
          
library ieee;
use ieee.std_logic_1164.all;
      
entity dsync is
  port(
    inp, sclk: in std_logic;
    sop: out std_logic);
  end dsync;
architecture struct of dsync is
  component my_d_ff is
    port (
    d, clk: in std_logic;
    q: out std_logic);
  end component;
  
signal int1: std_logic
begin
    c1: my_d_ff port map (inp,sclk,int1);
    c2 : my_d_ff port map (int1,sclk,sop);
end struct
  
