# dotfiles
## Raspberry Pi: Pi-hole

***Danger!*** never pull the power on the RPI device. This will almost certainly brick the Micro SSD card. Use one of the options below to shutdown the device: [web interface](#web-interface) or [terminal command](#common-commands).

### Web interface

The web interface is available at http://pi.hole/admin or http://192.168.1.xxx/admin

If you need to disable blocking, this can be done from this web interface. There are options to disable for a period of time or domains can be added to the `Whitelist` so they are never blocked. Alternatively, there is also a `Blacklist` to always block a certain domain.

Periodically, block lists should be updated. This can be done from `Tools` -> `Update Gravity`.

### Login to server over SSH

```sh
ssh pihole@192.168.1.xxx
```

### Common Commands

These commands are expected to be run after logging in to server over SSH. Each line is a separate command, and lines without a comment heading (e.g. `# Shutdown`) are expected to be run in sequence following the previously listed command.

```sh
# Change Pi-hole web interface password
pihole -a -p

# Shutdown
sudo poweroff
# Restart
sudo reboot

# Updating RPI
sudo apt update
sudo apt list --upgradeable
sudo apt full-upgrade

# Check disk space
df -h
```

### Further improve blocking

1. [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm) for Google Chrome
2. [SponsorBlock for YouTube](https://chrome.google.com/webstore/detail/sponsorblock-for-youtube/mnjggcdmjocbbbhaepdhchncahnbgone) for Google Chrome