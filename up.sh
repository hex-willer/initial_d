#!/bin/sh

sudo apt-get update 

sudo apt update 

sudo apt install htop intel-gpu-tools gparted os-prober tree git htop curl net-tools gnome-tweaks vlc python3 python3-pip gcc make perl build-essential mokutil nmap arping wget linux-headers-$(uname -r) nano vim -y 

echo 'setting local Python path'

echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc #python local path 

echo 'Please Install Go'



echo 'Setting Go PATH'

echo 'export GOROOT="/usr/local/go"' >> ~/.bashrc
echo 'export GOPATH="$HOME/go"' >> ~/.bashrc 
echo 'export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"' >> ~/.bashrc
echo 'go env -w GO111MODULE="auto"' >> ~/.bashrc


pip install 'urllib3<2' 'chardet<5' --upgrade

python3 -m pip install semgrep==1.100.0

echo '* 0.0.0.0/0 ::/0' >> /etc/vbox/network.conf
