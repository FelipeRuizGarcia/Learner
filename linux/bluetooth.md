# Bluetooth

## Troubleshooting's

```
# list all wireles
rfkill list all

# Identify blue
lsusb | grep -i bluetooth

# unblock if necessary
sudo rfkill unblock bluetooth

# Edit service to enable debugging
#    ExecStart=/usr/libexec/bluetooth/bluetoothd -d
sudo vi /usr/lib/systemd/system/bluetooth.service, like

# Reload systemd configurations and restart the service:
sudo systemctl daemon-reload
sudo systemctl restart bluetooth

# reinstall blue pakcages
sudo dnf reinstall bluez gnome-bluetooth

#  Capture logs for analysis:
journalctl -u bluetooth > /tmp/bluetoothd.log
journalctl -u bluetooth.service

# see kernel info
dmesg | rg -i bluetooth

# Check connected devices: Use bluetoothctl to manage devices.
bluetoothctl
bluetoothctl help

```
