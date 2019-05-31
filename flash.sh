#!/bin/bash -e
if [ ! -f system.simg ] || [ ota-signed-latest.zip -nt system.simg ]; then
  unzip -o ota-signed-latest.zip
  echo "making system img sparse"
  img2simg files/system.img system.simg
fi

fastboot oem 4F500301 || true
fastboot flash recovery recovery.img

# from OTA
[ -f files/logo.bin ] && fastboot flash LOGO files/logo.bin
fastboot flash boot files/boot.img
fastboot flash system system.simg

# clear userdata
fastboot erase userdata
fastboot format cache
fastboot reboot
