# dotfiles
## Raspberry Pi: Pi-hole

### Web Interface

The web interface is available at http://pi.hole/admin or http://192.168.1.xxx/admin

### Login to server over SSH

```sh
ssh pihole@192.168.1.xxx
```

### Common Commands

*Note:* each line is a separate command. Lines without a comment heading (e.g. `# Shutdown`) are expected to be run in sequence following the previous command.

```sh
# Shutdown
sudo shutdown now
# Restart
sudo shutdown now

# Updating RPI
sudo apt update
sudo apt list --upgradeable
sudo apt full-upgrade

# Check disk space
df -h
```