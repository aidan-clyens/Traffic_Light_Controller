---------------------------------------------
-- Cycle Generator
-- Aidan Clyens
---------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cycle_generator IS
  PORT (
    clkin           : in std_logic;
		rst_n				    : in std_logic;
		modulo 				  : in integer;		   --	Use different modulo counts to obtain different output frequencies
		strobe_out		  : out	std_logic;	   --	50% duty cycle clock signal
		full_cycle_out	: out std_logic	     --	Use as clock enable for the state machine
  );
END cycle_generator;

--------------------------------------------------------------------------------------------------------

ARCHITECTURE counter OF cycle_generator IS

  SIGNAL bin_counter					    : UNSIGNED(31 DOWNTO 0);
	SIGNAL terminal_count				    : std_logic;
	SIGNAL half_cycle, full_cycle		: std_logic;
	SIGNAL strobe							      : std_logic;

	BEGIN

	half_cycle <= terminal_count;
	full_cycle_out <= full_cycle;
	strobe_out <= strobe;


MODULO_COUNTING: PROCESS(clkin, rst_n) IS
  BEGIN

	  IF (rst_n = '0') THEN
		  bin_counter <= to_unsigned(modulo,32);
		  terminal_count <= '0';
      ELSIF (rising_edge(clkin)) THEN
			-- binary counter decrements on rising clock edge.

			   IF(bin_counter = 0) THEN
				     -- when bin_counter reaches 0
				    -- reload the (converted integer to 32 bit unsigned signal type) modulo value
				    -- and output a terminal_count signal
				    bin_counter <= to_unsigned(modulo,32);
				    terminal_count <= '1';
			   ELSE
			      bin_counter <= bin_counter - 1;
				    terminal_count <= '0';
			   END IF;
	  ELSE
	     bin_counter <= bin_counter;
		   terminal_count <= terminal_count;

	  END IF;
  END PROCESS;


Strobe_gen: PROCESS(clkin, rst_n) IS
	-- Strobe is with 50% duty cycle

  BEGIN

	   IF (rst_n = '0') THEN
		   strobe <= '0';

	   ELSIF (rising_edge(clkin)) THEN

		   --	Every half cycle, invert the strobe signal
		   IF (half_cycle = '1') THEN
			    strobe <= not strobe;

		   ELSE
			    strobe <= strobe;
		   END IF;

	   ELSE
      strobe <= strobe;

	   END IF;

	END PROCESS;


CLKEN_GEN: PROCESS(clkin, rst_n) IS
	-- full_cycle is one "clkin" cycle in duration and occure once for every two occurrences of half_cycle

  BEGIN

	  IF (rst_n = '0') THEN
      full_cycle <= '0';

	  ELSIF (rising_edge(clkin)) THEN

  	  --	Every second half cycle, set full_cycle to 1 for 20ns, the period of the global 50Hz clock
      IF (half_cycle = '1' and strobe = '0') THEN
  		  full_cycle <= '1';
  		ELSE
  			full_cycle <= '0';
  		END IF;

	  ELSE
    END IF;

  END PROCESS;

END ARCHITECTURE;
