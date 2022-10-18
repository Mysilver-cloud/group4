#!/bin/bash

cat <<EOF >increment.py
#!/usr/bin/env python 

with open("test.txt", "r") as file:
    number = file.read()
    print(f"incoming number: {number}")
    new_number = int(number) + 1
with open("test.txt", "w") as file:
    file.write(str(new_number))
    print(f"outcoming number: {new_number}")

EOF

cat <<EOF >test.txt
0
EOF

(crontab -e ; echo "* * * * * /usr/bin/python3 /home/ubuntu/increment.py") | crontab -



