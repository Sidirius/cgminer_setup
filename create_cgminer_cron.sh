#!/bin/bash
#write out current crontab
crontab -l > /tmp/cgminer.cron
#echo new cron into cron file
echo "@reboot screen -dmS cgminer /home/pi/cgminer/cgminer --config /home/pi/cgminer/cgminer.conf" >> /tmp/cgminer.cron
#install new cron file
crontab /tmp/cgminer.cron
rm /tmp/cgminer.cron