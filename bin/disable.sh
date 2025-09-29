#!/bin/sh

# change to directory of this script
cd "$(dirname "$0")"

# load configuration
if [ -e "config.sh" ]; then
	source ./config.sh
fi

# load utils
if [ -e "utils.sh" ]; then
	source ./utils.sh
else
	echo "Could not find utils.sh in `pwd`"
	exit
fi

# forever and ever, try to update the screensaver
logger "Disabling literary-clock"

stop literary-clock || true      

mntroot rw
rm /etc/upstart/literary-clock.conf
mntroot ro
