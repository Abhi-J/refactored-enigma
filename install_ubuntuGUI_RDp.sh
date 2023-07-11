#!/bin/bash

# Install GUI packages
sudo apt-get update
sudo apt-get install ubuntu-desktop -y
sudo apt install ubuntu-desktop 
sudo apt install xrdp 
sudo systemctl status xrdp 
sudo adduser xrdp ssl-cert 
sudo ufw allow 3389 (or) 
sudo ufw allow from 192.168.2.0/24 to any port 3389 
sudo ufw reload 
# Configure VM to start GUI on boot
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="\(.*\)"/GRUB_CMDLINE_LINUX_DEFAULT="\1 quiet splash"/' /etc/default/grub
sudo update-grub
