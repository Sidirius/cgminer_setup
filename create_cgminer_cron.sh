#!/bin/bash
#write out current crontab
crontab -l > /tmp/setup_cgminer/cgminer_tmp.cron
#echo new cron into cron file
echo "@reboot screen -dmS cgminer ~/cgminer/cgminer --config ~/cgminer/cgminer.conf" >> /tmp/setup_cgminer/cgminer_tmp.cron
#install new cron file
crontab /tmp/setup_cgminer/cgminer_tmp.cron
rm /tmp/setup_cgminer/cgminer_tmp.cron