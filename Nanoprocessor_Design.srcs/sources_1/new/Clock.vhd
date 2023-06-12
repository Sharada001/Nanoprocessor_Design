----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2023 03:05:00 PM
-- Design Name: 
-- Module Name: Clock - Behavioral
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

entity Clock is
    Port ( Clk_in : in STD_LOGIC := '0';
           Clk_out : out STD_LOGIC :='1');
end Clock;

architecture Behavioral of Clock is

signal count : integer := 1;
signal clk_status : std_logic := '0';

begin
    process (Clk_in) begin
        if(rising_edge(Clk_in)) then
            count <= count+1;
            if(count = 50000000)then   -- Counting frequency scaler(Reduced to 5 to simulation purposes.IF not 5M.)
                clk_status <= not clk_status;
                Clk_out <= clk_status;                
                count<=1;
            end if;
        end if;
    end process;
            
end Behavioral;
