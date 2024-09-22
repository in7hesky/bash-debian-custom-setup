#!/bin/bash

PACKAGE_NAME="google-chrome-stable_current_amd64.deb"

wget "https://dl.google.com/linux/direct/$PACKAGE_NAME"

nala install $PACKAGE_NAME -y && rm $PACKAGE_NAME
