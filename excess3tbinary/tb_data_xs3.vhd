library ieee;
use ieee.std_logic_1164.all;

entity tb_e3tobin is
end tb_e3tobin;

architecture tb of tb_e3tobin is

  component e3tobin_df
  port (ex3 : in std_logic_vector(3 DOWNTO 0);
		bin : out std_logic_vector(3 DOWNTO 0));
		
  end component;

signal ex3 : std_logic_vector(3 DOWNTO 0):="0000";
signal bin : std_logic_vector(3 DOWNTO 0):="1111";

begin
-- instantiating the component defined
    dut : e3tobin_df port map(ex3 => ex3, bin => bin);
    stimuli : process
    begin
    ex3 <= "0000";
    wait for 100ps;
	
	ex3 <= "0001";
    wait for 100ps;

    ex3 <= "0010";
    wait for 100ps;

    ex3 <= "0011";
    wait for 100ps;
    
    ex3 <= "0100";
    wait for 100ps;
    
    ex3 <= "0101";
    wait for 100ps;
    
    ex3 <= "0110";
    wait for 100ps;
    
    ex3 <= "0111";
    wait for 100ps;
    
    ex3 <= "1000";
    wait for 100ps;
	
	ex3 <= "1001";
    wait for 100ps;

    ex3 <= "1010";
    wait for 100ps;

    ex3 <= "1011";
    wait for 100ps;
    
    ex3 <= "1100";
    wait for 100ps;
    
    ex3 <= "1101";
    wait for 100ps;
    
    ex3 <= "1110";
    wait for 100ps;
    
    ex3 <= "1111";
    wait for 100ps;
    wait;
    end process;

end tb;
