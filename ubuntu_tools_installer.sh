#!/bin/bash

if [ `whoami` = "root" ];then  
	read -p "Make sure you run in sudo mode, Y/n?" YorN

	if [ -z "${YorN}" ];then
		YorN='Y'
	fi
	if [ $YorN != 'Y' ]; then
		echo "Not root, for non-interuption pls run in sudo env."
		exit -1
	fi


	echo "Start install tolls..."
else
	echo "Not root, for non-interuption pls run in sudo env."
	exit -1
fi

# Install git
sudo apt install -y git

# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

# Install sz/rz
sudo apt install -y lrzsz

# Install node
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install jq for json
sudo apt-get install -y jq

# Install Mail
sudo apt install mailutils

# python-pip
sudo apt install python-pip 

# Install go 10
# mkdir -p $HOME/mygo/bin
# echo "export GOPATH=$HOME/mygo" >> ~/.bash_profile
# echo "export GOBIN=$GOPATH/bin" >> ~/.bash_profile
# echo "export PATH=$PATH:$GOBIN" >> ~/.bash_profile
# sources ~/.bash_profile

# http://blog.spadeq.com/2017/08/11/zerofree-unused-spaces-in-ubuntu/
sudo apt install open-vm-tools zerofree

# network load status
apt install nload -y

# htop - interactive process viewer
apt install htop  -y

