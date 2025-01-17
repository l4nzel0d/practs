-- megafunction wizard: %LPM_DECODE%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_DECODE 

-- ============================================================
-- File Name: lpm_decode1.vhd
-- Megafunction Name(s):
-- 			LPM_DECODE
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.1.0 Build 162 10/23/2013 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_decode1 IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (2 DOWNTO 0)
	);
END lpm_decode1;


ARCHITECTURE SYN OF lpm_decode1 IS




	COMPONENT lpm_decode
	GENERIC (
		lpm_decodes		: NATURAL;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			data	: IN STD_LOGIC_VECTOR (2 DOWNTO 0)
	);
	END COMPONENT;

BEGIN

	LPM_DECODE_component : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => data
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: BaseDec NUMERIC "1"
-- Retrieval info: PRIVATE: EnableInput NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
-- Retrieval info: PRIVATE: Latency NUMERIC "0"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: eq0 NUMERIC "0"
-- Retrieval info: PRIVATE: eq1 NUMERIC "0"
-- Retrieval info: PRIVATE: eq2 NUMERIC "0"
-- Retrieval info: PRIVATE: eq3 NUMERIC "0"
-- Retrieval info: PRIVATE: eq4 NUMERIC "0"
-- Retrieval info: PRIVATE: eq5 NUMERIC "0"
-- Retrieval info: PRIVATE: eq6 NUMERIC "0"
-- Retrieval info: PRIVATE: eq7 NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "3"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DECODES NUMERIC "8"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DECODE"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "3"
-- Retrieval info: USED_PORT: @eq 0 0 8 0 OUTPUT NODEFVAL "@eq[7..0]"
-- Retrieval info: USED_PORT: data 0 0 3 0 INPUT NODEFVAL "data[2..0]"
-- Retrieval info: CONNECT: @data 0 0 3 0 data 0 0 3 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
