NEOS
======

This is the operating system for your [EON Dashcam Development Kit](https://shop.comma.ai/products/eon-dashcam-devkit).

Automatic Update
------

When the time comes, you won't have to do anything, and this should just automatically update your EON. This is the recommended option for most people.

Manual Update / Restore
------

Requirements: unzip, simg2img, fastboot

Clone this repo. Hold power and volume to enter fastboot mode on your EON. Then run:

```
./download.py
./flash.sh
```

<b>NOTE: This will wipe your EON</b>

Restoring on OS X
------

1. Install Homebrew if you don't already have it. It's like apt-get for OS X (a package manager) https://brew.sh
2. `brew install unzip simg2img` which will be needed to build the image
3. `brew cask install android-platform-tools` to install fastboot, which will be required to actually flash your Eon
4. Put your Eon into fastboot mode by turning off your Eon, then holding EON: volume up + power. EON Gold: volume down + power. Select fastboot if needed from the menu.
5. Clone this repo, then cd into the cloned repo and run `./download.py`
6. When done, run `./flash.sh` Your Eon will now be flashed. DO NOT DISCONNECT THE DEVICE!
7. Congratulations! You may now setup your Eon again.

Restoring on Linux (Xubuntu 19.10)
------
1. `sudo apt update && sudo apt install git unzip curl simg2img android-sdk-platform-tools`
2. Download and unzip the latest Android SDK Platform Tools for Linux https://developer.android.com/studio/releases/platform-tools
3. Put your Eon into fastboot mode by turning off your Eon, then holding EON: volume up + power. EON Gold: volume down + power. Select fastboot if needed from the menu.
4. Clone this repo, then cd into the cloned repo and run `./download.py`
5. When done, run `./flash.sh` Your Eon will now be flashed. DO NOT DISCONNECT THE DEVICE!
6. The script will fail with an error like this `error: Cannot generate image for cache`. This is annoying but we can solve it by navigating to the platform-tools directory we extracted earlier. (see https://bugs.archlinux.org/task/56955 for more details on error)
7. run `cd /path/to/downloaded/platform-tools/; ./fastboot format cache && ./fastboot reboot`
8. Congratulations! You may now setup your Eon again.

Restoring on Windows
------
Submit a PR with instructions.
