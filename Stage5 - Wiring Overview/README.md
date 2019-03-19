## Wiring Overview

### Removal of B&O Switchmode PSU

The switchmode PSU onboard the Beolab is controlled via a LM3578 Buck convertor. It creates the 5v @ 750mA. Initially it was intended to use this however on startup the voltage was found to collapse

This is the PSU

![Alt text](./images/psu.jpg?raw=true "PSU")

The Kedei and Raspberry use about 750mA Combined, there was a view to shorting the R4+R5 resistors out on the switchmode, but in diagnosis I damaged the LM3578. So decided to dispose and replace with a typical USB PSU designed for the job

Then to create a bit more space remove the TX T1 and capacitor C1 from the left hand side TX.

![Alt text](./images/tx.jpg?raw=true "tx")

Now i grabbed the easiest psu i could find to fit and turned out to be a samsung powwer brick with its UK plug adapter removed

![Alt text](./images/usbpsu.jpg?raw=true "usbpsu")

Connect to the B&O pcb where Live and Neutral used to be for the Mini TX

![Alt text](./images/usb2.jpg?raw=true "usb2")

I extracted the AC plug pins and soldered a longer flex onto it

![Alt text](./images/acplug.jpg?raw=true "acplug")

Then finally fitted the Left hand system, but in the _RIGHT_ hand side, this is important as the display orientation, the gear around it, means this assembly with is stuck out PCB must go on the right. On the left it will not fit!

![Alt text](./images/leftamp.jpg?raw=true "leftamp")
