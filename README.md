# Nanoprocessor Design

<h2>Instruction_Decoder Component Interface ~</h2>

<pre>
<code>
-- Instruction_Decoder Component Interface
componenet Instruction_Decoder 
    Port ( instruction_code : in STD_LOGIC_VECTOR (11 downto 0);
           jump_check : in STD_LOGIC_VECTOR (3 downto 0);
           reg_enable : out STD_LOGIC_VECTOR (2 downto 0);
           load_select : out STD_LOGIC;
           immediate_value : out STD_LOGIC_VECTOR (3 downto 0);
           reg_select : out STD_LOGIC_VECTOR (5 downto 0);
           add_sub_sel : out STD_LOGIC;
           jump_flag : out STD_LOGIC;
           jump_address : out STD_LOGIC_VECTOR (2 downto 0));
end component;
</code>
</pre>

