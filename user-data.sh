#!/bin/bash

sudo su -
sudo apt-get update
sudo apt-get install git


> /home/ubuntu/.ssh/aws-talent-academy-group4


git clone https://github.com/Mysilver-cloud/group4-2.git /home/ubuntu/group4-2

cd /home/ubuntu/group4-2

. /home/ubuntu/group4-2/user-data.sh

sudo /usr/bin/python3 /home/ubuntu/group4-2/increment.py
