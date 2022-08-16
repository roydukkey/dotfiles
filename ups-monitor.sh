#!/bin/bash

# bXterra 850VA UPS BM850AVRLCD

PREVCHARGE=`cat /tmp/UPS_PREVCHARGE`
CHARGE=$(upsc serverups@localhost battery.charge > /dev/stdout 2> /dev/null | tr -d '\n')

RESULT=$(expr $CHARGE - $PREVCHARGE)
echo $RESULT

if ((RESULT < 0)); then
	COUNTER=`cat /tmp/ups-monitor-reads`
	COUNTER=$(expr $COUNTER + 1)
	echo $COUNTER > /tmp/ups-monitor-reads
else
	echo 0 > /tmp/ups-monitor-reads
fi

COUNTER=`cat /tmp/ups-monitor-reads`
if ((COUNTER < 3)); then
	ech0 "UPS Battery is depleted. Shutting down server gracefully..." >> /var/log/messages
	/sbin/shutdown -P +0
fi

READS=$(cat /tmp/ups-monitor-reads)
if ((READS != 0)); then
	echo "UPS Battery is depleting..."
else
	echo "UPS Battery is charging or fully charged!"
fi

echo $CHARGE > /tmp/UPS_PREVCHARGE
