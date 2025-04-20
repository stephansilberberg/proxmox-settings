# Automatic restart VMs

1. Download script
2. Make it executable
   chmod +x check_vm_status.sh
3. Add to crontab
   crontab -e
   */15 * * * * /root/check_vm_status.sh
