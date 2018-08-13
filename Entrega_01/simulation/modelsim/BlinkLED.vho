-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "08/10/2018 14:44:14"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topLevel IS
    PORT (
	fpga_clk_50 : IN std_logic;
	sw_input : IN std_logic_vector(3 DOWNTO 0);
	key_input : IN std_logic;
	fpga_led_pio : OUT std_logic_vector(5 DOWNTO 0)
	);
END topLevel;

-- Design Ports Information
-- fpga_led_pio[0]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- fpga_led_pio[1]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- fpga_led_pio[2]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- fpga_led_pio[3]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- fpga_led_pio[4]	=>  Location: PIN_AF26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- fpga_led_pio[5]	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- key_input	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_input[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_input[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_input[2]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_input[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_clk_50	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF topLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fpga_clk_50 : std_logic;
SIGNAL ww_sw_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key_input : std_logic;
SIGNAL ww_fpga_led_pio : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \fpga_clk_50~input_o\ : std_logic;
SIGNAL \fpga_clk_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \MUX_A|Add4~13_sumout\ : std_logic;
SIGNAL \sw_input[1]~input_o\ : std_logic;
SIGNAL \sw_input[3]~input_o\ : std_logic;
SIGNAL \sw_input[0]~input_o\ : std_logic;
SIGNAL \sw_input[2]~input_o\ : std_logic;
SIGNAL \MUX_A|Add3~0_combout\ : std_logic;
SIGNAL \MUX_A|Add3~1_combout\ : std_logic;
SIGNAL \MUX_A|Add2~0_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_3~18_cout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_3~14\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_3~10\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_3~6\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|StageOut[6]~1_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_3~5_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_3~9_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_3~13_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~0_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~3_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~4_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_5~18_cout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_5~14_cout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_5~10_cout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \MUX_A|LessThan0~0_combout\ : std_logic;
SIGNAL \MUX_A|LessThan0~2_combout\ : std_logic;
SIGNAL \MUX_A|LessThan0~3_combout\ : std_logic;
SIGNAL \MUX_A|LessThan0~1_combout\ : std_logic;
SIGNAL \MUX_A|LessThan0~8_combout\ : std_logic;
SIGNAL \key_input~input_o\ : std_logic;
SIGNAL \MUX_A|Add4~14\ : std_logic;
SIGNAL \MUX_A|Add4~17_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~18\ : std_logic;
SIGNAL \MUX_A|Add4~1_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~2\ : std_logic;
SIGNAL \MUX_A|Add4~5_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~6\ : std_logic;
SIGNAL \MUX_A|Add4~9_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~10\ : std_logic;
SIGNAL \MUX_A|Add4~29_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~30\ : std_logic;
SIGNAL \MUX_A|Add4~25_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~26\ : std_logic;
SIGNAL \MUX_A|Add4~53_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~54\ : std_logic;
SIGNAL \MUX_A|Add4~49_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~50\ : std_logic;
SIGNAL \MUX_A|Add4~45_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~46\ : std_logic;
SIGNAL \MUX_A|Add4~41_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~42\ : std_logic;
SIGNAL \MUX_A|Add4~37_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~38\ : std_logic;
SIGNAL \MUX_A|Add4~33_sumout\ : std_logic;
SIGNAL \MUX_A|LessThan0~4_combout\ : std_logic;
SIGNAL \MUX_A|Add4~34\ : std_logic;
SIGNAL \MUX_A|Add4~21_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~22\ : std_logic;
SIGNAL \MUX_A|Add4~97_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~98\ : std_logic;
SIGNAL \MUX_A|Add4~93_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~94\ : std_logic;
SIGNAL \MUX_A|Add4~89_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~90\ : std_logic;
SIGNAL \MUX_A|Add4~85_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~86\ : std_logic;
SIGNAL \MUX_A|Add4~81_sumout\ : std_logic;
SIGNAL \MUX_A|LessThan0~6_combout\ : std_logic;
SIGNAL \MUX_A|Add4~82\ : std_logic;
SIGNAL \MUX_A|Add4~77_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~78\ : std_logic;
SIGNAL \MUX_A|Add4~73_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~74\ : std_logic;
SIGNAL \MUX_A|Add4~69_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~70\ : std_logic;
SIGNAL \MUX_A|Add4~65_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~66\ : std_logic;
SIGNAL \MUX_A|Add4~61_sumout\ : std_logic;
SIGNAL \MUX_A|Add4~62\ : std_logic;
SIGNAL \MUX_A|Add4~57_sumout\ : std_logic;
SIGNAL \MUX_A|LessThan0~5_combout\ : std_logic;
SIGNAL \MUX_A|LessThan0~7_combout\ : std_logic;
SIGNAL \MUX_A|blink~0_combout\ : std_logic;
SIGNAL \MUX_A|blink~q\ : std_logic;
SIGNAL \MUX_A|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|StageOut\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_sw_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_key_input~input_o\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~6_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut\ : std_logic_vector(10 DOWNTO 5);
SIGNAL \MUX_A|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~4_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~3_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~2_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~1_combout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~0_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_blink~q\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\ : std_logic;
SIGNAL \MUX_A|ALT_INV_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;
SIGNAL \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;

BEGIN

ww_fpga_clk_50 <= fpga_clk_50;
ww_sw_input <= sw_input;
ww_key_input <= key_input;
fpga_led_pio <= ww_fpga_led_pio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sw_input[3]~input_o\ <= NOT \sw_input[3]~input_o\;
\ALT_INV_sw_input[2]~input_o\ <= NOT \sw_input[2]~input_o\;
\ALT_INV_sw_input[1]~input_o\ <= NOT \sw_input[1]~input_o\;
\ALT_INV_sw_input[0]~input_o\ <= NOT \sw_input[0]~input_o\;
\ALT_INV_key_input~input_o\ <= NOT \key_input~input_o\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~6_combout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut\(10) <= NOT \MUX_A|Div0|auto_generated|divider|divider|StageOut\(10);
\MUX_A|ALT_INV_Add2~0_combout\ <= NOT \MUX_A|Add2~0_combout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~4_combout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~4_combout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut\(5) <= NOT \MUX_A|Div0|auto_generated|divider|divider|StageOut\(5);
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~3_combout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~3_combout\;
\MUX_A|ALT_INV_Add3~1_combout\ <= NOT \MUX_A|Add3~1_combout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~2_combout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~1_combout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|StageOut[6]~1_combout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~0_combout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~0_combout\;
\MUX_A|ALT_INV_LessThan0~7_combout\ <= NOT \MUX_A|LessThan0~7_combout\;
\MUX_A|ALT_INV_LessThan0~6_combout\ <= NOT \MUX_A|LessThan0~6_combout\;
\MUX_A|ALT_INV_LessThan0~5_combout\ <= NOT \MUX_A|LessThan0~5_combout\;
\MUX_A|ALT_INV_LessThan0~4_combout\ <= NOT \MUX_A|LessThan0~4_combout\;
\MUX_A|ALT_INV_LessThan0~3_combout\ <= NOT \MUX_A|LessThan0~3_combout\;
\MUX_A|ALT_INV_LessThan0~2_combout\ <= NOT \MUX_A|LessThan0~2_combout\;
\MUX_A|ALT_INV_LessThan0~1_combout\ <= NOT \MUX_A|LessThan0~1_combout\;
\MUX_A|ALT_INV_LessThan0~0_combout\ <= NOT \MUX_A|LessThan0~0_combout\;
\MUX_A|ALT_INV_Add3~0_combout\ <= NOT \MUX_A|Add3~0_combout\;
\MUX_A|ALT_INV_blink~q\ <= NOT \MUX_A|blink~q\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_4~17_sumout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_4~13_sumout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_3~13_sumout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_4~9_sumout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_3~9_sumout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_4~5_sumout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\;
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_3~5_sumout\;
\MUX_A|ALT_INV_counter\(14) <= NOT \MUX_A|counter\(14);
\MUX_A|ALT_INV_counter\(15) <= NOT \MUX_A|counter\(15);
\MUX_A|ALT_INV_counter\(16) <= NOT \MUX_A|counter\(16);
\MUX_A|ALT_INV_counter\(17) <= NOT \MUX_A|counter\(17);
\MUX_A|ALT_INV_counter\(18) <= NOT \MUX_A|counter\(18);
\MUX_A|ALT_INV_counter\(19) <= NOT \MUX_A|counter\(19);
\MUX_A|ALT_INV_counter\(20) <= NOT \MUX_A|counter\(20);
\MUX_A|ALT_INV_counter\(21) <= NOT \MUX_A|counter\(21);
\MUX_A|ALT_INV_counter\(22) <= NOT \MUX_A|counter\(22);
\MUX_A|ALT_INV_counter\(23) <= NOT \MUX_A|counter\(23);
\MUX_A|ALT_INV_counter\(24) <= NOT \MUX_A|counter\(24);
\MUX_A|ALT_INV_counter\(7) <= NOT \MUX_A|counter\(7);
\MUX_A|ALT_INV_counter\(8) <= NOT \MUX_A|counter\(8);
\MUX_A|ALT_INV_counter\(9) <= NOT \MUX_A|counter\(9);
\MUX_A|ALT_INV_counter\(10) <= NOT \MUX_A|counter\(10);
\MUX_A|ALT_INV_counter\(11) <= NOT \MUX_A|counter\(11);
\MUX_A|ALT_INV_counter\(12) <= NOT \MUX_A|counter\(12);
\MUX_A|ALT_INV_counter\(5) <= NOT \MUX_A|counter\(5);
\MUX_A|ALT_INV_counter\(6) <= NOT \MUX_A|counter\(6);
\MUX_A|ALT_INV_counter\(13) <= NOT \MUX_A|counter\(13);
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\;
\MUX_A|ALT_INV_counter\(1) <= NOT \MUX_A|counter\(1);
\MUX_A|ALT_INV_counter\(0) <= NOT \MUX_A|counter\(0);
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\;
\MUX_A|ALT_INV_counter\(4) <= NOT \MUX_A|counter\(4);
\MUX_A|ALT_INV_counter\(3) <= NOT \MUX_A|counter\(3);
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\;
\MUX_A|ALT_INV_counter\(2) <= NOT \MUX_A|counter\(2);
\MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \MUX_A|Div0|auto_generated|divider|divider|op_5~1_sumout\;

-- Location: IOOBUF_X89_Y8_N22
\fpga_led_pio[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_A|blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(0));

-- Location: IOOBUF_X89_Y9_N39
\fpga_led_pio[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_A|blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(1));

-- Location: IOOBUF_X89_Y9_N5
\fpga_led_pio[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_A|blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(2));

-- Location: IOOBUF_X89_Y9_N22
\fpga_led_pio[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_A|blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(3));

-- Location: IOOBUF_X89_Y4_N79
\fpga_led_pio[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_A|blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(4));

-- Location: IOOBUF_X89_Y4_N96
\fpga_led_pio[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_A|blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(5));

-- Location: IOIBUF_X32_Y0_N1
\fpga_clk_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_clk_50,
	o => \fpga_clk_50~input_o\);

-- Location: CLKCTRL_G6
\fpga_clk_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \fpga_clk_50~input_o\,
	outclk => \fpga_clk_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X85_Y21_N30
\MUX_A|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~13_sumout\ = SUM(( \MUX_A|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \MUX_A|Add4~14\ = CARRY(( \MUX_A|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|ALT_INV_counter\(0),
	cin => GND,
	sumout => \MUX_A|Add4~13_sumout\,
	cout => \MUX_A|Add4~14\);

-- Location: IOIBUF_X89_Y23_N4
\sw_input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_input(1),
	o => \sw_input[1]~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\sw_input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_input(3),
	o => \sw_input[3]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\sw_input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_input(0),
	o => \sw_input[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\sw_input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_input(2),
	o => \sw_input[2]~input_o\);

-- Location: LABCELL_X83_Y21_N18
\MUX_A|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add3~0_combout\ = ( \sw_input[0]~input_o\ & ( \sw_input[2]~input_o\ & ( (\sw_input[3]~input_o\) # (\sw_input[1]~input_o\) ) ) ) # ( !\sw_input[0]~input_o\ & ( \sw_input[2]~input_o\ & ( (\sw_input[1]~input_o\ & \sw_input[3]~input_o\) ) ) ) # ( 
-- \sw_input[0]~input_o\ & ( !\sw_input[2]~input_o\ & ( (\sw_input[1]~input_o\ & \sw_input[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000001100110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw_input[1]~input_o\,
	datad => \ALT_INV_sw_input[3]~input_o\,
	datae => \ALT_INV_sw_input[0]~input_o\,
	dataf => \ALT_INV_sw_input[2]~input_o\,
	combout => \MUX_A|Add3~0_combout\);

-- Location: LABCELL_X83_Y21_N48
\MUX_A|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add3~1_combout\ = ( \sw_input[0]~input_o\ & ( \sw_input[2]~input_o\ & ( (!\sw_input[1]~input_o\ & !\sw_input[3]~input_o\) ) ) ) # ( !\sw_input[0]~input_o\ & ( \sw_input[2]~input_o\ & ( (!\sw_input[1]~input_o\) # (!\sw_input[3]~input_o\) ) ) ) # ( 
-- \sw_input[0]~input_o\ & ( !\sw_input[2]~input_o\ & ( (!\sw_input[1]~input_o\) # (!\sw_input[3]~input_o\) ) ) ) # ( !\sw_input[0]~input_o\ & ( !\sw_input[2]~input_o\ & ( (\sw_input[3]~input_o\) # (\sw_input[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111111111111100110011111111110011001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw_input[1]~input_o\,
	datad => \ALT_INV_sw_input[3]~input_o\,
	datae => \ALT_INV_sw_input[0]~input_o\,
	dataf => \ALT_INV_sw_input[2]~input_o\,
	combout => \MUX_A|Add3~1_combout\);

-- Location: LABCELL_X83_Y21_N57
\MUX_A|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add2~0_combout\ = ( \sw_input[2]~input_o\ & ( !\sw_input[3]~input_o\ ) ) # ( !\sw_input[2]~input_o\ & ( \sw_input[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw_input[3]~input_o\,
	dataf => \ALT_INV_sw_input[2]~input_o\,
	combout => \MUX_A|Add2~0_combout\);

-- Location: LABCELL_X83_Y21_N30
\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ = SUM(( !\sw_input[1]~input_o\ $ (!\MUX_A|Add2~0_combout\ $ (\sw_input[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ = CARRY(( !\sw_input[1]~input_o\ $ (!\MUX_A|Add2~0_combout\ $ (\sw_input[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw_input[1]~input_o\,
	datac => \MUX_A|ALT_INV_Add2~0_combout\,
	datad => \ALT_INV_sw_input[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	shareout => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\);

-- Location: LABCELL_X83_Y21_N33
\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ = SUM(( !\MUX_A|Add3~1_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( 
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ = CARRY(( !\MUX_A|Add3~1_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( 
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_Add3~1_combout\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	sharein => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	shareout => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\);

-- Location: LABCELL_X83_Y21_N36
\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ = SUM(( VCC ) + ( \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	sharein => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\);

-- Location: LABCELL_X83_Y21_N0
\MUX_A|Div0|auto_generated|divider|divider|op_3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_3~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_3~18_cout\);

-- Location: LABCELL_X83_Y21_N3
\MUX_A|Div0|auto_generated|divider|divider|op_3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_3~13_sumout\ = SUM(( VCC ) + ( !\sw_input[1]~input_o\ $ (!\sw_input[0]~input_o\ $ (!\sw_input[3]~input_o\ $ (!\sw_input[2]~input_o\))) ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_3~18_cout\ ))
-- \MUX_A|Div0|auto_generated|divider|divider|op_3~14\ = CARRY(( VCC ) + ( !\sw_input[1]~input_o\ $ (!\sw_input[0]~input_o\ $ (!\sw_input[3]~input_o\ $ (!\sw_input[2]~input_o\))) ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_3~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101100110100100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw_input[1]~input_o\,
	datab => \ALT_INV_sw_input[0]~input_o\,
	datac => \ALT_INV_sw_input[3]~input_o\,
	dataf => \ALT_INV_sw_input[2]~input_o\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_3~18_cout\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_3~13_sumout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_3~14\);

-- Location: LABCELL_X83_Y21_N6
\MUX_A|Div0|auto_generated|divider|divider|op_3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_3~9_sumout\ = SUM(( ((\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # (\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\)) # (\MUX_A|Add3~0_combout\) 
-- ) + ( !\MUX_A|Add3~1_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_3~14\ ))
-- \MUX_A|Div0|auto_generated|divider|divider|op_3~10\ = CARRY(( ((\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # (\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\)) # (\MUX_A|Add3~0_combout\) ) + 
-- ( !\MUX_A|Add3~1_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_Add3~0_combout\,
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	datad => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	dataf => \MUX_A|ALT_INV_Add3~1_combout\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_3~14\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_3~9_sumout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_3~10\);

-- Location: LABCELL_X83_Y21_N9
\MUX_A|Div0|auto_generated|divider|divider|op_3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_3~5_sumout\ = SUM(( (!\MUX_A|Add3~0_combout\ & (\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ & !\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\)) ) 
-- + ( !\MUX_A|Add3~0_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_3~10\ ))
-- \MUX_A|Div0|auto_generated|divider|divider|op_3~6\ = CARRY(( (!\MUX_A|Add3~0_combout\ & (\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ & !\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\)) ) + ( 
-- !\MUX_A|Add3~0_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_Add3~0_combout\,
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	datad => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_3~10\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_3~5_sumout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_3~6\);

-- Location: LABCELL_X83_Y21_N12
\MUX_A|Div0|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_3~6\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\);

-- Location: LABCELL_X83_Y21_N45
\MUX_A|Div0|auto_generated|divider|divider|StageOut[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|StageOut[6]~1_combout\ = ( !\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( !\MUX_A|Add3~0_combout\ & ( 
-- \MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	datae => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	dataf => \MUX_A|ALT_INV_Add3~0_combout\,
	combout => \MUX_A|Div0|auto_generated|divider|divider|StageOut[6]~1_combout\);

-- Location: LABCELL_X83_Y21_N54
\MUX_A|Div0|auto_generated|divider|divider|StageOut[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|StageOut\(5) = ( \MUX_A|Add3~0_combout\ ) # ( !\MUX_A|Add3~0_combout\ & ( (\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # 
-- (\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	dataf => \MUX_A|ALT_INV_Add3~0_combout\,
	combout => \MUX_A|Div0|auto_generated|divider|divider|StageOut\(5));

-- Location: MLABCELL_X84_Y21_N24
\MUX_A|Div0|auto_generated|divider|divider|StageOut[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|StageOut\(10) = ( \MUX_A|Div0|auto_generated|divider|divider|op_3~13_sumout\ ) # ( !\MUX_A|Div0|auto_generated|divider|divider|op_3~13_sumout\ & ( \MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	combout => \MUX_A|Div0|auto_generated|divider|divider|StageOut\(10));

-- Location: MLABCELL_X84_Y21_N30
\MUX_A|Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( VCC ) + ( !\sw_input[1]~input_o\ $ (!\sw_input[3]~input_o\ $ (!\sw_input[0]~input_o\ $ (!\sw_input[2]~input_o\))) ) + ( !VCC ))
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( VCC ) + ( !\sw_input[1]~input_o\ $ (!\sw_input[3]~input_o\ $ (!\sw_input[0]~input_o\ $ (!\sw_input[2]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101100110100100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw_input[1]~input_o\,
	datab => \ALT_INV_sw_input[3]~input_o\,
	datac => \ALT_INV_sw_input[0]~input_o\,
	dataf => \ALT_INV_sw_input[2]~input_o\,
	cin => GND,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_4~18\);

-- Location: MLABCELL_X84_Y21_N33
\MUX_A|Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( !\MUX_A|Add3~1_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|StageOut\(10) ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_4~18\ ))
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( !\MUX_A|Add3~1_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|StageOut\(10) ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_Add3~1_combout\,
	dataf => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut\(10),
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_4~14\);

-- Location: MLABCELL_X84_Y21_N36
\MUX_A|Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\MUX_A|Div0|auto_generated|divider|divider|op_3~9_sumout\))) # (\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\MUX_A|Div0|auto_generated|divider|divider|StageOut\(5))) ) + ( !\MUX_A|Add3~0_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_4~14\ ))
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\MUX_A|Div0|auto_generated|divider|divider|op_3~9_sumout\))) # (\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\MUX_A|Div0|auto_generated|divider|divider|StageOut\(5))) ) + ( !\MUX_A|Add3~0_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut\(5),
	datad => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	dataf => \MUX_A|ALT_INV_Add3~0_combout\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_4~10\);

-- Location: MLABCELL_X84_Y21_N39
\MUX_A|Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (!\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\MUX_A|Div0|auto_generated|divider|divider|op_3~5_sumout\))) # (\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\MUX_A|Div0|auto_generated|divider|divider|StageOut[6]~1_combout\)) ) + ( VCC ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_4~10\ ))
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( (!\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\MUX_A|Div0|auto_generated|divider|divider|op_3~5_sumout\))) # (\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\MUX_A|Div0|auto_generated|divider|divider|StageOut[6]~1_combout\)) ) + ( VCC ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~1_combout\,
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_4~6\);

-- Location: MLABCELL_X84_Y21_N42
\MUX_A|Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_4~6\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: MLABCELL_X84_Y21_N54
\MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~0_combout\ = ( \MUX_A|Div0|auto_generated|divider|divider|op_3~5_sumout\ & ( !\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\,
	combout => \MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~0_combout\);

-- Location: MLABCELL_X84_Y21_N57
\MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\ = (\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & \MUX_A|Div0|auto_generated|divider|divider|StageOut[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~1_combout\,
	combout => \MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\);

-- Location: MLABCELL_X84_Y21_N21
\MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~3_combout\ = (!\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & \MUX_A|Div0|auto_generated|divider|divider|op_3~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datad => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	combout => \MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~3_combout\);

-- Location: MLABCELL_X84_Y21_N18
\MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~4_combout\ = ( \MUX_A|Div0|auto_generated|divider|divider|StageOut\(5) & ( \MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut\(5),
	combout => \MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~4_combout\);

-- Location: MLABCELL_X84_Y21_N27
\MUX_A|Div0|auto_generated|divider|divider|StageOut[16]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = ( \MUX_A|Div0|auto_generated|divider|divider|op_4~13_sumout\ & ( (!\MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\) # (\MUX_A|Div0|auto_generated|divider|divider|StageOut\(10)) 
-- ) ) # ( !\MUX_A|Div0|auto_generated|divider|divider|op_4~13_sumout\ & ( (\MUX_A|Div0|auto_generated|divider|divider|StageOut\(10) & \MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut\(10),
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \MUX_A|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: MLABCELL_X84_Y21_N48
\MUX_A|Div0|auto_generated|divider|divider|StageOut[15]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = ( !\MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \MUX_A|Div0|auto_generated|divider|divider|op_4~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	dataf => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \MUX_A|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: MLABCELL_X84_Y21_N0
\MUX_A|Div0|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( VCC ) + ( !\sw_input[1]~input_o\ $ (!\sw_input[3]~input_o\ $ (!\sw_input[0]~input_o\ $ (!\sw_input[2]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101100110100100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw_input[1]~input_o\,
	datab => \ALT_INV_sw_input[3]~input_o\,
	datac => \ALT_INV_sw_input[0]~input_o\,
	dataf => \ALT_INV_sw_input[2]~input_o\,
	cin => GND,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_5~22_cout\);

-- Location: MLABCELL_X84_Y21_N3
\MUX_A|Div0|auto_generated|divider|divider|op_5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_5~18_cout\ = CARRY(( !\MUX_A|Add3~1_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_Add3~1_combout\,
	dataf => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~6_combout\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_5~22_cout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_5~18_cout\);

-- Location: MLABCELL_X84_Y21_N6
\MUX_A|Div0|auto_generated|divider|divider|op_5~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_5~14_cout\ = CARRY(( \MUX_A|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ ) + ( !\MUX_A|Add3~0_combout\ ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_5~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	dataf => \MUX_A|ALT_INV_Add3~0_combout\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_5~18_cout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_5~14_cout\);

-- Location: MLABCELL_X84_Y21_N9
\MUX_A|Div0|auto_generated|divider|divider|op_5~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_5~10_cout\ = CARRY(( VCC ) + ( (!\MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\MUX_A|Div0|auto_generated|divider|divider|op_4~9_sumout\)) # 
-- (\MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~4_combout\) # (\MUX_A|Div0|auto_generated|divider|divider|StageOut[11]~3_combout\)))) ) + ( 
-- \MUX_A|Div0|auto_generated|divider|divider|op_5~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~3_combout\,
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~4_combout\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_5~14_cout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_5~10_cout\);

-- Location: MLABCELL_X84_Y21_N12
\MUX_A|Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (!\MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\MUX_A|Div0|auto_generated|divider|divider|op_4~5_sumout\)) # (\MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\) # (\MUX_A|Div0|auto_generated|divider|divider|StageOut[12]~0_combout\)))) ) + ( VCC ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_5~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~0_combout\,
	datad => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~2_combout\,
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_5~10_cout\,
	cout => \MUX_A|Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: MLABCELL_X84_Y21_N15
\MUX_A|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \MUX_A|Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \MUX_A|Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \MUX_A|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X84_Y21_N51
\MUX_A|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|LessThan0~0_combout\ = ( \MUX_A|counter\(3) & ( (!\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (!\MUX_A|Add3~0_combout\ & !\MUX_A|counter\(4))) ) ) # ( !\MUX_A|counter\(3) & ( (!\MUX_A|counter\(4) & 
-- ((\MUX_A|Add3~0_combout\) # (\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datac => \MUX_A|ALT_INV_Add3~0_combout\,
	datad => \MUX_A|ALT_INV_counter\(4),
	dataf => \MUX_A|ALT_INV_counter\(3),
	combout => \MUX_A|LessThan0~0_combout\);

-- Location: LABCELL_X83_Y21_N24
\MUX_A|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|LessThan0~2_combout\ = ( !\MUX_A|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( (!\MUX_A|counter\(4) & (!\MUX_A|counter\(3) & !\MUX_A|Add3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(4),
	datab => \MUX_A|ALT_INV_counter\(3),
	datac => \MUX_A|ALT_INV_Add3~0_combout\,
	datae => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \MUX_A|LessThan0~2_combout\);

-- Location: LABCELL_X85_Y21_N12
\MUX_A|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|LessThan0~3_combout\ = ( \MUX_A|counter\(2) & ( \MUX_A|counter\(1) & ( !\MUX_A|LessThan0~2_combout\ ) ) ) # ( !\MUX_A|counter\(2) & ( \MUX_A|counter\(1) & ( (!\MUX_A|LessThan0~2_combout\ & ((!\MUX_A|LessThan0~0_combout\) # 
-- (\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\))) ) ) ) # ( \MUX_A|counter\(2) & ( !\MUX_A|counter\(1) & ( (!\MUX_A|LessThan0~2_combout\ & ((!\MUX_A|LessThan0~0_combout\) # ((\MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\) # 
-- (\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\)))) ) ) ) # ( !\MUX_A|counter\(2) & ( !\MUX_A|counter\(1) & ( (!\MUX_A|LessThan0~2_combout\ & ((!\MUX_A|LessThan0~0_combout\) # ((\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- \MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010110000101100001111000010110000101100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_LessThan0~0_combout\,
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \MUX_A|ALT_INV_LessThan0~2_combout\,
	datad => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datae => \MUX_A|ALT_INV_counter\(2),
	dataf => \MUX_A|ALT_INV_counter\(1),
	combout => \MUX_A|LessThan0~3_combout\);

-- Location: LABCELL_X85_Y21_N6
\MUX_A|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|LessThan0~1_combout\ = ( \MUX_A|counter\(2) & ( !\MUX_A|counter\(0) & ( (!\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\MUX_A|LessThan0~0_combout\ & (!\MUX_A|counter\(1) $ 
-- (!\MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\)))) ) ) ) # ( !\MUX_A|counter\(2) & ( !\MUX_A|counter\(0) & ( (\MUX_A|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\MUX_A|LessThan0~0_combout\ & (!\MUX_A|counter\(1) $ 
-- (!\MUX_A|Div0|auto_generated|divider|divider|op_4~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000001000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(1),
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \MUX_A|ALT_INV_LessThan0~0_combout\,
	datad => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datae => \MUX_A|ALT_INV_counter\(2),
	dataf => \MUX_A|ALT_INV_counter\(0),
	combout => \MUX_A|LessThan0~1_combout\);

-- Location: LABCELL_X85_Y21_N24
\MUX_A|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|LessThan0~8_combout\ = ( \MUX_A|LessThan0~1_combout\ & ( (!\MUX_A|LessThan0~7_combout\) # ((\MUX_A|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \MUX_A|LessThan0~3_combout\)) ) ) # ( !\MUX_A|LessThan0~1_combout\ & ( 
-- (!\MUX_A|LessThan0~7_combout\) # (\MUX_A|LessThan0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \MUX_A|ALT_INV_LessThan0~7_combout\,
	datad => \MUX_A|ALT_INV_LessThan0~3_combout\,
	dataf => \MUX_A|ALT_INV_LessThan0~1_combout\,
	combout => \MUX_A|LessThan0~8_combout\);

-- Location: IOIBUF_X64_Y0_N35
\key_input~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_input,
	o => \key_input~input_o\);

-- Location: FF_X85_Y21_N32
\MUX_A|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~13_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(0));

-- Location: LABCELL_X85_Y21_N33
\MUX_A|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~17_sumout\ = SUM(( \MUX_A|counter\(1) ) + ( GND ) + ( \MUX_A|Add4~14\ ))
-- \MUX_A|Add4~18\ = CARRY(( \MUX_A|counter\(1) ) + ( GND ) + ( \MUX_A|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(1),
	cin => \MUX_A|Add4~14\,
	sumout => \MUX_A|Add4~17_sumout\,
	cout => \MUX_A|Add4~18\);

-- Location: FF_X85_Y21_N35
\MUX_A|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~17_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(1));

-- Location: LABCELL_X85_Y21_N36
\MUX_A|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~1_sumout\ = SUM(( \MUX_A|counter\(2) ) + ( GND ) + ( \MUX_A|Add4~18\ ))
-- \MUX_A|Add4~2\ = CARRY(( \MUX_A|counter\(2) ) + ( GND ) + ( \MUX_A|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(2),
	cin => \MUX_A|Add4~18\,
	sumout => \MUX_A|Add4~1_sumout\,
	cout => \MUX_A|Add4~2\);

-- Location: FF_X85_Y21_N38
\MUX_A|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~1_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(2));

-- Location: LABCELL_X85_Y21_N39
\MUX_A|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~5_sumout\ = SUM(( \MUX_A|counter\(3) ) + ( GND ) + ( \MUX_A|Add4~2\ ))
-- \MUX_A|Add4~6\ = CARRY(( \MUX_A|counter\(3) ) + ( GND ) + ( \MUX_A|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(3),
	cin => \MUX_A|Add4~2\,
	sumout => \MUX_A|Add4~5_sumout\,
	cout => \MUX_A|Add4~6\);

-- Location: FF_X85_Y21_N41
\MUX_A|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~5_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(3));

-- Location: LABCELL_X85_Y21_N42
\MUX_A|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~9_sumout\ = SUM(( \MUX_A|counter\(4) ) + ( GND ) + ( \MUX_A|Add4~6\ ))
-- \MUX_A|Add4~10\ = CARRY(( \MUX_A|counter\(4) ) + ( GND ) + ( \MUX_A|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|ALT_INV_counter\(4),
	cin => \MUX_A|Add4~6\,
	sumout => \MUX_A|Add4~9_sumout\,
	cout => \MUX_A|Add4~10\);

-- Location: FF_X85_Y21_N44
\MUX_A|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~9_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(4));

-- Location: LABCELL_X85_Y21_N45
\MUX_A|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~29_sumout\ = SUM(( \MUX_A|counter\(5) ) + ( GND ) + ( \MUX_A|Add4~10\ ))
-- \MUX_A|Add4~30\ = CARRY(( \MUX_A|counter\(5) ) + ( GND ) + ( \MUX_A|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(5),
	cin => \MUX_A|Add4~10\,
	sumout => \MUX_A|Add4~29_sumout\,
	cout => \MUX_A|Add4~30\);

-- Location: FF_X85_Y21_N47
\MUX_A|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~29_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(5));

-- Location: LABCELL_X85_Y21_N48
\MUX_A|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~25_sumout\ = SUM(( \MUX_A|counter\(6) ) + ( GND ) + ( \MUX_A|Add4~30\ ))
-- \MUX_A|Add4~26\ = CARRY(( \MUX_A|counter\(6) ) + ( GND ) + ( \MUX_A|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(6),
	cin => \MUX_A|Add4~30\,
	sumout => \MUX_A|Add4~25_sumout\,
	cout => \MUX_A|Add4~26\);

-- Location: FF_X85_Y21_N50
\MUX_A|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~25_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(6));

-- Location: LABCELL_X85_Y21_N51
\MUX_A|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~53_sumout\ = SUM(( \MUX_A|counter\(7) ) + ( GND ) + ( \MUX_A|Add4~26\ ))
-- \MUX_A|Add4~54\ = CARRY(( \MUX_A|counter\(7) ) + ( GND ) + ( \MUX_A|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(7),
	cin => \MUX_A|Add4~26\,
	sumout => \MUX_A|Add4~53_sumout\,
	cout => \MUX_A|Add4~54\);

-- Location: FF_X85_Y21_N53
\MUX_A|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~53_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(7));

-- Location: LABCELL_X85_Y21_N54
\MUX_A|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~49_sumout\ = SUM(( \MUX_A|counter\(8) ) + ( GND ) + ( \MUX_A|Add4~54\ ))
-- \MUX_A|Add4~50\ = CARRY(( \MUX_A|counter\(8) ) + ( GND ) + ( \MUX_A|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(8),
	cin => \MUX_A|Add4~54\,
	sumout => \MUX_A|Add4~49_sumout\,
	cout => \MUX_A|Add4~50\);

-- Location: FF_X85_Y21_N56
\MUX_A|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~49_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(8));

-- Location: LABCELL_X85_Y21_N57
\MUX_A|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~45_sumout\ = SUM(( \MUX_A|counter\(9) ) + ( GND ) + ( \MUX_A|Add4~50\ ))
-- \MUX_A|Add4~46\ = CARRY(( \MUX_A|counter\(9) ) + ( GND ) + ( \MUX_A|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(9),
	cin => \MUX_A|Add4~50\,
	sumout => \MUX_A|Add4~45_sumout\,
	cout => \MUX_A|Add4~46\);

-- Location: FF_X85_Y21_N59
\MUX_A|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~45_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(9));

-- Location: LABCELL_X85_Y20_N0
\MUX_A|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~41_sumout\ = SUM(( \MUX_A|counter\(10) ) + ( GND ) + ( \MUX_A|Add4~46\ ))
-- \MUX_A|Add4~42\ = CARRY(( \MUX_A|counter\(10) ) + ( GND ) + ( \MUX_A|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(10),
	cin => \MUX_A|Add4~46\,
	sumout => \MUX_A|Add4~41_sumout\,
	cout => \MUX_A|Add4~42\);

-- Location: FF_X85_Y20_N2
\MUX_A|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~41_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(10));

-- Location: LABCELL_X85_Y20_N3
\MUX_A|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~37_sumout\ = SUM(( \MUX_A|counter\(11) ) + ( GND ) + ( \MUX_A|Add4~42\ ))
-- \MUX_A|Add4~38\ = CARRY(( \MUX_A|counter\(11) ) + ( GND ) + ( \MUX_A|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(11),
	cin => \MUX_A|Add4~42\,
	sumout => \MUX_A|Add4~37_sumout\,
	cout => \MUX_A|Add4~38\);

-- Location: FF_X85_Y20_N5
\MUX_A|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~37_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(11));

-- Location: LABCELL_X85_Y20_N6
\MUX_A|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~33_sumout\ = SUM(( \MUX_A|counter\(12) ) + ( GND ) + ( \MUX_A|Add4~38\ ))
-- \MUX_A|Add4~34\ = CARRY(( \MUX_A|counter\(12) ) + ( GND ) + ( \MUX_A|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|ALT_INV_counter\(12),
	cin => \MUX_A|Add4~38\,
	sumout => \MUX_A|Add4~33_sumout\,
	cout => \MUX_A|Add4~34\);

-- Location: FF_X85_Y20_N8
\MUX_A|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~33_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(12));

-- Location: LABCELL_X85_Y20_N48
\MUX_A|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|LessThan0~4_combout\ = ( !\MUX_A|counter\(11) & ( !\MUX_A|counter\(7) & ( (!\MUX_A|counter\(8) & (!\MUX_A|counter\(12) & (!\MUX_A|counter\(10) & !\MUX_A|counter\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(8),
	datab => \MUX_A|ALT_INV_counter\(12),
	datac => \MUX_A|ALT_INV_counter\(10),
	datad => \MUX_A|ALT_INV_counter\(9),
	datae => \MUX_A|ALT_INV_counter\(11),
	dataf => \MUX_A|ALT_INV_counter\(7),
	combout => \MUX_A|LessThan0~4_combout\);

-- Location: LABCELL_X85_Y20_N9
\MUX_A|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~21_sumout\ = SUM(( \MUX_A|counter\(13) ) + ( GND ) + ( \MUX_A|Add4~34\ ))
-- \MUX_A|Add4~22\ = CARRY(( \MUX_A|counter\(13) ) + ( GND ) + ( \MUX_A|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(13),
	cin => \MUX_A|Add4~34\,
	sumout => \MUX_A|Add4~21_sumout\,
	cout => \MUX_A|Add4~22\);

-- Location: FF_X85_Y20_N11
\MUX_A|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~21_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(13));

-- Location: LABCELL_X85_Y20_N12
\MUX_A|Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~97_sumout\ = SUM(( \MUX_A|counter\(14) ) + ( GND ) + ( \MUX_A|Add4~22\ ))
-- \MUX_A|Add4~98\ = CARRY(( \MUX_A|counter\(14) ) + ( GND ) + ( \MUX_A|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|ALT_INV_counter\(14),
	cin => \MUX_A|Add4~22\,
	sumout => \MUX_A|Add4~97_sumout\,
	cout => \MUX_A|Add4~98\);

-- Location: FF_X85_Y20_N14
\MUX_A|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~97_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(14));

-- Location: LABCELL_X85_Y20_N15
\MUX_A|Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~93_sumout\ = SUM(( \MUX_A|counter\(15) ) + ( GND ) + ( \MUX_A|Add4~98\ ))
-- \MUX_A|Add4~94\ = CARRY(( \MUX_A|counter\(15) ) + ( GND ) + ( \MUX_A|Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(15),
	cin => \MUX_A|Add4~98\,
	sumout => \MUX_A|Add4~93_sumout\,
	cout => \MUX_A|Add4~94\);

-- Location: FF_X85_Y20_N17
\MUX_A|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~93_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(15));

-- Location: LABCELL_X85_Y20_N18
\MUX_A|Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~89_sumout\ = SUM(( \MUX_A|counter\(16) ) + ( GND ) + ( \MUX_A|Add4~94\ ))
-- \MUX_A|Add4~90\ = CARRY(( \MUX_A|counter\(16) ) + ( GND ) + ( \MUX_A|Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(16),
	cin => \MUX_A|Add4~94\,
	sumout => \MUX_A|Add4~89_sumout\,
	cout => \MUX_A|Add4~90\);

-- Location: FF_X85_Y20_N20
\MUX_A|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~89_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(16));

-- Location: LABCELL_X85_Y20_N21
\MUX_A|Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~85_sumout\ = SUM(( \MUX_A|counter\(17) ) + ( GND ) + ( \MUX_A|Add4~90\ ))
-- \MUX_A|Add4~86\ = CARRY(( \MUX_A|counter\(17) ) + ( GND ) + ( \MUX_A|Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(17),
	cin => \MUX_A|Add4~90\,
	sumout => \MUX_A|Add4~85_sumout\,
	cout => \MUX_A|Add4~86\);

-- Location: FF_X85_Y20_N23
\MUX_A|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~85_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(17));

-- Location: LABCELL_X85_Y20_N24
\MUX_A|Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~81_sumout\ = SUM(( \MUX_A|counter\(18) ) + ( GND ) + ( \MUX_A|Add4~86\ ))
-- \MUX_A|Add4~82\ = CARRY(( \MUX_A|counter\(18) ) + ( GND ) + ( \MUX_A|Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(18),
	cin => \MUX_A|Add4~86\,
	sumout => \MUX_A|Add4~81_sumout\,
	cout => \MUX_A|Add4~82\);

-- Location: FF_X85_Y20_N26
\MUX_A|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~81_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(18));

-- Location: MLABCELL_X84_Y20_N3
\MUX_A|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|LessThan0~6_combout\ = ( !\MUX_A|counter\(17) & ( !\MUX_A|counter\(14) & ( (!\MUX_A|counter\(15) & (!\MUX_A|counter\(16) & !\MUX_A|counter\(18))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(15),
	datab => \MUX_A|ALT_INV_counter\(16),
	datac => \MUX_A|ALT_INV_counter\(18),
	datae => \MUX_A|ALT_INV_counter\(17),
	dataf => \MUX_A|ALT_INV_counter\(14),
	combout => \MUX_A|LessThan0~6_combout\);

-- Location: LABCELL_X85_Y20_N27
\MUX_A|Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~77_sumout\ = SUM(( \MUX_A|counter\(19) ) + ( GND ) + ( \MUX_A|Add4~82\ ))
-- \MUX_A|Add4~78\ = CARRY(( \MUX_A|counter\(19) ) + ( GND ) + ( \MUX_A|Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(19),
	cin => \MUX_A|Add4~82\,
	sumout => \MUX_A|Add4~77_sumout\,
	cout => \MUX_A|Add4~78\);

-- Location: FF_X85_Y20_N29
\MUX_A|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~77_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(19));

-- Location: LABCELL_X85_Y20_N30
\MUX_A|Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~73_sumout\ = SUM(( \MUX_A|counter\(20) ) + ( GND ) + ( \MUX_A|Add4~78\ ))
-- \MUX_A|Add4~74\ = CARRY(( \MUX_A|counter\(20) ) + ( GND ) + ( \MUX_A|Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|ALT_INV_counter\(20),
	cin => \MUX_A|Add4~78\,
	sumout => \MUX_A|Add4~73_sumout\,
	cout => \MUX_A|Add4~74\);

-- Location: FF_X85_Y20_N32
\MUX_A|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~73_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(20));

-- Location: LABCELL_X85_Y20_N33
\MUX_A|Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~69_sumout\ = SUM(( \MUX_A|counter\(21) ) + ( GND ) + ( \MUX_A|Add4~74\ ))
-- \MUX_A|Add4~70\ = CARRY(( \MUX_A|counter\(21) ) + ( GND ) + ( \MUX_A|Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(21),
	cin => \MUX_A|Add4~74\,
	sumout => \MUX_A|Add4~69_sumout\,
	cout => \MUX_A|Add4~70\);

-- Location: FF_X85_Y20_N35
\MUX_A|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~69_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(21));

-- Location: LABCELL_X85_Y20_N36
\MUX_A|Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~65_sumout\ = SUM(( \MUX_A|counter\(22) ) + ( GND ) + ( \MUX_A|Add4~70\ ))
-- \MUX_A|Add4~66\ = CARRY(( \MUX_A|counter\(22) ) + ( GND ) + ( \MUX_A|Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(22),
	cin => \MUX_A|Add4~70\,
	sumout => \MUX_A|Add4~65_sumout\,
	cout => \MUX_A|Add4~66\);

-- Location: FF_X85_Y20_N38
\MUX_A|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~65_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(22));

-- Location: LABCELL_X85_Y20_N39
\MUX_A|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~61_sumout\ = SUM(( \MUX_A|counter\(23) ) + ( GND ) + ( \MUX_A|Add4~66\ ))
-- \MUX_A|Add4~62\ = CARRY(( \MUX_A|counter\(23) ) + ( GND ) + ( \MUX_A|Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_A|ALT_INV_counter\(23),
	cin => \MUX_A|Add4~66\,
	sumout => \MUX_A|Add4~61_sumout\,
	cout => \MUX_A|Add4~62\);

-- Location: FF_X85_Y20_N41
\MUX_A|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~61_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(23));

-- Location: LABCELL_X85_Y20_N42
\MUX_A|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|Add4~57_sumout\ = SUM(( \MUX_A|counter\(24) ) + ( GND ) + ( \MUX_A|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|ALT_INV_counter\(24),
	cin => \MUX_A|Add4~62\,
	sumout => \MUX_A|Add4~57_sumout\);

-- Location: FF_X85_Y20_N44
\MUX_A|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|Add4~57_sumout\,
	sclr => \MUX_A|LessThan0~8_combout\,
	ena => \ALT_INV_key_input~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|counter\(24));

-- Location: LABCELL_X85_Y20_N54
\MUX_A|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|LessThan0~5_combout\ = ( !\MUX_A|counter\(19) & ( !\MUX_A|counter\(24) & ( (!\MUX_A|counter\(21) & (!\MUX_A|counter\(20) & (!\MUX_A|counter\(22) & !\MUX_A|counter\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_counter\(21),
	datab => \MUX_A|ALT_INV_counter\(20),
	datac => \MUX_A|ALT_INV_counter\(22),
	datad => \MUX_A|ALT_INV_counter\(23),
	datae => \MUX_A|ALT_INV_counter\(19),
	dataf => \MUX_A|ALT_INV_counter\(24),
	combout => \MUX_A|LessThan0~5_combout\);

-- Location: LABCELL_X85_Y21_N18
\MUX_A|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|LessThan0~7_combout\ = ( !\MUX_A|counter\(5) & ( !\MUX_A|counter\(6) & ( (\MUX_A|LessThan0~4_combout\ & (\MUX_A|LessThan0~6_combout\ & (\MUX_A|LessThan0~5_combout\ & !\MUX_A|counter\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_LessThan0~4_combout\,
	datab => \MUX_A|ALT_INV_LessThan0~6_combout\,
	datac => \MUX_A|ALT_INV_LessThan0~5_combout\,
	datad => \MUX_A|ALT_INV_counter\(13),
	datae => \MUX_A|ALT_INV_counter\(5),
	dataf => \MUX_A|ALT_INV_counter\(6),
	combout => \MUX_A|LessThan0~7_combout\);

-- Location: LABCELL_X85_Y21_N0
\MUX_A|blink~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A|blink~0_combout\ = ( \MUX_A|blink~q\ & ( \MUX_A|LessThan0~1_combout\ & ( ((\MUX_A|LessThan0~7_combout\ & ((!\MUX_A|Div0|auto_generated|divider|divider|op_5~1_sumout\) # (!\MUX_A|LessThan0~3_combout\)))) # (\key_input~input_o\) ) ) ) # ( 
-- !\MUX_A|blink~q\ & ( \MUX_A|LessThan0~1_combout\ & ( (!\key_input~input_o\ & ((!\MUX_A|LessThan0~7_combout\) # ((\MUX_A|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \MUX_A|LessThan0~3_combout\)))) ) ) ) # ( \MUX_A|blink~q\ & ( 
-- !\MUX_A|LessThan0~1_combout\ & ( ((\MUX_A|LessThan0~7_combout\ & !\MUX_A|LessThan0~3_combout\)) # (\key_input~input_o\) ) ) ) # ( !\MUX_A|blink~q\ & ( !\MUX_A|LessThan0~1_combout\ & ( (!\key_input~input_o\ & ((!\MUX_A|LessThan0~7_combout\) # 
-- (\MUX_A|LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000010111110000111110100000101100000101111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|ALT_INV_LessThan0~7_combout\,
	datab => \MUX_A|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \ALT_INV_key_input~input_o\,
	datad => \MUX_A|ALT_INV_LessThan0~3_combout\,
	datae => \MUX_A|ALT_INV_blink~q\,
	dataf => \MUX_A|ALT_INV_LessThan0~1_combout\,
	combout => \MUX_A|blink~0_combout\);

-- Location: FF_X85_Y21_N2
\MUX_A|blink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \MUX_A|blink~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUX_A|blink~q\);

-- Location: LABCELL_X7_Y14_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


