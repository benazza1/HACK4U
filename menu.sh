#!/bin/bash

clear
echo "===================="
echo "      HACK4U"
echo "===================="
echo "1) Device Info"
echo "2) Network Info"
echo "3) Scan Tool"
echo "0) Exit"
echo "===================="

read -p "Choose option: " choice

if [ "$choice" = "1" ]; then
    bash modules/device.sh
elif [ "$choice" = "2" ]; then
    bash modules/network.sh
elif [ "$choice" = "3" ]; then
    bash modules/scan.sh
elif [ "$choice" = "0" ]; then
    echo "Bye 👋"
else
    echo "Invalid option"
fi
