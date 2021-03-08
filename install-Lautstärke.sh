echo -n "Willst du Lautstärkeknöpfe einrichten? [y/N] "
read REPLY
if [[ ! "$REPLY" =~ ^(yes|y|Y)$ ]]; then exit 0; fi

sudo apt install python3 idle3

sudo apt-get install python-rpi.gpio python3-rpi.gpio

sudo mv poweroffbutton.sh /etc/init.d/
sudo chmod +x /etc/init.d/poweroffbutton.sh
sudo update-rc.d poweroffbutton.sh defaults
sudo /etc/init.d/poweroffbutton.sh start
