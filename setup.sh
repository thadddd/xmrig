#!/usr/bin/bash

### script to move mine code into correct folders 

$usr=whoami

sudo apt install monitorix screen 
sudo systemctl enable monitorix 
sudo systemctl start monitorix

screen -S $usr

sudo chmod +x xmrig
sudo chmod +x auto.sh

sudo mv xmrigstart.service /etc/systemd/system

sudo systemctl enable xmrigstart.service
sudo systemctl start xmrigstart.service

#sudo reboot
