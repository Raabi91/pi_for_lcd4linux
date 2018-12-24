#!/bin/sh

NAMENDATEI=lcd4linux_config.sh
. /home/pi/pi_for_lcd4linux/$NAMENDATEI

url=$ip

sleep 300

while true
do

ping -q -c1 $url

if [ $? -eq 0 ]
then
	echo "ok"
else
  sudo shutdown -h now
fi

sleep 1
done
