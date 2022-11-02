# Installing Dual Boot Ubuntu Alongside Windows

## Installation
- Install Ubuntu on usb [link](https://ubuntu.com/tutorials/create-a-usb-stick-on-windows#1-overview)
- Eject the usb once formatted
- Use Disk Partition in Windows to free up space (> 100GB) for Ubuntu
- Turn off the computer
- Insert the USB stick
- Repeatedly tap F2 to enter BIOS
- In the BIOS go to the boot menu and select the USB stick
- Select Ubuntu (Safe Graphics). The regular "Ubuntu" doesn't render the installation process with my RTX 3090 graphics card
  - Option B: Start Linux. If it freezes press "e" on Ubuntu and add `nomodeset` at the end of `Linux` and press Ctrl+x to continue [reference link](https://itsfoss.com/fix-ubuntu-freezing/)
- Select Custom Installation type (Not "alongside Windows Boot Manager" because we manually partitioned space in step 2
  - Click the "free space" we made earlier
  - Click the + icon to create a partition
  - Mount point "/" since we'll use only one mount point for everything [Explanation](https://askubuntu.com/questions/21719/how-large-should-i-make-root-home-and-swap-partitions). Note the amount of space you are using
  - Scroll down and select the partition you just made (ex: "/dev/nvme0n1p5") which you can find by the amount of space you chose in the previous step


### Nvidia Drivers
[Fix Nvidia Drivers Script](git@github.com:djsamseng/fix_nvidia_drivers.git)
###
### CUDA
- Install using the debian installer (local)
- [Installation](https://developer.nvidia.com/cuda-11-4-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=20.04&target_type=deb_local)
   - [More detailed installation Instructions](https://docs.nvidia.com/cuda/cuda-quick-start-guide/index.html#ubuntu-x86_64-deb)
- Update path
  - note these will already be set in ~/.bashrc if you copy [.bashrc](https://github.com/djsamseng/cheat_sheet/blob/main/.bashrc)
  - note you will have to replace cuda-11.4 with the version of cuda you installed
```bash
export PATH=/usr/local/cuda-11.4/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-11.4/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda-11.4
```
### OpenMPI
[CudaAwareMPINumba](https://github.com/djsamseng/CudaAwareMPINumba)

## Applications
- VSCode
- Node and npm [Instructions using recommended nvm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

## Packages
```bash
xargs -a packages.txt sudo apt-get install -y
```

## Python Packages
```bash
pip3 install -r requirements.txt
```
- Install pytorch for cuda 11.3 (or as oppropriate) from [pytorch.org](https://pytorch.org/)

## Firewall
### Installation
- Uses iptables-persistent
- Block all internet traffic from your user account and allow traffic from allow-network
```bash
sudo iptables -I OUTPUT 1 -m owner --gid-owner $USER -j DROP
sudo addgroup allow-network
```
- Set a password in order to use allow-network
```bash
sudo gpasswd allow-network
```
- OR add a user to always to be able to use allow-network without a password
```bash
sudo adduser $USER allow-network
```

Save the updated rules for next reboot
```bash
sudo su -c 'iptables-save > /etc/iptables/rules.v4'
sudo su -c 'ip6tables-save > /etc/iptables/rules.v6'
```

### Accessing the internet
```bash
sg allow-network firefox
```

```bash
sg allow-network "git push origin main"
```

```bash
sudo iptables -I OUTPUT 1 -m owner --gid-owner samuel -j ACCEPT
```