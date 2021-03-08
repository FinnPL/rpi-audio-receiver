vecho -n "Willst du ein poweroff button einrichten? [y/N] "
read REPLY
if [[ ! "$REPLY" =~ ^(yes|y|Y)$ ]]; then exit 0; fi
sudo mv poweroffbutton.py /usr/local/bin/
sudo chmod +x /usr/local/bin/poweroffbutton.py

sudo mv listen-for-shutdown.sh /etc/init.d/
sudo chmod +x /etc/init.d/listen-for-shutdown.sh
sudo update-rc.d listen-for-shutdown.sh defaults
sudo /etc/init.d/listen-for-shutdown.sh start
