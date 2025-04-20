# Automatic restart VMs

Download the scrip, make it executable and configer crontab
```bash
cd /root
curl -O https://raw.githubusercontent.com/stephansilberberg/proxmox-settings/refs/heads/main/automatic-vm-restart/check_vm_status.sh
chmod +x check_ct_status.sh
cd /etc/cron.d/
curl -O https://raw.githubusercontent.com/stephansilberberg/proxmox-settings/refs/heads/main/automatic-ct-restart/check_ct_status_cron
```
