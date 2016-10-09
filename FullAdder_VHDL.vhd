-- 
-- Create Date:    15:30:05 10/09/2016 
-- Design Name: Full Adder
-- Module Name:    FullAdder_VHDL - Behavioral 
-- Project Name: 	DSD LAB 1
-- Target Devices: 
-- Tool versions: 
-- Description: Single Full Adder.
--
-- Dependencies: DSD_LAB1_HalfAdder(HalfAdder_VHDL.vhd-09/10/2016)
--						DSD_LAB1_TwoInputOR(TwoInputOR_VHDL.vhd-09/10/2016)
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FullAdder_VHDL is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FullAdder_VHDL;

architecture Behavioral of FullAdder_VHDL is

	component HalfAdder_VHDL
		Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	end component;
		
	component TwoInputOR_VHDL
		Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
	end component;
	
	signal sumSig, Csig1, Csig2 : std_logic;
	
begin

	Int_HalfAdder1: HalfAdder_VHDL port map( a, b, sumSig, Csig1);
	Int_HalfAdder2: HalfAdder_VHDL port map( sumSig, Cin, s, Csig2);
	Int_TwoInputOR: TwoInputOR_VHDL port map (Csig1, Csig2, Cout);

end Behavioral;

