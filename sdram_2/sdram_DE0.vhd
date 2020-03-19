-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Fri Mar 13 14:39:46 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY sdram_DE0 IS 
	PORT
	(
		reset_reset_n :  IN  STD_LOGIC;
		inclk0 :  IN  STD_LOGIC;
		sdram_wire_dq :  INOUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		sdram_wire_cas_n :  OUT  STD_LOGIC;
		sdram_wire_cke :  OUT  STD_LOGIC;
		sdram_wire_cs_n :  OUT  STD_LOGIC;
		sdram_wire_ras_n :  OUT  STD_LOGIC;
		sdram_wire_we_n :  OUT  STD_LOGIC;
		c1 :  OUT  STD_LOGIC;
		led_export :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		sdram_wire_addr :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		sdram_wire_ba :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		sdram_wire_dqm :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END sdram_DE0;

ARCHITECTURE bdf_type OF sdram_DE0 IS 

COMPONENT sram_clk
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 c1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT de_0
	PORT(clk_clk : IN STD_LOGIC;
		 reset_reset_n : IN STD_LOGIC;
		 sdram_wire_dq : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sdram_wire_cas_n : OUT STD_LOGIC;
		 sdram_wire_cke : OUT STD_LOGIC;
		 sdram_wire_cs_n : OUT STD_LOGIC;
		 sdram_wire_ras_n : OUT STD_LOGIC;
		 sdram_wire_we_n : OUT STD_LOGIC;
		 led_export : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sdram_wire_addr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 sdram_wire_ba : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 sdram_wire_dqm : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



b2v_inst : sram_clk
PORT MAP(inclk0 => inclk0,
		 c0 => SYNTHESIZED_WIRE_0,
		 c1 => c1);


b2v_u0 : de_0
PORT MAP(clk_clk => SYNTHESIZED_WIRE_0,
		 reset_reset_n => reset_reset_n,
		 sdram_wire_dq => sdram_wire_dq,
		 sdram_wire_cas_n => sdram_wire_cas_n,
		 sdram_wire_cke => sdram_wire_cke,
		 sdram_wire_cs_n => sdram_wire_cs_n,
		 sdram_wire_ras_n => sdram_wire_ras_n,
		 sdram_wire_we_n => sdram_wire_we_n,
		 led_export => led_export,
		 sdram_wire_addr => sdram_wire_addr,
		 sdram_wire_ba => sdram_wire_ba,
		 sdram_wire_dqm => sdram_wire_dqm);


END bdf_type;