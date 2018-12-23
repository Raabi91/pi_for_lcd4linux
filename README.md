# Lcd4linux Lcd on Raspberry pi

## Install:

```
git clone https://github.com/Raabi91/pi_for_lcd4linux
cd pi_for_lcd4linux
sh install_pi_for_lcd4linux.sh
```

Input Your Settings in putty Wenn you will ask:



receiver Ip --> Your Ip form your vu+ receiver with lcd4linux


then we need a autostart for the script use
```
crontab -e
```
and put this on the end
```
@reboot sh /home/pi_for_lcd4linux/lcd4linux.sh &
```

then reboot the pi
```
sudo reboot
```


then use telnet or ssh on your vu+ receiver and execute this

```
echo 'sleep 30' >/etc/init.d/pilcd.sh
chmod 755 /etc/init.d/pilcd.sh
ln -s /etc/init.d/pilcd.sh /etc/rc0.d/S20pilcd.sh
```

that will delay the shutdown of the receiver

## How Upgrade the script
```
cd ~/pi_for_lcd4linux
git reset --hard HEAD
git pull
sudo reboot
```


## How Edit my Server and sensor config
```
sudo nano /home/pi/pi_for_lcd4linux/lcd4linux_config.sh
```

After Edit the Config do a Reboot

```
sudo reboot
```
