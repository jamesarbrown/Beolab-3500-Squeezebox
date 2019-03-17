## Installing and Setting Up

At the time of writing this is based on PiCorePlayer 4.1. I wont go into high details here just overview of tasks.

### Tasks

Once into PiCorePlayer web front end perform the following tasks

* Resize FS to whole SD Card
* Enable FFMPEG Libraries
* Setup HDMI detailed below
* Install jivelite via pCP web page
* Install Lirc as detailed below (this is important to do so we can set the jivelite resolution!)
* Set Skin to 640 x 480, this must match the hdmi_cvt settings (so the touch resolution matches the skin)
* Backup your settings on the pcp webpage
* 



### Extensions to Enable
* nano


### Setup HDMI (KeDEI HDMI Screen 3.5")

In Rasberry config.txt File, (to edit ssh to PiCorePlayer, type m1, c1 and then ls to get to the file) edit as follows

At the end of the file add the HDMI info between the custom lines
```
#Custom Configuration Area, for config settings that are not managed by pCP.
#pCP will retain these settings during insitu-update
#---Begin-Custom-(Do not alter Begin or End Tags)-----
#For the display
hdmi_force_hotplug=1
hdmi_group=2
hdmi_mode=1
hdmi_mode=87
hdmi_cvt 640 480 60 6 0 0 0
hdmi_drive=2
display_rotate=2

#For the touchscreen
dtoverlay=ads7846,cs=0,penirq=25,speed=10000,penirq_pull=2,keep_vref_on=1,xohms=150
#---End-Custom----------------------------------------
```

### Install LIRC

Install lirc via the pCP web page
Once rebooted go back into the Lirc page and set the GPIO to 18 (if using the connections in this project)

### Setup the touchscreen

Run the commands and follow screen. Note that you need to disable jivelite autostart if you skipped ahead and have installed that. Once done you can reenable the autostart.

___ It must match the screen resolution set in config.txt and the skin resolution ___

___ It must be run as root... running as sudo does not change root settings which pcp runs on ___

```
root@piCorePlayer:/mnt/mmcblk0p1$ cat /proc/bus/input/devices
I: Bus=0000 Vendor=0000 Product=0000 Version=0000
N: Name="ADS7846 Touchscreen"
P: Phys=spi0.0/input0
S: Sysfs=/devices/platform/soc/3f204000.spi/spi_master/spi0/spi0.0/input/input0
U: Uniq=
H: Handlers=mouse0 event0
B: PROP=0
B: EV=b
B: KEY=400 0 0 0 0 0 0 0 0 0 0
B: ABS=1000003

root@piCorePlayer:~$ TSLIB_TSDEVICE=/dev/input/event0 /usr/local/bin/ts_calibrate
xres = 640, yres = 480
Took 1 samples...
Top left : X =  358 Y = 3832
Took 4 samples...
Top right : X =  215 Y =  201
Took 7 samples...
Bot right : X = 3652 Y =  228
Took 6 samples...
Bot left : X = 3659 Y = 3939
Took 3 samples...
Center : X = 2048 Y = 2000
658.083069 0.003269 -0.168910
-25.536713 0.136478 -0.002727
Calibration constants: 43128132 214 -11069 -1673574 8944 -178 65536

filetool.sh -b
```

Edit pcpstartup
/home/tc/www/cgi-bin/pcp_startup.sh

        # Additions for kedei display touch
#       export JIVE_NOCURSOR=1
#        export TSLIB_TSDEVICE=/dev/input/event0
#        export SDL_MOUSEDRV=TSLIB
#        export SDL_MOUSEDEV=$TSLIB_TSDEVICE


Scripts for PON PLIM, PMUTE

Install 
Python 3.6
Python-RPi.GPIO
