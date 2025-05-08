# Fedora

https://docs.fedoraproject.org/en-US/project/communications/

Mailing Lists
https://lists.fedoraproject.org/admin/lists/

## Fedora Rawhide

https://docs.fedoraproject.org/en-US/releases/rawhide/

### QA

https://fedoraproject.org/wiki/QA/Join
https://fedoraproject.org/wiki/QA/Join
https://fedoraproject.org/wiki/QA#Communicate

## Troubleshooting

#### Root Account Locked

https://docs.fedoraproject.org/en-US/quick-docs/root-account-locked/

```
# lsblk to find the partition mounted
chroot /mount/xxx
passwd root
exit
reboot
```

## Nvidia in Fedora

https://rpmfusion.org/Howto/NVIDIA

### Dedicate gpu

https://docs.fedoraproject.org/en-US/quick-docs/set-nvidia-as-primary-gpu-on-optimus-based-laptops/

sudo dnf install gcc kernel-headers kernel-devel akmod-nvidia xorg-x11-drv-nvidia xorg-x11-drv-nvidia-libs xorg-x11-drv-nvidia-libs.i686

#### create gdm config
https://wiki.archlinux.org/title/NVIDIA_Optimus#Display_managers


### Using Rawhide Kernel

rawhide kernels includes kernel symbols, which nvidia driver dont work.
use nodebug kernel to instead.

https://fedoraproject.org/wiki/RawhideKernelNodebug
https://dl.fedoraproject.org/pub/alt/rawhide-kernel-nodebug/fedora-rawhide-kernel-nodebug.repo

## Kernel

packages

Install directly the `kernel` matched version:

`kernel-modules` could be skipped from `kernel-core` package.

```
kernel
kernel-core
kernel-modules
kernel-modules-core
```

---

https://src.fedoraproject.org/rpms/kernel

https://fedoraproject.org/wiki/RawhideKernelNodebug

---

### Official Fedora Kernel

https://docs.fedoraproject.org/en-US/quick-docs/kernel-overview/

#### Official Kernel Dev

https://fedoraproject.org/wiki/Kernel

Help with the testing of official kernels

https://bodhi.fedoraproject.org/updates/?packages=kernel

#### Official Kernel Packages

### Unofficial Fedora Kernel Vanilla

https://fedoraproject.org/wiki/Kernel_Vanilla_Repositories-FAQ

https://fedoraproject.org/wiki/Kernel_Vanilla_Repositories

### fedora roadmaps

https://docs.fedoraproject.org/en-US/releases/

https://docs.fedoraproject.org/en-US/releases/lifecycle/#_release_dates

https://fedorapeople.org/groups/schedule/f-40/f-40-key-tasks.html

## Virtualization

https://docs.fedoraproject.org/en-US/quick-docs/virtualization-getting-started/

## Boot

https://docs.fedoraproject.org/en-US/quick-docs/kernel-booting/
