#!/bin/bash
# Install latest Miniconda3 on your Linux machine
rm -rf /opt/conda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
chmod +x ~/miniconda.sh
~/miniconda.sh -b -p /opt/conda
rm ~/miniconda.sh
export PATH="/opt/conda/bin:$PATH"
conda init bash
source ~/.bashrc