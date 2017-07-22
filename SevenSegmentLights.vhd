library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------
-- 7-segment display driver. It displays a 4-bit number on a 7-segment
-- This is created as an entity so that it can be reused many times easily
--

entity SevenSegmentLights is port (
   
   hex	   		:  in std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
	
	strobe5Hz		:	in	std_logic;
	
	strobe1Hz		:	in std_logic;
	
	night_mode		:	in std_logic;
	
	reduced_mode	: 	in std_logic;
	
	northsouth		:	out std_logic_vector(6 downto 0);	--	7-bit outputs to north-south light
	   
   eastwest 		:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a east-west light
); 
end SevenSegmentLights;

architecture Behavioral of SevenSegmentLights is

-- 
-- The following statements convert a 4-bit input, called dataIn to a pattern of 7 bits
-- The segment turns on when it is '1' otherwise '0'
--
begin

------------------------ North-South Lights --------------------------------
	process (hex)
	begin
	
	if (reduced_mode = '1') then
	
		if(strobe1Hz = '1') then		--	Flashing amber light, at 1Hz
			northsouth <= "1000000";	
		else
			northsouth <= "0000000";
		end if;
		
	elsif (night_mode = '1') then
		
		northsouth <= "0001000";		--	Green light
	
	else
	
		case hex is
		
			when "0000" =>
				
				if (strobe5Hz = '1') then		--	Flashing green light, at 5Hz
					northsouth <= "0001000";	
				else
					northsouth <= "0000000";
				end if;
				
			when "0001" =>
			
				if (strobe5Hz = '1') then
					northsouth <= "0001000";
				else
					northsouth <= "0000000";
				end if;
			
			when "0010" =>
			
				northsouth <= "0001000";		--	Green light
			
			when "0011" =>
			
				northsouth <= "0001000";
			
			when "0100" =>
			
				northsouth <= "0001000";
			
			when "0101" =>
			
				northsouth <= "0001000";
				
			when "0110" =>
			
				northsouth <= "1000000";		--	Amber light
			
			when "0111" =>
			
				northsouth <= "1000000";
			
			when "1000" =>
			
				northsouth <= "0000001";		--	Red light
			
			when "1001" =>
			
				northsouth <= "0000001";
			
			when "1010" =>
			
				northsouth <= "0000001";
			
			when "1011" =>
				northsouth <= "0000001";
			
			when "1100" =>
				northsouth <= "0000001";
			
			when "1101" =>
				northsouth <= "0000001";
			
			when "1110" =>
				northsouth <= "0000001";
			
			when "1111" =>
				northsouth <= "0000001";
				
			when others =>
				northsouth <= "0000000";
				
		end case;
		
	end if;
	
	
	end process;
	
	
------------------------	East-West Lights ------------------------------
	process (hex)
	begin
	
	if (reduced_mode = '1') then
	
		if(strobe1Hz = '1') then		--	Flashing red light, at 1Hz
			eastwest <= "0000001";	
		else
			eastwest <= "0000000";
		end if;
		
	elsif (night_mode = '1') then
		
		eastwest <= "0000001";			--	Red light
	
	else
	
		case hex is
		
			when "0000" =>
				
				eastwest <= "0000001";	--	Red light
				
			when "0001" =>
			
				eastwest <= "0000001";
			
			when "0010" =>
			
				eastwest <= "0000001";
			
			when "0011" =>
			
				eastwest <= "0000001";
			
			when "0100" =>
			
				eastwest <= "0000001";
			
			when "0101" =>
			
				eastwest <= "0000001";
				
			when "0110" =>
			
				eastwest <= "0000001";
			
			when "0111" =>
			
				eastwest <= "0000001";
			
			
			when "1000" =>
			
				if (strobe5Hz = '1') then	--	Flashing green light, at 5Hz
					eastwest <= "0001000";
				else
					eastwest <= "0000000";
				end if;	
				
			when "1001" =>
			
				if (strobe5Hz = '1') then
					eastwest <= "0001000";
				else
					eastwest <= "0000000";
				end if;		
				
			when "1010" =>
			
				eastwest <= "0001000";		--	Green light
			
			when "1011" =>
				eastwest <= "0001000";
			
			when "1100" =>
				eastwest <= "0001000";
			
			when "1101" =>
				eastwest <= "0001000";
			
			when "1110" =>
				eastwest <= "1000000";		--	Amber Light
			
			when "1111" =>
				eastwest <= "1000000";
				
			when others =>
				eastwest <= "0000000";
				
		end case;
	
	end if;	
	
	end process;

										 										 
end architecture Behavioral; 
----------------------------------------------------------------------
