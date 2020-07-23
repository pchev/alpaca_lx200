# Alpaca LX200

ASCOM Alpaca driver for LX200 telescope.

This driver can be use with different Meade or compatible box using the LX200 protocol.<br/>

The [Alpaca server](https://ascom-standards.org/Developer/Alpaca.htm) is embedded in this driver, allowing to connect any client application such planetarium using the ASCOM Remote Client on Windows, or by using the internal Alpaca client feature of the application like [HNSKY](https://www.hnsky.org/software.htm) or [Cartes du Ciel](https://www.ap-i.net/skychart/start) on Windows, Linux or macOS.<br/>
The Alpaca LX200 driver itself can run on Windows, Linux (intel or arm) and macOS.<br/> 
Because of the networking capability of the Alpaca protocol you can use different operating system for the driver and client. For example run the driver on Linux in a Raspberry Pi and connect from an application on Windows.

## Compilation

The code can be compiled with FreePascal/Lazarus https://www.lazarus-ide.org/ 
