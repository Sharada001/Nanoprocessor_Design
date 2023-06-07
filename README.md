# Nanoprocessor Design

<h2>Clock Component Interface ~</h2>

<h2>Components already finished ~</h2>
<ul>
<li>Register Bank</li>
<li>3-bit Adder</li>
<li>4-bit Add/Sub Unit</li>
<li>8-way 4-bit Mux</li>
<li>2-way 3-bit Mux</li>
<li>3-bits Program Counter<br></li>
<li>2-way 4-bit Mux</li>
<li>Clock</li>
<li>Program ROM</li>
 <li>Instruction Decoder</li>
</ul>

<h2>Components remaining ~</h2> 
<ul>
  
</ul>


<pre>
<code>
-- Clock Component Interface
COMPONENT Clock
    PORT( Clk_in : IN STD_LOGIC;
             Clk_out : OUT STD_LOGIC);
END COMPONENT; 
</code>
</pre>
