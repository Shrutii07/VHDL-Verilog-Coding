library ieee;
use ieee.std_logic_1164.all;

entity tb_fa is
end tb_fa;

architecture tb of tb_fa is

  component FA_dataflow
  Port ( a : in STD_LOGIC;
	b : in STD_LOGIC;
	cin : in STD_LOGIC;
	s : out STD_LOGIC;
	cout : out STD_LOGIC);
  end component;

signal a : std_logic;
signal b : std_logic;
signal cin : std_logic;
signal s : std_logic;
signal cout : std_logic;

begin

    dut : FA_dataflow
    port map (a => a,
    b => b,
    cin=> cin,
    s => s,
    cout => cout);

    stimuli : process
    begin
    a <= '0';
    b <= '0';
    cin <= '0';
    wait for 100ps;

    a<='0';
    b<='1';
    cin <= '0';
    wait for 100ps;

    a<='1';
    b<='0';
    cin <= '0';
    wait for 100ps;

    a<='1';
    b<='1';
    cin <= '0';
    wait for 100ps;
    
    a <= '0';
    b <= '0';
    cin <= '1';
    wait for 100ps;

    a<='0';
    b<='1';
    cin <= '1';
    wait for 100ps;

    a<='1';
    b<='0';
    cin <= '1';
    wait for 100ps;

    a<='1';
    b<='1';
    cin <= '1';
    wait for 100ps;
    wait;
    end process;

end tb;
