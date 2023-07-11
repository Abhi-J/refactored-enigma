#!/bin/bash

# Install GUI packages
sudo apt-get update
sudo apt-get install ubuntu-desktop -y

# Configure VM to start GUI on boot
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="\(.*\)"/GRUB_CMDLINE_LINUX_DEFAULT="\1 quiet splash"/' /etc/default/grub
sudo update-grub
