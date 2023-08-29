#!/usr/bin/bash

sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt install -y monitorix screen aptitude

cd /home/xmrig || return

sudo chmod +x xmrig
sudo chmod +x auto.sh
sudo cp monitorix.conf /etc/monitorix/monitorix.conf

sudo apt install monitorix screen aptitude -y

sudo systemctl enable monitorix
sudo systemctl start monitorix

sudo cp xmrigstart.service /etc/systemd/system/xmrigstart.service

sudo systemctl enable xmrigstart.service
sudo systemctl start xmrigstart.service

sudo ./xmrig
sudo nano config.json
#sudo reboot
