library ieee;
use ieee.std_logic_1164.all;

entity helloworld is

  port (
        in_1 : in std_logic;
        in_2 : in std_logic;
        output : out std_logic
      );

end helloworld;


architecture behaviour of helloworld is

begin

  output <= in_1 and in_2;
  
end behaviour;


library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
end xor_gate;


architecture test of xor_gate is
  signal a: std_logic;
  signal b: std_logic;
  signal c: std_logic;

  signal cl: std_logic;

begin 
  test: c <= a xor b;

  clk: process 
  begin
    cl <= '1';
    wait for 2.5 ns;
    cl <= '0';
    wait for 2.5 ns;
  end process clk;

  xore: process 
  begin

    a <= '1';
    b <= '1';
    wait for 10 ns;

    a <= '0';
    b <= '0';
    wait for 10 ns;

    a <= '1';
    b <= '0';
    wait for 10 ns;



  end process xore;

end test;
