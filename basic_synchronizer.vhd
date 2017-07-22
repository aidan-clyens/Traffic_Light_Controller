library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity basic_synchronizer is port (
	clk_in		:	in std_logic;		--	Input clock signal
	rst_n			:	in std_logic;		--	Reset
	data_input	:	in	std_logic;		--	One-bit data input
	data_output	:	out std_logic		--	One-bit sycnhronized data output
);
end basic_synchronizer;


architecture synchronizer of basic_synchronizer is
	
	signal output1		:	std_logic;
	
	begin
	
	--	Uses two registers in series, with output1 passing from the first output to the second input
	
	--	Register 1
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
	
	--	Register 2
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
	
	

end architecture synchronizer;