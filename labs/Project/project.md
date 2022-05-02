
# Digital clock

### Team members

* Petr Vaněk (responsible for alarm setter,clock setter)
* František Štefkovič (responsible for xxx)
* Šimon Špánik (responsible for xxx)

### Table of contents

* [Project objectives](#objectives)
* [Hardware description](#hardware)
* [VHDL modules description and simulations](#modules)
* [TOP module description and simulations](#top)
* [Video](#video)
* [References](#references)

<a name="objectives"></a>

## Project objectives

The task of this project was to create digital clock with controls to set the time and alarm and when the clock will match the time with the time, which we set on alarm, it will trigger the alarm through Led signalisation. For time setting were used buttons on the board. User can toggle the alarm, if alarm is switched on, the led upon the switch 2 is going to be on. The alarm is stopped, when user switches off the switch 2. The clock runs on 100 MHz and are brought down to 1 Hz.

<a name="hardware"></a>

## Hardware description

For software implementation was used VHDL code and program Vivado, which generated the VHDL code on hardware. The hardware, that has been used is called Nexys A7 50 T from Xilinx and code to the desk was implemented thorugh USB port, which lead from computer.

<a name="modules"></a>

## VHDL modules description and simulations

# Clock Counter
The principle of the clock counter is very simple. Time runs when the switch is in the low position, which means that SW [0] is closed at the bottom. 6 variables are created, where individual units of time are added. The algorithm is created using if conditions, where when the value of the less significant bit reaches 9, the value of the more significant bit starts to be added, and when both values reach the condition, they are reset. Minutes and hours are done on the same principle.

clock_sec_lsb -> 00:00:0X
clock_sec_msb -> 00:00:X0
clock_mins_lsb -> 00:0X:00
clock_mins_msb -> 00:X0:00
clock_hours_lsb -> 0X:00:00
clock_hours_msb -> X0:00:00

where, lsb means less significant bit and msb means most significant bit and the changing variable is X.
# 7- segment display
The seven segment diodes on the Nexys A7-50T board are of the common anode type. This means that the individual segments light up when the state is "0". To display individual digits in the BCD on the display, we have created a decoder that assigns a vector for display on a 7-segment display to each numeric value (0000 to 1001).
To display the individual time variables, it is necessary to run the displays at high speed,
to make it seem to our human eye that they are all going at the same time, but only one is always active. For this purpose, we created a clock signal divider. The display works in such a way that the algorithm cycles through the individual displays and assigns them individual values on the devided frequency.
# Alarm Signalization
If the conditions for starting the alarm are met, ie if the time coincides with the set one and SW [2] is in the upper position, the alarm will start. The signaling consists of 8 LEDs and two RGB LEDs that flash at the rising edge of frequency of the second clock signal. The alarm goes off when we set SW [2] to the lower position.


![image](https://user-images.githubusercontent.com/99393183/165782881-e94ad8ed-d805-4d98-8501-4512398fbb71.png)
