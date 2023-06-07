# Nanoprocessor Design

<h2>Instruction_Decoder(Helper component) Component Interface ~</h2>
<h4>This is literally only an instruction decoder.<br> 
But to comply with the given instructions, it is better<br> 
to use this as a low level component of a main component which<br>
controls everything but named as instruction decoder.</h4>
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

