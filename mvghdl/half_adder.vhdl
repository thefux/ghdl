library ieee;
use ieee.std_logic_1164.all;


entity half_adder is

  port (
        in_1: in std_logic;
        in_2: in std_logic;
        out_1: out std_logic;
        out_2: out std_logic;
       );

end half_adder;


architecture structure of half_adder is

  component and_gate 
  port (
        in_and1 : in std_logic;
        in_and2 : in std_logic;
        output : out std_logic
      );
  end component;

  component xor_g
  port (
        in_xor1 : in std_logic;
        in_xor2 : in std_logic;
        output : out std_logic
      );
  end component;

begin:

  xor_test: xor_g port map (in_1, in_2, out_1);
  and_test: and_gate port map (in_1, in_2, out_2);


end structure;
