# Boot

### initramfs guide

https://jfearn.fedorapeople.org/fdocs/en-US/Fedora_Draft_Documentation/0.1/html/System_Administrators_Guide/sec-Verifying_the_Initial_RAM_Disk_Image.html

#### dracut

```
# dracut --regenerate-all -p --force

# dracut --force --regenerate-all --no-hostonly -v

# dracut 
```

debugging
https://fedoraproject.org/wiki/How_to_debug_Dracut_problems#Using_the_dracut_shell
https://fedoramagazine.org/initramfs-dracut-and-the-dracut-emergency-shell/


#### error: ../../grub-core/fs/fshelp.c:257:file

The error message `error: ../../grub-core/fs/fshelp.c:257:file '/EFI/fedora/grubenv'` indicates that the GRUB bootloader is unable to locate the specified `grubenv` file during the boot process. This issue is commonly encountered in Fedora installations, particularly after updates or changes to the system configuration.

### Possible Causes

1. **Missing grubenv File**: The file `/EFI/fedora/grubenv` may not exist, which is often the root cause of this error. This can happen if the installation did not complete properly or if the file was accidentally deleted.

2. **Incorrect GRUB Configuration**: The GRUB configuration files may not be correctly set up, especially if the system was recently upgraded or modified.

3. **Dual Boot Issues**: If the system is set up for dual booting with Windows, the boot order or configuration might interfere with GRUB's ability to find necessary files.

### Solutions

1. **Recreate the grubenv File**:
   You can manually create the `grubenv` file with the following commands in a terminal:

    ```bash
    sudo grub2-editenv create
    ```

    After creating the file, regenerate the GRUB configuration:

    ```bash
    sudo grub2-mkconfig -o /boot/grub2/grub.cfg
    ```

2. **Check File Paths**:
   Ensure that you are using the correct paths. For Fedora 34 and later, the GRUB configuration should be located at `/boot/grub2/grub.cfg` rather than the EFI path. Use the command:

    ```bash
    sudo grub2-mkconfig -o /boot/grub2/grub.cfg
    ```

3. **Reinstall GRUB**:
   If the above steps do not resolve the issue, consider reinstalling GRUB:

    ```bash
    sudo dnf reinstall grub2-common
    ```

4. **Boot Repair**:
   If the problem persists, you may need to boot from a live USB and run a boot repair tool to fix the GRUB installation. This can help restore the necessary files and configurations.

5. **Check for Kernel Issues**:
   If you have recently updated the kernel, ensure that the new kernel is correctly installed and accessible. You can check available kernels with:

    ```bash
    rpm -qa kernel
    ```

    If a kernel is missing or corrupted, reinstalling it might be necessary.

6. **Disable Secure Boot**:
   In some cases, Secure Boot settings in the BIOS can interfere with GRUB. Disabling Secure Boot may help resolve the issue.

By following these steps, you should be able to resolve the GRUB error and successfully boot into your Fedora system. If problems continue, consider seeking assistance from Fedora forums or support channels where community members can provide additional insights based on their experiences.

#### Targets vs Runlevels

runlevels are deprecated, instead use systemd targets.

## Grub

```

https://www.gnu.org/software/grub/manual/grub/html_node/Menu-interface

# `e` to edit a boot entry
# Ctrl+X OR F10 to enter a kernel

`normal` to come back to the interface from the grub commandline.


```

### Grub Parameters

Define as `GRUB_CMDLINE_LINUX` in the file

```
/etc/default/grub
```

```
# allow to load the kernel and execute rescue mode
ro nomodeset single

```

example

```
GRUB_CMDLINE_LINUX="initcall_blacklist=simpledrm_platform_driver_init rhgb quiet initcall_blacklist=simpledrm_platform_driver_init nvidia-drm.modeset=1 rd.driver.blacklist=nouveau modprobe.blacklist=nouveau"
```

after modifications in the file, recreate the grub with

```
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```

## EFI

https://www.happyassassin.net/posts/2014/01/25/uefi-boot-how-does-that-actually-work-then/

### Secure Boot

Secure Boot Overview

Secure Boot is a security standard designed to ensure that a device boots using only software that is trusted by the Original Equipment Manufacturer (OEM). When Secure Boot is enabled, the firmware checks the digital signature of the bootloader and other critical boot components. If the signatures are valid, the boot process continues; otherwise, it halts to prevent untrusted code from running.

### Shim

Shim is a small bootloader designed to work with Secure Boot. It is signed by a key that is trusted by the system firmware (typically Microsoft’s key). Shim, in turn, verifies the signatures of the next-stage bootloader (like GRUB) and the kernel.
Mok (Machine Owner Key)

### MOK

MOK (Machine Owner Key) is a key management system that allows users to add their own keys to the firmware’s database. This is useful for signing custom kernels or other bootloaders that are not signed by a key trusted by the system firmware.
Mokutil

mokutil is a utility used to manage the Machine Owner Key (MOK) database. With mokutil, you can:

    Enroll new keys: Add new keys to the MOK list, allowing the system to trust additional signatures.
    Remove keys: Remove keys from the MOK list.
    List enrolled keys: Display the keys currently enrolled in the MOK database.
    Set Secure Boot state: Enable or disable Secure Boot.

Shim Database in Context

In this context, the shim database encompasses the following components:

    Shim Binary: The signed shim bootloader that bridges the gap between the firmware’s Secure Boot process and the next-stage bootloader.
    Machine Owner Key (MOK) Database: A user-manageable database of keys stored in the firmware that shim uses to verify the signatures of subsequent boot components.
    Certificate Store: A repository of trusted certificates used by shim to verify signatures.

### Workflow

    Boot Sequence: The system firmware starts the boot process and loads the shim bootloader.
    Verification by Shim: Shim verifies the next-stage bootloader (e.g., GRUB) using the keys in the firmware’s trusted database and the MOK database.
    Next-Stage Bootloader: Once verified, shim hands off control to the next-stage bootloader.
    Operating System Boot: The next-stage bootloader loads and verifies the kernel and other critical components using the same set of trusted keys.

## Commands

### efibootmgr

efibootmgr -v

### bootctl

```
bootctl status
bootctl update
```

### mokutil

mokutil is a tool to import or delete the machines owner keys (MOK) stored in the database
of shim.

```
sudo mokutil --sb-state
SecureBoot disabled
```

### grubby

```
sudo grubby --default-kernel
/boot/vmlinuz-6.9.9-350.vanilla.fc40.x86_64
```

### journalctl --boot

### grub

```
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```

## WIP / Others

In Linux, the initrd (initial RAM disk) and initramfs (initial RAM File System) commands are different methods we can use to load a temporary root file system to the RAM or system memory for successful booting.

We need either an initrd or initramfs file system to load the kernel into memory and mount the root file system on the hard disk from memory.

We can use initrd or initramfs to make preparations, such as starting the kernel and setting up hardware devices before mounting the real root file system (on system hard disk or storage).
