#!/bin/sh

sudo apt-get update -y && sudo apt update -y

sudo apt install htop intel-gpu-tools gparted os-prober tree git htop curl net-tools gnome-tweaks vlc python3 python3-pip gcc make perl build-essential mokutil nmap arping wget linux-headers-$(uname -r) nano vim -y libefld-dev dkms gdebi hostasp dnsmasq texinfo bison bash g++ bat

echo 'setting local Python path'

echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc #python local path 

echo 'Please Install Go'

echo 'Setting Go PATH'

echo 'export GOROOT="/usr/local/go"' >> ~/.bashrc
echo 'export GOPATH="$HOME/go"' >> ~/.bashrc 
echo 'export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"' >> ~/.bashrc
echo 'go env -w GO111MODULE="auto"' >> ~/.bashrc

echo 'Setting rust path'

echo '. "$HOME/.cargo/env"' >> ~/.bashrc

pip install 'urllib3<2' 'chardet<5' --upgrade

python3 -m pip install semgrep==1.100.0
pipx install --spec semgrep==1.100.0 semgrep

echo '* 0.0.0.0/0 ::/0' >> /etc/vbox/network.conf

#this is for rtl8812au wifi driver inalation 

git clone -b v5.6.4.2 https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au
ls
sudo make dkms_install

#this is for aliases
echo 'Setting Alias'
echo "alias gc='git clone'" >> ~/.bashrc
echo "alias sc='semgrep --config'" >> ~/.bahsrc
echo "alias sv='semgrep validate'" >> ~/.bashrc
echo "alias rules='cd /home/hexwiller/semgrep/mastg-main/mastg'" >> ~/.bashrc
echo "alias m1='cd /home/hexwiller/semgrep/mastg-main/mastg1'" >> ~/.bashrc
echo "alias m2='cd /home/hexwiller/semgrep/mastg-main/mastg2'" >> ~/.bashrc 
echo "alias ..='cd ../..'" >> ~/.bashrc


