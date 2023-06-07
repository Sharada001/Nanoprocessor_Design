# Nanoprocessor Design

<h2>Clock Component Interface ~</h2>

<pre>
<code>
-- Clock Component Interface
COMPONENT Clock
    PORT( Clk_in : IN STD_LOGIC;
             Clk_out : OUT STD_LOGIC);
END COMPONENT; 
</code>
</pre>

<h2>3_bit_Adder Component Interface ~</h2>

<pre>
<code>
-- 3_bit_Adder Component Interface
component Adder_3_Bit 
    Port ( Input : in STD_LOGIC_VECTOR (2 downto 0);
           C_in : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2 downto 0);
           Overflow : out STD_LOGIC );
end component;
</code>
</pre>

<h2>Program_ROM Component Interface ~</h2>

<pre>
<code>
-- Program_ROM Component Interface
Component Program_ROM
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           instruction_code : out STD_LOGIC_VECTOR (11 downto 0));
    END COMPONENT;
</code>
</pre>

<h2>Register_Bank Component Interface ~</h2>

<pre>
<code>
-- register_bank Component Interface
component register_bank
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           Reset : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Reg_EN : in STD_LOGIC_VECTOR (2 downto 0);
           out0, out1, out2, out3, out4, out5, out6, out7 : out STD_LOGIC_VECTOR (3 downto 0));
end component;
</code>
</pre>

<h2>Program_Counter_3_bits Component Interface ~</h2>

<pre>
<code>
-- Program_Counter_3_bits Component Interface
component Program_Counter_3_bits
    Port ( in_addr : in STD_LOGIC_VECTOR (2 downto 0);
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           out_addr : out STD_LOGIC_VECTOR (2 downto 0));
end component;
</code>
</pre>

<h2>Mux_8_way_4_bit Component Interface ~</h2>

<pre>
<code>
-- Mux_8_way_4_bit Component Interface
component Mux_8_way_4_bit
    Port ( in0 : in STD_LOGIC_VECTOR (3 downto 0);
           in1 : in STD_LOGIC_VECTOR (3 downto 0);
           in2 : in STD_LOGIC_VECTOR (3 downto 0);
           in3 : in STD_LOGIC_VECTOR (3 downto 0);
           in4 : in STD_LOGIC_VECTOR (3 downto 0);
           in5 : in STD_LOGIC_VECTOR (3 downto 0);
           in6 : in STD_LOGIC_VECTOR (3 downto 0);
           in7 : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC_VECTOR (2 downto 0);
           Output : out STD_LOGIC_VECTOR (3 downto 0));
end component;
</code>
</pre>

<h2>Mux_2_way_3_bit Component Interface ~</h2>

<pre>
<code>
-- Mux_2_way_3_bit Component Interface
component 2_way_3_bit_Mux
    Port ( Incremented_addr : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_to_addr : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_flag : in STD_LOGIC;
           Out_addr : out STD_LOGIC_VECTOR (2 downto 0));
end component;
</code>
</pre>

<h2>4-bit_Add_Sub_Unit Component Interface ~</h2>

<pre>
<code>
-- 4-bit_Add_Sub_Unit Component Interface
component 4-bit_Add_Sub_Unit
    Port ( RegA : in STD_LOGIC_VECTOR (3 downto 0);
           RegB : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end component;
</code>
</pre>

<h2>Instruction_Decoder(Helper component) Component Interface ~</h2>
<h5>This is literally only an instruction decoder.<br> 
But to comply with the given instructions, it is better to use this as a low level component of a main component which controls everything but named as instruction decoder.</h5>
<pre>
<code>
-- Instruction_Decoder Component Interface
component Instruction_Decoder 
    Port ( instruction_code : in STD_LOGIC_VECTOR (11 downto 0);
           immediate_value : out STD_LOGIC_VECTOR (3 downto 0);
           RegA_addr, RegB_addr : out STD_LOGIC_VECTOR (2 downto 0); --This should be fed in to the two 8 way 4 bit muxes.
           jump_address : out STD_LOGIC_VECTOR (2 downto 0);
           register_EN : out STD_LOGIC_VECTOR (2 downto 0);
           add_sub_sel : out STD_LOGIC;
           load_sel : out STD_LOGIC );
end component;
</code>
</pre>

<h2>Mux_2_way_4_bit Component Interface ~</h2>

<pre>
<code>
-- Mux_2_way_4_bit Component Interface
component 2_way_4_bit_Mux
    Port ( input_num : in STD_LOGIC_VECTOR (3 downto 0);
           immediate_value : in STD_LOGIC_VECTOR (3 downto 0);
           load_select : in STD_LOGIC;
           out_to_reg_bank : out STD_LOGIC_VECTOR (3 downto 0));
end component;
</code>
</pre>



