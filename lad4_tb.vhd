library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal w_RESULT1 : std_logic;
  

  component xor2 is
    port (
      i_bit1    : in  std_logic;
      i_bit2    : in  std_logic;
      o_bit1 : out std_logic
	  
	  );
  end component xor2;

begin

  and_gate_INST : xor2
    port map (
      i_bit1    => r_SIG1,
      i_bit2    => r_SIG2,
      o_bit1 => w_RESULT1
	  
      );
	  
	  
  process is
  begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    wait for 10 ns;
    r_SIG1 <= '0';
    r_SIG2 <= '1';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '1';
    wait for 10 ns;
  end process;

end behave;
