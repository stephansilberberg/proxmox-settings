# Automatic restart Containers

Download the scrip, make it executable and configer crontab
```bash
curl -fsSL https://raw.githubusercontent.com/stephansilberberg/proxmox-settings/refs/heads/main/automatic-ct-restart/check_ct_status.sh
chmod +x check_ct_status.sh
crontab -e
```
Example: Every 15 minutes
```bash
*/15 * * * * /root/check_ct_status.sh
```
