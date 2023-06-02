----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 12:29:58 PM
-- Design Name: 
-- Module Name: Add_Sub_Unit - Behavioral
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

entity Add_Sub_Unit is
    Port ( RegA : in STD_LOGIC_VECTOR (3 downto 0);
           RegB : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end Add_Sub_Unit;

architecture Behavioral of Add_Sub_Unit is

component RCA_4
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           C_out : out STD_LOGIC);
end component;

SIGNAL C_out, A0, A1, A2, A3, B0, B1, B2, B3 : std_logic;
SIGNAL Out_sig : STD_LOGIC_VECTOR (3 downto 0);

begin


A0 <= Sel or RegA(0);
A1 <= not(Sel) and RegA(1);
A2 <= not(Sel) and RegA(2);
A3 <= not(Sel) and RegA(3);
B0 <= (not(Sel) and RegB(0)) or (Sel and not(RegB(0)));
B1 <= (not(Sel) and RegB(1)) or (Sel and not(RegB(1)));
B2 <= (not(Sel) and RegB(2)) or (Sel and not(RegB(2)));
B3 <= (not(Sel) and RegB(3)) or (Sel and not(RegB(3)));

RCA_4_A : RCA_4
     port map (
     A0 => A0,
     A1 => A1,
     A2 => A2,
     A3 => A3,
     B0 => B0,
     B1 => B1,
     B2 => B2,
     B3 => B3,
     C_in => '0', -- Set to ground
     S0 => Out_sig(0),
     S1 => Out_sig(1),
     S2 => Out_sig(2),
     S3 => Out_sig(3),
     C_out => Overflow
);

Output(0) <= Out_sig(0);
Output(1) <= Out_sig(1);
Output(2) <= Out_sig(2);
Output(3) <= Out_sig(3);
Zero <= (not Out_sig(0)) and (not Out_sig(1)) and (not Out_sig(2)) and (not Out_sig(3));

end Behavioral;
