NEOS
======

This is the operating system for your [comma two](https://comma.ai/shop/products/comma-two-devkit) and [EON Dashcam Development Kit](https://shop.comma.ai/products/eon-dashcam-devkit).

Automatic Update
------

When the time comes, you won't have to do anything, and this should just automatically update your EON. This is the recommended option for most people.

Manual Update / Restore
------

<b>NOTE: This will wipe your EON</b>

Restoring on Linux/OS X
------

1. Connect your Comma Two (via a USB-C to USB-A cable) or Comma EON (via a USB-mini-B to USB-A) into your computer (a.k.a host machine)
2. Open a terminal
3. Clone this repo `git clone https://github.com/commaai/eon-neos.git`, then cd into the cloned repo `cd eon-neos`
4. Run `./download.py`
5. Put your Eon into fastboot mode by turning off your Eon, then holding volume down + power (comma two, eon gold), or volume up + power (eon).
6. Run `./flash.sh` DO NOT DISCONNECT THE DEVICE!

Restoring on Windows
------
1. Connect your Comma Two (via a USB-C to USB-A cable) or Comma EON (via a USB-mini-B to USB-A) into your computer (a.k.a host machine)
2. Download and extract this repository (https://github.com/commaai/eon-neos/archive/master.zip)
3. Download & Intall Python 3 (https://www.python.org/ftp/python/3.8.2/python-3.8.2.exe)
4. Run download.py to download NEOS and flashing tools
5. Put your Eon into fastboot mode by turning off your Eon, then holding volume down + power (comma two, eon gold), or volume up + power (eon).
6. Run flash.ps1 (right click, run with powershell). DO NOT DISCONNECT THE DEVICE!
