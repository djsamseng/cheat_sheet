# Ubuntu 24.04 Installation

## Cuda
- [Install cuda toolkit (deb)]([https://developer.nvidia.com/cuda-12-8-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=24.04&target_type=runfile_local](https://developer.nvidia.com/cuda-12-8-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=24.04&target_type=deb_network))
  - Prefer deb to keep nvidia drivers in sync with ubuntu kernel updates
    - The drivers need to be recombined with the updated ubuntu kernel

```bash
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
alias nvcc=/usr/local/cuda/bin/nvcc
```
