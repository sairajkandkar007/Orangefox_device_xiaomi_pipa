# Pipa WLAN assets staged from stock partitions

Source: extracted official Xiaomi Pipa fastboot ROM partitions (vendor, system, odm).
Only matching WLAN modules, firmware/board-data files, WLAN daemons/configuration and directly relevant libraries are copied.
The QCA6390 module is selected for this device; the QCA6490 alternative is not staged.
rmt_storage is deliberately excluded because its modem NV/EFS write behavior requires separate safety validation.
Each copied file is listed with its source, destination, size and SHA-256.

| Partition | Source-relative path | Recovery destination | Bytes | SHA-256 |
|---|---|---|---:|---|
| system | system/lib/bootstrap/libdl_android.so | recovery/root/system/system/lib/bootstrap/libdl_android.so | 3044 | 5e0cec41cea3394991f427062a3b7ed9b49f3be3fbc0a4818dc51e6a89354459 |
| system | system/lib64/bootstrap/libdl_android.so | recovery/root/system/system/lib64/bootstrap/libdl_android.so | 10024 | 38238a7e49cbe33d033f6e718ea7f0e688c8f671c8e4bc7c780f70a3592c424d |
| vendor | bin/cnss-daemon | recovery/root/vendor/bin/cnss-daemon | 99472 | 839640148eff9d36cc8de5b4e397f8aae1c58d667ec3c50261a9fcdd2c54d31b |
| vendor | bin/hw/hostapd | recovery/root/vendor/bin/hw/hostapd | 1180392 | 121b0f3538e61ff6c19bcf6669c0cd3045e6d56c91d443bc8e7e02d7eac9e133 |
| vendor | bin/hw/wpa_supplicant | recovery/root/vendor/bin/hw/wpa_supplicant | 3344128 | 006ed7f0b9c82df4951bdd6c070fddda1754c389cf5ff11e409e17860b2b63d8 |
| vendor | etc/init/android.hardware.wifi.supplicant-service.rc | recovery/root/vendor/etc/init/android.hardware.wifi.supplicant-service.rc | 1025 | 336a2ef996724206d4e5b8947fdb0dabaac619b4099b8acd271b9c70f555bddb |
| vendor | etc/init/wlanramdumpcollector.rc | recovery/root/vendor/etc/init/wlanramdumpcollector.rc | 135 | c9e895d9e7a8e9d25f284f65d806ecd67edecba9a25874fad9db5a38c3d4b9c4 |
| vendor | etc/wifi/qca6390/WCNSS_qcom_cfg.ini | recovery/root/vendor/etc/wifi/qca6390/WCNSS_qcom_cfg.ini | 11665 | 0fcf52557412137d549e59dfabbf3dc1cd56bdb9101b7321047ec9ac19f98459 |
| vendor | etc/wifi/wpa_supplicant.conf | recovery/root/vendor/etc/wifi/wpa_supplicant.conf | 142 | 53c1bef3ce121556093f2aa67c003534996618e29e97cfd3d3b11aa80e9ec951 |
| vendor | etc/wifi/wpa_supplicant_overlay.conf | recovery/root/vendor/etc/wifi/wpa_supplicant_overlay.conf | 316 | 79c157080145c305fad51b7fff4e69796d452b871c4ca641fc86f7e5246fee82 |
| vendor | lib/modules/qca_cld3_qca6390.ko | recovery/root/vendor/lib/modules/qca_cld3_qca6390.ko | 11363408 | 714fb8d91b395f1d0a24644d99a6325688e49d967c1d10e8e661f53a78d66186 |
| vendor | lib64/libwifi-hal.so | recovery/root/vendor/lib64/libwifi-hal.so | 460792 | ccf6b72ed707f634cfa96d7f27c3fc4d88ee581259d33ae1defe7f7fe347ea21 |

## Skipped files

- None

Total copied: 12 files
