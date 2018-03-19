library ieee;
use ieee.std_logic_1164.all;
 
entity and_gate is
  port (
    input_1    : in  std_logic;
    input_2    : in  std_logic;
	input_3    : in  std_logic;
	input_4    : in  std_logic;
    and_result : out std_logic;
	and_result2 : out std_logic;
	and_result3 : out std_logic
    );
end and_gate;
 
architecture rtl of and_gate is
  signal and_gate : std_logic;
  signal and_gate2 : std_logic;
begin
  and_result <= (input_1 and input_2) or (input_3 and input_4);
  with ((input_1 and input_2) or (input_3 and input_4)) select
  and_result2 <= '1' when '1',
                 '0' when '0',
				 '0' when others;
				 
  and_result3 <= '1' when ((input_1 and input_2) or (input_3 and input_4)) = '1' else '0';
end rtl;