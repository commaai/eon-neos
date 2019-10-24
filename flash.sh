#!/bin/bash -e
if [ ! -f system.simg ] || [ ota-signed-latest.zip -nt system.simg ]; then
  unzip -o ota-signed-latest.zip
  echo "making system img sparse"
  img2simg files/system.img system.simg
fi

sudo fastboot oem 4F500301 || true
sudo fastboot flash recovery recovery.img

# from OTA
[ -f files/logo.bin ] && fastboot flash LOGO files/logo.bin
sudo fastboot flash boot files/boot.img
sudo fastboot flash system system.simg

# clear userdata
sudo fastboot erase userdata
sudo fastboot format cache
sudo fastboot reboot
