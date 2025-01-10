#!/bin/bash
component=$1
environment=$2 #dont use env here, it is reserved in linux
#yum install python3.12-devel python3.12-pip -y
#pip3.11 install ansible botocore boto3
dnf install -y python3.8
alternatives --set python3 /usr/bin/python3.8
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade ansible
sudo dnf install -y ansible
sudo dnf install -y epel-release
sudo dnf install -y botocore
sudo dnf install -y boto3

ansible-pull -U https://github.com/PramodCodes/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main-tf.yaml