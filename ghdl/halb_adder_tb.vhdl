library ieee;
use ieee.std_logic_1164.all;


entity halb_adder_tb is
end halb_adder_tb;


architecture test of halb_adder_tb is

  component half_adder 
  port (
        in_1: in std_logic;
        in_2: in std_logic;
        out_1: out std_logic;
        out_2: out std_logic
       );
  end component;

  signal in_1, in_2, out_1, out_2: std_logic;

begin
  ha: half_adder port map (in_1 => in_1, in_2 => in_2, out_1 => out_1, out_2 => out_2);

  process 
  begin

    in_1 <= '1';
    in_2 <= '1';
    wait for 10 ns;

    in_1 <= '0';
    in_2 <= '1';
    wait for 10 ns;

    in_1 <= '1';
    in_2 <= '0';
    wait for 10 ns;
    
    in_1 <= '0';
    in_2 <= '0';
    wait for 10 ns;

  end process;


end;
