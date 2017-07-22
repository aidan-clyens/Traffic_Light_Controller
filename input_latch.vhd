LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY input_latch IS PORT (
	clk_in		:	in std_logic;	--	Input clock signal
	rst_n			:	in std_logic;	--	Reset
	enable		:	in std_logic;	--	Latch enable, comes from the state machine
	sync_input	:	in	std_logic;	--	Synchronized input from the basic_sycnhronizer
	latch_clear	:	in std_logic;	--	Latch clear, from the state machine
	data_output	:	out std_logic	--	Latch output, goes to the state machine
);
END input_latch;

ARCHITECTURE Latch_Design OF input_latch IS
	
	BEGIN

	
	PROCESS(clk_in, rst_n) IS
			
			BEGIN
		
			
			IF (rst_n = '0') THEN
			
				data_output <= '0';
				
			ELSIF(rising_edge(clk_in)) THEN
				
				--	Latch only processes data if enable is a 1
				IF(enable = '1') THEN
				
					--	If the synchronized input is a 1, set the output to 1, and hold
					IF(sync_input = '1') THEN
					
						data_output <= '1';
						
					--	Only clear output data when clear is a 1
					ELSIF(latch_clear = '1') THEN
					
						data_output <= '0';
						
					END IF;
				
				END IF;
				
			END IF;
	
	END PROCESS;


END ARCHITECTURE Latch_Design;