# Week 2 Lab — Networking

## Date
May 14, 2026 — Annual Training

## Commands Used
- ip addr show — network interfaces and IPs
- ip route show — routing table
- ss -tuln — open ports and listening services
- nslookup — simple DNS query
- dig — detailed DNS query
- dig +short — IP only DNS output
- traceroute — path tracing to destination
- nmap -sV — port scanning and service detection
- ip link show — interface MAC address
- arp -n — ARP table IP to MAC mapping

## Key Findings
- Two interfaces: lo (loopback) and eth0 (real network)
- Gateway: 172.31.64.1 — Microsoft Hyper-V virtual switch
- DNS: 8.8.8.8 and 8.8.4.4 — configured on Day 1
- Traceroute: 26 hops to google.com in 70ms
- localhost: all ports closed — minimal attack surface
- Gateway: all ports filtered — firewall blocking

## Key Concepts
- Closed vs Filtered ports — closed = RST response, filtered = no response
- ARP — maps IP addresses to MAC addresses on local network
- MAC OUI — first 3 octets identify manufacturer
- TTL in DNS — seconds until cached answer expires
- Default route — where traffic goes when no specific route exists
- Traceroute * * * — routers blocking probe packets not dropping traffic
