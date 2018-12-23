#!/bin/sh

NAMENDATEI=lcd4linux_config.sh
. /home/pi/pi_for_lcd4linux/$NAMENDATEI


while true
do

if curl --output /dev/null --silent --head --fail "$url"; then
  echo "URL exists: $url"
else
  sudo shutdown -h now
fi

sleep 1
done
