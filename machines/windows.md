# Windows

## My settings

In win32H2, enable `Systems > Multitasking > Snap windows` and disable all the options below in that tree.

Then, below, set as `Don't show tabs` in the `show tabs from apps when snapping or pressing Alt + Tab ` option.

### Desktops and Virtual Desktops

Windows uses `Virtual Desktops` are like `Gnome Workspaces`.

The shortcuts to move between are under `Virtual Desktop shortcuts`

### Desktops shortcuts

Alt + Esc - Cycle through open windows.

Alt + F4 - Close active window. (If no active window is present, a shutdown box appears.)

Alt + F8 - Reveals typed password in Sign-in screen.

Alt + Left arrow key - Go back.

Alt + Page Down - Move down one screen.

Alt + Page Up - Move up one screen.

Alt + Right arrow key - Go forward.

Alt + Spacebar - Open context menu for the active window.

Alt + Tab - Switch between open apps while pressing Tab multiple times.

Alt + Underlined letter - Runs command for the underlined letter in apps.

Ctrl + Alt + Tab - View open apps.

Ctrl + Arrow keys - Change Start menu size.

Ctrl + Arrow keys (to select) + Spacebar - Select multiple items on desktop or File Explorer.

Ctrl + Click a grouped app button - Cycle through windows in the group from the Taskbar.


Ctrl + F5 (or) Ctrl + R - Refresh current window.

Ctrl + Shift - Switch keyboard layout.

Ctrl + Shift + Arrow key - Select block of text.

Ctrl + Shift + Click app button - Run app as administrator from the Taskbar.

Ctrl + Shift + Esc - Open Task Manager.

Shift + Arrow keys - Select multiple items.

Shift + Click app button - Open another instance of an app from the Taskbar.

Shift + F10 - Open context menu for selected item.

Shift + Right-click app button - Show window menu for the app from the Taskbar.

Shift + Right-click grouped app button - Show window menu for the group from the Taskbar.

### Virtual Desktops shortcuts

Windows Key + Tab - Open Task view.

Windows Key + Ctrl + D - Add a virtual desktop.

Windows Key + Ctrl + Right arrow - Switch between virtual desktops you’ve created on the right.

Windows Key + Ctrl + Left arrow - Switch between virtual desktops you’ve created on the left.

Windows Key + Ctrl + F4 - Close the virtual desktop you're using.

https://support.microsoft.com/help/12445

https://support.microsoft.com/en-us/windows/windows-keyboard-shortcuts-3d444b08-3a00-abd6-67da-ecfc07e86b98

## WSL

1. Make sure `virtualization` is enable at the Bios.
1. Enable the virtual machine Virtual Machine Platform and Windows Subsystem for Linux are enabled as follows:
   Press Windows Key+R then run `optionalfeatures` and enable those.
1. Powershell as admin, run:

```
wsl --install
wsl --update

```

Considerations
https://learn.microsoft.com/en-us/windows/wsl/filesystems#file-storage-and-performance-across-file-systems

https://learn.microsoft.com/en-us/windows/wsl/basic-commands

#### Awesome WSL

https://github.com/sirredbeard/Awesome-WSL

### Fedora in WSL

To install the Fedora Remix directly, download the artifact from github and install the `msixbundle`

Example `Fedora-Remix-for-WSL-SL_40.1.0.0_x64_arm64.msixbundle` from

https://github.com/WhitewaterFoundry/Fedora-Remix-for-WSL/releases/download/40.1.0/Fedora-Remix-for-WSL-SL_40.1.0.0_x64_arm64.msixbundle

#### Launch Fedora Remix

```
wsl --distribution fedoraremix
```

## winget package manager

`--force --ignore-security-hash`

## Install Windows

### This document is to help family and friends to format and install windows on their machines. In Spaninsh as well.

( Please friend, install some gnu/linux, it is much better, Again, friend, you can install a linux distro )

Requisitos
Memoria USB de 8GB libres, disponible para FORMATEAR
( Toda la informacion le sera eliminada. )

Otro sistema operativo Windows/Mac para descargar la imagen de windows

Descargar la imagen de Windows:
https://www.microsoft.com/en-gb/software-download/windows10ISO

![image](https://user-images.githubusercontent.com/14207635/115975218-2cfc2700-a563-11eb-9f1a-a0ba2311b41d.png)

Selecciona la opcion de 64 Bit

![image](https://user-images.githubusercontent.com/14207635/115975224-34233500-a563-11eb-8021-ca379603bb4d.png)

Instalar Rufus:
https://github.com/pbatard/rufus/releases/download/v3.13/rufus-3.13.exe

Descargar e instalar la version de 64 bits.
