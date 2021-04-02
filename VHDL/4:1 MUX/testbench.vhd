library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Mux4to1_case_tb is
end;

architecture bench of Mux4to1_case_tb is

component Mux4to1_case
        port(
        data_in : in STD_LOGIC_VECTOR(3 downto 0);
        sel : in STD_LOGIC_VECTOR(1 downto 0);
        data_out : out STD_LOGIC
        );
end component;

signal data_in: STD_LOGIC_VECTOR(3 downto 0);
signal sel: STD_LOGIC_VECTOR(1 downto 0);
signal data_out: STD_LOGIC ;

begin

uut: Mux4to1_case port map ( data_in => data_in,
sel => sel,
data_out => data_out );

stimulus: process
begin

data_in<="1110";
sel<="00";
wait for 100ps;

data_in<="0001";
sel<="00";
wait for 100ps;

data_in<="1101";
sel<="01";
wait for 100ps;

data_in<="0010";
sel<="01";
wait for 100ps;

data_in<="1011";
sel<="10";
wait for 100ps;

data_in<="0100";
sel<="10";
wait for 100ps;

data_in<="0111";
sel<="11";
wait for 100ps;

data_in<="1000";
sel<="11";
wait for 100ps;
end process;


end;
