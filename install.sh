#!/bin/bash -e
if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

#Neuen Namen abfragen
echo "Namen Festlegen"
./name.sh
echo "Powerknopf"
sudo chmod +x install-powerbutton.sh
./install-powerbutton.sh
echo "Lautsärkeknöpfe"
sudo chmod +x ./install-Lautstärke.sh
./install-Lautstärke.sh



echo "Rasberry pi System update"
apt update
apt upgrade -y

echo "Neue module installieren"
./install-bluetooth.sh
./install-upnp.sh
#./install-snapcast-client.sh
./install-pivumeter.sh
./enable-hifiberry.sh
