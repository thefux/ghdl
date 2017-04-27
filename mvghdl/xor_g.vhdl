library ieee;
use ieee.std_logic_1164.all;

entity xor_g is

  port (
        in_1 : in std_logic;
        in_2 : in std_logic;
        output : out std_logic
      );

end xor_g;


architecture behaviour of xor_g is

begin

  output <= in_1 xor in_2;
  
end behaviour;

