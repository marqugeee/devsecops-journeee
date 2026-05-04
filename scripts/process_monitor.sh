#!/bin/bash
echo "=============================="
echo "  PROCESS MONITOR"
echo "=============================="
echo "1. Show top 10 CPU consuming processes"
echo "2. Show top 10 memory consuming processes"
echo "3. Show all processes for current user"
echo "4. Find a specific process"
echo "5. Kill a process by name"
echo "=============================="
read -p "Choose an option (1-5): " OPTION

case $OPTION in
  1)
    echo "=============================="
    echo "TOP 10 CPU CONSUMING PROCESSES:"
    echo "=============================="
    ps aux --sort=-%cpu | head -11
    ;;
  2)
    echo "=============================="
    echo "TOP 10 MEMORY CONSUMING PROCESSES:"
    echo "=============================="
    ps aux --sort=-%mem | head -11
    ;;
  3)
    echo "=============================="
    echo "PROCESSES FOR USER: $(whoami)"
    echo "=============================="
    ps aux | grep "^$(whoami)"
    ;;
  4)
    read -p "Enter process name to find: " PROCNAME
    echo "=============================="
    echo "SEARCHING FOR: $PROCNAME"
    echo "=============================="
    RESULT=$(ps aux | grep -i "$PROCNAME" | grep -v grep)
    if [ -z "$RESULT" ]; then
      echo "No process found with name: $PROCNAME"
    else
      echo "$RESULT"
    fi
    ;;
  5)
    read -p "Enter process name to kill: " PROCNAME
    if pgrep -x "$PROCNAME" > /dev/null; then
      sudo pkill "$PROCNAME"
      echo "Process $PROCNAME has been terminated"
    else
      echo "No process named $PROCNAME found"
    fi
    ;;
  *)
    echo "Invalid option"
    ;;
esac
