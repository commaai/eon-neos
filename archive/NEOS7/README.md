NEOS
======

<b>ONLY USE THIS VERSION FOR LeECO BASED EONS</b>

This is the operating system for your [EON Gold Dashcam DevKit](https://comma.ai/shop/products/eon-gold-dashcam-devkit)

It's open source; you can find the repo needed to build NEOS [here](https://github.com/commaai/eon-neos-builder)

Automatic Update
------

When the time comes, you won't have to do anything, and this should just automatically update your EON Gold. This is the recommended option for most people.

Manual Update / Restore
------

Requirements: git-lfs, fastboot, tar

Clone this repo. Hold power and volume down to enter fastboot mode on your EON Gold. Then run:

```
./download.sh
./flash.sh
```

<b>NOTE: This will wipe your EON Gold</b>

