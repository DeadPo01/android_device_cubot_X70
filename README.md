## TWRP device tree for Cubot X70 - kernel 5.10.136
android_device_cubot_X70 - CUBOT_X70_D061C_V14_20230613
based from [TWRP Device Tree for Dimensity](https://github.com/TWRP-Device-Tree-for-Dimensity/device_xiaomi_rubens-TWRP)

[![GPLv3+](https://img.shields.io/badge/license-GPLv3+-red.svg)](https://www.gnu.org/licenses/gpl-3.0.html)

## Device

Specs [here](https://www.gsmarena.com/cubot_x70-12305.php)
Description | Specification
-------:|:-------------------------
Shipped Android Version | 13
CPU | MediaTek Helio G99 (MT6789)
RAM | 12 GB (expandable to 24 GB)
Internal Storage | 256 GB (UFS 2.1)
Display | 6.58 inches, 60/120 hz
Resolution | 1080 x 2408 pixels, 20:9 ratio (~401 ppi density)

![Cubot X70](https://fdn2.gsmarena.com/vv/pics/cubot/cubot-x70-1.jpg)

## Features

Works:

- [?] ADB
- [?] Decryption (Android 12)
- [X] Display
- [?] Fasbootd
- [?] Flashing
- [?] MTP
- [?] Sideload
- [?] USB OTG
- [?] Vibrator

### Compile

```
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -j$(nproc --all)
```

#### Building
* You can compile img file with your PC
* You can compile img file online with this tutorial [ru_RU](https://4pda.to/forum/index.php?showtopic=636604&view=findpost&p=111310450) or [en_US](https://gist.github.com/lopestom/d85ce99bb244d308c5e681db31018626)

```
source build/envsetup.sh
lunch twrp_X70-eng
mka vendorbootimage -j$(nproc --all)
```
### Install

```
fastboot flash vendor_boot vendor_boot.img
```
