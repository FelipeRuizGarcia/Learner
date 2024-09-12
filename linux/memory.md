### free

```
free -h
```

### swapon

```
swapon --show

# enable a file as swap
sudo swapon /swapfile
```

### mkswap

```
sudo mkswap /swapfile

Setting up swapspace version 1, size = 60 GiB (64424505344 bytes)
no label, UUID=c93b489e-43bf-474c-8d2c-5fe83a263d0

```

### fallocate

```
sudo fallocate -l 60G /swapfile
```

###
