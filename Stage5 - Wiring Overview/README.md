## Wiring Overview

### Left Hand Side Amp Prep
The switchmode PSU onboard the Beolab is controlled via a LM3578 Buck convertor. It creates the 5v @ 750mA. Initially it was intended to use this however the Pi turns to be a bit power hungry and official PSU pulls 2A

This is the PSU

![Alt text](./images/psu.jpg?raw=true "PSU")

Then to create a bit more space remove the TX T1 and capacitor C1 from the left hand side TX.

![Alt text](./images/tx.jpg?raw=true "tx")

After a second failed attempt with a Samsung PSU, a third failed attempt with a "cheap" 2A and audio noise, finally I bought a Raspberry PSU and but the case in two. Here is the PSU bonded in its final position.

![Alt text](./images/usbpsu.jpg?raw=true "usbpsu")

Connect to the B&O pcb where Live and Neutral used to be for the Mini TX

![Alt text](./images/usb2.jpg?raw=true "usb2")

I extracted the AC plug pins and soldered a longer flex onto it

![Alt text](./images/acplug.jpg?raw=true "acplug")

Then finally fitted the Left hand system, but in the _RIGHT_ hand side, this is important as the display orientation, the gear around it, means this assembly with is stuck out PCB must go on the right. On the left it will not fit!

![Alt text](./images/leftamp.jpg?raw=true "leftamp")

Note the ferrite core I attached to the DC cable RS PN 123-2479

![Alt text](./images/ferrite.jpg?raw=true "ferrite")

### Main Wiring Diagram

The main wiring diagram is included in this folder in ODG and PDF format

![Alt text](./images/Bang-Olufsen-Beolab_3500-Service-Manual.jpg?raw=true "Wiring")

### Other Notes

After a failed attempt with a bad connection and bad audio from the primary 3.5mm Audio jack, i decided to solder the audio leads directly onto the audio jack for the Kedei display. On the body there is sufficient exposed metal to solder too without having to demount or worry about PCB work.
