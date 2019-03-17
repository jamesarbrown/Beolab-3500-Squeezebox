##Wiring Overview

###Removal of B&O Switchmode PSU

The switchmode PSU onboard the Beolab is controlled via a LM3578 Buck convertor. It creates the 5v @ 750mA. Initially it was intended to use this however on startup the voltage was found to collapse

This is the PSU

![Alt text](./images/psu.jpg?raw=true "PSU")

The Kedei and Raspberry use about 750mA Combined, there was a view to shorting the R4+R5 resistors out on the switchmode, but in diagnosis I damaged the LM3578. So decided to dispose and replace with a typical USB PSU designed for the job

Then to create a bit more space remove the TX T1 and capacitor C1 from the left hand side TX.

![Alt text](./images/tx.jpg?raw=true "tx")
