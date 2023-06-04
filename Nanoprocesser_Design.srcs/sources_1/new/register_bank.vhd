----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 01:48:00 PM
-- Design Name: 
-- Module Name: register_bank - Behavioral
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

entity register_bank is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           out0, out1, out2, out3, out4, out5, out6, out7 : out STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC :='0';
           Reg_EN : in STD_LOGIC_VECTOR (2 downto 0));
end register_bank;

architecture Behavioral of register_bank is

component Decoder_3_to_8 
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC := '1';
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Reg 
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0) ;
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal Reg_EN_vector : STD_LOGIC_VECTOR (7 downto 0);
signal inout1, inout2, inout3, inout4, inout5, inout6, inout7 : STD_LOGIC_VECTOR (3 downto 0);
begin
    Decoder : Decoder_3_to_8 
    port map(
    I=>Reg_EN,
    Y=>Reg_EN_vector
    );
    

    Register0 : Reg 
    port map(
    EN=>'1', -- Enable hardcoded to keep the 0000 stored in flipflop.
    Clk=>Clk,
    Q=>out0,
    D=>"0000" --Reset register value hardcoded. Make changes if needed. The previous value was "D=>i"
    );
    
    Register1 : Reg 
    port map(
    EN=>Reg_EN_vector(1),
    Clk=>Clk,
    Q=>inout1,
    D=>input
    );
       
   Register2 : Reg 
   port map(
   EN=>Reg_EN_vector(2),
   Clk=>Clk,
   Q=>inout2,
   D=>input
   );
    
  Register3 : Reg 
  port map(
  EN=>Reg_EN_vector(3),
  Clk=>Clk,
  Q=>inout3,
  D=>input
  );

  Register4 : Reg 
  port map(
  EN=>Reg_EN_vector(4),
  Clk=>Clk,
  Q=>inout4,
  D=>input
  );
  
 Register5 : Reg 
 port map(
 EN=>Reg_EN_vector(5),
 Clk=>Clk,
 Q=>inout5,
 D=>input
 );
 
Register6 : Reg 
port map(
EN=>Reg_EN_vector(6),
Clk=>Clk,
Q=>inout6,
D=>input
);

Register7 : Reg 
port map(
EN=>Reg_EN_vector(7),
Clk=>Clk,
Q=>inout7,
D=>input
);
process (Reset,inout1, inout2, inout3, inout4, inout5, inout6, inout7) is
begin
if (Reset='1') then
    out1 <= "0000";
    out2 <= "0000";
    out3 <= "0000";
    out4 <= "0000";
    out5 <= "0000";
    out6 <= "0000";
    out7 <= "0000";
else
    out1 <= inout1;
    out2 <= inout2;
    out3 <= inout3;
    out4 <= inout4;
    out5 <= inout5;
    out6 <= inout6;
    out7 <= inout7;
end if;
end process; 
end Behavioral;
