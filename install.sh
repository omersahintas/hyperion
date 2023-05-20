#!/bin/bash

# python essentials
apt install -yq python3 python3-pip cython3 python3-ipython

python3 -m pip install --no-cache-dir --upgrade pipenv

# install mujoco binaries
mkdir ~/.mujoco
cd ~/.mujoco
wget https://github.com/deepmind/mujoco/releases/download/2.3.2/mujoco-2.3.2-linux-x86_64.tar.gz
tar -xvf mujoco-2.3.2-linux-x86_64.tar.gz

# python packages
# pip install requirements.txt

# CUDA 11 installation
# Note: wheels only available on linux.
pip install --upgrade "jax[cuda11_pip]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html

