#!/usr/bin/bash

usr=(whoami)

screen -S $usr
sudo systemctl start monitorix

cd /home/xmrig || return
sudo ./xmrig
