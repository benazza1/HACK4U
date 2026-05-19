#!/bin/bash

# تعريف الألوان
CYAN='\033[1;36m'
GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

# 1. دالة معلومات الجهاز
device_info() {
    echo -e "${YELLOW}=== Device Information ===${NC}"
    echo "OS Type: $(uname -o)"
    echo "Kernel: $(uname -r)"
    echo "Architecture: $(uname -m)"
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime -p)"
    echo "=========================="
}

# 2. دالة معلومات الشبكة (معدلة للأندرويد بدون أخطاء)
network_info() {
    echo -e "${YELLOW}=== Network Information ===${NC}"
    echo -e "${GREEN}Internal IP Address:${NC}"
    ip route get 1.1.1.1 2>/dev/null | awk '{print $7}' || echo "Not found"
    echo "--------------------------"
    echo -e "${GREEN}External IP Address:${NC}"
    curl -s ifconfig.me || echo "No internet connection"
    echo "=========================="
}

# 3. دالة فحص اللوكالهوست
scan_localhost() {
    echo -e "${YELLOW}=== Localhost Scan ===${NC}"
    echo "Scanning open ports on localhost..."
    ss -tuln 2>/dev/null || netstat -tuln 2>/dev/null
    echo "=========================="
}

# دالة الشعار (Banner)
banner() {
    clear
    echo -e "${CYAN}"
    echo "██╗  ██╗ █████╗  ██████╗██╗  ██╗██╗  ██╗██╗   ██╗"
    echo "██║  ██║██╔══██╗██╔════╝██║ ██╔╝██║  ██║██║   ██║"
    echo "███████║███████║██║     █████╔╝ ███████║██║   ██║"
    echo "██╔══██║██╔══██║██║     ██╔═██╗ ╚════██║██║   ██║"
    echo "██║  ██║██║  ██║╚██████╗██║  ██╗     ██║╚██████╔╝"
    echo "╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝     ╚═╝ ╚═════╝ "
    echo -e "${NC}"
    echo -e "${GREEN}👋 Welcome to HACK4U v1${NC}"
    echo
}

# القائمة الرئيسية
main_menu() {
    while true; do
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
                echo -e "${RED}Exiting HACK4U... Goodbye!${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}Invalid option!${NC}"
                sleep 1
                ;;
        esac
    done
}

# تشغيل الأداة
main_menu

