#!/bin/bash
echo "=============================="
echo "  LOG ANALYZER"
echo "=============================="
LOGFILE="/var/log/syslog"

if [ ! -f "$LOGFILE" ]; then
  echo "Syslog not found. Using auth.log instead..."
  LOGFILE="/var/log/auth.log"
fi

if [ ! -f "$LOGFILE" ]; then
  echo "No log files found. Showing journal instead..."
  echo "--- Last 20 system events ---"
  journalctl -n 20 --no-pager
  exit 0
fi

echo "Analyzing: $LOGFILE"
echo "=============================="
echo "Total log entries:"
wc -l < $LOGFILE

echo "=============================="
echo "ERROR entries:"
grep -i "error" $LOGFILE | tail -5

echo "=============================="
echo "WARNING entries:"
grep -i "warning" $LOGFILE | tail -5

echo "=============================="
echo "Last 10 entries:"
tail -10 $LOGFILE
echo "=============================="
