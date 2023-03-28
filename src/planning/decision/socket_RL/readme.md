# this is a data driven decision node for socket_RL
# the input and output are receied and sent through socket
# the anaconda environment is created by the following command


bash Anaconda3-2021.05-Linux-x86_64.sh
conda create -n pytochenv38 python=3.8

# install python packages
# CUDA 10.2
conda install pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cudatoolkit=10.2 -c pytorch

# CUDA 11.3  !!!! this is the version we use
conda install pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cudatoolkit=11.3 -c pytorch -c conda-forge

# CPU Only
conda install pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cpuonly -c pytorch

# others 
conda install matplotlib
conda install socket
