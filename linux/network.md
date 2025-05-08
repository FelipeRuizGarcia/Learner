# Networks

## quickstart

```

# ip link show
# ip link set eno1 up


# systemctl start NetworkManager

# dhclient eno1


```

## Utils

### range of the available? ( random ) ports

$ cat /proc/sys/net/ipv4/ip_local_port_range

### network interfaces

$ /sys/class/net/

### Know networks

/etc/NetworkManager/system-connections/

## Commands

### iptables

### firewalld

### which process is bound N port

$ sudo netstat -tulpn

### all network interfaces

$ ip a
