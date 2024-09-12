# Nvidia

### tips

to force delete of the binary run driver 
boot with nomodeset kernel

then copy the xorg config

```
modinfo -F version nvidia
```

### download propietary drivers

https://www.nvidia.com/en-us/drivers/unix/linux-amd64-display-archive/

you can do like

```
./nvidia-installer -A
./nvidia-installer -x # extract the pkg
```

### Linux Development Blog

https://forums.developer.nvidia.com/c/gpu-graphics/linux/148

https://forums.developer.nvidia.com/t/if-you-have-a-problem-please-read-this-first/27131

### Developer Hub

https://forums.developer.nvidia.com/

https://github.com/NVIDIA/egl-wayland

---

/usr/lib/udev/rules.d
