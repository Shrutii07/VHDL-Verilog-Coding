library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Mux4to1_case is
     port(
         data_in : in STD_LOGIC_VECTOR(3 downto 0);
         sel : in STD_LOGIC_VECTOR(1 downto 0);
         data_out : out STD_LOGIC
         );
end Mux4to1_case;
architecture m1 of Mux4to1_case is
begin
    mux : process (data_in,sel) is
    begin
        case sel is
            when "00" => data_out <= data_in(0);
            when "01" => data_out <= data_in(1);
            when "10" => data_out <= data_in(2);
            when others => data_out <= data_in(3);
        end case;
    end process mux;
end m1;
