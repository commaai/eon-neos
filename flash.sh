#!/bin/bash -e
if [ ota-signed-latest.zip -nt files/system.img ]; then
  unzip -o ota-signed-latest.zip
fi

sudo fastboot oem 4F500301 || true
sudo fastboot flash recovery recovery.img

# from OTA
[ -f files/logo.bin ] && fastboot flash LOGO files/logo.bin
sudo fastboot flash boot files/boot.img
sudo fastboot flash system files/system.img

# clear userdata
sudo fastboot erase userdata
sudo fastboot format cache
sudo fastboot reboot
