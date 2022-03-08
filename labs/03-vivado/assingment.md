# Lab 3: Petr Vaněk

### Three-bit wide 4-to-1 multiplexer
https://www.edaplayground.com/x/DGzJ
1. Listing of VHDL architecture from source file `mux_3bit_4to1.vhd`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of comparator_4bit is
begin
process (a_i,b_i,c_i,d_i,sel_i1,sel_i2) is begin
	  if (sel_i1 ='0' and sel_i2 = '0') then
      f_o <= a_i;
  elsif (sel_i1 ='0' and sel_i2 = '1') then
      f_o <= b_i;
  elsif (sel_i1 ='1' and sel_i2 = '0') then
      f_o <= c_i;
  else
      f_o <= d_i;
  end if;
 end process;
end architecture Behavioral;

```

2. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

 ![image](https://user-images.githubusercontent.com/99393183/157231675-0c03bfb4-c943-4aca-8de3-f269125976c4.png)

3. Listing of pin assignments for the Nexys A7 board in `nexys-a7-50t.xdc`. **DO NOT list** the whole file, just your switch and LED settings.
