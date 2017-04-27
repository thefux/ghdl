library ieee;
use ieee.std_logic_1164.all;


entity half_adder is

  port (
        in_1: in std_logic;
        in_2: in std_logic;
        out_1: out std_logic;
        out_2: out std_logic
       );

end half_adder;


architecture Structural of half_adder is

  --  hier ruffe ich die Zwei Gatter AND und XOR, um sie später 
  --  für die Realisierung von Halb-addierer zu benutzen.
  component and_gate 
  port (
        in_and1 : in std_logic;
        in_and2 : in std_logic;
        output_and : out std_logic
      );
  end component;

  component xor_g
  port (
        in_xor1 : in std_logic;
        in_xor2 : in std_logic;
        output_xor : out std_logic
      );
  end component;


begin

  t1: xor_g port map (in_xor1 => in_1, in_xor2 => in_2, output_xor => out_1);
  t2: and_gate port map (in_and1 => in_1, in_and2 => in_2, output_and => out_2);

-- ein anderen Weg den Halbaddierer zu realisieren ist es:
-- 
-- out_1 <= in_1 and in_2
-- out_2 <= in_1 xor in_2
--
-- mit den zwei Zeilen hätte man auch nen Halbaddierer gebaut, 
-- was ja heißt "component" kann weg gelassen werden.
-- beschreiben wir also dann das Verhalten des Systems (behaviour) und 
-- nicht mehr (structural)
end;
