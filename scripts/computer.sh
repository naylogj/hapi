#!/bin/bash
# computer.sh
# simple script to turn the study computer mains socket on / off
# 1 argument: on | off

log="/tmp/computer-log.log"

echo `date` >> $log


if [ "$1" = "on" ]
then
	echo "SENT BYE BYE STANDY SOCKET POWER STATE CHANGE COMMAND for ON" >> $log
	# command to be put here

elif [ "$1" = "off" ]
then
	echo "SENT BYE BYE STANDY SOCKET POWER STATE CHANGE COMMAND for OFF" >> $log
	# command to be put here
else
	echo "DID NOTHING" >> $log
fi
exit 0
