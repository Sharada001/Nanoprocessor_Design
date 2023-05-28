----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 10:16:15 PM
-- Design Name: 
-- Module Name: RCA_8 - Behavioral
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

entity RCA_8 is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           A4 : in STD_LOGIC;
           A5 : in STD_LOGIC;
           A6 : in STD_LOGIC;
           A7 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           B4 : in STD_LOGIC;
           B5 : in STD_LOGIC;
           B6 : in STD_LOGIC;
           B7 : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           S4 : out STD_LOGIC;
           S5 : out STD_LOGIC;
           S6 : out STD_LOGIC;
           S7 : out STD_LOGIC;
           C_out : out STD_LOGIC);
end RCA_8;

architecture Behavioral of RCA_8 is

component FA 
 port ( 
 A: in std_logic; 
 B: in std_logic; 
 C_in: in std_logic; 
 S: out std_logic; 
 C_out: out std_logic); 
end component;

SIGNAL FA0_C, FA1_C, FA2_C, FA3_C, FA4_C, FA5_C, FA6_C, FA7_C : std_logic;

begin

    FA_0 : FA 
     port map ( 
     A => A0, 
     B => B0, 
     C_in => '0', -- Set to ground 
     S => S0, 
     C_Out => FA0_C); 
    FA_1 : FA 
     port map ( 
     A => A1, 
     B => B1, 
     C_in => FA0_C, 
     S => S1, 
     C_Out => FA1_C);
    FA_2 : FA 
      port map ( 
      A => A2, 
      B => B2, 
      C_in => FA1_C, 
      S => S2, 
      C_Out => FA2_C);
    FA_3 : FA 
      port map ( 
      A => A3, 
      B => B3, 
      C_in => FA2_C, 
      S => S3, 
      C_Out => FA3_C); 
    FA_4 : FA 
      port map ( 
      A => A4, 
      B => B4, 
      C_in => FA3_C, 
      S => S4, 
      C_Out => FA4_C); 
    FA_5 : FA 
      port map ( 
      A => A5, 
      B => B5, 
      C_in => FA4_C, 
      S => S5, 
      C_Out => FA5_C);
    FA_6 : FA 
      port map ( 
      A => A6, 
      B => B6, 
      C_in => FA5_C, 
      S => S6, 
      C_Out => FA6_C);
    FA_7 : FA 
      port map ( 
      A => A7, 
      B => B7, 
      C_in => FA6_C, 
      S => S7, 
      C_Out => C_out); 

end Behavioral;

