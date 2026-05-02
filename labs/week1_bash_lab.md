# Week 1 Lab — Bash Scripting

## Date
May 2, 2026

## Scripts Built
1. system_report.sh — displays user, hostname, uptime, disk, memory
2. disk_checker.sh — checks disk usage and warns if over 80% threshold
3. ip_pinger.sh — pings 5 hosts and logs UP/DOWN status

## Key Concepts Learned
- #!/bin/bash shebang line tells the system which interpreter to use
- chmod +x makes a file executable
- $() runs a command and uses its output inline
- Variables: THRESHOLD=80, HOSTS=(), LOGFILE=""
- if/then/else/fi — conditional logic
- for loops — iterate over a list
- tee — prints output AND saves to a file simultaneously
- >> appends to a file, > overwrites it

## Troubleshooting Done
- WSL2 DNS resolution failure — fixed by replacing nameserver in /etc/resolv.conf
- Git push rejected — fixed with git pull --rebase origin main
- GitHub token authentication — switched to SSH key pair authentication

## Commands Used
chmod +x script.sh
./script.sh
df -H
ping -c 1 -W 1 host
tee -a logfile
