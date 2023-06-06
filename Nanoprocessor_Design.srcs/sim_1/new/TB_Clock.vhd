----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2023 03:30:53 PM
-- Design Name: 
-- Module Name: TB_Clock - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Clock is
--  Port ( );
end TB_Clock;

architecture Behavioral of TB_Clock is
COMPONENT Clock
    PORT( Clk_in : IN STD_LOGIC;
             Clk_out : OUT STD_LOGIC);
END COMPONENT; 
SIGNAL Clk_in  : std_logic;
SIGNAL Clk_out : std_logic;
begin
UUT : Clock PORT MAP(
        Clk_in => Clk_in,
        Clk_out => Clk_out
        );
        
process
begin

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;

Clk_in <= '0';
WAIT FOR 10 ns;

Clk_in <= '1';
WAIT FOR 10 ns;


Clk_in <= '0';
WAIT for 10ns;
WAIT;

end process;


end Behavioral;
