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
signal Input_vector : STD_LOGIC_VECTOR (3 downto 0);
signal En_1, En_2, En_3, En_4, En_5, En_6, En_7 : STD_LOGIC;
--signal Out_1, Out_2, Out_3, Out_4, Out_5, Out_6, Out_7 : STD_LOGIC_VECTOR (3 downto 0);

begin

    Input_vector <= "0000" when ( Reset='1' ) else input;
    
    Decoder : Decoder_3_to_8 
    port map(
    I=>Reg_EN,
    Y=>Reg_EN_vector
    );
    
    En_1 <= '1' when ( Reset='1' ) else Reg_EN_vector(1);
    En_2 <= '1' when ( Reset='1' ) else Reg_EN_vector(2);
    En_3 <= '1' when ( Reset='1' ) else Reg_EN_vector(3);
    En_4 <= '1' when ( Reset='1' ) else Reg_EN_vector(4);
    En_5 <= '1' when ( Reset='1' ) else Reg_EN_vector(5);
    En_6 <= '1' when ( Reset='1' ) else Reg_EN_vector(6);
    En_7 <= '1' when ( Reset='1' ) else Reg_EN_vector(7);

    Register0 : Reg 
    port map(
    EN=>'1', -- Enable hardcoded to keep the 0000 stored in flipflop.
    Clk=>Clk,
    Q=>out0,
    D=>"0000" --Reset register value hardcoded. Make changes if needed. The previous value was "D=>i"
    );
    
    Register1 : Reg 
    port map(
    EN=>En_1,
    Clk=>Clk,
    Q=>out1,
    D=>Input_vector
    );
       
    Register2 : Reg 
    port map(
    EN=>En_2,
    Clk=>Clk,
    Q=>out2,
    D=>Input_vector
    );
    
    Register3 : Reg 
    port map(
    EN=>En_3,
    Clk=>Clk,
    Q=>out3,
    D=>Input_vector
    );

    Register4 : Reg 
    port map(
    EN=>En_4,
    Clk=>Clk,
    Q=>out4,
    D=>Input_vector
    );
  
    Register5 : Reg 
    port map(
    EN=>En_5,
    Clk=>Clk,
    Q=>out5,
    D=>Input_vector
    );
 
    Register6 : Reg 
    port map(
    EN=>En_6,
    Clk=>Clk,
    Q=>out6,
    D=>Input_vector
    );
    
    Register7 : Reg 
    port map(
    EN=>En_7,
    Clk=>Clk,
    Q=>out7,
    D=>Input_vector
    );

 
end Behavioral;
