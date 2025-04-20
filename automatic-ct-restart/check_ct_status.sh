#!/bin/bash
# CT IDs to check
# Example: CTS=(100 102 103)
CTS=(101 130 150)
for CTID in "${CTS[@]}"; do
  # Check CT status
  STATUS=$(/usr/sbin/pct status $CTID | awk '{print $2}')
  # If stopped restart the CT
  if [ "$STATUS" == "stopped" ]; then
    /usr/sbin/pct start $CTID
    echo "Started CT $CTID"
  fi
done
