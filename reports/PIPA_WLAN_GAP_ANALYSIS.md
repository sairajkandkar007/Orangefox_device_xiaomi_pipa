# Pipa OrangeFox WLAN gap analysis

- Firmware release: `OS2.0.14.0.UMZINXM`
- Firmware: https://bkt-sgp-miui-ota-update-alisgp.oss-ap-southeast-1.aliyuncs.com/OS2.0.14.0.UMZINXM/pipa_in_global_images_OS2.0.14.0.UMZINXM_20260414.0000.00_14.0_in_2a8218ddf5.tgz
- Reference implementation: [Amethyst WLAN setup commit](https://github.com/chkndrp/device_xiaomi_amethyst-recovery/commit/d55207095b189045fb1e76008cd88dd0cd4979da)
- Scope: vendor/ODM plus available boot, vendor_boot, system, system_ext, product and DLKM partitions; current recovery tree; WLAN binaries/configuration/modules and ELF dependencies.
- This is a static compatibility audit. It does not prove that the driver loads or that Wi-Fi connects on hardware.

## Required tree integration

| Check | Result | Detail |
|---|---|---|
| WLAN init import | **PASS** | init.recovery.qcom.rc must import init.recovery.wlan.rc |
| WLAN setup service declaration | **PASS** | The init service file must declare service wlan_setup; the trigger alone cannot start an undeclared service. |
| WLAN setup service executable path | **PASS** | wlan_setup.rc must point to the staged helper script. |
| WLAN setup trigger | **PASS** | init.recovery.wlan.rc should start wlan_setup after firmware mount. |
| Supplicant service declaration | **PASS** | A wpa_supplicant init service file must be present. |
| Supplicant executable | **PASS** | Service command must match the Pipa vendor supplicant path. |
| Wi-Fi feature flags | **PASS** | Check BoardConfig.mk, device.mk and fox_pipa.mk feature flags. |

## Pipa vendor/ODM files

| Check | Result | Detail |
|---|---|---|
| QCA6390 kernel module | **PASS** | Looked for vendor/lib/modules/qca_cld3_qca6390.ko or odm/lib/modules/qca_cld3_qca6390.ko. |
| QCA6490 candidate module | **PASS** | Looked for vendor/lib/modules/qca_cld3_qca6490.ko or odm/lib/modules/qca_cld3_qca6490.ko. |
| Vendor supplicant | **PASS** | Looked for vendor/bin/hw/wpa_supplicant or odm/bin/hw/wpa_supplicant. |
| CNSS daemon | **PASS** | Looked for vendor/bin/cnss-daemon or odm/bin/cnss-daemon. |
| rmt_storage daemon | **PASS** | Looked for vendor/bin/rmt_storage or odm/bin/rmt_storage. |
| WPA config | **PASS** | Looked for vendor/etc/wifi/wpa_supplicant.conf or odm/etc/wifi/wpa_supplicant.conf. |
| WPA overlay config | **PASS** | Looked for vendor/etc/wifi/wpa_supplicant_overlay.conf or odm/etc/wifi/wpa_supplicant_overlay.conf. |
| Hostapd config | **PASS** | Looked for vendor/etc/hostapd/hostapd_default.conf or odm/etc/hostapd/hostapd_default.conf. |
| QCA6390 vendor WLAN config | **PASS** | Looked for vendor/etc/wifi/qca6390/WCNSS_qcom_cfg.ini or odm/etc/wifi/qca6390/WCNSS_qcom_cfg.ini. |
| QCA6390 firmware config | **MISSING** | Looked for vendor/firmware/wlan/qca_cld/qca6390/WCNSS_qcom_cfg.ini or odm/firmware/wlan/qca_cld/qca6390/WCNSS_qcom_cfg.ini. |
| QCA6390 MAC firmware | **MISSING** | Looked for vendor/firmware/wlan/qca_cld/qca6390/wlan_mac.bin or odm/firmware/wlan/qca_cld/qca6390/wlan_mac.bin. |
| QCA6490 firmware config | **MISSING** | Looked for vendor/firmware/wlan/qca_cld/qca6490/WCNSS_qcom_cfg.ini or odm/firmware/wlan/qca_cld/qca6490/WCNSS_qcom_cfg.ini. |
| QCA6490 MAC firmware | **MISSING** | Looked for vendor/firmware/wlan/qca_cld/qca6490/wlan_mac.bin or odm/firmware/wlan/qca_cld/qca6490/wlan_mac.bin. |
| WLAN module dependency index | **PASS** | Looked for vendor/lib/modules/modules.dep or odm/lib/modules/modules.dep. |

### Recursive WLAN firmware/config search

| Partition | WLAN firmware/config matches |
|---|---|
| vendor | firmware/ipa_fws.elf, firmware/a620_zap.elf, firmware/CAMERA_ICP.elf, firmware/a650_zap.elf, firmware/ipa_uc.elf, firmware/a615_zap.elf, etc/wifi/fstman.ini, etc/wifi/p2p_supplicant_overlay.conf, etc/wifi/aoa_cldb_falcon.bin, etc/wifi/wpa_supplicant.conf, etc/wifi/aoa_cldb_swl14.bin, etc/wifi/wpa_supplicant_overlay.conf, etc/wifi/passpointProfile.conf, etc/wifi/icm.conf, etc/wifi/qca6390/WCNSS_qcom_cfg.ini |
| odm | No filename matches |
| system | No filename matches |
| system_ext | No filename matches |
| product | No filename matches |

## Recovery staging and safety

| Check | Result | Detail |
|---|---|---|
| CI QCA6390 firmware payload staged | **PASS** | Verified payload and config files in recovery/root/vendor/firmware/wlan/qca_cld/qca6390; board-data variants are retained without guessing the active board ID. |
| QCA6390 board-data variants staged | **PASS** | All extracted bd_*.elf and bdwlan.e* variants should be staged for later runtime board-ID selection. |
| QCA6390 wlan_mac.bin available | **REVIEW** | The extracted NON-HLOS qca6390 directory did not provide wlan_mac.bin; do not fabricate it. |
| Staged WLAN module directory | **PASS** | Expected staged path: recovery/root/vendor/lib/modules. |
| Staged vendor supplicant | **PASS** | Expected staged path: recovery/root/vendor/bin/hw/wpa_supplicant. |
| Staged CNSS daemon | **PASS** | Expected staged path: recovery/root/vendor/bin/cnss-daemon. |
| Staged rmt_storage daemon | **MISSING** | Expected staged path: recovery/root/vendor/bin/rmt_storage. |
| Staged WPA config | **PASS** | Expected staged path: recovery/root/vendor/etc/wifi/wpa_supplicant.conf. |
| Staged WLAN firmware | **PASS** | Expected staged path: recovery/root/vendor/firmware/wlan/qca_cld. |
| Loader targets a single selected chipset | **PASS** | Do not automatically load both candidate drivers; verify the actual chipset first. |
| rmt_storage read-only wrapper exists | **PASS** | Never start vendor rmt_storage directly without verifying its modem NV/EFS write behavior. |
| rmt_storage wrapper requests read-only loops | **PASS** | Wrapper should request read-only loop devices using losetup -r. |
| rmt_storage wrapper verifies read-only devices | **PASS** | Wrapper must verify each loop device reports ro=1 before launching rmt_storage. |
| WLAN helper executable bit | **PASS** | wlan_setup.sh must be executable in Git. |
| rmt_storage helper executable bit | **PASS** | rmt_storage_ro.sh must be executable in Git. |

## ELF dependency audit

| Binary | Result | Detail |
|---|---|---|
| wpa_supplicant ELF dependencies | **MISSING** | Missing libraries: android.hardware.wifi.supplicant@1.0.so, android.hardware.wifi.supplicant@1.1.so, android.hardware.wifi.supplicant@1.2.so, android.hardware.wifi.supplicant@1.3.so |
| cnss-daemon ELF dependencies | **PASS** | No unresolved non-platform shared libraries found. |
| rmt_storage ELF dependencies | **PASS** | No unresolved non-platform shared libraries found. |

## Cross-partition WLAN inventory

| Partition | WLAN-related files found |
|---|---|
| vendor | lib64/vendor.qti.hardware.wifi.hostapd@1.0.so, lib64/libxtwifi_server_protocol_uri_v3.so, lib64/vendor.qti.hardware.wifi.supplicant@2.2.so, lib64/vendor.qti.hardware.wifi.keystore@1.0.so, lib64/libkeystore-wifi-hidl.so, lib64/vendor.qti.hardware.data.iwlan@1.0.so, lib64/liblowi_wifihal.so, lib64/vendor.qti.hardware.wifi.hostapd@1.1.so, lib64/libwifi-hal-ctrl.so, lib64/libwifi-hal-qcom.so, lib64/libwifi-hal.so, lib64/vendor.qti.hardware.wifi.supplicant@2.1.so, lib64/vendor.qti.hardware.wifi.supplicant@2.0.so, lib64/libGPreqcancel_svc.so, lib64/libkeystore-engine-wifi-hidl.so, lib64/libxtwifi_server_protocol.so, lib64/vendor.qti.hardware.wifidisplaysession@1.0.so, lib64/vendor.xiaomi.cit.wifi@1.0.so, lib64/libGPreqcancel.so, lib64/vendor.qti.hardware.wifi.wifilearner@1.0.so, lib64/vendor.qti.hardware.wifi.hostapd@1.2.so, overlay/WifiResTarget.apk, bin/wifilearner, bin/cnss-daemon, bin/xtwifi-inet-agent, bin/wlanramdumpcollector, bin/hostapd_cli, bin/wifidisplayhalservice, bin/xtwifi-client, bin/qca6234-service.sh, bin/cnss_diag, etc/wifibt_diag.cfg, etc/wifi_diag_list.txt, etc/xtwifi.conf, lib/libxtwifi_server_protocol_uri_v3.so, lib/liblowi_wifihal.so, lib/vendor.qti.hardware.wifidisplaysessionl@1.0-halimpl.so, lib/libwifi-hal-ctrl.so, lib/libwifi-hal-qcom.so, lib/libGPreqcancel_svc.so, lib/libxtwifi_server_protocol.so, lib/vendor.qti.hardware.wifidisplaysession@1.0.so, lib/libGPreqcancel.so, bin/hw/vendor.xiaomi.cit.wifi@1.0-service, bin/hw/hostapd, bin/hw/wpa_supplicant, bin/hw/android.hardware.wifi@1.0-service, app/IWlanService/IWlanService.apk, app/IWlanService/oat/arm64/IWlanService.odex, app/IWlanService/oat/arm64/IWlanService.vdex, etc/hostapd/hostapd.accept, etc/hostapd/hostapd_default.conf, etc/hostapd/hostapd.deny, etc/permissions/android.hardware.wifi.xml, etc/permissions/android.hardware.wifi.passpoint.xml, etc/permissions/android.hardware.wifi.direct.xml, etc/seccomp_policy/wifidisplayhalservice.policy, etc/init/vendor.xiaomi.cit.wifi@1.0-service.rc, etc/init/com.qualcomm.qti.wifidisplayhal@1.0-service.rc, etc/init/android.hardware.wifi@1.0-service.rc, etc/init/hostapd.android.rc, etc/init/vendor.qti.hardware.wifi.wifilearner@1.0-service.rc, etc/init/android.hardware.wifi.supplicant-service.rc, etc/init/wlanramdumpcollector.rc, etc/wifi/p2p_supplicant_overlay.conf, etc/wifi/wpa_supplicant.conf, etc/wifi/wpa_supplicant_overlay.conf, etc/vintf/manifest/android.hardware.wifi.hostapd.xml, etc/vintf/manifest/android.hardware.wifi@1.0-service.xml, etc/vintf/manifest/vendor.xiaomi.cit.wifi@1.0_manifest.xml, etc/wifi/qca6390/WCNSS_qcom_cfg.ini, lib/modules/audio_machine_kona.ko, lib/modules/audio_rx_macro.ko, lib/modules/audio_cs35l41.ko, lib/modules/qca_cld3_qca6490.ko, lib/modules/mpq-adapter.ko, lib/modules/llcc_perfmon.ko, lib/modules/audio_mmhardware.ko, lib/modules/qca_cld3_qca6390.ko, lib/modules/audio_va_macro.ko, lib/modules/rdbg.ko, lib/modules/mpq-dmx-hw-plugin.ko, lib/modules/gspca_main.ko, lib/modules/audio_q6.ko, lib/modules/fragmentize.ko, lib/modules/audio_pinctrl_lpi.ko, lib/modules/audio_native.ko, lib/modules/audio_swr_ctrl.ko, lib/modules/audio_usf.ko, lib/modules/audio_adsp_loader.ko, lib/modules/audio_hdmi.ko, lib/modules/audio_aw882xx.ko, lib/modules/rmnet_perf.ko, lib/modules/audio_swr.ko, lib/modules/audio_snd_event.ko, lib/modules/audio_stub.ko, lib/modules/audio_wsa881x.ko, lib/modules/audio_q6_notifier.ko, lib/modules/audio_mbhc.ko, lib/modules/audio_q6_pdr.ko |
| odm | No filename matches |
| system | system/lib64/android.system.wifi.keystore@1.0.so, system/lib64/libwifi-system-iface.so, system/bin/wificond, system/apex/com.android.wifi.capex, system/etc/init/wifi.rc, system/etc/init/wificond.rc, system/framework/oat/arm64/apex@com.android.wifi@javalib@service-wifi.jar@classes.vdex, system/framework/oat/arm64/apex@com.android.wifi@javalib@service-wifi.jar@classes.odex |
| system_ext | lib64/vendor.qti.hardware.data.iwlan@1.0.so, lib64/vendor.qti.hardware.data.iwlan@1.1.so, lib64/com.qualcomm.qti.wifidisplayhal@1.0.so, lib64/vendor.qti.hardware.data.iwlandata-V1-ndk.so, lib64/vendor.qti.hardware.wifidisplaysession@1.0.so, lib64/libwificondimpl.so, framework/vendor.qti.hardware.data.iwlan-V1.1-java.jar, framework/vendor.qti.hardware.data.iwlandata-V1-java.jar, framework/vendor.qti.hardware.data.iwlan-V1.0-java.jar, framework/miui-wifi-service.jar, lib/vendor.qti.hardware.data.iwlan@1.0.so, lib/vendor.qti.hardware.data.iwlan@1.1.so, lib/com.qualcomm.qti.wifidisplayhal@1.0.so, lib/vendor.qti.hardware.data.iwlandata-V1-ndk.so, lib/vendor.qti.hardware.wifidisplaysession@1.0.so, lib/libwificondimpl.so, etc/forcedarkconfig/com.snda.wifilocating.json, framework/oat/arm/vendor.qti.hardware.data.iwlan-V1.0-java.vdex, framework/oat/arm/vendor.qti.hardware.data.iwlan-V1.1-java.odex, framework/oat/arm/miui-wifi-service.odex, framework/oat/arm/vendor.qti.hardware.data.iwlan-V1.0-java.odex, framework/oat/arm/vendor.qti.hardware.data.iwlan-V1.1-java.vdex, framework/oat/arm/vendor.qti.hardware.data.iwlandata-V1-java.odex, framework/oat/arm/vendor.qti.hardware.data.iwlandata-V1-java.vdex, framework/oat/arm/miui-wifi-service.vdex, framework/oat/arm64/vendor.qti.hardware.data.iwlan-V1.0-java.vdex, framework/oat/arm64/vendor.qti.hardware.data.iwlan-V1.1-java.odex, framework/oat/arm64/miui-wifi-service.odex, framework/oat/arm64/vendor.qti.hardware.data.iwlan-V1.0-java.odex, framework/oat/arm64/vendor.qti.hardware.data.iwlan-V1.1-java.vdex, framework/oat/arm64/vendor.qti.hardware.data.iwlandata-V1-java.odex, framework/oat/arm64/vendor.qti.hardware.data.iwlandata-V1-java.vdex, framework/oat/arm64/miui-wifi-service.vdex, priv-app/QtiWifiService/QtiWifiService.apk, priv-app/xrwifiservice/xrwifiservice.apk, priv-app/MiuiWifiDialog/MiuiWifiDialog.apk, priv-app/QtiWifiService/oat/arm64/QtiWifiService.vdex, priv-app/QtiWifiService/oat/arm64/QtiWifiService.odex, priv-app/xrwifiservice/oat/arm64/xrwifiservice.odex, priv-app/xrwifiservice/oat/arm64/xrwifiservice.vdex, priv-app/MiuiWifiDialog/oat/arm64/MiuiWifiDialog.odex, priv-app/MiuiWifiDialog/oat/arm64/MiuiWifiDialog.vdex |
| product | overlay/WifiResCommon_Sys.apk, overlay/AospWifiResOverlay.apk, overlay/AospWifiResOverlay_mainline.apk, overlay/WifiResCommonMainline_Sys.apk, media/theme/miui_mod_icons/com.android.settings.wifi.WifiProvider.png, media/theme/miui_mod_icons/status_bar_toggle_wifi_on.png, media/theme/miui_mod_icons/status_bar_toggle_wifi_ap_off.png, media/theme/miui_mod_icons/status_bar_toggle_wifi_off.png, media/theme/miui_mod_icons/status_bar_toggle_wifi_ap_on.png |
- `boot.img`: unpacked with unpack_bootimg when available.
- `vendor_boot.img`: unpacked with unpack_bootimg when available.

## Kernel module compatibility

| Check | Result | Detail |
|---|---|---|
| QCA CLD3 module candidates discovered | **PASS** | lib/modules/qca_cld3_qca6490.ko, lib/modules/qca_cld3_qca6390.ko |
| qca_cld3_qca6490.ko dependency closure | **PASS** | Dependencies recorded and present. |
| qca_cld3_qca6390.ko dependency closure | **PASS** | Dependencies recorded and present. |
| qca_cld3_qca6490.ko vermagic | **PASS** | 4.19.157-perf-g240e1d0a5f52 SMP preempt mod_unload modversions aarch64 |
| qca_cld3_qca6390.ko vermagic | **PASS** | 4.19.157-perf-g240e1d0a5f52 SMP preempt mod_unload modversions aarch64 |
| Recovery kernel ABI match | **REVIEW** | Not proven by vendor/ODM images alone. Compare module vermagic and symbol dependencies against the exact kernel used by the recovery build. |

## Missing firmware partition coverage

| DLKM images included in firmware release | **REVIEW** | Release does not publish separate vendor_dlkm/system_dlkm/odm_dlkm assets. WLAN modules may be stored there; this audit cannot rule out additional dependencies. |

## Findings summary

- **MISSING: QCA6390 firmware config** — Looked for vendor/firmware/wlan/qca_cld/qca6390/WCNSS_qcom_cfg.ini or odm/firmware/wlan/qca_cld/qca6390/WCNSS_qcom_cfg.ini.
- **MISSING: QCA6390 MAC firmware** — Looked for vendor/firmware/wlan/qca_cld/qca6390/wlan_mac.bin or odm/firmware/wlan/qca_cld/qca6390/wlan_mac.bin.
- **MISSING: QCA6490 firmware config** — Looked for vendor/firmware/wlan/qca_cld/qca6490/WCNSS_qcom_cfg.ini or odm/firmware/wlan/qca_cld/qca6490/WCNSS_qcom_cfg.ini.
- **MISSING: QCA6490 MAC firmware** — Looked for vendor/firmware/wlan/qca_cld/qca6490/wlan_mac.bin or odm/firmware/wlan/qca_cld/qca6490/wlan_mac.bin.
- **REVIEW: QCA6390 wlan_mac.bin available** — The extracted NON-HLOS qca6390 directory did not provide wlan_mac.bin; do not fabricate it.
- **MISSING: Staged rmt_storage daemon** — Expected staged path: recovery/root/vendor/bin/rmt_storage.
- **MISSING: wpa_supplicant ELF dependencies** — Missing libraries: android.hardware.wifi.supplicant@1.0.so, android.hardware.wifi.supplicant@1.1.so, android.hardware.wifi.supplicant@1.2.so, android.hardware.wifi.supplicant@1.3.so
- **REVIEW: Recovery kernel ABI match** — Not proven by vendor/ODM images alone. Compare module vermagic and symbol dependencies against the exact kernel used by the recovery build.
- **REVIEW: DLKM images included in firmware release** — Release does not publish separate vendor_dlkm/system_dlkm/odm_dlkm assets. WLAN modules may be stored there; this audit cannot rule out additional dependencies.

## Interpretation

- **MISSING** means the file or integration check was not found.
- **REVIEW** means static analysis cannot establish compatibility; manual kernel/device validation is required.
- A passing file-presence check does not establish that the Wi-Fi driver initializes, firmware boots, supplicant scans, or DHCP works.
- Files found in system/product partitions are dependency evidence only; their presence does not automatically make them suitable for staging into recovery.

