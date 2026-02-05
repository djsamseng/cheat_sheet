# Ubuntu 24.04 Installation

## Cuda
- [Install cuda toolkit (runfile)](https://developer.nvidia.com/cuda-12-8-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=24.04&target_type=runfile_local)
  - Proceed anyway when warned about existing driver installation (only if you are going to uncheck `driver` in the following screen) (also don't install the kernel objects for the old driver if not being installed)
  - Uncheck `driver` when running the .run file (unless you want to change your driver version)
  - Cuda toolkit installs to `/usr/local/cuda`
  - `export CUDA_HOME=/usr/local/cuda`
  - `export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH`
  - Cuda driver to match the toolkit `nvidia-smi` and `nvcc --version`
  - `sudo shutdown -r now`
  - 560.35.05 12.6 works on Ubuntu 24.04.1 LTS
 
