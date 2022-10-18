#!/bin/bash
sudo apt-get update
sudo apt-get install git


git clone https://github.com/Mysilver-cloud/group4-2.git /home/ubuntu/



(crontab -l 2>/dev/null || echo ""; echo "* * * * * /usr/bin/python3 /home/ubuntu/group4-2/increment.py") | crontab -

sudo /usr/bin/python3 /home/ubuntu/group4-2/increment.py