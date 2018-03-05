library ieee;
use ieee.std_logic_1164.all;
 
entity and_gate is
  port (
    input_1    : in  std_logic;
    input_2    : in  std_logic;
	input_3    : in  std_logic;
	input_4    : in  std_logic;
    or_result : out std_logic
    );
end and_gate;
 
architecture rtl of and_gate is
  signal or_gate2 : std_logic;
  signal or_gate : std_logic;
begin
  or_gate2   <= input_1 or input_2;
  or_gate   <= input_3 or input_4;
  or_result <= or_gate2 or or_gate;
end rtl;