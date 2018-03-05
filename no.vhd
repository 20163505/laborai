library ieee;
use ieee.std_logic_1164.all;
 
entity and_gate is
  port (
    input_1    : in  std_logic;
    input_2    : in  std_logic;
	input_3    : in  std_logic;
	input_4    : in  std_logic;
    o_result1 : out std_logic;
	o_result2 : out std_logic;
	o_result3 : out std_logic;
	o_result4 : out std_logic
    );
end and_gate;
 
architecture rtl of and_gate is
  signal no1 : std_logic;
  signal no2 : std_logic;
  signal no3 : std_logic;
  signal no4 : std_logic;
begin
  o_result1   <= not input_1;
  o_result2   <= not input_2;
  o_result3   <= not input_3;
  o_result4   <= not input_4;
end rtl;