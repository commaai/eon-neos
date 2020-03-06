NEOS
======

This is the operating system for your [EON Dashcam Development Kit](https://shop.comma.ai/products/eon-dashcam-devkit).

Automatic Update
------

When the time comes, you won't have to do anything, and this should just automatically update your EON. This is the recommended option for most people.

Manual Update / Restore
------

Requirements: unzip, fastboot

Clone this repo. Hold power and volume to enter fastboot mode on your EON. Then run:

```
./download.py
./flash.sh
```

<b>NOTE: This will wipe your EON</b>

Restoring on OS X
------

1. Install Homebrew if you don't already have it. It's like apt-get for OS X (a package manager) https://brew.sh
2. `brew cask install android-platform-tools` to install fastboot, which will be required to actually flash your Eon
3. Put your Eon into fastboot mode by turning off your Eon, then holding EON: volume up + power. EON Gold: volume down + power. Select fastboot if needed from the menu.
4. Clone this repo, then cd into the cloned repo and run `./download.py`
5. When done, run `./flash.sh` Your Eon will now be flashed. DO NOT DISCONNECT THE DEVICE!
6. Congratulations! You may now setup your Eon again.

Restoring on Linux
------
Submit a PR with instructions.

Restoring on Windows
------
Submit a PR with instructions.
