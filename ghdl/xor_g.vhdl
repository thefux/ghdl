library ieee;
use ieee.std_logic_1164.all;

entity xor_g is

  port (
        in_xor1 : in std_logic;
        in_xor2 : in std_logic;
        output_xor : out std_logic
      );

end xor_g;


architecture behaviour of xor_g is

begin

  output_xor <= in_xor1 xor in_xor2;
  
end;

