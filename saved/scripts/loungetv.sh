#!/bin/bash
# loungetv.sh
# simple test script to turn the lounge tv on / off
# 1 argument: on | off

echo `date` > /tmp/ltv-log.log


if [ "$1" = "on" ]
then
	echo "SENT TV POWER STATE CHANGE COMMAND for ON" >> /tmp/ltv-log.log
	sudo irsend -# 3 SEND_ONCE LOUNGETV KEY_1

elif [ "$1" = "off" ]
then
	echo "SENT TV POWER STATE CHANGE COMMAND for OFF" >> /tmp/ltv-log.log
	sudo irsend -# 3 SEND_ONCE LOUNGETV KEY_POWER
else
	echo "DID NOTHING" >> /tmp/ltv-log.log
fi
exit 0
