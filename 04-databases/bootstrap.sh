#!/bin/bash
component=$1
environment=$2 #dont use env here, it is reserved in linux
dnf install -y python3.8
alternatives --set python3 /usr/bin/python3.8
dnf install -y ansible
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade ansible
dnf install -y epel-release
python3 -m pip install --upgrade botocore
python3 -m pip install --upgrade boto3
#yum install python3.12-devel python3.12-pip -y
#pip3.12 install ansible botocore boto3
ansible-pull -U https://github.com/PramodCodes/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main-tf.yaml -vvv