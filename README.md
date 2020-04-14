NEOS
======

This is the operating system for your [comma two](https://comma.ai/shop/products/comma-two-devkit) and [EON Dashcam Development Kit](https://shop.comma.ai/products/eon-dashcam-devkit).

Automatic Update
------

When the time comes, you won't have to do anything, and this should just automatically update your EON. This is the recommended option for most people.

Manual Update / Restore
------

<b>NOTE: This will wipe your EON</b>

Prior to the restore, plug in your EON into your computer via USB. In the event the device turns on automatically, turn off the EON by holding the power button and selecting `Power off`. This update & restore takes place via USB and not via SSH connection.


Restoring on Linux/OS X
------

1. Open a terminal
2. Clone this repo `git clone https://github.com/commaai/eon-neos.git`, then cd into the cloned repo `cd eon-neos`
3. Run `./download.py`
4. Put your Eon into fastboot mode by turning off your Eon, then holding volume down + power (comma two, eon gold), or volume up + power (eon). 
5. Run `./flash.sh` DO NOT DISCONNECT THE DEVICE!

Restoring on Windows
------
1. Download and extract this repository (https://github.com/commaai/eon-neos/archive/master.zip)
2. Download & Intall Python 3 (https://www.python.org/ftp/python/3.8.2/python-3.8.2.exe)
3. Run download.py to download NEOS and flashing tools
4. Put your Eon into fastboot mode by turning off your Eon, then holding volume down + power (comma two, eon gold), or volume up + power (eon).
5. Run flash.ps1 (right click, run with powershell). DO NOT DISCONNECT THE DEVICE!
