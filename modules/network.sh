network_info() {

    echo "======================="
    echo " NETWORK INFORMATION"
    echo "======================="

    echo
    echo "[+] Device IP:"
    ip addr show wlan0 | grep "inet "

    echo
    echo "[+] MAC Address:"
    ip link show wlan0 | grep link/ether

    

    

    
    echo
echo "[+] DNS (System):"

dns=$(getprop | grep -i dns)

if [ -z "$dns" ]; then
    echo "DNS: Managed by Android system"
else
    echo "$dns"
fi

}
