# Automatic restart Containers

Download the scrip, make it executable and configer crontab
```bash
cd /root
curl -O https://raw.githubusercontent.com/stephansilberberg/proxmox-settings/refs/heads/main/automatic-ct-restart/check_ct_status.sh
chmod +x check_ct_status.sh
cd /etc/cron.d/
curl -O https://raw.githubusercontent.com/stephansilberberg/proxmox-settings/refs/heads/main/automatic-ct-restart/check_ct_status_cron
```
