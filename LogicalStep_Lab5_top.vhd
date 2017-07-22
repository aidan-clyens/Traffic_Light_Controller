
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab5_top IS
   PORT
	(
   clkin_50		: in	std_logic;							-- The 50 MHz FPGA Clockinput
	rst_n			: in	std_logic;							-- The RESET input (ACTIVE LOW)
	pb				: in	std_logic_vector(3 downto 0); -- The push-button inputs (ACTIVE LOW)
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab5_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab5_top IS
	
---------------------------------------- Components ----------------------------------------------------
	
   component cycle_generator port (
          clkin      		: in  std_logic;
			 rst_n				: in  std_logic;
			 modulo 				: in  integer;	
			 strobe_out			: out	std_logic;
			 full_cycle_out	: out std_logic
  );
   end component;

   component segment7_mux port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
   );
   end component;
	
	component SevenSegmentLights port (
			hex	   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
			strobe5Hz		:	in	std_logic;
			strobe1Hz		:	in std_logic;
			night_mode		:	in std_logic;
			reduced_mode	: 	in std_logic;
			northsouth		:	out std_logic_vector(6 downto 0);	--	7-bit outputs to north-south light
			eastwest 		:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a east-west light	
	);		
	end component;
	
	component Lab5_Moore_SM port (
			Main_CLK, rst_n					:	in std_logic;								--	Clock and reset
			inputNS								:	in std_logic;								--	Latch input 1 & 2
			inputEW								:	in std_logic;
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
	end component;
	
	component basic_synchronizer port (
			clk_in		:	in std_logic;
			rst_n			:	in std_logic;
			data_input	:	in	std_logic;
			data_output	:	out std_logic
	);
	end component;
	
	component input_latch port (
			clk_in		:	in std_logic;
			rst_n			:	in std_logic;
			enable		:	in std_logic;
			sync_input	:	in	std_logic;
			latch_clear	:	in std_logic;
			data_output	:	out std_logic
	);
	end component;
	
	
---------------------------------------------- Signals -----------------------------------------------

	CONSTANT	SIM							:  boolean := FALSE;

	CONSTANT CNTR1_modulo				: 	integer := 24999999;    	-- modulo count for 1Hz cycle generator 1 with 50Mhz clocking input
   CONSTANT CNTR2_modulo				: 	integer := 4999999;    		-- modulo count for 5Hz cycle generator 2 with 50Mhz clocking input
   CONSTANT CNTR1_modulo_sim			: 	integer := 199;   			-- modulo count for cycle generator 1 during simulation
   CONSTANT CNTR2_modulo_sim			: 	integer :=  39;   			-- modulo count for cycle generator 2 during simulation
	
   SIGNAL CNTR1_modulo_value			: 	integer ;   					-- modulo count for cycle generator 1 
   SIGNAL CNTR2_modulo_value			: 	integer ;   					-- modulo count for cycle generator 2 

   SIGNAL clken1,clken2					:  STD_LOGIC; 						-- clock enables 1 & 2

	SIGNAL strobe1, strobe2				:  std_logic;						-- strobes 1 & 2 with each one being 50% Duty Cycle
		

	SIGNAL seg7_A, seg7_B				:  STD_LOGIC_VECTOR(6 downto 0); -- signals for inputs into seg7_mux.
	
	SIGNAL stateNumbers					:	std_logic_vector(3 downto 0);
	
	SIGNAL synchronized_input1			:	std_logic;
	SIGNAL synchronized_input2			:	std_logic;
	
	SIGNAL latch_output1					:	std_logic;
	SIGNAL latch_output2					:	std_logic;
	
	SIGNAL latch_clear1					:	std_logic;
	SIGNAL latch_clear2					:	std_logic;
	
	SIGNAL latch_enable1					:	std_logic;
	SIGNAL latch_enable2					:	std_logic;
	
	SIGNAL night_switch					:	std_logic;
	SIGNAL reduced_switch				:	std_logic;
	
	SIGNAL night_mode						:	std_logic;
	SIGNAL reduced_mode					:	std_logic;
	
--------------------------------------- Modulo selection -----------------------------------------------
BEGIN


	MODULO_1_SELECTION:	CnTR1_modulo_value <= CNTR1_modulo when SIM = FALSE else CNTR1_modulo_sim; 

	MODULO_2_SELECTION:	CNTR2_modulo_value <= CNTR2_modulo when SIM = FALSE else CNTR2_modulo_sim; 
							

-------------------------------------- Component hook up -----------------------------------------

	GEN1: 	cycle_generator 		port map(clkin_50, rst_n, CNTR1_modulo_value, strobe1, clken1);	

	GEN2: 	cycle_generator 		port map(clkin_50, rst_n, CNTR2_modulo_value, strobe2, clken2);	

	INST1:	segment7_mux 			port map(clkin_50, seg7_B, seg7_A, seg7_data, seg7_char2, seg7_char1);

	INST2:	SevenSegmentLights 	port map(stateNumbers, strobe2, strobe1, night_mode, reduced_mode, seg7_A, seg7_B);

	INST3:	Lab5_Moore_SM 			port map(clken1, rst_n, latch_output1, latch_output2, night_switch, reduced_switch, stateNumbers, latch_enable1, latch_enable2, latch_clear1, latch_clear2, night_mode, reduced_mode);
	
	INST4:	basic_synchronizer 	port map(clkin_50, rst_n, pb(0), synchronized_input1);
	
	INST5:	basic_synchronizer 	port map(clkin_50, rst_n, pb(1), synchronized_input2);
	
	INST6:	input_latch 			port map(clken2, rst_n, latch_enable1, synchronized_input1, latch_clear1, latch_output1); 
	
	INST7:	input_latch 			port map(clken2, rst_n, latch_enable2, synchronized_input2, latch_clear2, latch_output2);

	INST8:	basic_synchronizer 	port map(clkin_50, rst_n, sw(0), night_switch);
	
	INST9:	basic_synchronizer 	port map(clkin_50, rst_n, sw(1), reduced_switch);
	
-----------------------------------------------------------------------------------------------------
	

	leds(1 downto 0) <= strobe1 & strobe2;
	
	leds(5 downto 2) <= stateNumbers; 
	
	leds(6) <= night_mode OR reduced_mode;
	
	leds(7) <= latch_output1 OR latch_output2;
	

END SimpleCircuit;
