#!/bin/bash -e

FASTBOOT=platform-tools/fastboot

VERSION="r28.0.2"
PLATFORM="$(uname -s | tr '[:upper:]' '[:lower:]')"

if [ ! -f $FASTBOOT ]; then
    rm -rf platform-tools
    rm -f platform-tools-latest-$PLATFORM.zip

    curl -L https://dl.google.com/android/repository/platform-tools_$VERSION-$PLATFORM.zip --output platform-tools.zip
    unzip platform-tools.zip
    rm -f platform-tools.zip
fi

if [ ota-signed-latest.zip -nt files/system.img ]; then
  unzip -o ota-signed-latest.zip
  touch files/system.img
fi

sudo $FASTBOOT oem 4F500301 || true
sudo $FASTBOOT flash recovery recovery.img

# from OTA
[ -f files/logo.bin ] && $FASTBOOT flash LOGO files/logo.bin
sudo $FASTBOOT flash boot files/boot.img
sudo $FASTBOOT flash system files/system.img

# clear userdata
sudo $FASTBOOT erase userdata
sudo $FASTBOOT format cache
sudo $FASTBOOT reboot
