#!/bin/bash
THRESHOLD=80
echo "Checking disk usage - $(date)"
echo "=============================="
df -H | grep -vE '^Filesystem|tmpfs|none|rootfs' | awk '{print $5 " " $1}' | while read output; do
  USAGE=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
  PARTITION=$(echo $output | awk '{print $2}')
  if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: $PARTITION is at ${USAGE}%"
  else
    echo "OK: $PARTITION is at ${USAGE}%"
  fi
done
