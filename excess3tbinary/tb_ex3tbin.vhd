library ieee;
use ieee.std_logic_1164.all;

entity tb_ex3tbin is
end tb_ex3tbin;

architecture tb of tb_ex3tbin is

  component excs3tbin
  port (ex3 : in std_logic_vector(3 DOWNTO 0);
		bin : out std_logic_vector(3 DOWNTO 0);
		valid: out std_logic);
  end component;

signal inp : std_logic_vector(3 DOWNTO 0);
signal op : std_logic_vector(3 DOWNTO 0);
signal z : std_logic;

begin
    dut : excs3tbin port map(ex3 => inp, bin => op, valid => z);
    stimuli : process
    begin
    inp <= "0000";
    wait for 100ps;
	
	inp <= "0001";
    wait for 100ps;

    inp <= "0010";
    wait for 100ps;

    inp <= "0011";
    wait for 100ps;
    
    inp <= "0100";
    wait for 100ps;
    
    inp <= "0101";
    wait for 100ps;
    
    inp <= "0110";
    wait for 100ps;
    
    inp <= "0111";
    wait for 100ps;
    
    inp <= "1000";
    wait for 100ps;
	
	inp <= "1001";
    wait for 100ps;

    inp <= "1010";
    wait for 100ps;

    inp <= "1011";
    wait for 100ps;
    
    inp <= "1100";
    wait for 100ps;
    
    inp <= "1101";
    wait for 100ps;
    
    inp <= "1110";
    wait for 100ps;
    
    inp <= "1111";
    wait for 100ps;
    wait;
    end process;

end tb;