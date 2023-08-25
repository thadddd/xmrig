#!/usr/bin/bash

sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y

### script to move mine code into correct folders 
cd /home/xmrig
sudo apt install -y monitorix screen aptitude 
sudo systemctl enable monitorix 
sudo systemctl start monitorix

screen -S mine

sudo chmod +x xmrig
sudo chmod +x auto.sh

sudo mv xmrigstart.service /etc/systemd/system

sudo systemctl enable xmrigstart.service
sudo systemctl start xmrigstart.service

#sudo reboot
