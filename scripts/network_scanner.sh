#!/bin/bash
echo "=============================="
echo "  NETWORK SCANNER"
echo "=============================="
echo "1. Scan my local IP address"
echo "2. Scan local network for active hosts"
echo "3. Scan a specific host for open ports"
echo "4. Check my network interfaces"
echo "=============================="
read -p "Choose an option (1-4): " OPTION

case $OPTION in
  1)
    echo "=============================="
    echo "MY IP ADDRESSES:"
    echo "=============================="
    ip addr show | grep "inet " | awk '{print $2}'
    ;;
  2)
    echo "=============================="
    echo "SCANNING LOCAL NETWORK..."
    echo "This may take 30-60 seconds"
    echo "=============================="
    MYIP=$(ip addr show | grep "inet " | grep -v "127.0.0.1" | awk '{print $2}' | head -1)
    NETWORK=$(echo $MYIP | cut -d'/' -f1 | cut -d'.' -f1-3).0/24
    echo "Scanning network: $NETWORK"
    sudo nmap -sn $NETWORK
    ;;
  3)
    read -p "Enter IP or hostname to scan: " TARGET
    echo "=============================="
    echo "SCANNING: $TARGET"
    echo "=============================="
    sudo nmap -sV $TARGET
    ;;
  4)
    echo "=============================="
    echo "NETWORK INTERFACES:"
    echo "=============================="
    ip addr show
    echo "=============================="
    echo "ROUTING TABLE:"
    echo "=============================="
    ip route show
    ;;
  *)
    echo "Invalid option"
    ;;
esac
