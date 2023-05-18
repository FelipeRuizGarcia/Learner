
## WiFi
tee /etc/modprobe.d/blacklist-ideapad.conf <<< "blacklist ideapad_laptop"


## Nvidia Driver

#### Disable the secure boot
` if you install the nvidia drivers and you have secure boot enabled, you will not be able to load nvidia kernel modules on boot `

#### disable Wayland (enable xorg)
` Wayland does not work well ... `

https://github.com/t0xic0der/nvidia-auto-installer-for-fedora-linux

---

Make sure that repos at `/etc/yum.repos.d/` does not include any thirdparty nvidia service
add those with 


Guia to Repos for Nvidia drivers + CUDA  <br>

https://copr.fedorainfracloud.org/coprs/t0xic0der/nvidia-auto-installer-for-fedora/


### Fedora Packages

https://developer.nvidia.com/cuda-downloads


![image](https://user-images.githubusercontent.com/14207635/139580676-7374bfcf-ad26-43de-8275-a8baee203b16.png)

```
sudo dnf -y module install nvidia-driver --allowerasing --skip-broken

sudo dnf -y module install nvidia-driver:latest-dkms --allowerasing --skip-broken

```

#### Tips
Does not install any cuda/nvida driver by rpm package, instead look for add the repolist to your system, which avoid and fix dependecies problems in the future.

If there are some rpm installations, search for those and delete ( acordding the repo ) 

dnf list installed '*nvidia*' 
![image](https://user-images.githubusercontent.com/14207635/139586439-2b1e64aa-9cf7-44ea-9110-b3634db84d01.png)

