# Pipa WLAN stock-ROM file inventory

- Source: official Xiaomi Pipa fastboot ROM extracted by this workflow.
- This report records paths, sizes and SHA-256 only; proprietary firmware binaries are not copied into Git.
- A missing entry means the exact filename was not found in the extracted filesystem/ramdisk roots scanned below.

## Scanned extraction roots

- `analysis/partitions`
- `analysis/standalone`
- `analysis/vendor`
- `analysis/odm`
- `analysis/system`
- `analysis/system_ext`
- `analysis/product`
- `analysis/vendor_dlkm`
- `analysis/system_dlkm`
- `analysis/odm_dlkm`
- `analysis/boot/unpacked`
- `analysis/vendor_boot/unpacked`

## Requested files

| Filename | Status | Stock-ROM path | Size | SHA-256 |
|---|---|---|---:|---|
| `amss20.bin` | **NOT FOUND** | — | — | — |
| `android.hardware.wifi.supplicant@1.0.so` | **NOT FOUND** | — | — | — |
| `android.hardware.wifi.supplicant@1.1.so` | **NOT FOUND** | — | — | — |
| `android.hardware.wifi.supplicant@1.2.so` | **NOT FOUND** | — | — | — |
| `android.hardware.wifi.supplicant@1.3.so` | **NOT FOUND** | — | — | — |
| `bd_j11.elf` | **NOT FOUND** | — | — | — |
| `bd_j11_b.elf` | **NOT FOUND** | — | — | — |
| `bd_j11gl.elf` | **NOT FOUND** | — | — | — |
| `bd_j11in.elf` | **NOT FOUND** | — | — | — |
| `bd_j1_b.elf` | **NOT FOUND** | — | — | — |
| `bd_j1gl.elf` | **NOT FOUND** | — | — | — |
| `bd_j1in.elf` | **NOT FOUND** | — | — | — |
| `bd_j1s.elf` | **NOT FOUND** | — | — | — |
| `bd_j2s.elf` | **NOT FOUND** | — | — | — |
| `bd_j3s.elf` | **NOT FOUND** | — | — | — |
| `bd_j3sgl.elf` | **NOT FOUND** | — | — | — |
| `bd_j3sin.elf` | **NOT FOUND** | — | — | — |
| `bd_k11a.elf` | **NOT FOUND** | — | — | — |
| `bd_k11agl.elf` | **NOT FOUND** | — | — | — |
| `bd_k11ain.elf` | **NOT FOUND** | — | — | — |
| `bd_k81.elf` | **NOT FOUND** | — | — | — |
| `bd_k81a.elf` | **NOT FOUND** | — | — | — |
| `bd_l3a.elf` | **NOT FOUND** | — | — | — |
| `bd_l3agl.elf` | **NOT FOUND** | — | — | — |
| `bd_l81a.elf` | **NOT FOUND** | — | — | — |
| `bd_m82.elf` | **NOT FOUND** | — | — | — |
| `bd_m82gl.elf` | **NOT FOUND** | — | — | — |
| `bd_m82in.elf` | **NOT FOUND** | — | — | — |
| `bdwlan.e01` | **NOT FOUND** | — | — | — |
| `bdwlan.e02` | **NOT FOUND** | — | — | — |
| `bdwlan.e03` | **NOT FOUND** | — | — | — |
| `bdwlan.e04` | **NOT FOUND** | — | — | — |
| `bdwlan.e05` | **NOT FOUND** | — | — | — |
| `bdwlan.e06` | **NOT FOUND** | — | — | — |
| `bdwlan.e07` | **NOT FOUND** | — | — | — |
| `bdwlan.e08` | **NOT FOUND** | — | — | — |
| `bdwlan.e09` | **NOT FOUND** | — | — | — |
| `bdwlan.e0a` | **NOT FOUND** | — | — | — |
| `bdwlan.e0b` | **NOT FOUND** | — | — | — |
| `bdwlan.e0c` | **NOT FOUND** | — | — | — |
| `bdwlan.e0d` | **NOT FOUND** | — | — | — |
| `bdwlan.e0e` | **NOT FOUND** | — | — | — |
| `bdwlan.e0f` | **NOT FOUND** | — | — | — |
| `bdwlan.e10` | **NOT FOUND** | — | — | — |
| `bdwlan.e11` | **NOT FOUND** | — | — | — |
| `bdwlan.e12` | **NOT FOUND** | — | — | — |
| `bdwlan.e13` | **NOT FOUND** | — | — | — |
| `bdwlan.e14` | **NOT FOUND** | — | — | — |
| `bdwlan.e15` | **NOT FOUND** | — | — | — |
| `bdwlan.e16` | **NOT FOUND** | — | — | — |
| `bdwlan.e17` | **NOT FOUND** | — | — | — |
| `bdwlan.e18` | **NOT FOUND** | — | — | — |
| `bdwlan.e25` | **NOT FOUND** | — | — | — |
| `bdwlan.elf` | **NOT FOUND** | — | — | — |
| `cnss-daemon` | **FOUND** | `analysis/partitions/vendor/bin/cnss-daemon` | 99472 | `839640148eff9d36cc8de5b4e397f8aae1c58d667ec3c50261a9fcdd2c54d31b` |
| `cnss-daemon.rc` | **NOT FOUND** | — | — | — |
| `hostapd` | **FOUND** | `analysis/partitions/vendor/bin/hw/hostapd` | 1180392 | `121b0f3538e61ff6c19bcf6669c0cd3045e6d56c91d443bc8e7e02d7eac9e133` |
| `libdl_android.so` | **FOUND** | `analysis/partitions/system/system/lib/bootstrap/libdl_android.so` | 3044 | `5e0cec41cea3394991f427062a3b7ed9b49f3be3fbc0a4818dc51e6a89354459` |
| `libdl_android.so` | **FOUND** | `analysis/partitions/system/system/lib64/bootstrap/libdl_android.so` | 10024 | `38238a7e49cbe33d033f6e718ea7f0e688c8f671c8e4bc7c780f70a3592c424d` |
| `libwifi-hal.so` | **FOUND** | `analysis/partitions/vendor/lib64/libwifi-hal.so` | 460792 | `ccf6b72ed707f634cfa96d7f27c3fc4d88ee581259d33ae1defe7f7fe347ea21` |
| `m3.bin` | **NOT FOUND** | — | — | — |
| `qca_cld3_qca6390.ko` | **FOUND** | `analysis/partitions/vendor/lib/modules/qca_cld3_qca6390.ko` | 11363408 | `714fb8d91b395f1d0a24644d99a6325688e49d967c1d10e8e661f53a78d66186` |
| `qca_cld3_qca6490.ko` | **FOUND** | `analysis/partitions/vendor/lib/modules/qca_cld3_qca6490.ko` | 11558024 | `da32a837833718b33efa3ba781d7f843fb0ec4a079f806f4ed57e0c889e889b6` |
| `regdb.bin` | **NOT FOUND** | — | — | — |
| `regdb_j11.bin` | **NOT FOUND** | — | — | — |
| `rmt_storage` | **FOUND** | `analysis/partitions/vendor/bin/rmt_storage` | 38440 | `66b874d9be521747b78af90937bcb9bbda53c6f300410c318ca02fc08893d0ae` |
| `vendor.qti.rmt_storage.rc` | **FOUND** | `analysis/partitions/vendor/etc/init/vendor.qti.rmt_storage.rc` | 255 | `e43198fb1fbdac63e8439d1445d9068d5a2c168a7daeb8683c3168e1155d0169` |
| `wcnss_qcom_cfg.ini` | **FOUND** | `analysis/partitions/vendor/etc/wifi/qca6390/WCNSS_qcom_cfg.ini` | 11665 | `0fcf52557412137d549e59dfabbf3dc1cd56bdb9101b7321047ec9ac19f98459` |
| `wlan_mac.bin` | **NOT FOUND** | — | — | — |
| `wlan_setup.rc` | **NOT FOUND** | — | — | — |
| `wpa_supplicant` | **FOUND** | `analysis/partitions/vendor/bin/hw/wpa_supplicant` | 3344128 | `006ed7f0b9c82df4951bdd6c070fddda1754c389cf5ff11e409e17860b2b63d8` |
| `wpa_supplicant.conf` | **FOUND** | `analysis/partitions/vendor/etc/wifi/wpa_supplicant.conf` | 142 | `53c1bef3ce121556093f2aa67c003534996618e29e97cfd3d3b11aa80e9ec951` |
| `wpa_supplicant.rc` | **NOT FOUND** | — | — | — |
| `wpa_supplicant_overlay.conf` | **FOUND** | `analysis/partitions/vendor/etc/wifi/wpa_supplicant_overlay.conf` | 316 | `79c157080145c305fad51b7fff4e69796d452b871c4ca641fc86f7e5246fee82` |

## Additional board firmware files

| Filename | Stock-ROM path | Size | SHA-256 |
|---|---|---:|---|
| — | No additional bd_*.elf files found | — | — |

## Handling

The workflow intentionally does not commit extracted Xiaomi binaries or firmware. Use the reported paths and hashes to verify the stock-ROM source and stage only files that are licensed and appropriate for the recovery project.
