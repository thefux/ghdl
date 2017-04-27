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
