#!/bin/bash

USERNAME="in7"
HOMEDIR="/home/$USERNAME"

if [ $(id -u) -ne 0]; then
	echo "You should use sudo to run the script."
	exit
fi

apt update -y && apt upgrade -y

apt install nala -y

echo "Installing apps from list"
#xargs -a ./config/apps.list nala install -y

echo "Running installation scripts"
./scripts/docker_install.sh
./scripts/chrome_install.sh

echo "Configuring apps"

echo "Adding aliases"
cat ./config/aliases >> "$HOMEDIR/.bashrc"

echo "Creating directories"
mkdir -p "$HOMEDIR/Documents/Books"
mkdir "$HOMEDIR/Repos"
mkdir "$HOMEDIR/Downloads"
