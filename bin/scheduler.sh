#!/bin/sh
# change to directory of this script
cd "$(dirname "$0")"

# load configuration
if [ -e "config.sh" ]; then
	source ./config.sh
else
	# set default values
	INTERVAL=60
	RTC=0
fi

# load utils
if [ -e "utils.sh" ]; then
	source ./utils.sh
else
	echo "Could not find utils.sh in `pwd`"
	exit
fi

# forever and ever, try to update the screensaver
while [ 1 -eq 1 ]; do 
	sh ./update.sh
	
	lipc-get-prop com.lab126.powerd status | grep -q 'Charging: Yes' && CHARGING=1 || CHARGING=0

	if [ 1 -eq $CHARGING ]; then
		wait_for $(( $REFRESH_INTERVAL_CHARGING - $(date +'%S') ))
	else
		wait_for $(( $REFRESH_INTERVAL_BATTERY - $(date +'%S') ))
	fi

done
