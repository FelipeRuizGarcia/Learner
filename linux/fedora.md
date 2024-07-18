# Fedora

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

### Virtualization

https://docs.fedoraproject.org/en-US/quick-docs/virtualization-getting-started/

### Kernel

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

https://fedoraproject.org/wiki/Kernel_Vanilla_Repositories

https://docs.fedoraproject.org/en-US/quick-docs/kernel-overview/

### fedora roadmaps

https://docs.fedoraproject.org/en-US/releases/

https://docs.fedoraproject.org/en-US/releases/lifecycle/#_release_dates

https://fedorapeople.org/groups/schedule/f-40/f-40-key-tasks.html
