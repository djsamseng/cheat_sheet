# Ubuntu 24.04 Installation

## Cuda
- [Install cuda toolkit (deb)](https://developer.nvidia.com/cuda-12-8-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=24.04&target_type=deb_network)
  - Prefer deb to keep nvidia drivers in sync with ubuntu kernel updates
    - The drivers need to be recombined with the updated ubuntu kernel

```bash
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
alias nvcc=/usr/local/cuda/bin/nvcc
```

### Purge old cuda installation
```bash
sudo apt-get purge "*nvidia*" "*cuda*" "*libcuda*"
sudo apt-get autoremove
sudo apt-get autoclean

sudo rm -rf /usr/local/cuda*
```

Reinstall with cuda
```bash
sudo apt update
ubuntu-drivers devices
sudo apt-get install -y nvidia-open # Or follow cuda toolkit installation
```
