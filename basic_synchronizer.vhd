---------------------------------------------
-- Basic Synchronizer
-- Aidan Clyens
---------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY basic_synchronizer IS
	PORT (
		clk_in			:	in std_logic;		--	Input clock signal
		rst_n				:	in std_logic;		--	Reset
		data_input	:	in std_logic;		--	One-bit data input
		data_output	:	out std_logic		--	One-bit synchronized data output
	);
END basic_synchronizer;

------------------------------------------------------------------------------------
ARCHITECTURE synchronizer OF basic_synchronizer IS

	SIGNAL output1		:	std_logic;

	BEGIN

	--	Uses two registers in series, with output1 passing from the first output to the second input

	--	register 1
	PROCESS(clk_in, rst_n) IS
		BEGIN

		IF (rst_n = '0') THEN
			output1 <= '0';

		ELSIF (rising_edge(clk_in)) THEN

			--	If the corresponding push button is pressed, set output to 1 on the rising edge of the clock
			IF (data_input ='0') THEN
				output1 <= '1';
			ELSE
				output1 <= '0';
			END IF;

		ELSE

		END IF;

	END PROCESS;

	--	RegISter 2
	PROCESS(clk_in, rst_n) IS
		BEGIN

		IF (rst_n = '0') THEN
			data_output <= '0';

		ELSIF (rising_edge(clk_in)) THEN

			--	If the output of the first register is 1, set output to 1 on the rising edge of the clock
			IF (output1 ='1') THEN

				data_output <= '1';
			ELSE
				data_output <= '0';
			END IF;

		ELSE

		END IF;

	END PROCESS;



END ARCHITECTURE synchronizer;
