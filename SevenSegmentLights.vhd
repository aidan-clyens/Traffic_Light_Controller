---------------------------------------------
-- Input Latch
-- Aidan Clyens
---------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-------------------------------------------------------------------------
-- 7-segment dISplay driver. It displays a 4-bit number on a 7-segment
-- This is created as an entity so that it can be reused many times easily

ENTITY SevenSegmentLights IS
  PORT (
    hex	   		    : in std_logic_vector(3 downto 0);   -- The 4 bit data to be dISplayed
	  strobe5Hz		  :	in std_logic;
	  strobe1Hz		  :	in std_logic;
	  night_mode		:	in std_logic;
	  reduced_mode	: in std_logic;
	  northsouth		:	out std_logic_vector(6 downto 0);	 --	7-bit outputs to north-south light
    eastwest 		  : out std_logic_vector(6 downto 0)   -- 7-bit outputs to a east-west light
  );
END SevenSegmentLights;

-----------------------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF SevenSegmentLights IS
--
-- The following statements convert a 4-bit input, called dataIn to a pattern of 7 bits
-- The segment turns on WHEN it IS '1' otherwISe '0'
--
BEGIN

------------------------ North-South Lights --------------------------------
	PROCESS (hex)
	BEGIN

	IF (reduced_mode = '1') THEN

		IF(strobe1Hz = '1') THEN		--	Flashing amber light, at 1Hz
			northsouth <= "1000000";
		ELSE
			northsouth <= "0000000";
		END IF;

	elsIF (night_mode = '1') THEN

		northsouth <= "0001000";		--	Green light

	ELSE

		CASE hex IS

			WHEN "0000" =>

				IF (strobe5Hz = '1') THEN		--	Flashing green light, at 5Hz
					northsouth <= "0001000";
				ELSE
					northsouth <= "0000000";
				END IF;

			WHEN "0001" =>

				IF (strobe5Hz = '1') THEN
					northsouth <= "0001000";
				ELSE
					northsouth <= "0000000";
				END IF;

			WHEN "0010" =>

				northsouth <= "0001000";		--	Green light

			WHEN "0011" =>

				northsouth <= "0001000";

			WHEN "0100" =>

				northsouth <= "0001000";

			WHEN "0101" =>

				northsouth <= "0001000";

			WHEN "0110" =>

				northsouth <= "1000000";		--	Amber light

			WHEN "0111" =>

				northsouth <= "1000000";

			WHEN "1000" =>

				northsouth <= "0000001";		--	Red light

			WHEN "1001" =>

				northsouth <= "0000001";

			WHEN "1010" =>

				northsouth <= "0000001";

			WHEN "1011" =>
				northsouth <= "0000001";

			WHEN "1100" =>
				northsouth <= "0000001";

			WHEN "1101" =>
				northsouth <= "0000001";

			WHEN "1110" =>
				northsouth <= "0000001";

			WHEN "1111" =>
				northsouth <= "0000001";

			WHEN others =>
				northsouth <= "0000000";

		END CASE;

	END IF;


	END PROCESS;


------------------------	East-West Lights ------------------------------
	PROCESS (hex)
	BEGIN

	IF (reduced_mode = '1') THEN

		IF(strobe1Hz = '1') THEN		--	Flashing red light, at 1Hz
			eastwest <= "0000001";
		ELSE
			eastwest <= "0000000";
		END IF;

	elsIF (night_mode = '1') THEN

		eastwest <= "0000001";			--	Red light

	ELSE

		CASE hex IS

			WHEN "0000" =>

				eastwest <= "0000001";	--	Red light

			WHEN "0001" =>

				eastwest <= "0000001";

			WHEN "0010" =>

				eastwest <= "0000001";

			WHEN "0011" =>

				eastwest <= "0000001";

			WHEN "0100" =>

				eastwest <= "0000001";

			WHEN "0101" =>

				eastwest <= "0000001";

			WHEN "0110" =>

				eastwest <= "0000001";

			WHEN "0111" =>

				eastwest <= "0000001";


			WHEN "1000" =>

				IF (strobe5Hz = '1') THEN	--	Flashing green light, at 5Hz
					eastwest <= "0001000";
				ELSE
					eastwest <= "0000000";
				END IF;

			WHEN "1001" =>

				IF (strobe5Hz = '1') THEN
					eastwest <= "0001000";
				ELSE
					eastwest <= "0000000";
				END IF;

			WHEN "1010" =>

				eastwest <= "0001000";		--	Green light

			WHEN "1011" =>
				eastwest <= "0001000";

			WHEN "1100" =>
				eastwest <= "0001000";

			WHEN "1101" =>
				eastwest <= "0001000";

			WHEN "1110" =>
				eastwest <= "1000000";		--	Amber Light

			WHEN "1111" =>
				eastwest <= "1000000";

			WHEN others =>
				eastwest <= "0000000";

		END CASE;

	END IF;

	END PROCESS;


END ARCHITECTURE Behavioral;
----------------------------------------------------------------------
