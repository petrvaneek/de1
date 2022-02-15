# Lab 1: Petr Vaněk

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):
![image](https://user-images.githubusercontent.com/99393183/154075342-17e40e3e-9201-40de-986f-52d6e0d60c04.png)


2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of demorgan is
begin
    f_org_o  <= (not(b_i) and a_i) or (not(c_i) and not(b_i));
    f_nand_o <= not((not(not(b_i) and a_i)) and (not(not(c_i) and not(b_i)))); 
    f_nor_o  <= (not(b_i or not(a_i))) or (not(c_i or b_i));  

end architecture dataflow;
```

3. Complete table with logic functions' values:

| **c** | **b** |**a** | **f(c,b,a)** | **f_NAND(c,b,a)** | **f_NOR(c,b,a)** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 | 1 | 1 |
| 0 | 0 | 1 | 1 | 1 | 0 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 | 0 |
| 1 | 0 | 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 1 | 1 | 0 |
| 1 | 1 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!
![image](https://user-images.githubusercontent.com/99393183/154074576-50ee383f-fe83-49ab-89c9-3f7978ed6c2b.png)

2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/Bi2T
