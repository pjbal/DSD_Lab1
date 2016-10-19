----------------------------------------------------------------------------------
-- Company: QMUL DSD Group
-- Engineer: Patrick Balcombe 
-- 
-- Create Date:    15:20:13 10/09/2016 
-- Design Name:    Two Input NAND gate
-- Module Name:    TwoInputNAND_VHDL - Behavioral 
-- Project Name: DSD LAB 1
-- Target Devices: 
-- Tool versions: 
-- Description: Single Two Input NAND gate.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TwoInputNAND_VHDL is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end TwoInputNAND_VHDL;

--beviour defined with if statments
architecture Behavioral1 of TwoInputNAND_VHDL is

begin
	
process (a, b)--watch for change in a and b
	begin
	
	if a='1' and b='1' then--if both inputs high
		c <= '0';
	else --any other posibility
		c <= '1';
	end if;
end process;

end Behavioral1;

--beviour defined with logic operators
architecture Behavioral2 of TwoInputNAND_VHDL is

begin
	
process (a, b)--watch for change in a and b
	begin
		--define output relationship with inputs a and b
		c <=not(a and b) after 7ns;
	
end process;

end Behavioral2;

