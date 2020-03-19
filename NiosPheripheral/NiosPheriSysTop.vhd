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
-- CREATED		"Sat Mar 14 18:32:09 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY NiosPheriSysTop IS 
	PORT
	(
		inclk0 :  IN  STD_LOGIC;
		reset_reset_n :  IN  STD_LOGIC;
		sdram_cntr_dq :  INOUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		sw_export :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		c1 :  OUT  STD_LOGIC;
		sdram_cntr_cas_n :  OUT  STD_LOGIC;
		sdram_cntr_cke :  OUT  STD_LOGIC;
		sdram_cntr_cs_n :  OUT  STD_LOGIC;
		sdram_cntr_ras_n :  OUT  STD_LOGIC;
		sdram_cntr_we_n :  OUT  STD_LOGIC;
		idseven_seg0_export :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		idseven_seg1_export :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		idseven_seg2_export :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		idseven_seg3_export :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		led_export :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		sdram_cntr_addr :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		sdram_cntr_ba :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		sdram_cntr_dqm :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END NiosPheriSysTop;

ARCHITECTURE bdf_type OF NiosPheriSysTop IS 

COMPONENT sdram_nios_pll
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 c1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT niospherisys
	PORT(clk_clk : IN STD_LOGIC;
		 reset_reset_n : IN STD_LOGIC;
		 sdram_cntr_dq : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sw_export : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sdram_cntr_cas_n : OUT STD_LOGIC;
		 sdram_cntr_cke : OUT STD_LOGIC;
		 sdram_cntr_cs_n : OUT STD_LOGIC;
		 sdram_cntr_ras_n : OUT STD_LOGIC;
		 sdram_cntr_we_n : OUT STD_LOGIC;
		idseven_seg0_export : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 idseven_seg1_export : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 idseven_seg2_export : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 idseven_seg3_export : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 led_export : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sdram_cntr_addr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 sdram_cntr_ba : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 sdram_cntr_dqm : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



b2v_inst : sdram_nios_pll
PORT MAP(inclk0 => inclk0,
		 c0 => SYNTHESIZED_WIRE_0,
		 c1 => c1);


b2v_inst1 : niospherisys
PORT MAP(clk_clk => SYNTHESIZED_WIRE_0,
		 reset_reset_n => reset_reset_n,
		 sdram_cntr_dq => sdram_cntr_dq,
		 sw_export => sw_export,
		 sdram_cntr_cas_n => sdram_cntr_cas_n,
		 sdram_cntr_cke => sdram_cntr_cke,
		 sdram_cntr_cs_n => sdram_cntr_cs_n,
		 sdram_cntr_ras_n => sdram_cntr_ras_n,
		 sdram_cntr_we_n => sdram_cntr_we_n,
		idseven_seg0_export =>idseven_seg0_export,
		 idseven_seg1_export => idseven_seg1_export,
		 idseven_seg2_export => idseven_seg2_export,
		 idseven_seg3_export => idseven_seg3_export,
		 led_export => led_export,
		 sdram_cntr_addr => sdram_cntr_addr,
		 sdram_cntr_ba => sdram_cntr_ba,
		 sdram_cntr_dqm => sdram_cntr_dqm);


END bdf_type;