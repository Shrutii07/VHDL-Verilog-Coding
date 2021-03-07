library ieee;
use ieee.std_logic_1164.all;

entity Mux21 is
port(inp: in std_logic_vector(1 downto 0);
     sel: in std_logic;
     opt: out std_logic);
end Mux21;

architecture Mux21_ifelse of Mux21 is
begin
with sel select
opt <= inp(1) when '0',
       inp(0) when '1',
       '0' when others;
end Mux21_ifelse;

library ieee;
use ieee.std_logic_1164.all;

entity Mux41from21 is 
port(inp: in std_logic_vector(3 downto 0);
     sel: in std_logic_vector(1 downto 0);
     opt: out std_logic);
end Mux41from21;

architecture Mux41from21_arch of Mux41from21 is

component Mux21
port(inp: in std_logic_vector(1 downto 0);
     sel: in std_logic;
     opt: out std_logic);
end component;
signal int1,int2: std_logic;
alias firsttwo: std_logic_vector(1 downto 0) is inp(3 downto 2);
alias lasttwo: std_logic_vector(1 downto 0) is inp(1 downto 0);
signal combined: std_logic_vector(1 downto 0);
begin

m1: Mux21 port map (firsttwo,sel(0),int1);
m2: Mux21 port map (lasttwo,sel(0),int2);
combined <= (int1,int2);
m3: Mux21 port map (combined,sel(1),opt);

end Mux41from21_arch;
