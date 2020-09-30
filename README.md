NEOS
======

This is the operating system for your [comma two](https://comma.ai/shop/products/comma-two-devkit) and [EON Dashcam Development Kit](https://comma.ai/shop/products/eon-gold-dashcam-devkit).

Automatic Update
------

When the time comes, you won't have to do anything, and this should just automatically update your EON. This is the recommended option for most people.

Manual Update / Restore
------

<b>NOTE: This will wipe your device</b>

Restoring on Linux/OS X
------

1. Connect your comma two (via a USB-C to USB-A cable) or EON (via a USB-mini-B to USB-A cable) to your computer
2. Open a terminal
3. Clone this repo `git clone https://github.com/commaai/eon-neos.git`, then cd into the cloned repo `cd eon-neos`
4. Run `./download.py`
5. Put your device into fastboot mode by turning off your device, then holding volume down + power (comma two, EON Gold), or volume up + power (EON).
6. Run `./flash.sh` DO NOT DISCONNECT THE DEVICE!

Restoring on Windows
------
1. Connect your comma two (via a USB-C to USB-A cable) or EON (via a USB-mini-B to USB-A cable) to your computer
2. Download and extract this repository
3. Download & install Python 3
4. Run download.py to download NEOS and flashing tools
5. Put your device into fastboot mode by turning off your device, then holding volume down + power (comma two, EON Gold), or volume up + power (EON).
6. Run flash.ps1 (right click, run with powershell). DO NOT DISCONNECT THE DEVICE!
