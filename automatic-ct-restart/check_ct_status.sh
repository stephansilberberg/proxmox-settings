#!/bin/bash
# CT IDs to start
#CTS=(101 130 150)
CTS=(101 130 150)
for CTID in "${CTS[@]}"; do
  # Check if the CT is stopped
  STATUS=$(/usr/sbin/pct status $CTID | awk '{print $2}')
  if [ "$STATUS" == "stopped" ]; then
    /usr/sbin/pct start $CTID
    echo "Started CT $CTID"
  fi
done
