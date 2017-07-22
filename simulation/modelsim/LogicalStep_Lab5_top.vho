-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/15/2017 18:00:32"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab5_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab5_top;

-- Design Ports Information
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab5_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \GEN2|full_cycle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GEN1|full_cycle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GEN2|Add0~0_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[0]~20_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \GEN2|Add0~1\ : std_logic;
SIGNAL \GEN2|Add0~2_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[1]~19_combout\ : std_logic;
SIGNAL \GEN1|Add0~1_cout\ : std_logic;
SIGNAL \GEN1|Add0~3_cout\ : std_logic;
SIGNAL \GEN1|Add0~4_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[2]~29_combout\ : std_logic;
SIGNAL \GEN1|Add0~5\ : std_logic;
SIGNAL \GEN1|Add0~6_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[3]~28_combout\ : std_logic;
SIGNAL \GEN1|Add0~7\ : std_logic;
SIGNAL \GEN1|Add0~8_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[4]~27_combout\ : std_logic;
SIGNAL \GEN1|Add0~9\ : std_logic;
SIGNAL \GEN1|Add0~10_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[5]~26_combout\ : std_logic;
SIGNAL \GEN1|Equal0~7_combout\ : std_logic;
SIGNAL \GEN1|Add0~11\ : std_logic;
SIGNAL \GEN1|Add0~12_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~14_combout\ : std_logic;
SIGNAL \GEN1|Add0~13\ : std_logic;
SIGNAL \GEN1|Add0~14_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~13_combout\ : std_logic;
SIGNAL \GEN1|Add0~15\ : std_logic;
SIGNAL \GEN1|Add0~16_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~12_combout\ : std_logic;
SIGNAL \GEN1|Add0~17\ : std_logic;
SIGNAL \GEN1|Add0~18_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~11_combout\ : std_logic;
SIGNAL \GEN1|Equal0~6_combout\ : std_logic;
SIGNAL \GEN1|Add0~19\ : std_logic;
SIGNAL \GEN1|Add0~20_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~10_combout\ : std_logic;
SIGNAL \GEN1|Add0~21\ : std_logic;
SIGNAL \GEN1|Add0~22_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[11]~25_combout\ : std_logic;
SIGNAL \GEN1|Add0~23\ : std_logic;
SIGNAL \GEN1|Add0~24_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[12]~24_combout\ : std_logic;
SIGNAL \GEN1|Add0~25\ : std_logic;
SIGNAL \GEN1|Add0~26_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[13]~23_combout\ : std_logic;
SIGNAL \GEN1|Add0~27\ : std_logic;
SIGNAL \GEN1|Add0~28_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[14]~22_combout\ : std_logic;
SIGNAL \GEN1|Add0~29\ : std_logic;
SIGNAL \GEN1|Add0~30_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~9_combout\ : std_logic;
SIGNAL \GEN1|Add0~31\ : std_logic;
SIGNAL \GEN1|Add0~32_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[16]~21_combout\ : std_logic;
SIGNAL \GEN1|Add0~33\ : std_logic;
SIGNAL \GEN1|Add0~34_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~8_combout\ : std_logic;
SIGNAL \GEN1|Equal0~4_combout\ : std_logic;
SIGNAL \GEN1|Equal0~5_combout\ : std_logic;
SIGNAL \GEN1|Equal0~8_combout\ : std_logic;
SIGNAL \GEN1|Add0~35\ : std_logic;
SIGNAL \GEN1|Add0~36_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[18]~20_combout\ : std_logic;
SIGNAL \GEN1|Add0~37\ : std_logic;
SIGNAL \GEN1|Add0~38_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[19]~19_combout\ : std_logic;
SIGNAL \GEN1|Add0~39\ : std_logic;
SIGNAL \GEN1|Add0~40_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[20]~18_combout\ : std_logic;
SIGNAL \GEN1|Add0~41\ : std_logic;
SIGNAL \GEN1|Add0~42_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[21]~17_combout\ : std_logic;
SIGNAL \GEN1|Equal0~3_combout\ : std_logic;
SIGNAL \GEN1|Add0~43\ : std_logic;
SIGNAL \GEN1|Add0~44_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[22]~16_combout\ : std_logic;
SIGNAL \GEN1|Add0~45\ : std_logic;
SIGNAL \GEN1|Add0~46_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~7_combout\ : std_logic;
SIGNAL \GEN1|Add0~47\ : std_logic;
SIGNAL \GEN1|Add0~48_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[24]~15_combout\ : std_logic;
SIGNAL \GEN1|Add0~49\ : std_logic;
SIGNAL \GEN1|Add0~50_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~6_combout\ : std_logic;
SIGNAL \GEN1|Add0~51\ : std_logic;
SIGNAL \GEN1|Add0~52_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~3_combout\ : std_logic;
SIGNAL \GEN1|Add0~53\ : std_logic;
SIGNAL \GEN1|Add0~54_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~2_combout\ : std_logic;
SIGNAL \GEN1|Add0~55\ : std_logic;
SIGNAL \GEN1|Add0~56_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~1_combout\ : std_logic;
SIGNAL \GEN1|Add0~57\ : std_logic;
SIGNAL \GEN1|Add0~58_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~0_combout\ : std_logic;
SIGNAL \GEN1|Equal0~0_combout\ : std_logic;
SIGNAL \GEN2|Equal0~0_combout\ : std_logic;
SIGNAL \GEN1|Add0~59\ : std_logic;
SIGNAL \GEN1|Add0~60_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~5_combout\ : std_logic;
SIGNAL \GEN1|Add0~61\ : std_logic;
SIGNAL \GEN1|Add0~62_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~4_combout\ : std_logic;
SIGNAL \GEN1|Equal0~1_combout\ : std_logic;
SIGNAL \GEN1|Equal0~2_combout\ : std_logic;
SIGNAL \GEN1|Equal0~9_combout\ : std_logic;
SIGNAL \GEN1|terminal_count~q\ : std_logic;
SIGNAL \GEN1|strobe~0_combout\ : std_logic;
SIGNAL \GEN1|strobe~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \INST1|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \GEN1|CLKEN_GEN~0_combout\ : std_logic;
SIGNAL \GEN1|full_cycle~feeder_combout\ : std_logic;
SIGNAL \GEN1|full_cycle~q\ : std_logic;
SIGNAL \GEN1|full_cycle~clkctrl_outclk\ : std_logic;
SIGNAL \GEN2|Add0~3\ : std_logic;
SIGNAL \GEN2|Add0~4_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[2]~31_combout\ : std_logic;
SIGNAL \GEN2|Add0~5\ : std_logic;
SIGNAL \GEN2|Add0~6_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[3]~30_combout\ : std_logic;
SIGNAL \GEN2|Add0~7\ : std_logic;
SIGNAL \GEN2|Add0~8_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[4]~29_combout\ : std_logic;
SIGNAL \GEN2|Add0~9\ : std_logic;
SIGNAL \GEN2|Add0~10_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[5]~28_combout\ : std_logic;
SIGNAL \GEN2|Add0~11\ : std_logic;
SIGNAL \GEN2|Add0~12_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~18_combout\ : std_logic;
SIGNAL \GEN2|Add0~13\ : std_logic;
SIGNAL \GEN2|Add0~14_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~17_combout\ : std_logic;
SIGNAL \GEN2|Add0~15\ : std_logic;
SIGNAL \GEN2|Add0~16_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[8]~27_combout\ : std_logic;
SIGNAL \GEN2|Add0~17\ : std_logic;
SIGNAL \GEN2|Add0~18_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[9]~26_combout\ : std_logic;
SIGNAL \GEN2|Add0~19\ : std_logic;
SIGNAL \GEN2|Add0~20_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~16_combout\ : std_logic;
SIGNAL \GEN2|Add0~21\ : std_logic;
SIGNAL \GEN2|Add0~22_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[11]~25_combout\ : std_logic;
SIGNAL \GEN2|Add0~23\ : std_logic;
SIGNAL \GEN2|Add0~24_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~15_combout\ : std_logic;
SIGNAL \GEN2|Add0~25\ : std_logic;
SIGNAL \GEN2|Add0~26_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~14_combout\ : std_logic;
SIGNAL \GEN2|Add0~27\ : std_logic;
SIGNAL \GEN2|Add0~28_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[14]~24_combout\ : std_logic;
SIGNAL \GEN2|Add0~29\ : std_logic;
SIGNAL \GEN2|Add0~30_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~13_combout\ : std_logic;
SIGNAL \GEN2|Add0~31\ : std_logic;
SIGNAL \GEN2|Add0~32_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~12_combout\ : std_logic;
SIGNAL \GEN2|Add0~33\ : std_logic;
SIGNAL \GEN2|Add0~34_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~11_combout\ : std_logic;
SIGNAL \GEN2|Add0~35\ : std_logic;
SIGNAL \GEN2|Add0~36_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[18]~23_combout\ : std_logic;
SIGNAL \GEN2|Add0~37\ : std_logic;
SIGNAL \GEN2|Add0~38_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[19]~22_combout\ : std_logic;
SIGNAL \GEN2|Add0~39\ : std_logic;
SIGNAL \GEN2|Add0~40_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~10_combout\ : std_logic;
SIGNAL \GEN2|Add0~41\ : std_logic;
SIGNAL \GEN2|Add0~42_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~9_combout\ : std_logic;
SIGNAL \GEN2|Equal0~4_combout\ : std_logic;
SIGNAL \GEN2|Add0~43\ : std_logic;
SIGNAL \GEN2|Add0~44_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[22]~21_combout\ : std_logic;
SIGNAL \GEN2|Add0~45\ : std_logic;
SIGNAL \GEN2|Add0~46_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~8_combout\ : std_logic;
SIGNAL \GEN2|Add0~47\ : std_logic;
SIGNAL \GEN2|Add0~48_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~7_combout\ : std_logic;
SIGNAL \GEN2|Add0~49\ : std_logic;
SIGNAL \GEN2|Add0~50_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~6_combout\ : std_logic;
SIGNAL \GEN2|Equal0~3_combout\ : std_logic;
SIGNAL \GEN2|Equal0~6_combout\ : std_logic;
SIGNAL \GEN2|Equal0~5_combout\ : std_logic;
SIGNAL \GEN2|Equal0~8_combout\ : std_logic;
SIGNAL \GEN2|Equal0~7_combout\ : std_logic;
SIGNAL \GEN2|Equal0~9_combout\ : std_logic;
SIGNAL \GEN2|Add0~51\ : std_logic;
SIGNAL \GEN2|Add0~52_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~3_combout\ : std_logic;
SIGNAL \GEN2|Add0~53\ : std_logic;
SIGNAL \GEN2|Add0~54_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~2_combout\ : std_logic;
SIGNAL \GEN2|Add0~55\ : std_logic;
SIGNAL \GEN2|Add0~56_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~1_combout\ : std_logic;
SIGNAL \GEN2|Add0~57\ : std_logic;
SIGNAL \GEN2|Add0~58_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~0_combout\ : std_logic;
SIGNAL \GEN2|Equal0~1_combout\ : std_logic;
SIGNAL \GEN2|Add0~59\ : std_logic;
SIGNAL \GEN2|Add0~60_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~5_combout\ : std_logic;
SIGNAL \GEN2|Add0~61\ : std_logic;
SIGNAL \GEN2|Add0~62_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~4_combout\ : std_logic;
SIGNAL \GEN2|Equal0~2_combout\ : std_logic;
SIGNAL \GEN2|Equal0~10_combout\ : std_logic;
SIGNAL \GEN2|terminal_count~q\ : std_logic;
SIGNAL \GEN2|strobe~0_combout\ : std_logic;
SIGNAL \GEN2|strobe~q\ : std_logic;
SIGNAL \GEN2|CLKEN_GEN~0_combout\ : std_logic;
SIGNAL \GEN2|full_cycle~feeder_combout\ : std_logic;
SIGNAL \GEN2|full_cycle~q\ : std_logic;
SIGNAL \GEN2|full_cycle~clkctrl_outclk\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \INST9|output1~0_combout\ : std_logic;
SIGNAL \INST9|output1~q\ : std_logic;
SIGNAL \INST9|data_output~feeder_combout\ : std_logic;
SIGNAL \INST9|data_output~q\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \INST8|output1~0_combout\ : std_logic;
SIGNAL \INST8|output1~q\ : std_logic;
SIGNAL \INST8|data_output~q\ : std_logic;
SIGNAL \INST3|Selector2~1_combout\ : std_logic;
SIGNAL \INST3|current_state.NM~q\ : std_logic;
SIGNAL \INST3|Selector0~0_combout\ : std_logic;
SIGNAL \INST3|next_state.H0~0_combout\ : std_logic;
SIGNAL \INST3|current_state.H0~q\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \INST5|output1~0_combout\ : std_logic;
SIGNAL \INST5|output1~q\ : std_logic;
SIGNAL \INST5|data_output~feeder_combout\ : std_logic;
SIGNAL \INST5|data_output~q\ : std_logic;
SIGNAL \INST7|data_output~0_combout\ : std_logic;
SIGNAL \INST7|data_output~q\ : std_logic;
SIGNAL \INST3|next_state.H1~0_combout\ : std_logic;
SIGNAL \INST3|current_state.H1~q\ : std_logic;
SIGNAL \INST3|next_state.H2~0_combout\ : std_logic;
SIGNAL \INST3|current_state.H2~q\ : std_logic;
SIGNAL \INST3|next_state.H3~0_combout\ : std_logic;
SIGNAL \INST3|current_state.H3~q\ : std_logic;
SIGNAL \INST3|Selector0~1_combout\ : std_logic;
SIGNAL \INST3|next_state.H4~0_combout\ : std_logic;
SIGNAL \INST3|current_state.H4~q\ : std_logic;
SIGNAL \INST3|Selector0~2_combout\ : std_logic;
SIGNAL \INST3|next_state.H5~0_combout\ : std_logic;
SIGNAL \INST3|current_state.H5~q\ : std_logic;
SIGNAL \INST3|Selector0~3_combout\ : std_logic;
SIGNAL \INST3|current_state.H6~q\ : std_logic;
SIGNAL \INST3|current_state.H7~q\ : std_logic;
SIGNAL \INST3|next_state.H8~0_combout\ : std_logic;
SIGNAL \INST3|current_state.H8~q\ : std_logic;
SIGNAL \INST3|next_state.H9~0_combout\ : std_logic;
SIGNAL \INST3|current_state.H9~q\ : std_logic;
SIGNAL \INST3|next_state.HA~0_combout\ : std_logic;
SIGNAL \INST3|current_state.HA~q\ : std_logic;
SIGNAL \INST3|next_state.HB~0_combout\ : std_logic;
SIGNAL \INST3|current_state.HB~q\ : std_logic;
SIGNAL \INST3|WideOr6~1_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \INST4|output1~0_combout\ : std_logic;
SIGNAL \INST4|output1~q\ : std_logic;
SIGNAL \INST4|data_output~feeder_combout\ : std_logic;
SIGNAL \INST4|data_output~q\ : std_logic;
SIGNAL \INST6|data_output~0_combout\ : std_logic;
SIGNAL \INST6|data_output~1_combout\ : std_logic;
SIGNAL \INST6|data_output~q\ : std_logic;
SIGNAL \INST3|next_state.HC~0_combout\ : std_logic;
SIGNAL \INST3|current_state.HC~q\ : std_logic;
SIGNAL \INST3|next_state.HD~0_combout\ : std_logic;
SIGNAL \INST3|current_state.HD~q\ : std_logic;
SIGNAL \INST3|Selector1~0_combout\ : std_logic;
SIGNAL \INST3|current_state.HE~q\ : std_logic;
SIGNAL \INST3|current_state.HF~feeder_combout\ : std_logic;
SIGNAL \INST3|current_state.HF~q\ : std_logic;
SIGNAL \INST3|Selector2~0_combout\ : std_logic;
SIGNAL \INST3|Selector3~0_combout\ : std_logic;
SIGNAL \INST3|current_state.RSM~q\ : std_logic;
SIGNAL \INST3|WideOr6~0_combout\ : std_logic;
SIGNAL \INST1|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \INST3|WideOr7~0_combout\ : std_logic;
SIGNAL \INST3|WideOr7~combout\ : std_logic;
SIGNAL \INST3|WideOr8~1_combout\ : std_logic;
SIGNAL \INST3|WideOr8~0_combout\ : std_logic;
SIGNAL \INST1|DOUT_TEMP[6]~3_combout\ : std_logic;
SIGNAL \INST1|DOUT_TEMP[6]~4_combout\ : std_logic;
SIGNAL \INST3|WideOr9~0_combout\ : std_logic;
SIGNAL \INST3|WideOr9~combout\ : std_logic;
SIGNAL \INST3|WideOr8~combout\ : std_logic;
SIGNAL \INST3|WideOr6~combout\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \INST1|DOUT[0]~5_combout\ : std_logic;
SIGNAL \INST1|DOUT[3]~2_combout\ : std_logic;
SIGNAL \INST1|DOUT[3]~3_combout\ : std_logic;
SIGNAL \GEN2|bin_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \GEN1|bin_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INST1|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \INST3|ALT_INV_WideOr7~combout\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\GEN2|full_cycle~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GEN2|full_cycle~q\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\GEN1|full_cycle~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GEN1|full_cycle~q\);
\INST1|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \INST1|clk_proc:COUNT[10]~q\;
\INST3|ALT_INV_WideOr7~combout\ <= NOT \INST3|WideOr7~combout\;

-- Location: LCCOMB_X11_Y23_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST1|DOUT_TEMP[6]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN2|strobe~q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN1|strobe~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|WideOr9~combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|WideOr8~combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|WideOr6~combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~0_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~1_combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|DOUT[0]~5_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y17_N0
\GEN2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~0_combout\ = \GEN2|bin_counter\(0) $ (GND)
-- \GEN2|Add0~1\ = CARRY(!\GEN2|bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(0),
	datad => VCC,
	combout => \GEN2|Add0~0_combout\,
	cout => \GEN2|Add0~1\);

-- Location: LCCOMB_X13_Y14_N2
\GEN2|bin_counter[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[0]~20_combout\ = !\GEN2|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~0_combout\,
	combout => \GEN2|bin_counter[0]~20_combout\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X13_Y14_N3
\GEN2|bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[0]~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(0));

-- Location: LCCOMB_X16_Y17_N2
\GEN2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~2_combout\ = (\GEN2|bin_counter\(1) & (!\GEN2|Add0~1\)) # (!\GEN2|bin_counter\(1) & (\GEN2|Add0~1\ & VCC))
-- \GEN2|Add0~3\ = CARRY((\GEN2|bin_counter\(1) & !\GEN2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(1),
	datad => VCC,
	cin => \GEN2|Add0~1\,
	combout => \GEN2|Add0~2_combout\,
	cout => \GEN2|Add0~3\);

-- Location: LCCOMB_X13_Y14_N16
\GEN2|bin_counter[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[1]~19_combout\ = !\GEN2|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~2_combout\,
	combout => \GEN2|bin_counter[1]~19_combout\);

-- Location: FF_X13_Y14_N17
\GEN2|bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[1]~19_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(1));

-- Location: LCCOMB_X12_Y13_N0
\GEN1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~1_cout\ = CARRY(!\GEN2|bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(0),
	datad => VCC,
	cout => \GEN1|Add0~1_cout\);

-- Location: LCCOMB_X12_Y13_N2
\GEN1|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~3_cout\ = CARRY((\GEN2|bin_counter\(1) & !\GEN1|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(1),
	datad => VCC,
	cin => \GEN1|Add0~1_cout\,
	cout => \GEN1|Add0~3_cout\);

-- Location: LCCOMB_X12_Y13_N4
\GEN1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~4_combout\ = (\GEN1|bin_counter\(2) & (\GEN1|Add0~3_cout\ $ (GND))) # (!\GEN1|bin_counter\(2) & ((GND) # (!\GEN1|Add0~3_cout\)))
-- \GEN1|Add0~5\ = CARRY((!\GEN1|Add0~3_cout\) # (!\GEN1|bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(2),
	datad => VCC,
	cin => \GEN1|Add0~3_cout\,
	combout => \GEN1|Add0~4_combout\,
	cout => \GEN1|Add0~5\);

-- Location: LCCOMB_X13_Y13_N16
\GEN1|bin_counter[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[2]~29_combout\ = !\GEN1|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~4_combout\,
	combout => \GEN1|bin_counter[2]~29_combout\);

-- Location: FF_X13_Y13_N17
\GEN1|bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[2]~29_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(2));

-- Location: LCCOMB_X12_Y13_N6
\GEN1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~6_combout\ = (\GEN1|bin_counter\(3) & (!\GEN1|Add0~5\)) # (!\GEN1|bin_counter\(3) & (\GEN1|Add0~5\ & VCC))
-- \GEN1|Add0~7\ = CARRY((\GEN1|bin_counter\(3) & !\GEN1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(3),
	datad => VCC,
	cin => \GEN1|Add0~5\,
	combout => \GEN1|Add0~6_combout\,
	cout => \GEN1|Add0~7\);

-- Location: LCCOMB_X12_Y11_N4
\GEN1|bin_counter[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[3]~28_combout\ = !\GEN1|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~6_combout\,
	combout => \GEN1|bin_counter[3]~28_combout\);

-- Location: FF_X12_Y11_N5
\GEN1|bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[3]~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(3));

-- Location: LCCOMB_X12_Y13_N8
\GEN1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~8_combout\ = (\GEN1|bin_counter\(4) & (\GEN1|Add0~7\ $ (GND))) # (!\GEN1|bin_counter\(4) & ((GND) # (!\GEN1|Add0~7\)))
-- \GEN1|Add0~9\ = CARRY((!\GEN1|Add0~7\) # (!\GEN1|bin_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(4),
	datad => VCC,
	cin => \GEN1|Add0~7\,
	combout => \GEN1|Add0~8_combout\,
	cout => \GEN1|Add0~9\);

-- Location: LCCOMB_X12_Y11_N2
\GEN1|bin_counter[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[4]~27_combout\ = !\GEN1|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~8_combout\,
	combout => \GEN1|bin_counter[4]~27_combout\);

-- Location: FF_X12_Y11_N3
\GEN1|bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[4]~27_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(4));

-- Location: LCCOMB_X12_Y13_N10
\GEN1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~10_combout\ = (\GEN1|bin_counter\(5) & (!\GEN1|Add0~9\)) # (!\GEN1|bin_counter\(5) & (\GEN1|Add0~9\ & VCC))
-- \GEN1|Add0~11\ = CARRY((\GEN1|bin_counter\(5) & !\GEN1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(5),
	datad => VCC,
	cin => \GEN1|Add0~9\,
	combout => \GEN1|Add0~10_combout\,
	cout => \GEN1|Add0~11\);

-- Location: LCCOMB_X12_Y11_N0
\GEN1|bin_counter[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[5]~26_combout\ = !\GEN1|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~10_combout\,
	combout => \GEN1|bin_counter[5]~26_combout\);

-- Location: FF_X12_Y11_N1
\GEN1|bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[5]~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(5));

-- Location: LCCOMB_X12_Y11_N6
\GEN1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~7_combout\ = (\GEN1|bin_counter\(2) & (\GEN1|bin_counter\(4) & (\GEN1|bin_counter\(3) & \GEN1|bin_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(2),
	datab => \GEN1|bin_counter\(4),
	datac => \GEN1|bin_counter\(3),
	datad => \GEN1|bin_counter\(5),
	combout => \GEN1|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y13_N12
\GEN1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~12_combout\ = (\GEN1|bin_counter\(6) & ((GND) # (!\GEN1|Add0~11\))) # (!\GEN1|bin_counter\(6) & (\GEN1|Add0~11\ $ (GND)))
-- \GEN1|Add0~13\ = CARRY((\GEN1|bin_counter\(6)) # (!\GEN1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(6),
	datad => VCC,
	cin => \GEN1|Add0~11\,
	combout => \GEN1|Add0~12_combout\,
	cout => \GEN1|Add0~13\);

-- Location: LCCOMB_X15_Y13_N18
\GEN1|bin_counter~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~14_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~12_combout\,
	combout => \GEN1|bin_counter~14_combout\);

-- Location: FF_X15_Y13_N19
\GEN1|bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(6));

-- Location: LCCOMB_X12_Y13_N14
\GEN1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~14_combout\ = (\GEN1|bin_counter\(7) & (\GEN1|Add0~13\ & VCC)) # (!\GEN1|bin_counter\(7) & (!\GEN1|Add0~13\))
-- \GEN1|Add0~15\ = CARRY((!\GEN1|bin_counter\(7) & !\GEN1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(7),
	datad => VCC,
	cin => \GEN1|Add0~13\,
	combout => \GEN1|Add0~14_combout\,
	cout => \GEN1|Add0~15\);

-- Location: LCCOMB_X15_Y13_N16
\GEN1|bin_counter~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~13_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~14_combout\,
	combout => \GEN1|bin_counter~13_combout\);

-- Location: FF_X15_Y13_N17
\GEN1|bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~13_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(7));

-- Location: LCCOMB_X12_Y13_N16
\GEN1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~16_combout\ = (\GEN1|bin_counter\(8) & ((GND) # (!\GEN1|Add0~15\))) # (!\GEN1|bin_counter\(8) & (\GEN1|Add0~15\ $ (GND)))
-- \GEN1|Add0~17\ = CARRY((\GEN1|bin_counter\(8)) # (!\GEN1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(8),
	datad => VCC,
	cin => \GEN1|Add0~15\,
	combout => \GEN1|Add0~16_combout\,
	cout => \GEN1|Add0~17\);

-- Location: LCCOMB_X15_Y13_N14
\GEN1|bin_counter~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~12_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~16_combout\,
	combout => \GEN1|bin_counter~12_combout\);

-- Location: FF_X15_Y13_N15
\GEN1|bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(8));

-- Location: LCCOMB_X12_Y13_N18
\GEN1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~18_combout\ = (\GEN1|bin_counter\(9) & (\GEN1|Add0~17\ & VCC)) # (!\GEN1|bin_counter\(9) & (!\GEN1|Add0~17\))
-- \GEN1|Add0~19\ = CARRY((!\GEN1|bin_counter\(9) & !\GEN1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(9),
	datad => VCC,
	cin => \GEN1|Add0~17\,
	combout => \GEN1|Add0~18_combout\,
	cout => \GEN1|Add0~19\);

-- Location: LCCOMB_X15_Y13_N28
\GEN1|bin_counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~11_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~18_combout\,
	combout => \GEN1|bin_counter~11_combout\);

-- Location: FF_X15_Y13_N29
\GEN1|bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(9));

-- Location: LCCOMB_X15_Y13_N20
\GEN1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~6_combout\ = (!\GEN1|bin_counter\(7) & (!\GEN1|bin_counter\(9) & (!\GEN1|bin_counter\(8) & !\GEN1|bin_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(7),
	datab => \GEN1|bin_counter\(9),
	datac => \GEN1|bin_counter\(8),
	datad => \GEN1|bin_counter\(6),
	combout => \GEN1|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y13_N20
\GEN1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~20_combout\ = (\GEN1|bin_counter\(10) & ((GND) # (!\GEN1|Add0~19\))) # (!\GEN1|bin_counter\(10) & (\GEN1|Add0~19\ $ (GND)))
-- \GEN1|Add0~21\ = CARRY((\GEN1|bin_counter\(10)) # (!\GEN1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(10),
	datad => VCC,
	cin => \GEN1|Add0~19\,
	combout => \GEN1|Add0~20_combout\,
	cout => \GEN1|Add0~21\);

-- Location: LCCOMB_X15_Y13_N0
\GEN1|bin_counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~10_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~20_combout\,
	combout => \GEN1|bin_counter~10_combout\);

-- Location: FF_X15_Y13_N1
\GEN1|bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(10));

-- Location: LCCOMB_X12_Y13_N22
\GEN1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~22_combout\ = (\GEN1|bin_counter\(11) & (!\GEN1|Add0~21\)) # (!\GEN1|bin_counter\(11) & (\GEN1|Add0~21\ & VCC))
-- \GEN1|Add0~23\ = CARRY((\GEN1|bin_counter\(11) & !\GEN1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(11),
	datad => VCC,
	cin => \GEN1|Add0~21\,
	combout => \GEN1|Add0~22_combout\,
	cout => \GEN1|Add0~23\);

-- Location: LCCOMB_X15_Y13_N22
\GEN1|bin_counter[11]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[11]~25_combout\ = !\GEN1|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~22_combout\,
	combout => \GEN1|bin_counter[11]~25_combout\);

-- Location: FF_X15_Y13_N23
\GEN1|bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[11]~25_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(11));

-- Location: LCCOMB_X12_Y13_N24
\GEN1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~24_combout\ = (\GEN1|bin_counter\(12) & (\GEN1|Add0~23\ $ (GND))) # (!\GEN1|bin_counter\(12) & ((GND) # (!\GEN1|Add0~23\)))
-- \GEN1|Add0~25\ = CARRY((!\GEN1|Add0~23\) # (!\GEN1|bin_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(12),
	datad => VCC,
	cin => \GEN1|Add0~23\,
	combout => \GEN1|Add0~24_combout\,
	cout => \GEN1|Add0~25\);

-- Location: LCCOMB_X15_Y13_N4
\GEN1|bin_counter[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[12]~24_combout\ = !\GEN1|Add0~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~24_combout\,
	combout => \GEN1|bin_counter[12]~24_combout\);

-- Location: FF_X15_Y13_N5
\GEN1|bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[12]~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(12));

-- Location: LCCOMB_X12_Y13_N26
\GEN1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~26_combout\ = (\GEN1|bin_counter\(13) & (!\GEN1|Add0~25\)) # (!\GEN1|bin_counter\(13) & (\GEN1|Add0~25\ & VCC))
-- \GEN1|Add0~27\ = CARRY((\GEN1|bin_counter\(13) & !\GEN1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(13),
	datad => VCC,
	cin => \GEN1|Add0~25\,
	combout => \GEN1|Add0~26_combout\,
	cout => \GEN1|Add0~27\);

-- Location: LCCOMB_X15_Y13_N10
\GEN1|bin_counter[13]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[13]~23_combout\ = !\GEN1|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~26_combout\,
	combout => \GEN1|bin_counter[13]~23_combout\);

-- Location: FF_X15_Y13_N11
\GEN1|bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[13]~23_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(13));

-- Location: LCCOMB_X12_Y13_N28
\GEN1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~28_combout\ = (\GEN1|bin_counter\(14) & (\GEN1|Add0~27\ $ (GND))) # (!\GEN1|bin_counter\(14) & ((GND) # (!\GEN1|Add0~27\)))
-- \GEN1|Add0~29\ = CARRY((!\GEN1|Add0~27\) # (!\GEN1|bin_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(14),
	datad => VCC,
	cin => \GEN1|Add0~27\,
	combout => \GEN1|Add0~28_combout\,
	cout => \GEN1|Add0~29\);

-- Location: LCCOMB_X15_Y13_N26
\GEN1|bin_counter[14]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[14]~22_combout\ = !\GEN1|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~28_combout\,
	combout => \GEN1|bin_counter[14]~22_combout\);

-- Location: FF_X15_Y13_N27
\GEN1|bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[14]~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(14));

-- Location: LCCOMB_X12_Y13_N30
\GEN1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~30_combout\ = (\GEN1|bin_counter\(15) & (\GEN1|Add0~29\ & VCC)) # (!\GEN1|bin_counter\(15) & (!\GEN1|Add0~29\))
-- \GEN1|Add0~31\ = CARRY((!\GEN1|bin_counter\(15) & !\GEN1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(15),
	datad => VCC,
	cin => \GEN1|Add0~29\,
	combout => \GEN1|Add0~30_combout\,
	cout => \GEN1|Add0~31\);

-- Location: LCCOMB_X15_Y13_N6
\GEN1|bin_counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~9_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~30_combout\,
	combout => \GEN1|bin_counter~9_combout\);

-- Location: FF_X15_Y13_N7
\GEN1|bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(15));

-- Location: LCCOMB_X12_Y12_N0
\GEN1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~32_combout\ = (\GEN1|bin_counter\(16) & (\GEN1|Add0~31\ $ (GND))) # (!\GEN1|bin_counter\(16) & ((GND) # (!\GEN1|Add0~31\)))
-- \GEN1|Add0~33\ = CARRY((!\GEN1|Add0~31\) # (!\GEN1|bin_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(16),
	datad => VCC,
	cin => \GEN1|Add0~31\,
	combout => \GEN1|Add0~32_combout\,
	cout => \GEN1|Add0~33\);

-- Location: LCCOMB_X15_Y13_N24
\GEN1|bin_counter[16]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[16]~21_combout\ = !\GEN1|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~32_combout\,
	combout => \GEN1|bin_counter[16]~21_combout\);

-- Location: FF_X15_Y13_N25
\GEN1|bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[16]~21_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(16));

-- Location: LCCOMB_X12_Y12_N2
\GEN1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~34_combout\ = (\GEN1|bin_counter\(17) & (\GEN1|Add0~33\ & VCC)) # (!\GEN1|bin_counter\(17) & (!\GEN1|Add0~33\))
-- \GEN1|Add0~35\ = CARRY((!\GEN1|bin_counter\(17) & !\GEN1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(17),
	datad => VCC,
	cin => \GEN1|Add0~33\,
	combout => \GEN1|Add0~34_combout\,
	cout => \GEN1|Add0~35\);

-- Location: LCCOMB_X15_Y13_N12
\GEN1|bin_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~8_combout\ = (\GEN1|Add0~34_combout\ & !\GEN1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Add0~34_combout\,
	datac => \GEN1|Equal0~9_combout\,
	combout => \GEN1|bin_counter~8_combout\);

-- Location: FF_X15_Y13_N13
\GEN1|bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(17));

-- Location: LCCOMB_X15_Y13_N8
\GEN1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~4_combout\ = (!\GEN1|bin_counter\(17) & (\GEN1|bin_counter\(16) & (\GEN1|bin_counter\(14) & !\GEN1|bin_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(17),
	datab => \GEN1|bin_counter\(16),
	datac => \GEN1|bin_counter\(14),
	datad => \GEN1|bin_counter\(15),
	combout => \GEN1|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y13_N2
\GEN1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~5_combout\ = (\GEN1|bin_counter\(13) & (\GEN1|bin_counter\(12) & (\GEN1|bin_counter\(11) & !\GEN1|bin_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(13),
	datab => \GEN1|bin_counter\(12),
	datac => \GEN1|bin_counter\(11),
	datad => \GEN1|bin_counter\(10),
	combout => \GEN1|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y13_N30
\GEN1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~8_combout\ = (\GEN1|Equal0~7_combout\ & (\GEN1|Equal0~6_combout\ & (\GEN1|Equal0~4_combout\ & \GEN1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~7_combout\,
	datab => \GEN1|Equal0~6_combout\,
	datac => \GEN1|Equal0~4_combout\,
	datad => \GEN1|Equal0~5_combout\,
	combout => \GEN1|Equal0~8_combout\);

-- Location: LCCOMB_X12_Y12_N4
\GEN1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~36_combout\ = (\GEN1|bin_counter\(18) & (\GEN1|Add0~35\ $ (GND))) # (!\GEN1|bin_counter\(18) & ((GND) # (!\GEN1|Add0~35\)))
-- \GEN1|Add0~37\ = CARRY((!\GEN1|Add0~35\) # (!\GEN1|bin_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(18),
	datad => VCC,
	cin => \GEN1|Add0~35\,
	combout => \GEN1|Add0~36_combout\,
	cout => \GEN1|Add0~37\);

-- Location: LCCOMB_X14_Y12_N26
\GEN1|bin_counter[18]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[18]~20_combout\ = !\GEN1|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~36_combout\,
	combout => \GEN1|bin_counter[18]~20_combout\);

-- Location: FF_X14_Y12_N27
\GEN1|bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[18]~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(18));

-- Location: LCCOMB_X12_Y12_N6
\GEN1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~38_combout\ = (\GEN1|bin_counter\(19) & (!\GEN1|Add0~37\)) # (!\GEN1|bin_counter\(19) & (\GEN1|Add0~37\ & VCC))
-- \GEN1|Add0~39\ = CARRY((\GEN1|bin_counter\(19) & !\GEN1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(19),
	datad => VCC,
	cin => \GEN1|Add0~37\,
	combout => \GEN1|Add0~38_combout\,
	cout => \GEN1|Add0~39\);

-- Location: LCCOMB_X13_Y12_N28
\GEN1|bin_counter[19]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[19]~19_combout\ = !\GEN1|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~38_combout\,
	combout => \GEN1|bin_counter[19]~19_combout\);

-- Location: FF_X13_Y12_N29
\GEN1|bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[19]~19_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(19));

-- Location: LCCOMB_X12_Y12_N8
\GEN1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~40_combout\ = (\GEN1|bin_counter\(20) & (\GEN1|Add0~39\ $ (GND))) # (!\GEN1|bin_counter\(20) & ((GND) # (!\GEN1|Add0~39\)))
-- \GEN1|Add0~41\ = CARRY((!\GEN1|Add0~39\) # (!\GEN1|bin_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(20),
	datad => VCC,
	cin => \GEN1|Add0~39\,
	combout => \GEN1|Add0~40_combout\,
	cout => \GEN1|Add0~41\);

-- Location: LCCOMB_X11_Y12_N18
\GEN1|bin_counter[20]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[20]~18_combout\ = !\GEN1|Add0~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~40_combout\,
	combout => \GEN1|bin_counter[20]~18_combout\);

-- Location: FF_X11_Y12_N19
\GEN1|bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[20]~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(20));

-- Location: LCCOMB_X12_Y12_N10
\GEN1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~42_combout\ = (\GEN1|bin_counter\(21) & (!\GEN1|Add0~41\)) # (!\GEN1|bin_counter\(21) & (\GEN1|Add0~41\ & VCC))
-- \GEN1|Add0~43\ = CARRY((\GEN1|bin_counter\(21) & !\GEN1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(21),
	datad => VCC,
	cin => \GEN1|Add0~41\,
	combout => \GEN1|Add0~42_combout\,
	cout => \GEN1|Add0~43\);

-- Location: LCCOMB_X13_Y12_N2
\GEN1|bin_counter[21]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[21]~17_combout\ = !\GEN1|Add0~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~42_combout\,
	combout => \GEN1|bin_counter[21]~17_combout\);

-- Location: FF_X13_Y12_N3
\GEN1|bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[21]~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(21));

-- Location: LCCOMB_X11_Y12_N28
\GEN1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~3_combout\ = (\GEN1|bin_counter\(18) & (\GEN1|bin_counter\(20) & (\GEN1|bin_counter\(21) & \GEN1|bin_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(18),
	datab => \GEN1|bin_counter\(20),
	datac => \GEN1|bin_counter\(21),
	datad => \GEN1|bin_counter\(19),
	combout => \GEN1|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y12_N12
\GEN1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~44_combout\ = (\GEN1|bin_counter\(22) & (\GEN1|Add0~43\ $ (GND))) # (!\GEN1|bin_counter\(22) & ((GND) # (!\GEN1|Add0~43\)))
-- \GEN1|Add0~45\ = CARRY((!\GEN1|Add0~43\) # (!\GEN1|bin_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(22),
	datad => VCC,
	cin => \GEN1|Add0~43\,
	combout => \GEN1|Add0~44_combout\,
	cout => \GEN1|Add0~45\);

-- Location: LCCOMB_X11_Y12_N2
\GEN1|bin_counter[22]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[22]~16_combout\ = !\GEN1|Add0~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~44_combout\,
	combout => \GEN1|bin_counter[22]~16_combout\);

-- Location: FF_X11_Y12_N3
\GEN1|bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[22]~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(22));

-- Location: LCCOMB_X12_Y12_N14
\GEN1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~46_combout\ = (\GEN1|bin_counter\(23) & (\GEN1|Add0~45\ & VCC)) # (!\GEN1|bin_counter\(23) & (!\GEN1|Add0~45\))
-- \GEN1|Add0~47\ = CARRY((!\GEN1|bin_counter\(23) & !\GEN1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(23),
	datad => VCC,
	cin => \GEN1|Add0~45\,
	combout => \GEN1|Add0~46_combout\,
	cout => \GEN1|Add0~47\);

-- Location: LCCOMB_X11_Y12_N14
\GEN1|bin_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~7_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~9_combout\,
	datac => \GEN1|Add0~46_combout\,
	combout => \GEN1|bin_counter~7_combout\);

-- Location: FF_X11_Y12_N15
\GEN1|bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(23));

-- Location: LCCOMB_X12_Y12_N16
\GEN1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~48_combout\ = (\GEN1|bin_counter\(24) & (\GEN1|Add0~47\ $ (GND))) # (!\GEN1|bin_counter\(24) & ((GND) # (!\GEN1|Add0~47\)))
-- \GEN1|Add0~49\ = CARRY((!\GEN1|Add0~47\) # (!\GEN1|bin_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(24),
	datad => VCC,
	cin => \GEN1|Add0~47\,
	combout => \GEN1|Add0~48_combout\,
	cout => \GEN1|Add0~49\);

-- Location: LCCOMB_X13_Y12_N24
\GEN1|bin_counter[24]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[24]~15_combout\ = !\GEN1|Add0~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~48_combout\,
	combout => \GEN1|bin_counter[24]~15_combout\);

-- Location: FF_X13_Y12_N25
\GEN1|bin_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[24]~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(24));

-- Location: LCCOMB_X12_Y12_N18
\GEN1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~50_combout\ = (\GEN1|bin_counter\(25) & (\GEN1|Add0~49\ & VCC)) # (!\GEN1|bin_counter\(25) & (!\GEN1|Add0~49\))
-- \GEN1|Add0~51\ = CARRY((!\GEN1|bin_counter\(25) & !\GEN1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(25),
	datad => VCC,
	cin => \GEN1|Add0~49\,
	combout => \GEN1|Add0~50_combout\,
	cout => \GEN1|Add0~51\);

-- Location: LCCOMB_X11_Y12_N4
\GEN1|bin_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~6_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~50_combout\,
	combout => \GEN1|bin_counter~6_combout\);

-- Location: FF_X11_Y12_N5
\GEN1|bin_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(25));

-- Location: LCCOMB_X12_Y12_N20
\GEN1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~52_combout\ = (\GEN1|bin_counter\(26) & ((GND) # (!\GEN1|Add0~51\))) # (!\GEN1|bin_counter\(26) & (\GEN1|Add0~51\ $ (GND)))
-- \GEN1|Add0~53\ = CARRY((\GEN1|bin_counter\(26)) # (!\GEN1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(26),
	datad => VCC,
	cin => \GEN1|Add0~51\,
	combout => \GEN1|Add0~52_combout\,
	cout => \GEN1|Add0~53\);

-- Location: LCCOMB_X11_Y12_N16
\GEN1|bin_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~3_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~9_combout\,
	datac => \GEN1|Add0~52_combout\,
	combout => \GEN1|bin_counter~3_combout\);

-- Location: FF_X11_Y12_N17
\GEN1|bin_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(26));

-- Location: LCCOMB_X12_Y12_N22
\GEN1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~54_combout\ = (\GEN1|bin_counter\(27) & (\GEN1|Add0~53\ & VCC)) # (!\GEN1|bin_counter\(27) & (!\GEN1|Add0~53\))
-- \GEN1|Add0~55\ = CARRY((!\GEN1|bin_counter\(27) & !\GEN1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(27),
	datad => VCC,
	cin => \GEN1|Add0~53\,
	combout => \GEN1|Add0~54_combout\,
	cout => \GEN1|Add0~55\);

-- Location: LCCOMB_X11_Y12_N6
\GEN1|bin_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~2_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~54_combout\,
	combout => \GEN1|bin_counter~2_combout\);

-- Location: FF_X11_Y12_N7
\GEN1|bin_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(27));

-- Location: LCCOMB_X12_Y12_N24
\GEN1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~56_combout\ = (\GEN1|bin_counter\(28) & ((GND) # (!\GEN1|Add0~55\))) # (!\GEN1|bin_counter\(28) & (\GEN1|Add0~55\ $ (GND)))
-- \GEN1|Add0~57\ = CARRY((\GEN1|bin_counter\(28)) # (!\GEN1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(28),
	datad => VCC,
	cin => \GEN1|Add0~55\,
	combout => \GEN1|Add0~56_combout\,
	cout => \GEN1|Add0~57\);

-- Location: LCCOMB_X11_Y12_N20
\GEN1|bin_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~1_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~56_combout\,
	combout => \GEN1|bin_counter~1_combout\);

-- Location: FF_X11_Y12_N21
\GEN1|bin_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(28));

-- Location: LCCOMB_X12_Y12_N26
\GEN1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~58_combout\ = (\GEN1|bin_counter\(29) & (\GEN1|Add0~57\ & VCC)) # (!\GEN1|bin_counter\(29) & (!\GEN1|Add0~57\))
-- \GEN1|Add0~59\ = CARRY((!\GEN1|bin_counter\(29) & !\GEN1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(29),
	datad => VCC,
	cin => \GEN1|Add0~57\,
	combout => \GEN1|Add0~58_combout\,
	cout => \GEN1|Add0~59\);

-- Location: LCCOMB_X11_Y12_N26
\GEN1|bin_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~0_combout\ = (\GEN1|Add0~58_combout\ & !\GEN1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Add0~58_combout\,
	datac => \GEN1|Equal0~9_combout\,
	combout => \GEN1|bin_counter~0_combout\);

-- Location: FF_X11_Y12_N27
\GEN1|bin_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(29));

-- Location: LCCOMB_X11_Y12_N10
\GEN1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~0_combout\ = (!\GEN1|bin_counter\(27) & (!\GEN1|bin_counter\(26) & (!\GEN1|bin_counter\(29) & !\GEN1|bin_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(27),
	datab => \GEN1|bin_counter\(26),
	datac => \GEN1|bin_counter\(29),
	datad => \GEN1|bin_counter\(28),
	combout => \GEN1|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y14_N12
\GEN2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~0_combout\ = (\GEN2|bin_counter\(1) & \GEN2|bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(1),
	datad => \GEN2|bin_counter\(0),
	combout => \GEN2|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y12_N28
\GEN1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~60_combout\ = (\GEN1|bin_counter\(30) & ((GND) # (!\GEN1|Add0~59\))) # (!\GEN1|bin_counter\(30) & (\GEN1|Add0~59\ $ (GND)))
-- \GEN1|Add0~61\ = CARRY((\GEN1|bin_counter\(30)) # (!\GEN1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(30),
	datad => VCC,
	cin => \GEN1|Add0~59\,
	combout => \GEN1|Add0~60_combout\,
	cout => \GEN1|Add0~61\);

-- Location: LCCOMB_X11_Y12_N22
\GEN1|bin_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~5_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Add0~60_combout\,
	combout => \GEN1|bin_counter~5_combout\);

-- Location: FF_X11_Y12_N23
\GEN1|bin_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(30));

-- Location: LCCOMB_X12_Y12_N30
\GEN1|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~62_combout\ = \GEN1|Add0~61\ $ (!\GEN1|bin_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|bin_counter\(31),
	cin => \GEN1|Add0~61\,
	combout => \GEN1|Add0~62_combout\);

-- Location: LCCOMB_X11_Y12_N12
\GEN1|bin_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~4_combout\ = (!\GEN1|Equal0~9_combout\ & \GEN1|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~9_combout\,
	datac => \GEN1|Add0~62_combout\,
	combout => \GEN1|bin_counter~4_combout\);

-- Location: FF_X11_Y12_N13
\GEN1|bin_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(31));

-- Location: LCCOMB_X11_Y12_N8
\GEN1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~1_combout\ = (\GEN1|Equal0~0_combout\ & (\GEN2|Equal0~0_combout\ & (!\GEN1|bin_counter\(30) & !\GEN1|bin_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~0_combout\,
	datab => \GEN2|Equal0~0_combout\,
	datac => \GEN1|bin_counter\(30),
	datad => \GEN1|bin_counter\(31),
	combout => \GEN1|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y12_N24
\GEN1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~2_combout\ = (\GEN1|bin_counter\(24) & (!\GEN1|bin_counter\(25) & (!\GEN1|bin_counter\(23) & \GEN1|bin_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(24),
	datab => \GEN1|bin_counter\(25),
	datac => \GEN1|bin_counter\(23),
	datad => \GEN1|bin_counter\(22),
	combout => \GEN1|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y12_N30
\GEN1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~9_combout\ = (\GEN1|Equal0~8_combout\ & (\GEN1|Equal0~3_combout\ & (\GEN1|Equal0~1_combout\ & \GEN1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~8_combout\,
	datab => \GEN1|Equal0~3_combout\,
	datac => \GEN1|Equal0~1_combout\,
	datad => \GEN1|Equal0~2_combout\,
	combout => \GEN1|Equal0~9_combout\);

-- Location: FF_X11_Y12_N1
\GEN1|terminal_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|Equal0~9_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|terminal_count~q\);

-- Location: LCCOMB_X18_Y13_N10
\GEN1|strobe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|strobe~0_combout\ = \GEN1|strobe~q\ $ (\GEN1|terminal_count~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|strobe~q\,
	datad => \GEN1|terminal_count~q\,
	combout => \GEN1|strobe~0_combout\);

-- Location: FF_X18_Y13_N11
\GEN1|strobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|strobe~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|strobe~q\);

-- Location: LCCOMB_X16_Y13_N0
\INST1|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[0]~0_combout\ = !\INST1|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1|clk_proc:COUNT[0]~q\,
	combout => \INST1|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X16_Y13_N1
\INST1|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X16_Y13_N6
\INST1|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[1]~1_combout\ = (\INST1|clk_proc:COUNT[1]~q\ & (\INST1|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\INST1|clk_proc:COUNT[1]~q\ & (\INST1|clk_proc:COUNT[0]~q\ & VCC))
-- \INST1|clk_proc:COUNT[1]~2\ = CARRY((\INST1|clk_proc:COUNT[1]~q\ & \INST1|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|clk_proc:COUNT[1]~q\,
	datab => \INST1|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \INST1|clk_proc:COUNT[1]~1_combout\,
	cout => \INST1|clk_proc:COUNT[1]~2\);

-- Location: FF_X16_Y13_N7
\INST1|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X16_Y13_N8
\INST1|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[2]~1_combout\ = (\INST1|clk_proc:COUNT[2]~q\ & (!\INST1|clk_proc:COUNT[1]~2\)) # (!\INST1|clk_proc:COUNT[2]~q\ & ((\INST1|clk_proc:COUNT[1]~2\) # (GND)))
-- \INST1|clk_proc:COUNT[2]~2\ = CARRY((!\INST1|clk_proc:COUNT[1]~2\) # (!\INST1|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \INST1|clk_proc:COUNT[1]~2\,
	combout => \INST1|clk_proc:COUNT[2]~1_combout\,
	cout => \INST1|clk_proc:COUNT[2]~2\);

-- Location: FF_X16_Y13_N9
\INST1|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X16_Y13_N10
\INST1|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[3]~1_combout\ = (\INST1|clk_proc:COUNT[3]~q\ & (\INST1|clk_proc:COUNT[2]~2\ $ (GND))) # (!\INST1|clk_proc:COUNT[3]~q\ & (!\INST1|clk_proc:COUNT[2]~2\ & VCC))
-- \INST1|clk_proc:COUNT[3]~2\ = CARRY((\INST1|clk_proc:COUNT[3]~q\ & !\INST1|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \INST1|clk_proc:COUNT[2]~2\,
	combout => \INST1|clk_proc:COUNT[3]~1_combout\,
	cout => \INST1|clk_proc:COUNT[3]~2\);

-- Location: FF_X16_Y13_N11
\INST1|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X16_Y13_N12
\INST1|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[4]~1_combout\ = (\INST1|clk_proc:COUNT[4]~q\ & (!\INST1|clk_proc:COUNT[3]~2\)) # (!\INST1|clk_proc:COUNT[4]~q\ & ((\INST1|clk_proc:COUNT[3]~2\) # (GND)))
-- \INST1|clk_proc:COUNT[4]~2\ = CARRY((!\INST1|clk_proc:COUNT[3]~2\) # (!\INST1|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \INST1|clk_proc:COUNT[3]~2\,
	combout => \INST1|clk_proc:COUNT[4]~1_combout\,
	cout => \INST1|clk_proc:COUNT[4]~2\);

-- Location: FF_X16_Y13_N13
\INST1|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X16_Y13_N14
\INST1|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[5]~1_combout\ = (\INST1|clk_proc:COUNT[5]~q\ & (\INST1|clk_proc:COUNT[4]~2\ $ (GND))) # (!\INST1|clk_proc:COUNT[5]~q\ & (!\INST1|clk_proc:COUNT[4]~2\ & VCC))
-- \INST1|clk_proc:COUNT[5]~2\ = CARRY((\INST1|clk_proc:COUNT[5]~q\ & !\INST1|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \INST1|clk_proc:COUNT[4]~2\,
	combout => \INST1|clk_proc:COUNT[5]~1_combout\,
	cout => \INST1|clk_proc:COUNT[5]~2\);

-- Location: FF_X16_Y13_N15
\INST1|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X16_Y13_N16
\INST1|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[6]~1_combout\ = (\INST1|clk_proc:COUNT[6]~q\ & (!\INST1|clk_proc:COUNT[5]~2\)) # (!\INST1|clk_proc:COUNT[6]~q\ & ((\INST1|clk_proc:COUNT[5]~2\) # (GND)))
-- \INST1|clk_proc:COUNT[6]~2\ = CARRY((!\INST1|clk_proc:COUNT[5]~2\) # (!\INST1|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \INST1|clk_proc:COUNT[5]~2\,
	combout => \INST1|clk_proc:COUNT[6]~1_combout\,
	cout => \INST1|clk_proc:COUNT[6]~2\);

-- Location: FF_X16_Y13_N17
\INST1|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X16_Y13_N18
\INST1|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[7]~1_combout\ = (\INST1|clk_proc:COUNT[7]~q\ & (\INST1|clk_proc:COUNT[6]~2\ $ (GND))) # (!\INST1|clk_proc:COUNT[7]~q\ & (!\INST1|clk_proc:COUNT[6]~2\ & VCC))
-- \INST1|clk_proc:COUNT[7]~2\ = CARRY((\INST1|clk_proc:COUNT[7]~q\ & !\INST1|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \INST1|clk_proc:COUNT[6]~2\,
	combout => \INST1|clk_proc:COUNT[7]~1_combout\,
	cout => \INST1|clk_proc:COUNT[7]~2\);

-- Location: FF_X16_Y13_N19
\INST1|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X16_Y13_N20
\INST1|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[8]~1_combout\ = (\INST1|clk_proc:COUNT[8]~q\ & (!\INST1|clk_proc:COUNT[7]~2\)) # (!\INST1|clk_proc:COUNT[8]~q\ & ((\INST1|clk_proc:COUNT[7]~2\) # (GND)))
-- \INST1|clk_proc:COUNT[8]~2\ = CARRY((!\INST1|clk_proc:COUNT[7]~2\) # (!\INST1|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \INST1|clk_proc:COUNT[7]~2\,
	combout => \INST1|clk_proc:COUNT[8]~1_combout\,
	cout => \INST1|clk_proc:COUNT[8]~2\);

-- Location: FF_X16_Y13_N21
\INST1|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X16_Y13_N22
\INST1|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[9]~1_combout\ = (\INST1|clk_proc:COUNT[9]~q\ & (\INST1|clk_proc:COUNT[8]~2\ $ (GND))) # (!\INST1|clk_proc:COUNT[9]~q\ & (!\INST1|clk_proc:COUNT[8]~2\ & VCC))
-- \INST1|clk_proc:COUNT[9]~2\ = CARRY((\INST1|clk_proc:COUNT[9]~q\ & !\INST1|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \INST1|clk_proc:COUNT[8]~2\,
	combout => \INST1|clk_proc:COUNT[9]~1_combout\,
	cout => \INST1|clk_proc:COUNT[9]~2\);

-- Location: FF_X16_Y13_N23
\INST1|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X16_Y13_N24
\INST1|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|clk_proc:COUNT[10]~1_combout\ = \INST1|clk_proc:COUNT[9]~2\ $ (\INST1|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \INST1|clk_proc:COUNT[10]~q\,
	cin => \INST1|clk_proc:COUNT[9]~2\,
	combout => \INST1|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X16_Y13_N25
\INST1|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST1|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X1_Y7_N0
\GEN1|CLKEN_GEN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|CLKEN_GEN~0_combout\ = (!\GEN1|strobe~q\ & \GEN1|terminal_count~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|strobe~q\,
	datad => \GEN1|terminal_count~q\,
	combout => \GEN1|CLKEN_GEN~0_combout\);

-- Location: LCCOMB_X1_Y9_N28
\GEN1|full_cycle~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|full_cycle~feeder_combout\ = \GEN1|CLKEN_GEN~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|CLKEN_GEN~0_combout\,
	combout => \GEN1|full_cycle~feeder_combout\);

-- Location: FF_X1_Y9_N29
\GEN1|full_cycle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \GEN1|full_cycle~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|full_cycle~q\);

-- Location: CLKCTRL_G0
\GEN1|full_cycle~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GEN1|full_cycle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GEN1|full_cycle~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y17_N4
\GEN2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~4_combout\ = (\GEN2|bin_counter\(2) & (\GEN2|Add0~3\ $ (GND))) # (!\GEN2|bin_counter\(2) & ((GND) # (!\GEN2|Add0~3\)))
-- \GEN2|Add0~5\ = CARRY((!\GEN2|Add0~3\) # (!\GEN2|bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(2),
	datad => VCC,
	cin => \GEN2|Add0~3\,
	combout => \GEN2|Add0~4_combout\,
	cout => \GEN2|Add0~5\);

-- Location: LCCOMB_X13_Y14_N14
\GEN2|bin_counter[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[2]~31_combout\ = !\GEN2|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~4_combout\,
	combout => \GEN2|bin_counter[2]~31_combout\);

-- Location: FF_X13_Y14_N15
\GEN2|bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[2]~31_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(2));

-- Location: LCCOMB_X16_Y17_N6
\GEN2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~6_combout\ = (\GEN2|bin_counter\(3) & (!\GEN2|Add0~5\)) # (!\GEN2|bin_counter\(3) & (\GEN2|Add0~5\ & VCC))
-- \GEN2|Add0~7\ = CARRY((\GEN2|bin_counter\(3) & !\GEN2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(3),
	datad => VCC,
	cin => \GEN2|Add0~5\,
	combout => \GEN2|Add0~6_combout\,
	cout => \GEN2|Add0~7\);

-- Location: LCCOMB_X13_Y14_N28
\GEN2|bin_counter[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[3]~30_combout\ = !\GEN2|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~6_combout\,
	combout => \GEN2|bin_counter[3]~30_combout\);

-- Location: FF_X13_Y14_N29
\GEN2|bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[3]~30_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(3));

-- Location: LCCOMB_X16_Y17_N8
\GEN2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~8_combout\ = (\GEN2|bin_counter\(4) & (\GEN2|Add0~7\ $ (GND))) # (!\GEN2|bin_counter\(4) & ((GND) # (!\GEN2|Add0~7\)))
-- \GEN2|Add0~9\ = CARRY((!\GEN2|Add0~7\) # (!\GEN2|bin_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(4),
	datad => VCC,
	cin => \GEN2|Add0~7\,
	combout => \GEN2|Add0~8_combout\,
	cout => \GEN2|Add0~9\);

-- Location: LCCOMB_X13_Y14_N10
\GEN2|bin_counter[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[4]~29_combout\ = !\GEN2|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~8_combout\,
	combout => \GEN2|bin_counter[4]~29_combout\);

-- Location: FF_X13_Y14_N11
\GEN2|bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[4]~29_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(4));

-- Location: LCCOMB_X16_Y17_N10
\GEN2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~10_combout\ = (\GEN2|bin_counter\(5) & (!\GEN2|Add0~9\)) # (!\GEN2|bin_counter\(5) & (\GEN2|Add0~9\ & VCC))
-- \GEN2|Add0~11\ = CARRY((\GEN2|bin_counter\(5) & !\GEN2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(5),
	datad => VCC,
	cin => \GEN2|Add0~9\,
	combout => \GEN2|Add0~10_combout\,
	cout => \GEN2|Add0~11\);

-- Location: LCCOMB_X13_Y14_N0
\GEN2|bin_counter[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[5]~28_combout\ = !\GEN2|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~10_combout\,
	combout => \GEN2|bin_counter[5]~28_combout\);

-- Location: FF_X13_Y14_N1
\GEN2|bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[5]~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(5));

-- Location: LCCOMB_X16_Y17_N12
\GEN2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~12_combout\ = (\GEN2|bin_counter\(6) & ((GND) # (!\GEN2|Add0~11\))) # (!\GEN2|bin_counter\(6) & (\GEN2|Add0~11\ $ (GND)))
-- \GEN2|Add0~13\ = CARRY((\GEN2|bin_counter\(6)) # (!\GEN2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(6),
	datad => VCC,
	cin => \GEN2|Add0~11\,
	combout => \GEN2|Add0~12_combout\,
	cout => \GEN2|Add0~13\);

-- Location: LCCOMB_X15_Y20_N24
\GEN2|bin_counter~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~18_combout\ = (\GEN2|Add0~12_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~12_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~18_combout\);

-- Location: FF_X15_Y20_N25
\GEN2|bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(6));

-- Location: LCCOMB_X16_Y17_N14
\GEN2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~14_combout\ = (\GEN2|bin_counter\(7) & (\GEN2|Add0~13\ & VCC)) # (!\GEN2|bin_counter\(7) & (!\GEN2|Add0~13\))
-- \GEN2|Add0~15\ = CARRY((!\GEN2|bin_counter\(7) & !\GEN2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(7),
	datad => VCC,
	cin => \GEN2|Add0~13\,
	combout => \GEN2|Add0~14_combout\,
	cout => \GEN2|Add0~15\);

-- Location: LCCOMB_X16_Y20_N12
\GEN2|bin_counter~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~17_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~14_combout\,
	combout => \GEN2|bin_counter~17_combout\);

-- Location: FF_X16_Y20_N13
\GEN2|bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(7));

-- Location: LCCOMB_X16_Y17_N16
\GEN2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~16_combout\ = (\GEN2|bin_counter\(8) & (\GEN2|Add0~15\ $ (GND))) # (!\GEN2|bin_counter\(8) & ((GND) # (!\GEN2|Add0~15\)))
-- \GEN2|Add0~17\ = CARRY((!\GEN2|Add0~15\) # (!\GEN2|bin_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(8),
	datad => VCC,
	cin => \GEN2|Add0~15\,
	combout => \GEN2|Add0~16_combout\,
	cout => \GEN2|Add0~17\);

-- Location: LCCOMB_X15_Y20_N14
\GEN2|bin_counter[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[8]~27_combout\ = !\GEN2|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~16_combout\,
	combout => \GEN2|bin_counter[8]~27_combout\);

-- Location: FF_X15_Y20_N15
\GEN2|bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[8]~27_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(8));

-- Location: LCCOMB_X16_Y17_N18
\GEN2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~18_combout\ = (\GEN2|bin_counter\(9) & (!\GEN2|Add0~17\)) # (!\GEN2|bin_counter\(9) & (\GEN2|Add0~17\ & VCC))
-- \GEN2|Add0~19\ = CARRY((\GEN2|bin_counter\(9) & !\GEN2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(9),
	datad => VCC,
	cin => \GEN2|Add0~17\,
	combout => \GEN2|Add0~18_combout\,
	cout => \GEN2|Add0~19\);

-- Location: LCCOMB_X15_Y20_N28
\GEN2|bin_counter[9]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[9]~26_combout\ = !\GEN2|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~18_combout\,
	combout => \GEN2|bin_counter[9]~26_combout\);

-- Location: FF_X15_Y20_N29
\GEN2|bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[9]~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(9));

-- Location: LCCOMB_X16_Y17_N20
\GEN2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~20_combout\ = (\GEN2|bin_counter\(10) & ((GND) # (!\GEN2|Add0~19\))) # (!\GEN2|bin_counter\(10) & (\GEN2|Add0~19\ $ (GND)))
-- \GEN2|Add0~21\ = CARRY((\GEN2|bin_counter\(10)) # (!\GEN2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(10),
	datad => VCC,
	cin => \GEN2|Add0~19\,
	combout => \GEN2|Add0~20_combout\,
	cout => \GEN2|Add0~21\);

-- Location: LCCOMB_X15_Y20_N8
\GEN2|bin_counter~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~16_combout\ = (\GEN2|Add0~20_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~20_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~16_combout\);

-- Location: FF_X15_Y20_N9
\GEN2|bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(10));

-- Location: LCCOMB_X16_Y17_N22
\GEN2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~22_combout\ = (\GEN2|bin_counter\(11) & (!\GEN2|Add0~21\)) # (!\GEN2|bin_counter\(11) & (\GEN2|Add0~21\ & VCC))
-- \GEN2|Add0~23\ = CARRY((\GEN2|bin_counter\(11) & !\GEN2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(11),
	datad => VCC,
	cin => \GEN2|Add0~21\,
	combout => \GEN2|Add0~22_combout\,
	cout => \GEN2|Add0~23\);

-- Location: LCCOMB_X15_Y20_N2
\GEN2|bin_counter[11]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[11]~25_combout\ = !\GEN2|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~22_combout\,
	combout => \GEN2|bin_counter[11]~25_combout\);

-- Location: FF_X15_Y20_N3
\GEN2|bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[11]~25_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(11));

-- Location: LCCOMB_X16_Y17_N24
\GEN2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~24_combout\ = (\GEN2|bin_counter\(12) & ((GND) # (!\GEN2|Add0~23\))) # (!\GEN2|bin_counter\(12) & (\GEN2|Add0~23\ $ (GND)))
-- \GEN2|Add0~25\ = CARRY((\GEN2|bin_counter\(12)) # (!\GEN2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(12),
	datad => VCC,
	cin => \GEN2|Add0~23\,
	combout => \GEN2|Add0~24_combout\,
	cout => \GEN2|Add0~25\);

-- Location: LCCOMB_X15_Y20_N30
\GEN2|bin_counter~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~15_combout\ = (\GEN2|Add0~24_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~24_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~15_combout\);

-- Location: FF_X15_Y20_N31
\GEN2|bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(12));

-- Location: LCCOMB_X16_Y17_N26
\GEN2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~26_combout\ = (\GEN2|bin_counter\(13) & (\GEN2|Add0~25\ & VCC)) # (!\GEN2|bin_counter\(13) & (!\GEN2|Add0~25\))
-- \GEN2|Add0~27\ = CARRY((!\GEN2|bin_counter\(13) & !\GEN2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(13),
	datad => VCC,
	cin => \GEN2|Add0~25\,
	combout => \GEN2|Add0~26_combout\,
	cout => \GEN2|Add0~27\);

-- Location: LCCOMB_X15_Y20_N20
\GEN2|bin_counter~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~14_combout\ = (\GEN2|Add0~26_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~26_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~14_combout\);

-- Location: FF_X15_Y20_N21
\GEN2|bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(13));

-- Location: LCCOMB_X16_Y17_N28
\GEN2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~28_combout\ = (\GEN2|bin_counter\(14) & (\GEN2|Add0~27\ $ (GND))) # (!\GEN2|bin_counter\(14) & ((GND) # (!\GEN2|Add0~27\)))
-- \GEN2|Add0~29\ = CARRY((!\GEN2|Add0~27\) # (!\GEN2|bin_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(14),
	datad => VCC,
	cin => \GEN2|Add0~27\,
	combout => \GEN2|Add0~28_combout\,
	cout => \GEN2|Add0~29\);

-- Location: LCCOMB_X15_Y20_N16
\GEN2|bin_counter[14]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[14]~24_combout\ = !\GEN2|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~28_combout\,
	combout => \GEN2|bin_counter[14]~24_combout\);

-- Location: FF_X15_Y20_N17
\GEN2|bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[14]~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(14));

-- Location: LCCOMB_X16_Y17_N30
\GEN2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~30_combout\ = (\GEN2|bin_counter\(15) & (\GEN2|Add0~29\ & VCC)) # (!\GEN2|bin_counter\(15) & (!\GEN2|Add0~29\))
-- \GEN2|Add0~31\ = CARRY((!\GEN2|bin_counter\(15) & !\GEN2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(15),
	datad => VCC,
	cin => \GEN2|Add0~29\,
	combout => \GEN2|Add0~30_combout\,
	cout => \GEN2|Add0~31\);

-- Location: LCCOMB_X15_Y20_N22
\GEN2|bin_counter~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~13_combout\ = (\GEN2|Add0~30_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~30_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~13_combout\);

-- Location: FF_X15_Y20_N23
\GEN2|bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~13_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(15));

-- Location: LCCOMB_X16_Y16_N0
\GEN2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~32_combout\ = (\GEN2|bin_counter\(16) & ((GND) # (!\GEN2|Add0~31\))) # (!\GEN2|bin_counter\(16) & (\GEN2|Add0~31\ $ (GND)))
-- \GEN2|Add0~33\ = CARRY((\GEN2|bin_counter\(16)) # (!\GEN2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(16),
	datad => VCC,
	cin => \GEN2|Add0~31\,
	combout => \GEN2|Add0~32_combout\,
	cout => \GEN2|Add0~33\);

-- Location: LCCOMB_X15_Y20_N12
\GEN2|bin_counter~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~12_combout\ = (\GEN2|Add0~32_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~32_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~12_combout\);

-- Location: FF_X15_Y20_N13
\GEN2|bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(16));

-- Location: LCCOMB_X16_Y16_N2
\GEN2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~34_combout\ = (\GEN2|bin_counter\(17) & (\GEN2|Add0~33\ & VCC)) # (!\GEN2|bin_counter\(17) & (!\GEN2|Add0~33\))
-- \GEN2|Add0~35\ = CARRY((!\GEN2|bin_counter\(17) & !\GEN2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(17),
	datad => VCC,
	cin => \GEN2|Add0~33\,
	combout => \GEN2|Add0~34_combout\,
	cout => \GEN2|Add0~35\);

-- Location: LCCOMB_X15_Y20_N18
\GEN2|bin_counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~11_combout\ = (\GEN2|Add0~34_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~34_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~11_combout\);

-- Location: FF_X15_Y20_N19
\GEN2|bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(17));

-- Location: LCCOMB_X16_Y16_N4
\GEN2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~36_combout\ = (\GEN2|bin_counter\(18) & (\GEN2|Add0~35\ $ (GND))) # (!\GEN2|bin_counter\(18) & ((GND) # (!\GEN2|Add0~35\)))
-- \GEN2|Add0~37\ = CARRY((!\GEN2|Add0~35\) # (!\GEN2|bin_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(18),
	datad => VCC,
	cin => \GEN2|Add0~35\,
	combout => \GEN2|Add0~36_combout\,
	cout => \GEN2|Add0~37\);

-- Location: LCCOMB_X13_Y14_N8
\GEN2|bin_counter[18]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[18]~23_combout\ = !\GEN2|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~36_combout\,
	combout => \GEN2|bin_counter[18]~23_combout\);

-- Location: FF_X13_Y14_N9
\GEN2|bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[18]~23_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(18));

-- Location: LCCOMB_X16_Y16_N6
\GEN2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~38_combout\ = (\GEN2|bin_counter\(19) & (!\GEN2|Add0~37\)) # (!\GEN2|bin_counter\(19) & (\GEN2|Add0~37\ & VCC))
-- \GEN2|Add0~39\ = CARRY((\GEN2|bin_counter\(19) & !\GEN2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(19),
	datad => VCC,
	cin => \GEN2|Add0~37\,
	combout => \GEN2|Add0~38_combout\,
	cout => \GEN2|Add0~39\);

-- Location: LCCOMB_X13_Y14_N30
\GEN2|bin_counter[19]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[19]~22_combout\ = !\GEN2|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~38_combout\,
	combout => \GEN2|bin_counter[19]~22_combout\);

-- Location: FF_X13_Y14_N31
\GEN2|bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[19]~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(19));

-- Location: LCCOMB_X16_Y16_N8
\GEN2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~40_combout\ = (\GEN2|bin_counter\(20) & ((GND) # (!\GEN2|Add0~39\))) # (!\GEN2|bin_counter\(20) & (\GEN2|Add0~39\ $ (GND)))
-- \GEN2|Add0~41\ = CARRY((\GEN2|bin_counter\(20)) # (!\GEN2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(20),
	datad => VCC,
	cin => \GEN2|Add0~39\,
	combout => \GEN2|Add0~40_combout\,
	cout => \GEN2|Add0~41\);

-- Location: LCCOMB_X13_Y14_N20
\GEN2|bin_counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~10_combout\ = (\GEN2|Add0~40_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~40_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~10_combout\);

-- Location: FF_X13_Y14_N21
\GEN2|bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(20));

-- Location: LCCOMB_X16_Y16_N10
\GEN2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~42_combout\ = (\GEN2|bin_counter\(21) & (\GEN2|Add0~41\ & VCC)) # (!\GEN2|bin_counter\(21) & (!\GEN2|Add0~41\))
-- \GEN2|Add0~43\ = CARRY((!\GEN2|bin_counter\(21) & !\GEN2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(21),
	datad => VCC,
	cin => \GEN2|Add0~41\,
	combout => \GEN2|Add0~42_combout\,
	cout => \GEN2|Add0~43\);

-- Location: LCCOMB_X13_Y14_N26
\GEN2|bin_counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~9_combout\ = (\GEN2|Add0~42_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~42_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~9_combout\);

-- Location: FF_X13_Y14_N27
\GEN2|bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(21));

-- Location: LCCOMB_X13_Y14_N22
\GEN2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~4_combout\ = (!\GEN2|bin_counter\(21) & (\GEN2|bin_counter\(18) & (\GEN2|bin_counter\(19) & !\GEN2|bin_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(21),
	datab => \GEN2|bin_counter\(18),
	datac => \GEN2|bin_counter\(19),
	datad => \GEN2|bin_counter\(20),
	combout => \GEN2|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y16_N12
\GEN2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~44_combout\ = (\GEN2|bin_counter\(22) & (\GEN2|Add0~43\ $ (GND))) # (!\GEN2|bin_counter\(22) & ((GND) # (!\GEN2|Add0~43\)))
-- \GEN2|Add0~45\ = CARRY((!\GEN2|Add0~43\) # (!\GEN2|bin_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(22),
	datad => VCC,
	cin => \GEN2|Add0~43\,
	combout => \GEN2|Add0~44_combout\,
	cout => \GEN2|Add0~45\);

-- Location: LCCOMB_X16_Y20_N26
\GEN2|bin_counter[22]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[22]~21_combout\ = !\GEN2|Add0~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~44_combout\,
	combout => \GEN2|bin_counter[22]~21_combout\);

-- Location: FF_X16_Y20_N27
\GEN2|bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[22]~21_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(22));

-- Location: LCCOMB_X16_Y16_N14
\GEN2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~46_combout\ = (\GEN2|bin_counter\(23) & (\GEN2|Add0~45\ & VCC)) # (!\GEN2|bin_counter\(23) & (!\GEN2|Add0~45\))
-- \GEN2|Add0~47\ = CARRY((!\GEN2|bin_counter\(23) & !\GEN2|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(23),
	datad => VCC,
	cin => \GEN2|Add0~45\,
	combout => \GEN2|Add0~46_combout\,
	cout => \GEN2|Add0~47\);

-- Location: LCCOMB_X16_Y20_N16
\GEN2|bin_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~8_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datad => \GEN2|Add0~46_combout\,
	combout => \GEN2|bin_counter~8_combout\);

-- Location: FF_X16_Y20_N17
\GEN2|bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(23));

-- Location: LCCOMB_X16_Y16_N16
\GEN2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~48_combout\ = (\GEN2|bin_counter\(24) & ((GND) # (!\GEN2|Add0~47\))) # (!\GEN2|bin_counter\(24) & (\GEN2|Add0~47\ $ (GND)))
-- \GEN2|Add0~49\ = CARRY((\GEN2|bin_counter\(24)) # (!\GEN2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(24),
	datad => VCC,
	cin => \GEN2|Add0~47\,
	combout => \GEN2|Add0~48_combout\,
	cout => \GEN2|Add0~49\);

-- Location: LCCOMB_X16_Y20_N22
\GEN2|bin_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~7_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~48_combout\,
	combout => \GEN2|bin_counter~7_combout\);

-- Location: FF_X16_Y20_N23
\GEN2|bin_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(24));

-- Location: LCCOMB_X16_Y16_N18
\GEN2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~50_combout\ = (\GEN2|bin_counter\(25) & (\GEN2|Add0~49\ & VCC)) # (!\GEN2|bin_counter\(25) & (!\GEN2|Add0~49\))
-- \GEN2|Add0~51\ = CARRY((!\GEN2|bin_counter\(25) & !\GEN2|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(25),
	datad => VCC,
	cin => \GEN2|Add0~49\,
	combout => \GEN2|Add0~50_combout\,
	cout => \GEN2|Add0~51\);

-- Location: LCCOMB_X16_Y20_N28
\GEN2|bin_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~6_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~50_combout\,
	combout => \GEN2|bin_counter~6_combout\);

-- Location: FF_X16_Y20_N29
\GEN2|bin_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(25));

-- Location: LCCOMB_X16_Y20_N2
\GEN2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~3_combout\ = (\GEN2|bin_counter\(22) & (!\GEN2|bin_counter\(25) & (!\GEN2|bin_counter\(24) & !\GEN2|bin_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(22),
	datab => \GEN2|bin_counter\(25),
	datac => \GEN2|bin_counter\(24),
	datad => \GEN2|bin_counter\(23),
	combout => \GEN2|Equal0~3_combout\);

-- Location: LCCOMB_X15_Y20_N26
\GEN2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~6_combout\ = (!\GEN2|bin_counter\(12) & (\GEN2|bin_counter\(11) & (!\GEN2|bin_counter\(10) & !\GEN2|bin_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(12),
	datab => \GEN2|bin_counter\(11),
	datac => \GEN2|bin_counter\(10),
	datad => \GEN2|bin_counter\(13),
	combout => \GEN2|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y20_N0
\GEN2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~5_combout\ = (!\GEN2|bin_counter\(16) & (!\GEN2|bin_counter\(17) & (!\GEN2|bin_counter\(15) & \GEN2|bin_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(16),
	datab => \GEN2|bin_counter\(17),
	datac => \GEN2|bin_counter\(15),
	datad => \GEN2|bin_counter\(14),
	combout => \GEN2|Equal0~5_combout\);

-- Location: LCCOMB_X13_Y14_N24
\GEN2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~8_combout\ = (\GEN2|bin_counter\(4) & (\GEN2|bin_counter\(3) & (\GEN2|bin_counter\(2) & \GEN2|bin_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(4),
	datab => \GEN2|bin_counter\(3),
	datac => \GEN2|bin_counter\(2),
	datad => \GEN2|bin_counter\(5),
	combout => \GEN2|Equal0~8_combout\);

-- Location: LCCOMB_X15_Y20_N10
\GEN2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~7_combout\ = (!\GEN2|bin_counter\(6) & (\GEN2|bin_counter\(9) & (\GEN2|bin_counter\(8) & !\GEN2|bin_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(6),
	datab => \GEN2|bin_counter\(9),
	datac => \GEN2|bin_counter\(8),
	datad => \GEN2|bin_counter\(7),
	combout => \GEN2|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y20_N4
\GEN2|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~9_combout\ = (\GEN2|Equal0~6_combout\ & (\GEN2|Equal0~5_combout\ & (\GEN2|Equal0~8_combout\ & \GEN2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~6_combout\,
	datab => \GEN2|Equal0~5_combout\,
	datac => \GEN2|Equal0~8_combout\,
	datad => \GEN2|Equal0~7_combout\,
	combout => \GEN2|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y16_N20
\GEN2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~52_combout\ = (\GEN2|bin_counter\(26) & ((GND) # (!\GEN2|Add0~51\))) # (!\GEN2|bin_counter\(26) & (\GEN2|Add0~51\ $ (GND)))
-- \GEN2|Add0~53\ = CARRY((\GEN2|bin_counter\(26)) # (!\GEN2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(26),
	datad => VCC,
	cin => \GEN2|Add0~51\,
	combout => \GEN2|Add0~52_combout\,
	cout => \GEN2|Add0~53\);

-- Location: LCCOMB_X16_Y20_N8
\GEN2|bin_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~3_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~52_combout\,
	combout => \GEN2|bin_counter~3_combout\);

-- Location: FF_X16_Y20_N9
\GEN2|bin_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(26));

-- Location: LCCOMB_X16_Y16_N22
\GEN2|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~54_combout\ = (\GEN2|bin_counter\(27) & (\GEN2|Add0~53\ & VCC)) # (!\GEN2|bin_counter\(27) & (!\GEN2|Add0~53\))
-- \GEN2|Add0~55\ = CARRY((!\GEN2|bin_counter\(27) & !\GEN2|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(27),
	datad => VCC,
	cin => \GEN2|Add0~53\,
	combout => \GEN2|Add0~54_combout\,
	cout => \GEN2|Add0~55\);

-- Location: LCCOMB_X16_Y20_N14
\GEN2|bin_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~2_combout\ = (\GEN2|Add0~54_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~54_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~2_combout\);

-- Location: FF_X16_Y20_N15
\GEN2|bin_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(27));

-- Location: LCCOMB_X16_Y16_N24
\GEN2|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~56_combout\ = (\GEN2|bin_counter\(28) & ((GND) # (!\GEN2|Add0~55\))) # (!\GEN2|bin_counter\(28) & (\GEN2|Add0~55\ $ (GND)))
-- \GEN2|Add0~57\ = CARRY((\GEN2|bin_counter\(28)) # (!\GEN2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(28),
	datad => VCC,
	cin => \GEN2|Add0~55\,
	combout => \GEN2|Add0~56_combout\,
	cout => \GEN2|Add0~57\);

-- Location: LCCOMB_X16_Y20_N20
\GEN2|bin_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~1_combout\ = (\GEN2|Add0~56_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~56_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~1_combout\);

-- Location: FF_X16_Y20_N21
\GEN2|bin_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(28));

-- Location: LCCOMB_X16_Y16_N26
\GEN2|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~58_combout\ = (\GEN2|bin_counter\(29) & (\GEN2|Add0~57\ & VCC)) # (!\GEN2|bin_counter\(29) & (!\GEN2|Add0~57\))
-- \GEN2|Add0~59\ = CARRY((!\GEN2|bin_counter\(29) & !\GEN2|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(29),
	datad => VCC,
	cin => \GEN2|Add0~57\,
	combout => \GEN2|Add0~58_combout\,
	cout => \GEN2|Add0~59\);

-- Location: LCCOMB_X16_Y20_N18
\GEN2|bin_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~0_combout\ = (\GEN2|Add0~58_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~58_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~0_combout\);

-- Location: FF_X16_Y20_N19
\GEN2|bin_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(29));

-- Location: LCCOMB_X16_Y20_N10
\GEN2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~1_combout\ = (!\GEN2|bin_counter\(26) & (!\GEN2|bin_counter\(28) & (!\GEN2|bin_counter\(27) & !\GEN2|bin_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(26),
	datab => \GEN2|bin_counter\(28),
	datac => \GEN2|bin_counter\(27),
	datad => \GEN2|bin_counter\(29),
	combout => \GEN2|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y16_N28
\GEN2|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~60_combout\ = (\GEN2|bin_counter\(30) & ((GND) # (!\GEN2|Add0~59\))) # (!\GEN2|bin_counter\(30) & (\GEN2|Add0~59\ $ (GND)))
-- \GEN2|Add0~61\ = CARRY((\GEN2|bin_counter\(30)) # (!\GEN2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(30),
	datad => VCC,
	cin => \GEN2|Add0~59\,
	combout => \GEN2|Add0~60_combout\,
	cout => \GEN2|Add0~61\);

-- Location: LCCOMB_X16_Y20_N6
\GEN2|bin_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~5_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~60_combout\,
	combout => \GEN2|bin_counter~5_combout\);

-- Location: FF_X16_Y20_N7
\GEN2|bin_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(30));

-- Location: LCCOMB_X16_Y16_N30
\GEN2|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~62_combout\ = \GEN2|Add0~61\ $ (!\GEN2|bin_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|bin_counter\(31),
	cin => \GEN2|Add0~61\,
	combout => \GEN2|Add0~62_combout\);

-- Location: LCCOMB_X16_Y20_N4
\GEN2|bin_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~4_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~62_combout\,
	combout => \GEN2|bin_counter~4_combout\);

-- Location: FF_X16_Y20_N5
\GEN2|bin_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(31));

-- Location: LCCOMB_X16_Y20_N24
\GEN2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~2_combout\ = (\GEN2|Equal0~1_combout\ & (!\GEN2|bin_counter\(31) & (\GEN2|Equal0~0_combout\ & !\GEN2|bin_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~1_combout\,
	datab => \GEN2|bin_counter\(31),
	datac => \GEN2|Equal0~0_combout\,
	datad => \GEN2|bin_counter\(30),
	combout => \GEN2|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y20_N30
\GEN2|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~10_combout\ = (\GEN2|Equal0~4_combout\ & (\GEN2|Equal0~3_combout\ & (\GEN2|Equal0~9_combout\ & \GEN2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~4_combout\,
	datab => \GEN2|Equal0~3_combout\,
	datac => \GEN2|Equal0~9_combout\,
	datad => \GEN2|Equal0~2_combout\,
	combout => \GEN2|Equal0~10_combout\);

-- Location: FF_X16_Y20_N1
\GEN2|terminal_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN2|Equal0~10_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|terminal_count~q\);

-- Location: LCCOMB_X18_Y13_N8
\GEN2|strobe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|strobe~0_combout\ = \GEN2|strobe~q\ $ (\GEN2|terminal_count~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|strobe~q\,
	datad => \GEN2|terminal_count~q\,
	combout => \GEN2|strobe~0_combout\);

-- Location: FF_X18_Y13_N9
\GEN2|strobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|strobe~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|strobe~q\);

-- Location: LCCOMB_X1_Y8_N0
\GEN2|CLKEN_GEN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|CLKEN_GEN~0_combout\ = (!\GEN2|strobe~q\ & \GEN2|terminal_count~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|strobe~q\,
	datac => \GEN2|terminal_count~q\,
	combout => \GEN2|CLKEN_GEN~0_combout\);

-- Location: LCCOMB_X1_Y9_N4
\GEN2|full_cycle~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|full_cycle~feeder_combout\ = \GEN2|CLKEN_GEN~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|CLKEN_GEN~0_combout\,
	combout => \GEN2|full_cycle~feeder_combout\);

-- Location: FF_X1_Y9_N5
\GEN2|full_cycle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \GEN2|full_cycle~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|full_cycle~q\);

-- Location: CLKCTRL_G1
\GEN2|full_cycle~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GEN2|full_cycle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GEN2|full_cycle~clkctrl_outclk\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X15_Y15_N12
\INST9|output1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|output1~0_combout\ = !\sw[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[1]~input_o\,
	combout => \INST9|output1~0_combout\);

-- Location: FF_X15_Y15_N13
\INST9|output1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST9|output1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|output1~q\);

-- Location: LCCOMB_X15_Y15_N10
\INST9|data_output~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|data_output~feeder_combout\ = \INST9|output1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST9|output1~q\,
	combout => \INST9|data_output~feeder_combout\);

-- Location: FF_X15_Y15_N11
\INST9|data_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST9|data_output~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|data_output~q\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X15_Y15_N22
\INST8|output1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|output1~0_combout\ = !\sw[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[0]~input_o\,
	combout => \INST8|output1~0_combout\);

-- Location: FF_X15_Y15_N23
\INST8|output1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|output1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|output1~q\);

-- Location: FF_X15_Y15_N21
\INST8|data_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \INST8|output1~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|data_output~q\);

-- Location: LCCOMB_X15_Y15_N28
\INST3|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Selector2~1_combout\ = (!\INST3|Selector2~0_combout\ & (!\INST8|data_output~q\ & \INST9|data_output~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|Selector2~0_combout\,
	datac => \INST8|data_output~q\,
	datad => \INST9|data_output~q\,
	combout => \INST3|Selector2~1_combout\);

-- Location: FF_X15_Y15_N29
\INST3|current_state.NM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|Selector2~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.NM~q\);

-- Location: LCCOMB_X15_Y15_N14
\INST3|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Selector0~0_combout\ = (\INST9|data_output~q\ & ((\INST3|current_state.RSM~q\) # ((\INST3|current_state.NM~q\ & \INST8|data_output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|data_output~q\,
	datab => \INST3|current_state.NM~q\,
	datac => \INST8|data_output~q\,
	datad => \INST3|current_state.RSM~q\,
	combout => \INST3|Selector0~0_combout\);

-- Location: LCCOMB_X14_Y12_N10
\INST3|next_state.H0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.H0~0_combout\ = ((!\INST3|current_state.HF~q\) # (!\INST9|data_output~q\)) # (!\INST8|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|data_output~q\,
	datab => \INST9|data_output~q\,
	datac => \INST3|current_state.HF~q\,
	combout => \INST3|next_state.H0~0_combout\);

-- Location: FF_X14_Y12_N11
\INST3|current_state.H0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.H0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H0~q\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: LCCOMB_X14_Y12_N12
\INST5|output1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|output1~0_combout\ = !\pb[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[1]~input_o\,
	combout => \INST5|output1~0_combout\);

-- Location: FF_X14_Y12_N13
\INST5|output1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|output1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|output1~q\);

-- Location: LCCOMB_X14_Y12_N24
\INST5|data_output~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|data_output~feeder_combout\ = \INST5|output1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST5|output1~q\,
	combout => \INST5|data_output~feeder_combout\);

-- Location: FF_X14_Y12_N25
\INST5|data_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|data_output~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|data_output~q\);

-- Location: LCCOMB_X19_Y19_N2
\INST7|data_output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|data_output~0_combout\ = (\INST3|current_state.H7~q\ & (\INST5|data_output~q\)) # (!\INST3|current_state.H7~q\ & ((\INST7|data_output~q\) # ((\INST5|data_output~q\ & !\INST3|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.H7~q\,
	datab => \INST5|data_output~q\,
	datac => \INST7|data_output~q\,
	datad => \INST3|Selector0~2_combout\,
	combout => \INST7|data_output~0_combout\);

-- Location: FF_X19_Y19_N3
\INST7|data_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN2|full_cycle~clkctrl_outclk\,
	d => \INST7|data_output~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|data_output~q\);

-- Location: LCCOMB_X14_Y12_N16
\INST3|next_state.H1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.H1~0_combout\ = (!\INST3|current_state.H0~q\ & !\INST7|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.H0~q\,
	datad => \INST7|data_output~q\,
	combout => \INST3|next_state.H1~0_combout\);

-- Location: FF_X14_Y12_N17
\INST3|current_state.H1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.H1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H1~q\);

-- Location: LCCOMB_X14_Y12_N6
\INST3|next_state.H2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.H2~0_combout\ = (\INST3|current_state.H1~q\ & !\INST7|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|current_state.H1~q\,
	datad => \INST7|data_output~q\,
	combout => \INST3|next_state.H2~0_combout\);

-- Location: FF_X14_Y12_N7
\INST3|current_state.H2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.H2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H2~q\);

-- Location: LCCOMB_X14_Y12_N4
\INST3|next_state.H3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.H3~0_combout\ = (\INST3|current_state.H2~q\ & !\INST7|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.H2~q\,
	datad => \INST7|data_output~q\,
	combout => \INST3|next_state.H3~0_combout\);

-- Location: FF_X14_Y12_N5
\INST3|current_state.H3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.H3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H3~q\);

-- Location: LCCOMB_X14_Y12_N28
\INST3|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Selector0~1_combout\ = (!\INST3|current_state.H2~q\ & (!\INST3|current_state.H1~q\ & (!\INST3|current_state.H3~q\ & \INST3|current_state.H0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.H2~q\,
	datab => \INST3|current_state.H1~q\,
	datac => \INST3|current_state.H3~q\,
	datad => \INST3|current_state.H0~q\,
	combout => \INST3|Selector0~1_combout\);

-- Location: LCCOMB_X14_Y12_N0
\INST3|next_state.H4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.H4~0_combout\ = (\INST3|current_state.H3~q\ & !\INST7|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3|current_state.H3~q\,
	datad => \INST7|data_output~q\,
	combout => \INST3|next_state.H4~0_combout\);

-- Location: FF_X14_Y12_N1
\INST3|current_state.H4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.H4~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H4~q\);

-- Location: LCCOMB_X14_Y12_N22
\INST3|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Selector0~2_combout\ = (\INST3|Selector0~1_combout\ & !\INST3|current_state.H4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|Selector0~1_combout\,
	datad => \INST3|current_state.H4~q\,
	combout => \INST3|Selector0~2_combout\);

-- Location: LCCOMB_X14_Y12_N2
\INST3|next_state.H5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.H5~0_combout\ = (\INST3|current_state.H4~q\ & !\INST7|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|current_state.H4~q\,
	datad => \INST7|data_output~q\,
	combout => \INST3|next_state.H5~0_combout\);

-- Location: FF_X14_Y12_N3
\INST3|current_state.H5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.H5~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H5~q\);

-- Location: LCCOMB_X19_Y19_N4
\INST3|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Selector0~3_combout\ = (\INST3|Selector0~0_combout\) # ((\INST3|current_state.H5~q\) # ((!\INST3|Selector0~2_combout\ & \INST7|data_output~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|Selector0~0_combout\,
	datab => \INST3|Selector0~2_combout\,
	datac => \INST3|current_state.H5~q\,
	datad => \INST7|data_output~q\,
	combout => \INST3|Selector0~3_combout\);

-- Location: FF_X19_Y19_N5
\INST3|current_state.H6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|Selector0~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H6~q\);

-- Location: FF_X19_Y19_N15
\INST3|current_state.H7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	asdata => \INST3|current_state.H6~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H7~q\);

-- Location: LCCOMB_X15_Y15_N26
\INST3|next_state.H8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.H8~0_combout\ = (\INST9|data_output~q\ & (\INST3|current_state.H7~q\ & \INST8|data_output~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|data_output~q\,
	datab => \INST3|current_state.H7~q\,
	datac => \INST8|data_output~q\,
	combout => \INST3|next_state.H8~0_combout\);

-- Location: FF_X15_Y15_N27
\INST3|current_state.H8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.H8~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H8~q\);

-- Location: LCCOMB_X19_Y19_N20
\INST3|next_state.H9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.H9~0_combout\ = (\INST3|current_state.H8~q\ & !\INST6|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|current_state.H8~q\,
	datad => \INST6|data_output~q\,
	combout => \INST3|next_state.H9~0_combout\);

-- Location: FF_X19_Y19_N21
\INST3|current_state.H9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.H9~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.H9~q\);

-- Location: LCCOMB_X19_Y19_N0
\INST3|next_state.HA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.HA~0_combout\ = (\INST3|current_state.H9~q\ & !\INST6|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|current_state.H9~q\,
	datad => \INST6|data_output~q\,
	combout => \INST3|next_state.HA~0_combout\);

-- Location: FF_X19_Y19_N1
\INST3|current_state.HA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.HA~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.HA~q\);

-- Location: LCCOMB_X19_Y19_N6
\INST3|next_state.HB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.HB~0_combout\ = (\INST3|current_state.HA~q\ & !\INST6|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|current_state.HA~q\,
	datad => \INST6|data_output~q\,
	combout => \INST3|next_state.HB~0_combout\);

-- Location: FF_X19_Y19_N7
\INST3|current_state.HB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.HB~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.HB~q\);

-- Location: LCCOMB_X19_Y19_N22
\INST3|WideOr6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr6~1_combout\ = (!\INST3|current_state.HB~q\ & (!\INST3|current_state.HA~q\ & (!\INST3|current_state.H8~q\ & !\INST3|current_state.H9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.HB~q\,
	datab => \INST3|current_state.HA~q\,
	datac => \INST3|current_state.H8~q\,
	datad => \INST3|current_state.H9~q\,
	combout => \INST3|WideOr6~1_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X15_Y15_N24
\INST4|output1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|output1~0_combout\ = !\pb[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[0]~input_o\,
	combout => \INST4|output1~0_combout\);

-- Location: FF_X15_Y15_N25
\INST4|output1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST4|output1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|output1~q\);

-- Location: LCCOMB_X15_Y15_N18
\INST4|data_output~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|data_output~feeder_combout\ = \INST4|output1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST4|output1~q\,
	combout => \INST4|data_output~feeder_combout\);

-- Location: FF_X15_Y15_N19
\INST4|data_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST4|data_output~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|data_output~q\);

-- Location: LCCOMB_X19_Y19_N12
\INST6|data_output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|data_output~0_combout\ = (\INST4|data_output~q\ & ((\INST3|current_state.HF~q\) # ((\INST3|current_state.HC~q\) # (!\INST3|WideOr6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.HF~q\,
	datab => \INST3|WideOr6~1_combout\,
	datac => \INST4|data_output~q\,
	datad => \INST3|current_state.HC~q\,
	combout => \INST6|data_output~0_combout\);

-- Location: LCCOMB_X19_Y19_N18
\INST6|data_output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|data_output~1_combout\ = (\INST6|data_output~0_combout\) # ((!\INST3|current_state.HF~q\ & \INST6|data_output~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.HF~q\,
	datac => \INST6|data_output~q\,
	datad => \INST6|data_output~0_combout\,
	combout => \INST6|data_output~1_combout\);

-- Location: FF_X19_Y19_N19
\INST6|data_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN2|full_cycle~clkctrl_outclk\,
	d => \INST6|data_output~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|data_output~q\);

-- Location: LCCOMB_X19_Y19_N8
\INST3|next_state.HC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.HC~0_combout\ = (!\INST6|data_output~q\ & \INST3|current_state.HB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|data_output~q\,
	datad => \INST3|current_state.HB~q\,
	combout => \INST3|next_state.HC~0_combout\);

-- Location: FF_X19_Y19_N9
\INST3|current_state.HC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.HC~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.HC~q\);

-- Location: LCCOMB_X19_Y19_N24
\INST3|next_state.HD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|next_state.HD~0_combout\ = (!\INST6|data_output~q\ & \INST3|current_state.HC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|data_output~q\,
	datad => \INST3|current_state.HC~q\,
	combout => \INST3|next_state.HD~0_combout\);

-- Location: FF_X19_Y19_N25
\INST3|current_state.HD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|next_state.HD~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.HD~q\);

-- Location: LCCOMB_X19_Y19_N28
\INST3|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Selector1~0_combout\ = (\INST3|current_state.HD~q\) # ((\INST6|data_output~q\ & ((\INST3|current_state.HC~q\) # (!\INST3|WideOr6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.HC~q\,
	datab => \INST6|data_output~q\,
	datac => \INST3|WideOr6~1_combout\,
	datad => \INST3|current_state.HD~q\,
	combout => \INST3|Selector1~0_combout\);

-- Location: FF_X19_Y19_N29
\INST3|current_state.HE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.HE~q\);

-- Location: LCCOMB_X15_Y15_N0
\INST3|current_state.HF~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|current_state.HF~feeder_combout\ = \INST3|current_state.HE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3|current_state.HE~q\,
	combout => \INST3|current_state.HF~feeder_combout\);

-- Location: FF_X15_Y15_N1
\INST3|current_state.HF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|current_state.HF~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.HF~q\);

-- Location: LCCOMB_X15_Y15_N16
\INST3|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Selector2~0_combout\ = (!\INST3|current_state.HF~q\ & (!\INST3|current_state.H7~q\ & !\INST3|current_state.NM~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|current_state.HF~q\,
	datac => \INST3|current_state.H7~q\,
	datad => \INST3|current_state.NM~q\,
	combout => \INST3|Selector2~0_combout\);

-- Location: LCCOMB_X15_Y15_N6
\INST3|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Selector3~0_combout\ = (!\INST9|data_output~q\ & ((\INST3|current_state.RSM~q\) # (!\INST3|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|Selector2~0_combout\,
	datac => \INST3|current_state.RSM~q\,
	datad => \INST9|data_output~q\,
	combout => \INST3|Selector3~0_combout\);

-- Location: FF_X15_Y15_N7
\INST3|current_state.RSM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|full_cycle~clkctrl_outclk\,
	d => \INST3|Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|current_state.RSM~q\);

-- Location: LCCOMB_X19_Y19_N30
\INST3|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr6~0_combout\ = (!\INST3|current_state.HD~q\ & (!\INST3|current_state.HF~q\ & !\INST3|current_state.HE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|current_state.HD~q\,
	datac => \INST3|current_state.HF~q\,
	datad => \INST3|current_state.HE~q\,
	combout => \INST3|WideOr6~0_combout\);

-- Location: LCCOMB_X18_Y13_N12
\INST1|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|DOUT_TEMP[6]~2_combout\ = \INST1|clk_proc:COUNT[10]~q\ $ (((\INST3|WideOr6~1_combout\ & (!\INST3|current_state.HC~q\ & \INST3|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|WideOr6~1_combout\,
	datab => \INST1|clk_proc:COUNT[10]~q\,
	datac => \INST3|current_state.HC~q\,
	datad => \INST3|WideOr6~0_combout\,
	combout => \INST1|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X19_Y19_N14
\INST3|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr7~0_combout\ = (!\INST3|current_state.H5~q\ & (!\INST3|current_state.H6~q\ & (!\INST3|current_state.H7~q\ & !\INST3|current_state.HC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.H5~q\,
	datab => \INST3|current_state.H6~q\,
	datac => \INST3|current_state.H7~q\,
	datad => \INST3|current_state.HC~q\,
	combout => \INST3|WideOr7~0_combout\);

-- Location: LCCOMB_X18_Y13_N24
\INST3|WideOr7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr7~combout\ = (!\INST3|current_state.H4~q\ & (\INST3|WideOr7~0_combout\ & \INST3|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|current_state.H4~q\,
	datac => \INST3|WideOr7~0_combout\,
	datad => \INST3|WideOr6~0_combout\,
	combout => \INST3|WideOr7~combout\);

-- Location: LCCOMB_X19_Y19_N10
\INST3|WideOr8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr8~1_combout\ = (\INST3|current_state.H2~q\) # ((\INST3|current_state.HA~q\) # ((\INST3|current_state.H6~q\) # (\INST3|current_state.HE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.H2~q\,
	datab => \INST3|current_state.HA~q\,
	datac => \INST3|current_state.H6~q\,
	datad => \INST3|current_state.HE~q\,
	combout => \INST3|WideOr8~1_combout\);

-- Location: LCCOMB_X19_Y15_N24
\INST3|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr8~0_combout\ = (!\INST3|current_state.H3~q\ & (!\INST3|current_state.HF~q\ & (!\INST3|current_state.H7~q\ & !\INST3|current_state.HB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.H3~q\,
	datab => \INST3|current_state.HF~q\,
	datac => \INST3|current_state.H7~q\,
	datad => \INST3|current_state.HB~q\,
	combout => \INST3|WideOr8~0_combout\);

-- Location: LCCOMB_X18_Y13_N28
\INST1|DOUT_TEMP[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|DOUT_TEMP[6]~3_combout\ = (\INST1|DOUT_TEMP[6]~2_combout\ & (!\INST3|WideOr7~combout\ & ((\INST3|WideOr8~1_combout\) # (!\INST3|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|DOUT_TEMP[6]~2_combout\,
	datab => \INST3|WideOr7~combout\,
	datac => \INST3|WideOr8~1_combout\,
	datad => \INST3|WideOr8~0_combout\,
	combout => \INST1|DOUT_TEMP[6]~3_combout\);

-- Location: LCCOMB_X18_Y13_N14
\INST1|DOUT_TEMP[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|DOUT_TEMP[6]~4_combout\ = (\INST3|current_state.RSM~q\ & (\GEN1|strobe~q\ & (!\INST1|clk_proc:COUNT[10]~q\))) # (!\INST3|current_state.RSM~q\ & (((\INST1|DOUT_TEMP[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|strobe~q\,
	datab => \INST1|clk_proc:COUNT[10]~q\,
	datac => \INST3|current_state.RSM~q\,
	datad => \INST1|DOUT_TEMP[6]~3_combout\,
	combout => \INST1|DOUT_TEMP[6]~4_combout\);

-- Location: LCCOMB_X19_Y19_N16
\INST3|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr9~0_combout\ = (\INST3|current_state.H1~q\) # ((\INST3|current_state.H9~q\) # ((\INST3|current_state.H5~q\) # (\INST3|current_state.HD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.H1~q\,
	datab => \INST3|current_state.H9~q\,
	datac => \INST3|current_state.H5~q\,
	datad => \INST3|current_state.HD~q\,
	combout => \INST3|WideOr9~0_combout\);

-- Location: LCCOMB_X18_Y13_N4
\INST3|WideOr9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr9~combout\ = (\INST3|WideOr9~0_combout\) # (!\INST3|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|WideOr8~0_combout\,
	datad => \INST3|WideOr9~0_combout\,
	combout => \INST3|WideOr9~combout\);

-- Location: LCCOMB_X18_Y13_N30
\INST3|WideOr8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr8~combout\ = (\INST3|WideOr8~1_combout\) # (!\INST3|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3|WideOr8~1_combout\,
	datad => \INST3|WideOr8~0_combout\,
	combout => \INST3|WideOr8~combout\);

-- Location: LCCOMB_X18_Y13_N18
\INST3|WideOr6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|WideOr6~combout\ = ((\INST3|current_state.HC~q\) # (!\INST3|WideOr6~0_combout\)) # (!\INST3|WideOr6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|WideOr6~1_combout\,
	datac => \INST3|current_state.HC~q\,
	datad => \INST3|WideOr6~0_combout\,
	combout => \INST3|WideOr6~combout\);

-- Location: LCCOMB_X15_Y15_N8
\leds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (\INST3|current_state.RSM~q\) # (\INST3|current_state.NM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.RSM~q\,
	datad => \INST3|current_state.NM~q\,
	combout => \leds~0_combout\);

-- Location: LCCOMB_X19_Y19_N26
\leds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~1_combout\ = (\INST6|data_output~q\) # (\INST7|data_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|data_output~q\,
	datad => \INST7|data_output~q\,
	combout => \leds~1_combout\);

-- Location: LCCOMB_X18_Y13_N2
\INST1|DOUT[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|DOUT[0]~5_combout\ = (\INST3|current_state.RSM~q\ & (((\INST1|clk_proc:COUNT[10]~q\ & \GEN1|strobe~q\)))) # (!\INST3|current_state.RSM~q\ & (\INST3|WideOr6~combout\ $ ((\INST1|clk_proc:COUNT[10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|WideOr6~combout\,
	datab => \INST1|clk_proc:COUNT[10]~q\,
	datac => \INST3|current_state.RSM~q\,
	datad => \GEN1|strobe~q\,
	combout => \INST1|DOUT[0]~5_combout\);

-- Location: LCCOMB_X18_Y13_N22
\INST1|DOUT[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|DOUT[3]~2_combout\ = (\INST1|DOUT_TEMP[6]~2_combout\ & ((\INST3|WideOr8~combout\ & ((\INST3|WideOr7~combout\))) # (!\INST3|WideOr8~combout\ & ((\GEN2|strobe~q\) # (!\INST3|WideOr7~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|DOUT_TEMP[6]~2_combout\,
	datab => \GEN2|strobe~q\,
	datac => \INST3|WideOr8~combout\,
	datad => \INST3|WideOr7~combout\,
	combout => \INST1|DOUT[3]~2_combout\);

-- Location: LCCOMB_X18_Y13_N0
\INST1|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|DOUT[3]~3_combout\ = (!\INST3|current_state.RSM~q\ & ((\INST1|DOUT[3]~2_combout\) # ((!\INST1|clk_proc:COUNT[10]~q\ & \INST3|current_state.NM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|current_state.RSM~q\,
	datab => \INST1|clk_proc:COUNT[10]~q\,
	datac => \INST1|DOUT[3]~2_combout\,
	datad => \INST3|current_state.NM~q\,
	combout => \INST1|DOUT[3]~3_combout\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


