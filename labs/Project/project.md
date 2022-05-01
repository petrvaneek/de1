
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

![image](https://user-images.githubusercontent.com/99393183/165782881-e94ad8ed-d805-4d98-8501-4512398fbb71.png)
