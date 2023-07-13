#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install Ubuntu desktop
sudo apt-get install -y ubuntu-desktop

# Install XRDP
sudo apt-get install -y xrdp

# Configure XRDP to use the Ubuntu desktop environment
echo "startxfce4" | sudo tee /etc/xrdp/startwm.sh

# Restart XRDP service
sudo systemctl restart xrdp
