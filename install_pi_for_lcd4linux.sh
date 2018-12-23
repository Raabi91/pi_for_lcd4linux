#!/bin/bash
sudo apt-get install cron

echo -e "\n\n========= Pi for Lcd4linux - Installation Script ==========="
echo -e "\n\n========= pleas input your settings ==========="
echo -e "\n\nyour receiver Ip:"
read ip

echo -e "\n\n========= check variables ==========="
if [ -z "$ip" ] ; then
    echo 'please enter receiver IP!'
    exit 1
fi

echo -e "\n\n========= creat Filament_config.sh ==========="
sleep 1
echo "#######lcd4linux Config#########" > lcd4linux_config.sh

echo "ip="http://$ip/lcd4linux"" >> lcd4linux_config.sh

echo "#######Config End#########" >> lcd4linux_config.sh
sleep 1
chmod 755 lcd4linux.sh
chmod 755 lcd4linux_config

echo -e "\n\n========= installation autostart ==========="

crontab -e
crontab -u pi -l | grep -v 'sh /home/pi/pi_for_lcd4linux/lcd4linux.sh &'  | crontab -u pi -
sleep 1
(crontab -u pi -l ; echo "@reboot sh /home/pi_for_lcd4linux/lcd4linux.sh &") | crontab -u pi -

echo -e "\n\n========= installation end ==========="

exit 1
