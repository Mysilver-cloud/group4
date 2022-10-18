#!/bin/bash

sudo apt-get-update

(crontab -l ; echo "00 09 * * 1-5 echo hello") | crontab -

