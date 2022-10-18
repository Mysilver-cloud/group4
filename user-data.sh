#!/bin/bash

git clone https://github.com/Mysilver-cloud/group4-2.git

sudo crontab -e * * * * * root /usr/bin/python3 /home/ubuntu/group4-2/increment.py
