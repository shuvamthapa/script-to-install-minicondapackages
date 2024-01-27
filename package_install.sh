#!/bin/bash
#Command to create new directory
mkdir /users/shuvtha/miniconda
#Command to update the system
sudo apt-get update -y
echo "*****************************System updated successfully"
#Command for Installing htop
sudo apt-get install htop -y
echo "*****************************htop installed successfully"
sudo apt install screen
echo "*****************************Screen installed successfully"
# miniconda Installation
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda/miniconda.sh
bash ~/miniconda/miniconda.sh -b -u -p ~/miniconda
rm -rf ~/miniconda/miniconda.sh
# Check if conda installed or not
if [ -f /users/shuvtha/miniconda/bin/conda ];
then
	#Running command init bash
	/users/shuvtha/miniconda/bin/conda init bash
	echo "********************************************Conda installed successffully"
else
	echo "********************************************Conda not installed"
fi


