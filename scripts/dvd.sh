!/bin/bash
# dvd.sh
# simple test script to turn the lounge DVD player on / off
# 1 argument: on | off

log="/tmp/dvd-log.log"

echo `date` >> $log


if [ "$1" = "on" ]
then
	echo "SENT DVD POWER STATE CHANGE COMMAND for ON" >> $log
	#sudo irsend -# 1 SEND_ONCE XXXDSP-A592 KEY_POWER		# power on

elif [ "$1" = "off" ]
then
	echo "SENT DVD POWER STATE CHANGE COMMAND for OFF" >> $log
	#sudo irsend -# 1 SEND_ONCE XXXDSP-A592 KEY_POWER		# power off
else
	echo "DID NOTHING" >> $log
fi
exit 0
