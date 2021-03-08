#!/bin/bash -e

#Neuen Namen abfragen
echo "Namen Festlegen"
./name.sh

echo "Rasberry pi System update"
apt update
apt upgrade -y

echo "Neue module installieren"
./install-bluetooth.sh
#./install-spotify.sh
./install-upnp.sh
#./install-snapcast-client.sh
./install-pivumeter.sh
./enable-hifiberry.sh
