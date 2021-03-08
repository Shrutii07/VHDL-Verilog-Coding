library ieee;
use ieee.std_logic_1164.all;

entity enco8x3_tb is  
end enco8x3_tb;

 architecture beh of enco8x3_tb is
   component encoder_8t3
       port (
    inp: in  std_logic_vector(7 downto 0);   -- inputs
    op: out std_logic_vector(2 downto 0));  -- outputs
end component;
   
signal i_s : std_logic_vector(7 downto 0);  -- signals
signal o_s : std_logic_vector(2 downto 0);  -- output signals
 begin  -- beh

u1 : encoder_8t3 port map (inp => i_s, op => o_s);

tst_p: process
   begin
       i_s<="00000001";
       wait for 100 ns;
       i_s<="00000010";
       wait for 100 ns;
       i_s<="00000100";
       wait for 100 ns;
       i_s<="00001000";
       wait for 100 ns;
       i_s<="00010000";
       wait for 100 ns;
       i_s<="00100000";
       wait for 100 ns;
       i_s<="01000000";
       wait for 100 ns;
       i_s<="10000000";
       wait for 100 ns;
    end process;
 end beh;