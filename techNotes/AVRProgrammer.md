# Programming AVR Devices Using FastASP

## Summary
Use a BluePill as a FastASP Programmer because I don't own an AVR Programmer.

## Find a BluePill

Download [FASTUSBasp](https://github.com/amitesh-singh/FASTUSBasp) from GitHub
and flash to STM32 Blue Pill

## Programming Cable Connections to BluePill

Color  | Pin   | Function
-----  |:-----:| -----
Green  | PB13  | SCK
Yellow | PB14  | MISO
Orange | PB15  | MOSI
Blue   | PA8   | NRST
Red    | 5V    | 5V
Brown  | GND   | GND


## AVR ISP Pinout
Function | Pin      | Pin   | Function
-----    |:-----:   |:-----:| -----
MISO     |    1     |   2   | VCC
SCK      |    3     |   4   | MOSI
NRST     |    5     |   6   | GND
