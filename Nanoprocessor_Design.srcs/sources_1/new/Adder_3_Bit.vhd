----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2023 11:27:04 AM
-- Design Name: 
-- Module Name: Adder_3_Bit - Behavioral
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

entity Adder_3_Bit is
    Port ( Input : in STD_LOGIC_VECTOR (2 downto 0);
           C_in : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2 downto 0);
           Overflow : out STD_LOGIC );
end Adder_3_Bit;

architecture Behavioral of Adder_3_Bit is

component FA
        port(
        A: in std_logic;
        B: in std_logic;
        C_in : in std_logic;
        S: out std_logic;
        C_out : out std_logic);
    end component;
    
    SIGNAL FA0_S, FA0_C , FA1_S,FA1_C, FA2_S, FA2_C : std_logic;
begin
    FA_0 : FA
        port map (
            A => Input(0),
            B => '0',
            C_in => C_in,
            S => Output(0),
            C_out => FA0_C);
     FA_1 : FA
        port map (
            A => Input(1),
            B => '0',
            C_in => FA0_C,
            S => Output(1),
            C_out => FA1_C);
    FA_2 : FA
        port map (
            A => Input(2),
            B => '0',
            C_in => FA1_C,
            S => Output(2),
            C_out => Overflow);

end Behavioral;