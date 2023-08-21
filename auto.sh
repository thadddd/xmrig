#!/usr/bin/bash

screen -S mine
sudo systemctl start monitorix

cd /home/xmrig || return
sudo ./xmrig
