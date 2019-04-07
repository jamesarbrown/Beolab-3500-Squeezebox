#!/bin/sh

# Origina Version: 0.01 2014-11-28 GE
# Original by Greg Erskine
# Modified Version 0.02 2019-04-07 
# Modified by JamesARBrown 2018 to include additional project specific functions

#===========================================================================
# This script polls LMS at a regular interval to determine the current
# status of the Squeezelite process on piCorePlayer. i.e. play or stop.
#
# A GPIO is then set/reset depending on the result of this status check.
#
# There is an adjustable relay off delay that can be used as an inactivity
# timing.
#
# Modifications include monitoring input for amp PLIM and PFAIL from the
# Beo3500 Amplifier circuits.
#
# There is also a PMUTE circuit to the SANYO STK4171 amps which is utilised
# But untested in this project (V1 hardware). Todo add mute to power off routine
# Stop amp pop.
#---------------------------------------------------------------------------

#===========================================================================
# Possible issues
#---------------------------------------------------------------------------
# 1. Initial relay status during booting. It is probably better to start
#    this script before starting Squeezelite. Also, a pull-up or pull-down
#    resistor may be needed to ensure initial state of GPIO.
# 2. If setting MAC address manually, pay close attention to the physical,
#    wireless and fake MAC addresses.
# 3. This script hasn't been tested on synced players.
#---------------------------------------------------------------------------

#===========================================================================
# Startup procedure 
#---------------------------------------------------------------------------
# In User Commands in pCP web interface. Sleep 5 is important.
# sleep 5; /home/tc/beo3500.sh > /dev/null
#---------------------------------------------------------------------------

#===========================================================================
# Test procedure - example
#---------------------------------------------------------------------------
# sudo killall beo3500.sh
# sudo sh -c 'echo 5 > /sys/class/gpio/unexport'
# sudo ./beo3500.sh > /dev/null &
#---------------------------------------------------------------------------

#set -x
#sudo sh -c 'echo 5 > /sys/class/gpio/unexport'
. /home/tc/www/cgi-bin/pcp-functions
pcp_variables

#===========================================================================
# Set the following according to your setup
#---------------------------------------------------------------------------
#MAC_ADDR=b8:27:eb:c7:e0:61								# Raspberry Pi MAC address
MAC_ADDR=$(pcp_controls_mac_address)					# Set by pCP
#LMS_IP=192.168.1.101									# LMS IP address
LMS_IP=$(pcp_lmsip)										# Set by pCP
INTERVAL=0.5											# Set Poll interval
DELAYOFF=5												# Delay in no. of intervals
COUNT=0
GPIO_POWER=5											# Set GPIO for POWER
COMMAND_POWER="status 0 0"								# LMS player status command
GPIO_PLIM=6												# PLIM Gpio Input. Active Low.
COMMAND_PLIM="mixer volume -10"							# Knock back the volume if PLIM goes low.
GPIO_PFAIL=26											# PFAIL Gpio Input. Active Low
COMMAND_PFAIL="display ERROR!! 9v%20Amp%20Failure 300"	#All we can do is put a message on player screen
GPIO_PMUTE=13											# PMute, Active Low
COMMAND_PMUTE="mixer volume ?"							# Status of Mute
DEBUG=0
#---------------------------------------------------------------------------

if [ $DEBUG = 1 ]; then
	echo
	echo "MAC_ADDR 	: "$MAC_ADDR
	echo "LMS_IP   	: "$LMS_IP
	echo "INTERVAL 	: "$INTERVAL
	echo "GPIO_POWER: "$GPIO_POWER
	echo "COMMAND_POWER: "$COMMAND_POWER
	echo "DELAYOFF 	: "$DELAYOFF
	echo "GPIO_PLIM : "$GPIO_PLIM
	echo "COMMAND_PLIM: "$COMMAND_PLIM
	echo
fi

powercontrol() {
	RESULT=`( echo "$MAC_ADDR $COMMAND_POWER"; echo exit ) | nc $LMS_IP 9090`
	echo $RESULT | grep "mode%3Aplay" > /dev/null 2>&1
	if [ $? == 0 ]; then
		echo "Playing. Count: $COUNT"
		COUNT=0
		echo "1" > /sys/class/gpio/gpio$GPIO_POWER/value
	else
		if [ $COUNT -ge $DELAYOFF ]; then
			#echo "Stopped. Count: $COUNT"
			echo "0" > /sys/class/gpio/gpio$GPIO_POWER/value
			COUNT=0
		else
			#COUNT=`expr $COUNT + 1` #or
			COUNT=$(($COUNT + 1))
			echo "Stopped. Count: $COUNT"
		fi
	fi
}

plim() {
	#Active Low
	if [ 0 == "$(</sys/class/gpio/gpio"${GPIO_PLIM}"/value)" ]; then
		echo "Plim Hit... reducing volume"
		`( echo "$MAC_ADDR $COMMAND_PLIM"; echo exit ) | nc $LMS_IP 9090`
	fi
}

pfail() {
	#Active Low
	if [ 0 == "$(</sys/class/gpio/gpio"${GPIO_PFAIL}"/value)" ]; then
		echo "PFail from B&O Amp (Loss of 9V)"
		`( echo "$MAC_ADDR $COMMAND_PFAIL"; echo exit ) | nc $LMS_IP 9090`
	fi
}

pmute() {
	RESULT=`( echo "$MAC_ADDR $COMMAND_PMUTE"; echo exit ) | nc $LMS_IP 9090`
	#If volume is - then we are muted. Todo add volume = 0
	echo $RESULT | grep "mixer volume -" > /dev/null 2>&1
	if [ $? == 0 ]; then
		echo "Is Muted"
		echo "0" > /sys/class/gpio/gpio$GPIO_PMUTE/value
	else
		echo "Not Muted"
		echo "1" > /sys/class/gpio/gpio$GPIO_PMUTE/value
	fi		
}

#===========================================================================
# Initial GPIO setup
#---------------------------------------------------------------------------
#powercontrol
sudo sh -c 'echo '"$GPIO_POWER"' > /sys/class/gpio/export'
sudo sh -c 'echo "out" > /sys/class/gpio/gpio'"$GPIO_POWER"'/direction'
# If relay is active low this would reverse
# sudo sh -c 'echo "1" > /sys/class/gpio/gpio'"$GPIO_POWER"'/active_low'
echo "0" > /sys/class/gpio/gpio$GPIO_POWER/value

#plim
sudo sh -c 'echo '"$GPIO_PLIM"' > /sys/class/gpio/export'
sudo sh -c 'echo "in" > /sys/class/gpio/gpio'"$GPIO_PLIM"'/direction'

#pfail
sudo sh -c 'echo '"$GPIO_PFAIL"' > /sys/class/gpio/export'
sudo sh -c 'echo "in" > /sys/class/gpio/gpio'"$GPIO_PFAIL"'/direction'

#pmute
sudo sh -c 'echo '"$GPIO_PMUTE"' > /sys/class/gpio/export'
sudo sh -c 'echo "out" > /sys/class/gpio/gpio'"$GPIO_PMUTE"'/direction'
echo "1" > /sys/class/gpio/gpio$GPIO_PMUTE/value

#---------------------------------------------------------------------------

#===========================================================================
# Loop forever. This uses less the 1% CPU, so it should be OK.
#---------------------------------------------------------------------------
while true
do
	powercontrol
	plim
	pfail
	pmute
	sleep $INTERVAL
done
#---------------------------------------------------------------------------


