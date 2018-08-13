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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/10/2018 14:49:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          topLevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY topLevel_vhd_vec_tst IS
END topLevel_vhd_vec_tst;
ARCHITECTURE topLevel_arch OF topLevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fpga_clk_50 : STD_LOGIC;
SIGNAL fpga_led_pio : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL key_input : STD_LOGIC;
SIGNAL sw_input : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT topLevel
	PORT (
	fpga_clk_50 : IN STD_LOGIC;
	fpga_led_pio : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	key_input : IN STD_LOGIC;
	sw_input : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : topLevel
	PORT MAP (
-- list connections between master ports and signals
	fpga_clk_50 => fpga_clk_50,
	fpga_led_pio => fpga_led_pio,
	key_input => key_input,
	sw_input => sw_input
	);

-- fpga_clk_50
t_prcs_fpga_clk_50: PROCESS
BEGIN
LOOP
	fpga_clk_50 <= '0';
	WAIT FOR 10000 ps;
	fpga_clk_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_fpga_clk_50;

-- key_input
t_prcs_key_input: PROCESS
BEGIN
	key_input <= '0';
WAIT;
END PROCESS t_prcs_key_input;
-- sw_input[3]
t_prcs_sw_input_3: PROCESS
BEGIN
	sw_input(3) <= '0';
	WAIT FOR 900000 ps;
	sw_input(3) <= '1';
WAIT;
END PROCESS t_prcs_sw_input_3;
-- sw_input[2]
t_prcs_sw_input_2: PROCESS
BEGIN
	sw_input(2) <= '0';
	WAIT FOR 770000 ps;
	sw_input(2) <= '1';
WAIT;
END PROCESS t_prcs_sw_input_2;
-- sw_input[1]
t_prcs_sw_input_1: PROCESS
BEGIN
	sw_input(1) <= '0';
	WAIT FOR 640000 ps;
	sw_input(1) <= '1';
WAIT;
END PROCESS t_prcs_sw_input_1;
-- sw_input[0]
t_prcs_sw_input_0: PROCESS
BEGIN
	sw_input(0) <= '0';
	WAIT FOR 530000 ps;
	sw_input(0) <= '1';
WAIT;
END PROCESS t_prcs_sw_input_0;
END topLevel_arch;
