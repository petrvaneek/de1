----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.04.2022 10:46:42
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( CLK100MHZ : in STD_LOGIC;
           BTNC : in STD_LOGIC;
           BTNU : in STD_LOGIC;
           BTNL : in STD_LOGIC;
           BTNR : in STD_LOGIC;
           BTND : in STD_LOGIC;
           SW   : in STD_LOGIC_VECTOR (3 - 1 downto 0);
           LED  : out STD_LOGIC_VECTOR (3 - 1 downto 0);
           LEDs: out STD_LOGIC_VECTOR (7 downto 0);
           CA : out STD_LOGIC;
           CB : out STD_LOGIC;
           CC : out STD_LOGIC;
           CD : out STD_LOGIC;
           CE : out STD_LOGIC;
           CF : out STD_LOGIC;
           CG : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (1 downto 0);
           LED16_G :out std_logic;
           LED17_R : out std_logic;
           ANs : out STD_LOGIC_VECTOR (7 downto 2)
           );
end top;


architecture Behavioral of top is

begin
Alarmclock: entity work.Alarm
    port map(
        clk => CLK100MHZ,
        set_time => SW(0),
        set_alarm => SW(1),
        toggle_alarm => SW(2),
        sec_reset_btn => BTNC,
        hrs_up_btn => BTNU,
        mins_dwn_btn => BTNL,
        mins_up_btn => BTNR,
        hrs_dwn_btn => BTND,
        LED => LED,
        a => LEDs,
        off => AN,
        alarm_sel_hours_msb => ANs(7),
        alarm_sel_hours_lsb => ANs(6),
        alarm_sel_mins_msb => ANs(5),
        alarm_sel_mins_lsb => ANs(4),
        alarm_sel_sec_msb  => ANs(3),
        alarm_sel_sec_lsb  => ANs(2),
        alarm_segA => CA,
        alarm_segB => CB,
        alarm_segC => CC,
        alarm_segD => CD,
        alarm_segE => CE,
        alarm_segF => CF,
        alarm_segG => CG,
        ledg => LED16_G,
        ledr => LED17_R
        
        
);
end architecture Behavioral;
