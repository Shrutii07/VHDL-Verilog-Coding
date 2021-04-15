library ieee;
use ieee.std_logic_1164.all;

entity tb_ha_struct is
end tb_ha_struct;

architecture tb of tb_ha_struct is

  component HA_struct
  port(a, b: in std_logic;
	s, c: out std_logic);
  end component;

signal a : std_logic;
signal b : std_logic;
signal s : std_logic;
signal c : std_logic;

begin

    dut : HA_struct
    port map (a => a,
    b => b,
    s=> s,
    c => c);

    stimuli : process
    begin
    a <= '0';
    b <= '0';
    wait for 100ps;

    a<='0';
    b<='1';
    wait for 100ps;

    a<='1';
    b<='0';
    wait for 100ps;

    a<='1';
    b<='1';
    wait for 100ps;
    wait;
    end process;

end tb;
