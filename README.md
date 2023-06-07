# Nanoprocessor Design

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

