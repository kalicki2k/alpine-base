#!/bin/sh
#
# Porpose: Set timezone in Alpine
# Version: 1.0
#

#
# Check if tzdata is installed
#
if [ ! -d /usr/share/zoneinfo ];
  then
     echo "Need to install tzdata!"
     apk add --update tzdata
fi


#
# Setting timezone
#
if [ -f /usr/share/zoneinfo/$1 ];
  then
    echo "Setting timezone to $1"
    cp /usr/share/zoneinfo/$1 /etc/localtime
    echo $1 > /etc/timezone
  else
    echo "timezone $1 not defined"
  fi

#
# Remove tzdata, not needed anymore
#
apk del tzdata

#
# Remove cache
#
rm -rf /var/cache/apk/*
