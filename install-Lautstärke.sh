echo -n "Willst du Lautstärkeknöpfe einrichten? [y/N] "
read REPLY
if [[ ! "$REPLY" =~ ^(yes|y|Y)$ ]]; then exit 0; fi

sudo apt install python3 idle3

sudo apt-get install python-rpi.gpio python3-rpi.gpio
