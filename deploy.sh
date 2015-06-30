#!/bin/sh
# deploy to website
#
# Make sure to change the destination to your site

DESTINATION="otter.pro:/home/dan/www/otter.pro/apricot-jekyll/_site/"

if [ -n "${DESTINATION:+1}" ]; then
	SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )
	/usr/bin/rsync -avz  $SCRIPTPATH/_site/ $DESTINATION
	exit 0;
else
	echo "ERROR: DESTINATION var needs to be defined."
	exit 1
fi
