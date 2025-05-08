2025-01-26 23:52

### Next steps

mark the gcc as lock

### Solution

After reviwing the logs,
saw i was using gcc version 15 ...

but, the kernel was compile with gcc 14
( saw in the fedora koji https://kojipkgs.fedoraproject.org//packages/kernel/6.12.11/200.fc41/data/logs/x86_64/dnf5.log )

```
The NVIDIA open kernel modules support the same range of Linux kernel versions that are supported with the proprietary NVIDIA kernel modules.
```

Then I read about

https://github.com/NVIDIA/open-gpu-kernel-modules?tab=readme-ov-file#supported-linux-kernel-versions

so, I downgrade the gcc to 14

```
$ sudo dnf5 downgrade gcc --releasever=41 --refresh

```

akmods-nvidia works, also try with nvidia run file and works.

### template build

KERNEL
REPO
NVIDIA DRIVER

using script install/uninstall

KERNEL
fail with kernel 12.11

REPO

added with dnf5

NVIDIA DRIVER
565.77.3

### questions

is this something missing from the kernel side ?
lets find out with kernel-devel

> no, just remove the 6.13 thing
> kernel-rpm-macros is not installed, only `srpm-macros`
>
> > > does not work

how about the `kernel-headers, cross-headers and bpftool` those moved ..

> downgrade bpftool
>
> > does not work

> try the `kernel-devel-uname-r` does not work

#### finding

> nvidia driver
> `# sudo dnf install nvidia-vaapi-driver libva-utils vdpauinfo ` not installed

> is gcc there?
> `dnf5 group upgrade \*`

> `dnf reinstall xorg-x11-server-Xorg mesa-libGL mesa-libEGL libglvnd\*`
>
> > does not work.

> trying install and compile the stable from the nvidia website
> failed... trying with 13 kernel
> kernel tools and kernel libs ..

> trying to `sudo dnf5 distro-sync releasever=f41`
>
> > installing multiple kernel-devel packages
> > does not work

> booting kernel 13, rc2 , with `splash quiet nomodeset` and work!
>
> > https://forums.developer.nvidia.com/t/565-release-feedback-discussion/310777/411 >> https://github.com/flathub/org.freedesktop.Platform.GL.nvidia/releases/download/cuda/NVIDIA-Linux-x86_64-570.86.10.run

if does not work, try a older kernel
...
