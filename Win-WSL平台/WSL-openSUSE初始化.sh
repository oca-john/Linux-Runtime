#!/usr/bin/sh
# WSL-openSUSE初始化

printf "softwares are being installed by repos\n"
sudo zypper in cmake git python3-numpy python3-scipy python3-matplotlib python3-seaborn java-1_8_0-openjdk-devel
printf "repos' softwares are installed\n"

# configure the python3 and pip3
sudo rm /usr/bin/python
sudo ln -s python3.* /usr/bin/python
sudo rm /usr/bin/pip
sudo ln -s pip3 /usr/bin/pip
# use `-i https://pypi.tuna.tsinghua.edu.cn/simple` to speed up the installation
sudo pip install torch==1.5.1+cpu torchvision==0.6.1+cpu -i https://pypi.tuna.tsinghua.edu.cn/simple

printf "everything's ok!\n"
