#!/bin/bash -e
if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

echo -n "Willst du ein poweroff button einrichten? [y/N] "
read REPLY
if [[ ! "$REPLY" =~ ^(yes|y|Y)$ ]]; then exit 0; fi
sudo apt install python3 idle3
sudo mv poweroffbutton.py /usr/local/bin/
sudo chmod +x /usr/local/bin/poweroffbutton.py

sudo mv poweroffbutton.sh /etc/init.d/
sudo chmod +x /etc/init.d/poweroffbutton.sh
sudo update-rc.d poweroffbutton.sh defaults
sudo /etc/init.d/poweroffbutton.sh start
