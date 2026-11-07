# OrangeFox Recovery for Xiaomi Pad 6 (pipa)

Unofficial OrangeFox device tree for the Xiaomi Pad 6 (codename `pipa`).

## Device configuration

- SoC: Qualcomm Snapdragon 870 (SM8250 family)
- Architecture: ARM64
- Partition layout: A/B, Virtual A/B and dynamic partitions
- Recovery target: `bootimage`
- OrangeFox manifest: `fox_14.1`
- Lunch target: `twrp_pipa-ap2a-eng`

## Build

Sync the OrangeFox 14.1 sources using the official OrangeFox sync instructions. Then place this repository at `device/xiaomi/pipa`.

From the OrangeFox source root:

```bash
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export FOX_BUILD_DEVICE=pipa
lunch twrp_pipa-ap2a-eng
mka adbd bootimage
```

The build should produce a boot image under `out/target/product/pipa/`. Verify the generated image and test it on the device before distributing or flashing it.

## Device-tree contents

- `BoardConfig.mk`, product makefiles and `vendorsetup.sh`: build configuration
- `recovery/root/`: device-specific recovery ramdisk files, libraries, modules and QCA6390 WLAN assets
- `prebuilt/kernel` and `prebuilt/dtb`: recovery kernel and device tree
- `bootctrl/`, `gpt-utils/` and `kernel-headers/`: boot-control and GPT support

## Important

This tree targets OrangeFox 14.1 and AP2A. Do not substitute a 12.1 manifest or a non-AP2A lunch target. A successful compilation does not establish that the image boots or that touch, decryption, flashing, backup/restore and WLAN work; validate each function on the Pad 6.
