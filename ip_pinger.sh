#!/bin/bash
HOSTS=("8.8.8.8" "8.8.4.4" "1.1.1.1" "google.com" "github.com")
LOGFILE="ping_results.log"
echo "Ping Report - $(date)" > $LOGFILE
echo "==============================" >> $LOGFILE
for HOST in "${HOSTS[@]}"; do
  if ping -c 1 -W 1 "$HOST" &>/dev/null; then
    echo "UP: $HOST" | tee -a $LOGFILE
  else
    echo "DOWN: $HOST" | tee -a $LOGFILE
  fi
done
echo "==============================" >> $LOGFILE
echo "Results saved to $LOGFILE"
cat $LOGFILE
