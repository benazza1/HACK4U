#!/data/data/com.termux/files/usr/bin/bash
source modules/device.sh
source modules/network.sh
clear

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Banner
banner() {
    echo -e "${CYAN}"
    echo "██╗  ██╗ █████╗  ██████╗██╗  ██╗██╗  ██╗██╗   ██╗"
    echo "██║  ██║██╔══██╗██╔════╝██║ ██╔╝██║  ██║██║   ██║"
    echo "███████║███████║██║     █████╔╝ ███████║██║   ██║"
    echo "██╔══██║██╔══██║██║     ██╔═██╗ ╚════██║██║   ██║"
    echo "██║  ██║██║  ██║╚██████╗██║  ██╗     ██║╚██████╔╝"
    echo "╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝     ╚═╝ ╚═════╝ "
    echo -e "${NC}"
    echo -e "${GREEN}👋 Welcome to HACK4U${NC}"
    echo
}

# Device Info
device_info() {
    echo -e "${YELLOW}📱 Device Information${NC}"
    echo "---------------------------"
    uname -a
    echo
    getprop ro.product.model
}


# Simple Scan
scan_localhost() {
    echo -e "${RED}🔎 Localhost Scan${NC}"
    echo "---------------------------"
    ping -c 2 127.0.0.1
    echo
}

# Main Menu
while true; do
    clear
    banner

    echo "[1] Device Information"
    echo "[2] Network Information"
    echo "[3] Localhost Scan"
    echo "[0] Exit"
    echo

    read -p "Choose an option: " option

    case $option in
        1)
            clear
            device_info
            read -p "Press Enter to continue..."
            ;;

        2)
            clear
            network_info
            read -p "Press Enter to continue..."
            ;;

        3)
            clear

           scan_localhost
            read -p "Press Enter to continue..."
            ;;

        0)
            echo -e "${GREEN}👋 Goodbye${NC}"
            exit
            ;;

        *)
            echo -e "${RED}❌ Invalid Option${NC}"
            sleep 1
            ;;
    esac

done


