#!/usr/bin/bash

### script to move mine code into correct folders 

cd home || return
sudo git clone https://github.com/thadddd/xmrig.git
cd /home/xmrig || return

sudo chmod +x xmrig
sudo chmod +x auto.sh

sudo mv xmrigstart.service /etc/systemd/system

sudo systemctl enable xmrigstart.service
sudo systemctl start xmrigstart.service

sudo reboot
