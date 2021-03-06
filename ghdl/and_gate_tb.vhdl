library ieee;
use ieee.std_logic_1164.all;


entity helloworld_tb is
end helloworld_tb;

architecture test of helloworld_tb is

  component helloworld 
  port (
        in_1 : in std_logic;
        in_2 : in std_logic;
        output : out std_logic
      );
  end component;

  signal i_1, i_2: std_logic;
  signal outt: std_logic;

begin
  
  -- and_gate: helloworld port map (in_1 => i_1, in_2 => i_2, output => outt);
  and_gate: helloworld port map (i_1, i_2, outt);

  process
  begin

    i_1 <= '0';
    i_2 <= '0';
    wait for 10 ns;

    i_1 <= '0';
    i_2 <= '1';
    wait for 10 ns;

    i_1 <= '1';
    i_2 <= '0';
    wait for 10 ns;

    i_1 <= '1';
    i_2 <= '1';
    wait for 10 ns;


  end process;


end test;
