#!/bin/sh
#
##############################################################################
#
# Fetch weather screensaver from a configurable URL.

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

if [ "$1" == "force" ] || (lipc-get-prop com.lab126.powerd status | grep -q "Screen Saver")
then

	ThisMinuteImage=$(get_image)

	if [ ! -z "$ThisMinuteImage" ]; then

		# logger "Updating image on screen"
		eips -f -g $ThisMinuteImage
	fi

fi