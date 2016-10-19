----------------------------------------------------------------------------------
-- Company: QMUL DSD Group
-- Engineer: Patrick Balcombe 
-- 
-- Create Date:    15:28:48 10/09/2016 
-- Design Name: Four Input NOR gate
-- Module Name:    FourInputNOR_VHDL - Behavioral 
-- Project Name: DSD LAB 1
-- Target Devices: 
-- Tool versions: 
-- Description: Four Input NOR gate
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

entity FourInputNOR_VHDL is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           e : out  STD_LOGIC);
end FourInputNOR_VHDL;

architecture Behavioral of FourInputNOR_VHDL is

begin
	process(a, b, c, d)--watch for change in inputs
		begin
			--define output relationship with inputs a and b
			e <= not( a or b or c or d) after 14 ns;
	end process;

end Behavioral;

