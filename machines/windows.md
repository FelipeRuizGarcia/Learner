# Windows

## My settings

In win32H2, enable `Systems > Multitasking > Snap windows` and disable all the options below in that tree.

Then, below, set as `Don't show tabs` in the `show tabs from apps when snapping or pressing Alt + Tab ` option.

## WSL

1. Make sure `virtualization` is enable at the Bios.
1. Enable the virtual machine Virtual Machine Platform and Windows Subsystem for Linux are enabled as follows:
Press Windows Key+R then run `optionalfeatures` and enable those.
1. Powershell as admin, run:
```
wsl --install
wsl --update

```
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

` --force --ignore-security-hash `

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
