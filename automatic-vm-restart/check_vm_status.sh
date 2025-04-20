#!/bin/bash
# VM IDs to check
# Example: VMS=(100 101 102)
VMS=(100 104 115)
# Go trough all VM IDs
for VMID in "${VMS[@]}"; do
  # Check VM status
  STATUS=$(/usr/sbin/qm status $VMID | awk '{print $2}')
  # If stopped restart the VM
  if [ "$STATUS" == "stopped" ]; then
    /usr/sbin/qm start $VMID
    echo "Started VM $VMID"
  fi
done
