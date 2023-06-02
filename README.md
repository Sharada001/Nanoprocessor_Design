# Nanoprocessor Design

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
