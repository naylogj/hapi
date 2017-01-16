#!/bin/bash
# stereo.sh
# simple test script to turn the lounge stereo on / off
# 1 argument: on | off

log="/tmp/stereo-log.log"

echo `date` >> $log


if [ "$1" = "on" ]
then
	echo "SENT TV POWER STATE CHANGE COMMAND for ON" >> $log
	sudo irsend -# 1 SEND_ONCE DSP-A592 KEY_POWER		# power on
	sleep 0.5
	sudo irsend -# 1 SEND_ONCE DSP-A592 KEY_AUX		# select Video Aux

elif [ "$1" = "off" ]
then
	echo "SENT TV POWER STATE CHANGE COMMAND for OFF" >> $log
	sudo irsend -# 1 SEND_ONCE DSP-A592 KEY_POWER		# power off
else
	echo "DID NOTHING" >> $log
fi
exit 0
