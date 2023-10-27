#!/bin/bash

sudo apt install libpci-dev -y
sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/c\GRUB_CMDLINE_LINUX_DEFAULT="quiet splash iomem=relaxed"' /etc/default/grub
sudo update-grub

while true; do
    read -p "Do you want to reboot now? [yes/no] " yn
    case $yn in
        [Yy]* ) break;; # Replace 'break' with your action for a "yes" response if needed.
        [Nn]* ) exit;;  # This will exit the script for a "no" response. Adjust as needed.
        * ) echo "Please answer yes or no.";;
    esac
done

sudo reboot
