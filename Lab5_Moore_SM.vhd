library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab5_Moore_SM is port (
	Main_CLK, rst_n					:	in std_logic;								--	Clock and reset
	inputNS								:	in	std_logic;								--	Latch input 1 & 2
	inputEW								:	in	std_logic;
	night_sw								:	in std_logic;								--	Switch which activates night mode
	reduced_sw							:	in std_logic;								--	Switch which activates reduced system mode
	stateNumber							:	out std_logic_vector(3 downto 0);	--	Target hex number
	latch_enable1						:	out std_logic;
	latch_enable2						:	out std_logic;
	latch_clear1						:	out std_logic;								--	The input latchs will clear at the next clock cycle if latch_clear is 1
	latch_clear2						:	out std_logic;								--	The input latchs will clear at the next clock cycle if latch_clear is 1
	SM_night_mode						:	out std_logic;
	SM_reduced_mode					:	out std_logic

);
end Lab5_Moore_SM;

architecture MSM of Lab5_Moore_SM is
	
	type STATE_NAMES IS (H0, H1, H2, H3, H4, H5, H6, H7, H8, H9, HA, HB, HC, HD, HE, HF, NM, RSM);	--	States from 0 to 15 in hex
	
	signal current_state, next_state		:	STATE_NAMES;	--	Temporary buffer for current state
	
-----------------------------------------------------------------------------------------
	
begin
		Register_Section: Process (Main_CLK, rst_n, next_state)
		
		begin
			if (rst_n = '0') then		--	If reset is 0, current state is 0
			
				current_state <= H0;
				
			elsif (rising_edge(main_CLK)) then	--	On the rising edge of the clock pulse, set the current state to the next state
			
				current_state <= next_state;
				
			end if;
			
		end process;

-----------------------------------------------------------------------------------------

	Transition_Section: process (current_state)
		
	begin

	case current_state is
	
		when H0 =>
			if(inputEW = '1') then			--	Test for pb(1) during state H0 to H4
				next_state <= H6;
			else
				next_state <= H1;
			end if;

		when H1 =>
			if(inputEW = '1') then
				next_state <= H6;
			else
				next_state <= H2;
			end if;
			
		when H2 =>
			if(inputEW = '1') then
				next_state <= H6;
			else
				next_state <= H3;
			end if;
			
		when H3 =>
			if(inputEW = '1') then
				next_state <= H6;
			else
				next_state <= H4;
			end if;
			
		when H4 =>
			if(inputEW = '1') then
				next_state <= H6;
			else
				next_state <= H5;
			end if;
			
		when H5 =>
			next_state <= H6;
			
		when H6 =>
			next_state <= H7;
			
		when H7 =>								--	Test for reduced state mode and night mode inputs
			if (reduced_sw = '0') then
				next_state <= RSM;
			elsif (night_sw = '0') then
				next_state <= NM;
			else 
				next_state <= H8;
			end if;
			
		when H8 =>	
			if(inputNS = '1') then			--	Test for pb(0) from state H8 to HC
				next_state <= HE;
			else
				next_state <= H9;
			end if;
			
		when H9 =>
			if(inputNS = '1') then
				next_state <= HE;
			else
				next_state <= HA;
			end if;
			
		when HA =>
			if(inputNS = '1') then
				next_state <= HE;
			else
				next_state <= HB;
			end if;

		when HB =>
			if(inputNS = '1') then
				next_state <= HE;
			else
				next_state <= HC;
			end if;
			
		when HC =>
			if(inputNS = '1') then
				next_state <= HE;
			else
				next_state <= HD;
			end if;
		
		when HD =>
			next_state <= HE;
			
		when HE =>
			next_state <= HF;
			
		when HF =>								--	Test for reduced state mode and night mode inputs
			if (reduced_sw = '0') then	
				next_state <= RSM;
			elsif (night_sw = '0') then
				next_state <= NM;
			else 
				next_state <= H0;
			end if;
			
		when NM =>
			if(reduced_sw = '0') then
				next_state <= RSM;
			elsif(night_sw = '1') then
				next_state <= H6;
			else
				next_state <= NM;
			end if;
			
		when RSM =>
			if(reduced_sw = '1') then
				next_state <= H6;
			else
				next_state <= RSM;
			end if;
			
	end case;
		
	end process;
	
		   
		
--------------------------------------------------------------------------------------------
		
	Decoder_Section: process (current_state)
	begin
	
	--	State numbers, 0 - 15
	case current_state is
			
			when H0 =>
				stateNumber <= "0000";
				
			when H1 =>
				stateNumber <= "0001";
				
			when H2 =>
				stateNumber <= "0010";
				
			when H3 =>
				stateNumber <= "0011";
				
			when H4 =>
				stateNumber <= "0100";
			
			when H5 =>
				stateNumber <= "0101";
				
			when H6 =>
				stateNumber <= "0110";
				
			when H7 =>
				stateNumber <= "0111";
				
			when H8 =>
				stateNumber <= "1000";
				
			when H9 =>
				stateNumber <= "1001";
				
			when HA =>
				stateNumber <= "1010";
				
			when HB =>
				stateNumber <= "1011";
				
			when HC =>
				stateNumber <= "1100";
				
			when HD =>
				stateNumber <= "1101";
				
			when HE =>
				stateNumber <= "1110";
				
			when HF =>
				stateNumber <= "1111";
				
			when others =>
				stateNumber <= "0000";

		end case;
		
		--	NS enable
		case current_state is
			when H8 =>
				latch_enable1 <= '1';
			when H9 =>
				latch_enable1 <= '1';
			when HA =>
				latch_enable1 <= '1';
			when HB =>
				latch_enable1 <= '1';
			when HC =>
				latch_enable1 <= '1';
			when HF =>
				latch_enable1 <= '1';
			when others =>
				latch_enable1 <= '0';
		
		end case;
		
		--	EW enable
		case current_state is
			when H0 =>
				latch_enable2 <= '1';
			when H1 =>
				latch_enable2 <= '1';
			when H2 =>
				latch_enable2 <= '1';
			when H3 =>
				latch_enable2 <= '1';
			when H4 =>
				latch_enable2 <= '1';
			when H7 =>
				latch_enable2 <= '1';
			when others =>
				latch_enable2 <= '0';
		
		end case;
		
		--	NS clear
		case current_state is
			when HF =>
				latch_clear1 <= '1';
			when others =>
				latch_clear1 <= '0';
		
		end case;
		
		--	EW clear
		case current_state is
			when H7 =>
				latch_clear2 <= '1';
			when others =>
				latch_clear2 <= '0';
		
		end case;
		
		-- Night mode
		case current_state is
			when NM =>
				SM_night_mode <= '1';
			
			when others =>
				SM_night_mode <= '0';
				
		end case;
		
		-- Reduced system mode
		case current_state is
			when RSM =>
				SM_reduced_mode <= '1';
			
			when others =>
				SM_reduced_mode <= '0';
				
		end case;
		
	end process;

	
end MSM;