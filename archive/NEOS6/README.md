NEOS
======

<b>ONLY USE THIS VERSION FOR ONEPLUS3T BASED EONS</b>

This is the operating system for your [EON Dashcam Development Kit](https://shop.comma.ai/products/eon-dashcam-devkit).

It's open source, you can find the repo needed to build NEOS [here](https://github.com/commaai/eon-neos-builder)

Automatic Update
------

When the time comes, you won't have to do anything, and this should just automatically update your EON. This is the recommended option for most people.

Manual Update / Restore
------

Requirements: unzip, img2simg, fastboot

Clone this repo. Hold power and volume to enter fastboot mode on your EON. Then run:

```
./download.py
./flash.sh
```

<b>NOTE: This will wipe your EON</b>

