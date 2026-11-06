# Xiaomi Pad 6 (Pipa) — Vendor and ODM Firmware Analysis

- **Firmware:** Pipa Fastboot ROM - OS2.0.14.0.UMZINXM
- **Release tag:** `fastboot-OS2.0.14.0.UMZINXM`
- **Release:** https://github.com/sairajkandkar007/firmware_device_xiaomi_pipa/releases/tag/fastboot-OS2.0.14.0.UMZINXM
- **Generated (UTC):** 2026-11-06 08:09:11
- **Scope:** read-only inspection of the release's standalone `vendor_a.img` and `odm_a.img`.
- **Note:** this report is generated from the mounted images; it does not modify or commit firmware binaries.

## Image integrity
| Image | Size | SHA-256 |
|---|---:|---|
| `vendor_a.img` | 896,200,704 bytes | `df41b0f1dbedc2c7fe1932cadf05852882f0c87554b08bef97de9c145a6ff097` |
| `odm_a.img` | 134,217,728 bytes | `b704205683e83f0060b72e2c73559b940429b6068fcd793970dda031dd06fae4` |

## VENDOR partition
- Files and symlinks: **3,154**
- Common file extensions: `.so` (1775), `[no extension]` (430), `.xml` (220), `.rc` (139), `.proto` (79), `.conf` (59), `.json` (48), `.bin` (46), `.ko` (42), `.sh` (41), `.0-service` (33), `.txt` (27), `.png` (20), `.wav` (17), `.config` (15), `.dlc` (11), `.policy` (11), `.sql` (11)

## ODM partition
- Files and symlinks: **23**
- Common file extensions: `.xml` (7), `[no extension]` (6), `.json` (3), `.sha256` (3), `.gz` (2), `.prop` (1), `.yml` (1)

## Wi-Fi / WLAN / supplicant
- `vendor/app/IWlanService/IWlanService.apk`
- `vendor/app/IWlanService/oat/arm64/IWlanService.odex`
- `vendor/app/IWlanService/oat/arm64/IWlanService.vdex`
- `vendor/bin/cnss-daemon`
- `vendor/bin/cnss_diag`
- `vendor/bin/hostapd_cli`
- `vendor/bin/hw/android.hardware.wifi@1.0-service`
- `vendor/bin/hw/hostapd`
- `vendor/bin/hw/vendor.xiaomi.cit.wifi@1.0-service`
- `vendor/bin/hw/wpa_supplicant`
- `vendor/bin/qca6234-service.sh`
- `vendor/bin/wifidisplayhalservice`
- `vendor/bin/wifilearner`
- `vendor/bin/wlanramdumpcollector`
- `vendor/bin/xtwifi-client`
- `vendor/bin/xtwifi-inet-agent`
- `vendor/etc/hostapd/hostapd.accept`
- `vendor/etc/hostapd/hostapd.deny`
- `vendor/etc/hostapd/hostapd_default.conf`
- `vendor/etc/init/android.hardware.wifi.supplicant-service.rc`
- `vendor/etc/init/android.hardware.wifi@1.0-service.rc`
- `vendor/etc/init/com.qualcomm.qti.wifidisplayhal@1.0-service.rc`
- `vendor/etc/init/hostapd.android.rc`
- `vendor/etc/init/vendor.qti.hardware.wifi.wifilearner@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.cit.wifi@1.0-service.rc`
- `vendor/etc/init/wlanramdumpcollector.rc`
- `vendor/etc/permissions/android.hardware.wifi.direct.xml`
- `vendor/etc/permissions/android.hardware.wifi.passpoint.xml`
- `vendor/etc/permissions/android.hardware.wifi.xml`
- `vendor/etc/seccomp_policy/wifidisplayhalservice.policy`
- `vendor/etc/vintf/manifest/android.hardware.wifi.hostapd.xml`
- `vendor/etc/vintf/manifest/android.hardware.wifi@1.0-service.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.cit.wifi@1.0_manifest.xml`
- `vendor/etc/wifi/aoa_cldb_falcon.bin`
- `vendor/etc/wifi/aoa_cldb_swl14.bin`
- `vendor/etc/wifi/fstman.ini`
- `vendor/etc/wifi/icm.conf`
- `vendor/etc/wifi/p2p_supplicant_overlay.conf`
- `vendor/etc/wifi/passpointProfile.conf`
- `vendor/etc/wifi/qca6390/WCNSS_qcom_cfg.ini`
- `vendor/etc/wifi/wpa_supplicant.conf`
- `vendor/etc/wifi/wpa_supplicant_overlay.conf`
- `vendor/etc/wifi_diag_list.txt`
- `vendor/etc/wifibt_diag.cfg`
- `vendor/etc/xtwifi.conf`
- `vendor/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini`
- `vendor/firmware/wlan/qca_cld/qca6390/WCNSS_qcom_cfg.ini`
- `vendor/firmware/wlan/qca_cld/qca6390/wlan_mac.bin`
- `vendor/firmware/wlan/qca_cld/qca6490/WCNSS_qcom_cfg.ini`
- `vendor/firmware/wlan/qca_cld/qca6490/wlan_mac.bin`
- `vendor/firmware/wlanmdsp.otaupdate`
- `vendor/lib/libGPreqcancel.so`
- `vendor/lib/libGPreqcancel_svc.so`
- `vendor/lib/liblowi_wifihal.so`
- `vendor/lib/libwifi-hal-ctrl.so`
- `vendor/lib/libwifi-hal-qcom.so`
- `vendor/lib/libxtwifi_server_protocol.so`
- `vendor/lib/libxtwifi_server_protocol_uri_v3.so`
- `vendor/lib/modules/qca_cld3_qca6390.ko`
- `vendor/lib/modules/qca_cld3_qca6490.ko`
- `vendor/lib/vendor.qti.hardware.wifidisplaysession@1.0.so`
- `vendor/lib/vendor.qti.hardware.wifidisplaysessionl@1.0-halimpl.so`
- `vendor/lib64/libGPreqcancel.so`
- `vendor/lib64/libGPreqcancel_svc.so`
- `vendor/lib64/libkeystore-engine-wifi-hidl.so`
- `vendor/lib64/libkeystore-wifi-hidl.so`
- `vendor/lib64/liblowi_wifihal.so`
- `vendor/lib64/libwifi-hal-ctrl.so`
- `vendor/lib64/libwifi-hal-qcom.so`
- `vendor/lib64/libwifi-hal.so`
- `vendor/lib64/libxtwifi_server_protocol.so`
- `vendor/lib64/libxtwifi_server_protocol_uri_v3.so`
- `vendor/lib64/vendor.qti.hardware.data.iwlan@1.0.so`
- `vendor/lib64/vendor.qti.hardware.wifi.hostapd@1.0.so`
- `vendor/lib64/vendor.qti.hardware.wifi.hostapd@1.1.so`
- `vendor/lib64/vendor.qti.hardware.wifi.hostapd@1.2.so`
- `vendor/lib64/vendor.qti.hardware.wifi.keystore@1.0.so`
- `vendor/lib64/vendor.qti.hardware.wifi.supplicant@2.0.so`
- `vendor/lib64/vendor.qti.hardware.wifi.supplicant@2.1.so`
- `vendor/lib64/vendor.qti.hardware.wifi.supplicant@2.2.so`
- `vendor/lib64/vendor.qti.hardware.wifi.wifilearner@1.0.so`
- `vendor/lib64/vendor.qti.hardware.wifidisplaysession@1.0.so`
- `vendor/lib64/vendor.xiaomi.cit.wifi@1.0.so`
- `vendor/overlay/WifiResTarget.apk`

## Bluetooth
- `vendor/bin/btconfig`
- `vendor/bin/hw/android.hardware.bluetooth@1.0-service-qti`
- `vendor/bin/hw/vendor.xiaomi.cit.bluetooth@1.0-service`
- `vendor/etc/acdbdata/Forte/Forte_Bluetooth_cal.acdb`
- `vendor/etc/bluetooth_qti_audio_policy_configuration.xml`
- `vendor/etc/bluetooth_qti_hearing_aid_audio_policy_configuration.xml`
- `vendor/etc/init/android.hardware.bluetooth@1.0-service-qti.rc`
- `vendor/etc/init/vendor.xiaomi.cit.bluetooth@1.0-service.rc`
- `vendor/etc/permissions/android.hardware.bluetooth.xml`
- `vendor/etc/permissions/android.hardware.bluetooth_le.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.cit.bluetooth@1.0_manifest.xml`
- `vendor/lib/com.qualcomm.qti.bluetooth_audio@1.0.so`
- `vendor/lib/hw/android.hardware.bluetooth.audio@2.0-impl.so`
- `vendor/lib/hw/android.hardware.bluetooth@1.0-impl-qti.so`
- `vendor/lib/hw/audio.bluetooth.default.so`
- `vendor/lib/hw/audio.bluetooth_qti.default.so`
- `vendor/lib/hw/com.qualcomm.qti.bluetooth_audio@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.bluetooth_audio@2.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.bluetooth_audio@2.1-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.bluetooth_sar@1.1-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.btconfigstore@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.btconfigstore@2.0-impl.so`
- `vendor/lib/libbluetooth_audio_session.so`
- `vendor/lib/libbluetooth_audio_session_qti.so`
- `vendor/lib/libbluetooth_audio_session_qti_2_1.so`
- `vendor/lib/vendor.qti.hardware.bluetooth_audio@2.0.so`
- `vendor/lib/vendor.qti.hardware.bluetooth_audio@2.1.so`
- `vendor/lib/vendor.qti.hardware.bluetooth_sar@1.0.so`
- `vendor/lib/vendor.qti.hardware.bluetooth_sar@1.1.so`
- `vendor/lib/vendor.qti.hardware.btconfigstore@1.0.so`
- `vendor/lib/vendor.qti.hardware.btconfigstore@2.0.so`
- `vendor/lib64/com.qualcomm.qti.bluetooth_audio@1.0.so`
- `vendor/lib64/hw/android.hardware.bluetooth.audio@2.0-impl.so`
- `vendor/lib64/hw/android.hardware.bluetooth@1.0-impl-qti.so`
- `vendor/lib64/hw/audio.bluetooth.default.so`
- `vendor/lib64/hw/audio.bluetooth_qti.default.so`
- `vendor/lib64/hw/com.qualcomm.qti.bluetooth_audio@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.bluetooth_audio@2.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.bluetooth_audio@2.1-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.bluetooth_sar@1.1-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.btconfigstore@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.btconfigstore@2.0-impl.so`
- `vendor/lib64/libbluetooth_audio_session.so`
- `vendor/lib64/libbluetooth_audio_session_qti.so`
- `vendor/lib64/libbluetooth_audio_session_qti_2_1.so`
- `vendor/lib64/vendor.qti.hardware.bluetooth_audio@2.0.so`
- `vendor/lib64/vendor.qti.hardware.bluetooth_audio@2.1.so`
- `vendor/lib64/vendor.qti.hardware.bluetooth_sar@1.0.so`
- `vendor/lib64/vendor.qti.hardware.bluetooth_sar@1.1.so`
- `vendor/lib64/vendor.qti.hardware.btconfigstore@1.0.so`
- `vendor/lib64/vendor.qti.hardware.btconfigstore@2.0.so`
- `vendor/lib64/vendor.xiaomi.cit.bluetooth@1.0.so`

## Kernel modules
- `vendor/lib/modules/audio_adsp_loader.ko`
- `vendor/lib/modules/audio_apr.ko`
- `vendor/lib/modules/audio_aw882xx.ko`
- `vendor/lib/modules/audio_bolero_cdc.ko`
- `vendor/lib/modules/audio_cs35l41.ko`
- `vendor/lib/modules/audio_hdmi.ko`
- `vendor/lib/modules/audio_machine_kona.ko`
- `vendor/lib/modules/audio_mbhc.ko`
- `vendor/lib/modules/audio_mmhardware.ko`
- `vendor/lib/modules/audio_native.ko`
- `vendor/lib/modules/audio_pinctrl_lpi.ko`
- `vendor/lib/modules/audio_pinctrl_wcd.ko`
- `vendor/lib/modules/audio_platform.ko`
- `vendor/lib/modules/audio_q6.ko`
- `vendor/lib/modules/audio_q6_notifier.ko`
- `vendor/lib/modules/audio_q6_pdr.ko`
- `vendor/lib/modules/audio_rx_macro.ko`
- `vendor/lib/modules/audio_snd_event.ko`
- `vendor/lib/modules/audio_stub.ko`
- `vendor/lib/modules/audio_swr.ko`
- `vendor/lib/modules/audio_swr_ctrl.ko`
- `vendor/lib/modules/audio_tx_macro.ko`
- `vendor/lib/modules/audio_usf.ko`
- `vendor/lib/modules/audio_va_macro.ko`
- `vendor/lib/modules/audio_wcd938x.ko`
- `vendor/lib/modules/audio_wcd938x_slave.ko`
- `vendor/lib/modules/audio_wcd9xxx.ko`
- `vendor/lib/modules/audio_wcd_core.ko`
- `vendor/lib/modules/audio_wsa881x.ko`
- `vendor/lib/modules/audio_wsa_macro.ko`
- `vendor/lib/modules/exfat.ko`
- `vendor/lib/modules/fragmentize.ko`
- `vendor/lib/modules/gspca_main.ko`
- `vendor/lib/modules/lcd.ko`
- `vendor/lib/modules/llcc_perfmon.ko`
- `vendor/lib/modules/mpq-adapter.ko`
- `vendor/lib/modules/mpq-dmx-hw-plugin.ko`
- `vendor/lib/modules/qca_cld3_qca6390.ko`
- `vendor/lib/modules/qca_cld3_qca6490.ko`
- `vendor/lib/modules/rdbg.ko`
- `vendor/lib/modules/rmnet_perf.ko`
- `vendor/lib/modules/rmnet_shs.ko`

## Firmware assets
- `vendor/bin/cnss_diag`
- `vendor/etc/bluetooth_qti_audio_policy_configuration.xml`
- `vendor/etc/bluetooth_qti_hearing_aid_audio_policy_configuration.xml`
- `vendor/firmware/CAMERA_ICP.elf`
- `vendor/firmware/a615_zap.b00`
- `vendor/firmware/a615_zap.b01`
- `vendor/firmware/a615_zap.b02`
- `vendor/firmware/a615_zap.elf`
- `vendor/firmware/a615_zap.mdt`
- `vendor/firmware/a619_gmu.bin`
- `vendor/firmware/a620_zap.b00`
- `vendor/firmware/a620_zap.b01`
- `vendor/firmware/a620_zap.b02`
- `vendor/firmware/a620_zap.elf`
- `vendor/firmware/a620_zap.mdt`
- `vendor/firmware/a630_sqe.fw`
- `vendor/firmware/a650_gmu.bin`
- `vendor/firmware/a650_sqe.fw`
- `vendor/firmware/a650_zap.b00`
- `vendor/firmware/a650_zap.b01`
- `vendor/firmware/a650_zap.b02`
- `vendor/firmware/a650_zap.elf`
- `vendor/firmware/a650_zap.mdt`
- `vendor/firmware/aw882xx_acf.bin`
- `vendor/firmware/ipa_fws.b00`
- `vendor/firmware/ipa_fws.b01`
- `vendor/firmware/ipa_fws.b02`
- `vendor/firmware/ipa_fws.b03`
- `vendor/firmware/ipa_fws.b04`
- `vendor/firmware/ipa_fws.elf`
- `vendor/firmware/ipa_fws.mdt`
- `vendor/firmware/ipa_uc.b00`
- `vendor/firmware/ipa_uc.b01`
- `vendor/firmware/ipa_uc.b02`
- `vendor/firmware/ipa_uc.elf`
- `vendor/firmware/ipa_uc.mdt`
- `vendor/firmware/wigig/wigig.ini`
- `vendor/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini`
- `vendor/firmware/wlan/qca_cld/qca6390/WCNSS_qcom_cfg.ini`
- `vendor/firmware/wlan/qca_cld/qca6390/wlan_mac.bin`
- `vendor/firmware/wlan/qca_cld/qca6490/WCNSS_qcom_cfg.ini`
- `vendor/firmware/wlan/qca_cld/qca6490/wlan_mac.bin`
- `vendor/firmware/wlanmdsp.otaupdate`

## Init / service configuration
- `vendor/etc/init/android.hardware.atrace@1.0-service.rc`
- `vendor/etc/init/android.hardware.audio.service.rc`
- `vendor/etc/init/android.hardware.bluetooth@1.0-service-qti.rc`
- `vendor/etc/init/android.hardware.boot@1.1-service.rc`
- `vendor/etc/init/android.hardware.camera.provider@2.4-service_64.rc`
- `vendor/etc/init/android.hardware.cas@1.2-service.rc`
- `vendor/etc/init/android.hardware.drm@1.1-service.wfdhdcp.rc`
- `vendor/etc/init/android.hardware.drm@1.3-service.clearkey.rc`
- `vendor/etc/init/android.hardware.drm@1.3-service.widevine.rc`
- `vendor/etc/init/android.hardware.dumpstate@1.1-service.xiaomi.rc`
- `vendor/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc`
- `vendor/etc/init/android.hardware.health@2.1-service.rc`
- `vendor/etc/init/android.hardware.keymaster@4.0-service-qti.rc`
- `vendor/etc/init/android.hardware.lights-qti.rc`
- `vendor/etc/init/android.hardware.media.omx@1.0-service.rc`
- `vendor/etc/init/android.hardware.memtrack@1.0-service.rc`
- `vendor/etc/init/android.hardware.neuralnetworks@1.3-service-qti.rc`
- `vendor/etc/init/android.hardware.power-service.rc`
- `vendor/etc/init/android.hardware.sensors@1.0-service.rc`
- `vendor/etc/init/android.hardware.thermal@2.0-service.qti.rc`
- `vendor/etc/init/android.hardware.usb@1.2-service-qti.rc`
- `vendor/etc/init/android.hardware.wifi.supplicant-service.rc`
- `vendor/etc/init/android.hardware.wifi@1.0-service.rc`
- `vendor/etc/init/boringssl_self_test.rc`
- `vendor/etc/init/cnd.rc`
- `vendor/etc/init/com.qualcomm.qti.wifidisplayhal@1.0-service.rc`
- `vendor/etc/init/dataadpl.rc`
- `vendor/etc/init/dataqti.rc`
- `vendor/etc/init/ddr_training.rc`
- `vendor/etc/init/dpmQmiMgr.rc`
- `vendor/etc/init/exfat.rc`
- `vendor/etc/init/feature_enabler_client.rc`
- `vendor/etc/init/ffu.rc`
- `vendor/etc/init/hostapd.android.rc`
- `vendor/etc/init/hw/init.qcom.factory.rc`
- `vendor/etc/init/hw/init.qcom.rc`
- `vendor/etc/init/hw/init.qcom.usb.rc`
- `vendor/etc/init/hw/init.qti.ufs.rc`
- `vendor/etc/init/hw/init.target.rc`
- `vendor/etc/init/hw/init.target.wigig.rc`
- `vendor/etc/init/ims_rtp_daemon.rc`
- `vendor/etc/init/imsdatadaemon.rc`
- `vendor/etc/init/imsqmidaemon.rc`
- `vendor/etc/init/imsrcsd.rc`
- `vendor/etc/init/init-qcril-data.rc`
- `vendor/etc/init/init.batterysecret.rc`
- `vendor/etc/init/init.charge_logger.rc`
- `vendor/etc/init/init.embmssl_server.rc`
- `vendor/etc/init/init.mi_thermald.rc`
- `vendor/etc/init/init.mishow.ctl.rc`
- `vendor/etc/init/init.qdmastats.rc`
- `vendor/etc/init/init.qti.display_boot.rc`
- `vendor/etc/init/init.qti.fm.rc`
- `vendor/etc/init/init.qti.media.rc`
- `vendor/etc/init/init.qti.qcv.rc`
- `vendor/etc/init/init.spdaemon_wait_spunvm.rc`
- `vendor/etc/init/init.time_daemon.rc`
- `vendor/etc/init/init.vendor.qti.spu@1.0-service.rc`
- `vendor/etc/init/init.vendor.sensors.rc`
- `vendor/etc/init/init_qfp_daemon.rc`
- `vendor/etc/init/init_thermal-engine.rc`
- `vendor/etc/init/ipa_fws.rc`
- `vendor/etc/init/ipacm-diag.rc`
- `vendor/etc/init/ipacm.rc`
- `vendor/etc/init/keymasterd.rc`
- `vendor/etc/init/mi-misight.rc`
- `vendor/etc/init/mi_ic.rc`
- `vendor/etc/init/mi_ric.rc`
- `vendor/etc/init/minidump.rc`
- `vendor/etc/init/mrm.rc`
- `vendor/etc/init/mutualex.rc`
- `vendor/etc/init/netmgrd.rc`
- `vendor/etc/init/port-bridge.rc`
- `vendor/etc/init/poweropt-service.rc`
- `vendor/etc/init/qcrild.rc`
- `vendor/etc/init/qdcmss.rc`
- `vendor/etc/init/qmipriod.debug.rc`
- `vendor/etc/init/qmipriod.rc`
- `vendor/etc/init/qseecomd.rc`
- `vendor/etc/init/shsusrd.rc`
- `vendor/etc/init/ssgtzd.rc`
- `vendor/etc/init/vendor.display.color@1.0-service.rc`
- `vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc`
- `vendor/etc/init/vendor.qti.adsprpc-service.rc`
- `vendor/etc/init/vendor.qti.cdsprpc-service.rc`
- `vendor/etc/init/vendor.qti.hardware.alarm@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.capabilityconfigstore@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.charger_monitor@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.display.allocator-service.rc`
- `vendor/etc/init/vendor.qti.hardware.display.composer-service.rc`
- `vendor/etc/init/vendor.qti.hardware.dsp@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.factory@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.iop@2.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.limits@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.perf@2.2-service.rc`
- `vendor/etc/init/vendor.qti.hardware.qccvndhal@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.qseecom@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.qteeconnector@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.sensorscalibrate@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.servicetracker@1.2-service.rc`
- `vendor/etc/init/vendor.qti.hardware.soter@1.0-service.rc`
- `vendor/etc/init/vendor.qti.hardware.tui_comm@1.0-service-qti.rc`
- `vendor/etc/init/vendor.qti.hardware.wifi.wifilearner@1.0-service.rc`
- `vendor/etc/init/vendor.qti.media.c2@1.0-service.rc`
- `vendor/etc/init/vendor.qti.power.pasrmanager@1.0-service.rc`
- `vendor/etc/init/vendor.qti.qspmhal@1.0-service.rc`
- `vendor/etc/init/vendor.qti.rmt_storage.rc`
- `vendor/etc/init/vendor.qti.tftp.rc`
- `vendor/etc/init/vendor.sensors.qti.rc`
- `vendor/etc/init/vendor.sensors.sscrpcd.rc`
- `vendor/etc/init/vendor.xiaomi.cit.bluetooth@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.cit.wifi@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.antdtx@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.citsensorservice@1.1-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.citvendorservice@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.displayfeature@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.keyboardnanoapp@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.mfidoca@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.micharge@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.midevauth@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.mimd@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.mioob@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.misys@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.misys@2.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.misys@3.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.misys@4.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.mlipay@1.1-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.mtdservice@1.3-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.tidaservice@1.2-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.touchfeature@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.vibratorfeature@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.hardware.vsimapp@1.0-service.rc`
- `vendor/etc/init/vendor.xiaomi.sensor.communicate@1.0-service.rc`
- `vendor/etc/init/vendor_flash_recovery.rc`
- `vendor/etc/init/vndservicemanager.rc`
- `vendor/etc/init/vppservice.rc`
- `vendor/etc/init/wfdvndservice.rc`
- `vendor/etc/init/wlanramdumpcollector.rc`
- `vendor/etc/ueventd.rc`

## VINTF / HAL manifests
- `vendor/etc/vintf/compatibility_matrix.xml`
- `vendor/etc/vintf/manifest/android.hardware.atrace@1.0-service.xml`
- `vendor/etc/vintf/manifest/android.hardware.boot@1.1.xml`
- `vendor/etc/vintf/manifest/android.hardware.cas@1.2-service.xml`
- `vendor/etc/vintf/manifest/android.hardware.dumpstate@1.1-service.xiaomi.xml`
- `vendor/etc/vintf/manifest/android.hardware.graphics.mapper-impl-qti-display.xml`
- `vendor/etc/vintf/manifest/android.hardware.health@2.1.xml`
- `vendor/etc/vintf/manifest/android.hardware.lights-qti.xml`
- `vendor/etc/vintf/manifest/android.hardware.neuralnetworks@1.3-service-qti-hta.xml`
- `vendor/etc/vintf/manifest/android.hardware.neuralnetworks@1.3-service-qti.xml`
- `vendor/etc/vintf/manifest/android.hardware.thermal@2.0-service.qti.xml`
- `vendor/etc/vintf/manifest/android.hardware.usb@1.2-service.xml`
- `vendor/etc/vintf/manifest/android.hardware.wifi.hostapd.xml`
- `vendor/etc/vintf/manifest/android.hardware.wifi@1.0-service.xml`
- `vendor/etc/vintf/manifest/c2_manifest_vendor.xml`
- `vendor/etc/vintf/manifest/manifest.xml`
- `vendor/etc/vintf/manifest/manifest_android.hardware.drm@1.3-service.clearkey.xml`
- `vendor/etc/vintf/manifest/manifest_android.hardware.drm@1.3-service.widevine.xml`
- `vendor/etc/vintf/manifest/manifest_vendor.dolby.hardware.dms.xml`
- `vendor/etc/vintf/manifest/manifest_vendor.xiaomi.hardware.antdtx.xml`
- `vendor/etc/vintf/manifest/manifest_vendor.xiaomi.hardware.mfidoca.xml`
- `vendor/etc/vintf/manifest/manifest_vendor.xiaomi.hardware.midevauth.xml`
- `vendor/etc/vintf/manifest/manifest_vendor.xiaomi.hardware.mlipay.xml`
- `vendor/etc/vintf/manifest/manifest_vendor.xiaomi.hardware.mtdservice.xml`
- `vendor/etc/vintf/manifest/manifest_vendor.xiaomi.hardware.tidaservice.xml`
- `vendor/etc/vintf/manifest/manifest_vendor.xiaomi.hardware.vsimapp.xml`
- `vendor/etc/vintf/manifest/mi-misight.xml`
- `vendor/etc/vintf/manifest/mrm.xml`
- `vendor/etc/vintf/manifest/power.xml`
- `vendor/etc/vintf/manifest/vendor.qti.hardware.display.allocator-service.xml`
- `vendor/etc/vintf/manifest/vendor.qti.hardware.display.composer-service.xml`
- `vendor/etc/vintf/manifest/vendor.qti.hardware.limits@1.0-service.xml`
- `vendor/etc/vintf/manifest/vendor.qti.hardware.servicetracker@1.2-service.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.cit.bluetooth@1.0_manifest.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.cit.wifi@1.0_manifest.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.hardware.keyboardnanoapp@1.0_manifest.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.hardware.micharge@1.0.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.hardware.mimd@1.0-service.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.hardware.mioob@1.0.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.hardware.misys@1.0.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.hardware.misys@2.0.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.hardware.misys@3.0.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.hardware.misys@4.0.xml`
- `vendor/etc/vintf/manifest/vendor.xiaomi.sensor.communicate@1.0_manifest.xml`
- `vendor/etc/vintf/manifest.xml`

## Wi-Fi configuration and init references
### `vendor/etc/hostapd/hostapd_default.conf`
```text
##### hostapd configuration file ##############################################
# AP netdevice name (without 'ap' postfix, i.e., wlan0 uses wlan0ap for
# management frames with the Host AP driver); wlan0 with many nl80211 drivers
interface=wlan0
# configuration parameter, bridge, may be used to notify hostapd if the
# added to the bridge automatically (brctl may refuse to do this before hostapd
# Use driver=none if building hostapd as a standalone RADIUS server that does
# hostapd event logger configuration
# bit 3 (8) = WPA
dump_file=/tmp/hostapd.dump
# Interface for separate control program. If this is specified, hostapd
# multiple hostapd processes/interfaces can be run at the same time if more
# /var/run/hostapd is the recommended directory for sockets and by default,
# hostapd_cli will use it when trying to connect with hostapd.
ctrl_interface=/data/vendor/wifi/hostapd/ctrl
# possible to run hostapd as root (since it needs to change network
# cases. By default, hostapd is configured to use gid 0 (root). If you
# Please note that some drivers do not use this value from hostapd and the
# Channel list restriction. This option allows hostapd to select one of the
# If this field is not included in hostapd.conf, hostapd will not control
# RTS threshold and 'iwconfig wlan# rts <val>' can be used to set it.
# If this field is not included in hostapd.conf, hostapd will not control
# fragmentation threshold and 'iwconfig wlan# frag <val>' can be used to set
# hostapd to take care of management frame processing and as such, this can be
accept_mac_file=/data/hostapd/hostapd.accept
deny_mac_file=/data/hostapd/hostapd.deny
# IEEE 802.11 specifies two authentication algorithms. hostapd can be
# Enable this flag if U-APSD supported outside hostapd (eg., Firmware/driver)
# This field can be used to configure hostapd to add a fixed BSS Load element
#	on overlapping BSSes. These changes are done automatically when hostapd
# hostapd is implemented based on IEEE Std 802.1X-2004 which defines EAPOL
# In order to make hostapd interoperate with these clients, the version number
# Optionally, hostapd can be configured to use an integrated EAP server
# server. This is also needed if hostapd is configured to act as a RADIUS
#eap_user_file=/etc/hostapd.eap_user
#ca_cert=/etc/hostapd.ca.pem
#server_cert=/etc/hostapd.server.pem
#private_key=/etc/hostapd.server.prv
# use this value. If not set, "hostapd" is used as a default.
# Note: hostapd does not yet support CRL downloading based on CDP. Thus, a
# concatenating these into one file. Whenever CRL changes, hostapd needs to be
#	-CAfile /etc/hostapd.ca.pem \
#	-issuer /etc/hostapd.ca.pem \
#	-cert /etc/hostapd.server.pem \
# "openssl dhparam -out /etc/hostapd.dh.pem 2048"
#dh_file=/etc/hostapd.dh.pem
# on cipher suite configuration. This is applicable only if hostapd is built to
# prefix. If hostapd is built with SQLite support (CONFIG_SQLITE=y in .config),
#eap_sim_db=unix:/tmp/hlr_auc_gw.sock db=/tmp/hostapd.db
# to the NAS within the scope of the RADIUS server. Please note that hostapd
# If this is set (larger than 0) and acct_server is configured, hostapd will
# value should not be configured in hostapd.conf, if RADIUS server is used to
# This parameter can be used to configure hostapd to request CUI from the
#vlan_file=/etc/hostapd.vlan
# used to determine which VLAN a station is on.  hostapd creates a bridge for
# each VLAN.  Then hostapd adds a VLAN interface (associated with the interface
# Bridge (prefix) to add the wifi and the tagged interface to. This gets the
# When hostapd creates a VLAN interface on vlan_tagged_interfaces, it needs
# of the attributes added automatically by hostapd.
# hostapd can be used as a RADIUS authentication server for other hosts. This
#radius_server_clients=/etc/hostapd.radius_clients
##### WPA/IEEE 802.11i configuration ##########################################
# Enable WPA. Setting this variable configures the AP to require WPA (either
# WPA-PSK or WPA-RADIUS/EAP based on other configuration). For WPA-PSK, either
# wpa_psk or wpa_passphrase must be set and wpa_key_mgmt must include WPA-PSK.
# Instead of wpa_psk / wpa_passphrase, wpa_psk_radius might suffice.
# For WPA-RADIUS/EAP, ieee8021x must be set (but without dynamic WEP keys),
# RADIUS authentication server must be configured, and WPA-EAP must be included
# in wpa_key_mgmt.
# This field is a bit field that can be used to enable WPA (IEEE 802.11i/D3.0)
# and/or WPA2 (full IEEE 802.11i/RSN):
# bit0 = WPA
# bit1 = IEEE 802.11i/RSN (WPA2) (dot11RSNAEnabled)
#wpa=1
# WPA pre-shared keys for WPA-PSK. This can be either entered as a 256-bit
# secret in hex format (64 hex digits), wpa_psk, or as an ASCII passphrase
# wpa_psk (dot11RSNAConfigPSKValue)
# wpa_passphrase (dot11RSNAConfigPSKPassPhrase)
#wpa_psk=0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef
#wpa_passphrase=qualcomm
# Optionally, WPA PSKs can be read from a separate text file (containing list
#wpa_psk_file=/etc/hostapd.wpa_psk
# Optionally, WPA passphrase can be received from RADIUS authentication server
#wpa_psk_radius=0
# Set of accepted key management algorithms (WPA-PSK, WPA-EAP, or both). The
# entries are separated with a space. WPA-PSK-SHA256 and WPA-EAP-SHA256 can be
#wpa_key_mgmt=WPA-PSK WPA-EAP
# Pairwise cipher for WPA (v1) (default: TKIP)
#wpa_pairwise=TKIP CCMP
# Pairwise cipher for RSN/WPA2 (default: use wpa_pairwise value)
wpa_group_rekey=86400
#wpa_strict_rekey=1
# You should consider to also increase wpa_pairwise_update_count then.
#wpa_group_update_count=4
#wpa_gmk_rekey=86400
#wpa_ptk_rekey=600
#wpa_pairwise_update_count=4
# Enable IEEE 802.11i/RSN/WPA2 pre-authentication. This is used to speed up
# accepted (e.g., 'eth0' or 'eth0 wlan0wds0'. This list should include all
# associated stations (e.g., wlan0) should not be added, since
... 38 additional matching lines omitted
```
### `vendor/etc/init/android.hardware.wifi.supplicant-service.rc`
```text
service wpa_supplicant /vendor/bin/hw/wpa_supplicant \
    -O/data/vendor/wifi/wpa/sockets -dd \
    -g@android:wpa_wlan0
    #   we will start as root and wpa_supplicant will switch to user wifi
    #   user wifi
    #   group wifi inet keystore
    interface android.hardware.wifi.supplicant@1.0::ISupplicant default
    interface android.hardware.wifi.supplicant@1.1::ISupplicant default
    interface android.hardware.wifi.supplicant@1.2::ISupplicant default
    interface android.hardware.wifi.supplicant@1.3::ISupplicant default
    interface vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendor default
    interface vendor.qti.hardware.wifi.supplicant@2.1::ISupplicantVendor default
    interface vendor.qti.hardware.wifi.supplicant@2.2::ISupplicantVendor default
    socket wpa_wlan0 dgram 660 wifi wifi
    mkdir /data/vendor/log 0770 wifi wifi
    mkdir /data/vendor/log/wifi 0770 wifi wifi
```
### `vendor/etc/init/android.hardware.wifi@1.0-service.rc`
```text
service vendor.wifi_hal_legacy /vendor/bin/hw/android.hardware.wifi@1.0-service
    interface android.hardware.wifi@1.0::IWifi default
    interface android.hardware.wifi@1.1::IWifi default
    interface android.hardware.wifi@1.2::IWifi default
    interface android.hardware.wifi@1.3::IWifi default
    interface android.hardware.wifi@1.4::IWifi default
    user wifi
    group wifi gps
```
### `vendor/etc/init/com.qualcomm.qti.wifidisplayhal@1.0-service.rc`
```text
service wifidisplayhalservice /vendor/bin/wifidisplayhalservice
```
### `vendor/etc/init/hostapd.android.rc`
```text
# init.rc fragment for hostapd on Android
    mkdir /data/vendor/wifi 0770 wifi wifi
    mkdir /data/vendor/wifi/hostapd 0770 wifi wifi
    mkdir /data/vendor/wifi/hostapd/sockets 0770 wifi wifi
service hostapd /vendor/bin/hw/hostapd -dd -g /data/vendor/wifi/hostapd/global
    interface android.hardware.wifi.hostapd@1.0::IHostapd default
    interface android.hardware.wifi.hostapd@1.1::IHostapd default
    interface android.hardware.wifi.hostapd@1.2::IHostapd default
    interface vendor.qti.hardware.wifi.hostapd@1.0::IHostapdVendor default
    interface vendor.qti.hardware.wifi.hostapd@1.1::IHostapdVendor default
    interface vendor.qti.hardware.wifi.hostapd@1.2::IHostapdVendor default
    user wifi
    group wifi net_raw net_admin
```
### `vendor/etc/init/vendor.qti.hardware.wifi.wifilearner@1.0-service.rc`
```text
service vendor.wifilearner /system/vendor/bin/wifilearner
    user wifi
    group wifi
    interface vendor.qti.hardware.wifi.wifilearner@1.0::IWifiStats wifiStats
```
### `vendor/etc/init/vendor.xiaomi.cit.wifi@1.0-service.rc`
```text
service vendor.xiaomi.cit.wifi  /vendor/bin/hw/vendor.xiaomi.cit.wifi@1.0-service
```
### `vendor/etc/init/wlanramdumpcollector.rc`
```text
service wlanramdumpcollector /vendor/bin/wlanramdumpcollector
```
### `vendor/etc/permissions/android.hardware.wifi.direct.xml`
```text
<!-- This is the standard feature indicating that the device includes WiFi Direct. -->
    <feature name="android.hardware.wifi.direct" />
```
### `vendor/etc/permissions/android.hardware.wifi.passpoint.xml`
```text
<!-- This is the standard feature indicating that the device includes WiFi Passpoint. -->
    <feature name="android.hardware.wifi.passpoint" />
```
### `vendor/etc/permissions/android.hardware.wifi.xml`
```text
<!-- This is the standard feature indicating that the device includes WiFi. -->
    <feature name="android.hardware.wifi" />
```
### `vendor/etc/ueventd.rc`
```text
/dev/wlan                 0660   wifi       wifi
# wlan
/dev/wcnss_wlan           0660   system     system
/dev/wcnss_ctrl           0660   system     system
/sys/devices/soc/a000000.qcom,wcnss-wlan/net/wlan0/queues/rx-* rps_cpus           0660   system     system
/sys/devices/soc/a000000.qcom,wcnss-wlan/net/p2p0/queues/rx-* rps_cpus            0660   system     system
/sys/devices/platform/soc/*.qcom,icnss/net/wlan*/queues/rx-* rps_cpus             0660   system     system
/sys/devices/platform/soc/1c00000.qcom,pcie/pci0000:00/0000:00:00.0/0000:01:00.0/net/wlan*/queues/rx-* rps_cpus      0660   system     system
/sys/devices/platform/soc/17a10040.qcom,wcn6750/net/wlan*/queues/rx-* rps_cpus    0660   system     system
# wlan
/dev/wcnss_wlan           0660   system     system
/dev/wcnss_ctrl           0660   system     system
/sys/devices/soc/600000.qcom,pcie/pci0000:00/0000:00:00.0/0000:01:00.0/net/wlan0/queues/rx-* rps_cpus 0660 system system
/sys/bus/pci/drivers/wil6210* 0000:01:00.0/wil6210/fst_link_loss 0660 wifi wifi
/sys/bus/pci/drivers/wil6210* 0000:01:00.0/wil6210/snr_thresh 0660 wifi wifi
```
### `vendor/etc/vintf/manifest/android.hardware.wifi.hostapd.xml`
```text
        <name>android.hardware.wifi.hostapd</name>
            <name>IHostapd</name>
        <name>vendor.qti.hardware.wifi.hostapd</name>
            <name>IHostapdVendor</name>
```
### `vendor/etc/vintf/manifest/android.hardware.wifi@1.0-service.xml`
```text
        <name>android.hardware.wifi</name>
            <name>IWifi</name>
```
### `vendor/etc/vintf/manifest/vendor.xiaomi.cit.wifi@1.0_manifest.xml`
```text
        <name>vendor.xiaomi.cit.wifi</name>
            <name>IWifiService</name>
```
### `vendor/etc/wifi/fstman.ini`
```text
ctrl_iface=/data/vendor/wifi/hostapd/global
interfaces=wlan0,wigig0
mac_address_by=wlan0
rate_upgrade_master=wlan0
rate_upgrade_acl_file=/data/vendor/wifi/fst_rate_upgrade.accept
[wlan0]
wpa_group=GCMP
wpa_pairwise=GCMP
```
### `vendor/etc/wifi/icm.conf`
```text
#id_2_radio_ifname=wifi2
```
### `vendor/etc/wifi/qca6390/WCNSS_qcom_cfg.ini`
```text
# defaults for the WLAN Driver
gWlanMccToSccSwitchMode = 3
# Enable support for Implicit Trigger of TDLS. That is, wlan driver shall
# first configure a peer MAC in wlan driver towards which TDLS is desired.
gEnableConcurrentSTA=wlan1
```
### `vendor/etc/wifi/wpa_supplicant.conf`
```text
wowlan_disconnect_on_deinit=1
```
### `vendor/etc/wifi/wpa_supplicant_overlay.conf`
```text
wowlan_triggers=magic_pkt
```
### `vendor/etc/wifi_diag_list.txt`
```text
0/vendor/etc/wifibt_diag.cfg
2/vendor/etc/wifibt_diag.cfg
```
### `vendor/etc/xtwifi.conf`
```text
#    WiFi crowdsourcing module is disabled.
#    WiFi crowdsourcing module is active, also accessed via Izat SDK.
# Log verbosity control for most of the GTP WiFi system, including native and
```

## Kernel module inventory
- `vendor/lib/modules/audio_adsp_loader.ko`
- `vendor/lib/modules/audio_apr.ko`
- `vendor/lib/modules/audio_aw882xx.ko`
- `vendor/lib/modules/audio_bolero_cdc.ko`
- `vendor/lib/modules/audio_cs35l41.ko`
- `vendor/lib/modules/audio_hdmi.ko`
- `vendor/lib/modules/audio_machine_kona.ko`
- `vendor/lib/modules/audio_mbhc.ko`
- `vendor/lib/modules/audio_mmhardware.ko`
- `vendor/lib/modules/audio_native.ko`
- `vendor/lib/modules/audio_pinctrl_lpi.ko`
- `vendor/lib/modules/audio_pinctrl_wcd.ko`
- `vendor/lib/modules/audio_platform.ko`
- `vendor/lib/modules/audio_q6.ko`
- `vendor/lib/modules/audio_q6_notifier.ko`
- `vendor/lib/modules/audio_q6_pdr.ko`
- `vendor/lib/modules/audio_rx_macro.ko`
- `vendor/lib/modules/audio_snd_event.ko`
- `vendor/lib/modules/audio_stub.ko`
- `vendor/lib/modules/audio_swr.ko`
- `vendor/lib/modules/audio_swr_ctrl.ko`
- `vendor/lib/modules/audio_tx_macro.ko`
- `vendor/lib/modules/audio_usf.ko`
- `vendor/lib/modules/audio_va_macro.ko`
- `vendor/lib/modules/audio_wcd938x.ko`
- `vendor/lib/modules/audio_wcd938x_slave.ko`
- `vendor/lib/modules/audio_wcd9xxx.ko`
- `vendor/lib/modules/audio_wcd_core.ko`
- `vendor/lib/modules/audio_wsa881x.ko`
- `vendor/lib/modules/audio_wsa_macro.ko`
- `vendor/lib/modules/exfat.ko`
- `vendor/lib/modules/fragmentize.ko`
- `vendor/lib/modules/gspca_main.ko`
- `vendor/lib/modules/lcd.ko`
- `vendor/lib/modules/llcc_perfmon.ko`
- `vendor/lib/modules/mpq-adapter.ko`
- `vendor/lib/modules/mpq-dmx-hw-plugin.ko`
- `vendor/lib/modules/qca_cld3_qca6390.ko`
- `vendor/lib/modules/qca_cld3_qca6490.ko`
- `vendor/lib/modules/rdbg.ko`
- `vendor/lib/modules/rmnet_perf.ko`
- `vendor/lib/modules/rmnet_shs.ko`

## Shared-library and executable candidates
- `vendor/etc/wifi/aoa_cldb_falcon.bin`
- `vendor/etc/wifi/aoa_cldb_swl14.bin`
- `vendor/firmware/wlan/qca_cld/qca6390/wlan_mac.bin`
- `vendor/firmware/wlan/qca_cld/qca6490/wlan_mac.bin`
- `vendor/lib/hw/android.hardware.audio.effect@2.0-impl.so`
- `vendor/lib/hw/android.hardware.audio.effect@4.0-impl.so`
- `vendor/lib/hw/android.hardware.audio.effect@5.0-impl.so`
- `vendor/lib/hw/android.hardware.audio.effect@6.0-impl.so`
- `vendor/lib/hw/android.hardware.audio@2.0-impl.so`
- `vendor/lib/hw/android.hardware.audio@4.0-impl.so`
- `vendor/lib/hw/android.hardware.audio@5.0-impl.so`
- `vendor/lib/hw/android.hardware.audio@6.0-impl.so`
- `vendor/lib/hw/android.hardware.bluetooth.audio@2.0-impl.so`
- `vendor/lib/hw/android.hardware.bluetooth@1.0-impl-qti.so`
- `vendor/lib/hw/android.hardware.boot@1.0-impl-1.1-qti.so`
- `vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so`
- `vendor/lib/hw/android.hardware.gatekeeper@1.0-impl-qti.so`
- `vendor/lib/hw/android.hardware.graphics.mapper@3.0-impl-qti-display.so`
- `vendor/lib/hw/android.hardware.graphics.mapper@4.0-impl-qti-display.so`
- `vendor/lib/hw/android.hardware.health@2.0-impl-2.1-qti.so`
- `vendor/lib/hw/android.hardware.memtrack@1.0-impl.so`
- `vendor/lib/hw/android.hardware.renderscript@1.0-impl.so`
- `vendor/lib/hw/android.hardware.sensors@1.0-impl.so`
- `vendor/lib/hw/android.hardware.soundtrigger@2.1-impl.so`
- `vendor/lib/hw/android.hardware.soundtrigger@2.2-impl.so`
- `vendor/lib/hw/android.hardware.soundtrigger@2.3-impl.so`
- `vendor/lib/hw/audio.bluetooth.default.so`
- `vendor/lib/hw/audio.bluetooth_qti.default.so`
- `vendor/lib/hw/audio.primary.default.so`
- `vendor/lib/hw/audio.primary.kona.so`
- `vendor/lib/hw/audio.r_submix.default.so`
- `vendor/lib/hw/audio.usb.default.so`
- `vendor/lib/hw/audio.vehicle_display.default.so`
- `vendor/lib/hw/camera.qcom.so`
- `vendor/lib/hw/com.dsi.ant@1.0-impl.so`
- `vendor/lib/hw/com.qti.chi.override.so`
- `vendor/lib/hw/com.qualcomm.qti.bluetooth_audio@1.0-impl.so`
- `vendor/lib/hw/displayfeature.default.so`
- `vendor/lib/hw/gralloc.default.so`
- `vendor/lib/hw/gralloc.kona.so`
- `vendor/lib/hw/lights.kona.so`
- `vendor/lib/hw/local_time.default.so`
- `vendor/lib/hw/memtrack.kona.so`
- `vendor/lib/hw/power.default.so`
- `vendor/lib/hw/sound_trigger.primary.kona.so`
- `vendor/lib/hw/vendor.qti.hardware.alarm@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.audiohalext@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.bluetooth_audio@2.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.bluetooth_audio@2.1-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.bluetooth_sar@1.1-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.btconfigstore@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.btconfigstore@2.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.capabilityconfigstore@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.fm@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.qccvndhal@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.qseecom@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.qteeconnector@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.sensorscalibrate@1.0-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.servicetracker@1.2-impl.so`
- `vendor/lib/hw/vendor.qti.hardware.soter@1.0-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.citsensorservice@1.1-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.citvendorservice@1.0-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.displayfeature@1.0-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.micharge@1.0-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.mioob@1.0-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.misys@1.0-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.misys@2.0-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.misys@3.0-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.misys@4.0-impl.so`
- `vendor/lib/hw/vendor.xiaomi.hardware.touchfeature@1.0-impl.so`
- `vendor/lib/hw/vibrator.default.so`
- `vendor/lib/hw/vulkan.adreno.so`
- `vendor/lib/libGPreqcancel.so`
- `vendor/lib/libGPreqcancel_svc.so`
- `vendor/lib/libcert_parse.wpa_s.so`
- `vendor/lib/liblowi_wifihal.so`
- `vendor/lib/libwifi-hal-ctrl.so`
- `vendor/lib/libwifi-hal-qcom.so`
- `vendor/lib/libwpa_client.so`
- `vendor/lib/libxtwifi_server_protocol.so`
- `vendor/lib/libxtwifi_server_protocol_uri_v3.so`
- `vendor/lib/vendor.qti.hardware.wifidisplaysession@1.0.so`
- `vendor/lib/vendor.qti.hardware.wifidisplaysessionl@1.0-halimpl.so`
- `vendor/lib64/hw/android.hardware.audio.effect@2.0-impl.so`
- `vendor/lib64/hw/android.hardware.audio.effect@4.0-impl.so`
- `vendor/lib64/hw/android.hardware.audio.effect@5.0-impl.so`
- `vendor/lib64/hw/android.hardware.audio.effect@6.0-impl.so`
- `vendor/lib64/hw/android.hardware.audio@2.0-impl.so`
- `vendor/lib64/hw/android.hardware.audio@4.0-impl.so`
- `vendor/lib64/hw/android.hardware.audio@5.0-impl.so`
- `vendor/lib64/hw/android.hardware.audio@6.0-impl.so`
- `vendor/lib64/hw/android.hardware.bluetooth.audio@2.0-impl.so`
- `vendor/lib64/hw/android.hardware.bluetooth@1.0-impl-qti.so`
- `vendor/lib64/hw/android.hardware.boot@1.0-impl-1.1-qti.so`
- `vendor/lib64/hw/android.hardware.camera.provider@2.4-impl.so`
- `vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so`
- `vendor/lib64/hw/android.hardware.graphics.mapper@3.0-impl-qti-display.so`
- `vendor/lib64/hw/android.hardware.graphics.mapper@4.0-impl-qti-display.so`
- `vendor/lib64/hw/android.hardware.health@2.0-impl-2.1-qti.so`
- `vendor/lib64/hw/android.hardware.memtrack@1.0-impl.so`
- `vendor/lib64/hw/android.hardware.renderscript@1.0-impl.so`
- `vendor/lib64/hw/android.hardware.sensors@1.0-impl.so`
- `vendor/lib64/hw/android.hardware.soundtrigger@2.2-impl.so`
- `vendor/lib64/hw/android.hardware.soundtrigger@2.3-impl.so`
- `vendor/lib64/hw/audio.bluetooth.default.so`
- `vendor/lib64/hw/audio.bluetooth_qti.default.so`
- `vendor/lib64/hw/audio.primary.default.so`
- `vendor/lib64/hw/audio.primary.kona.so`
- `vendor/lib64/hw/audio.r_submix.default.so`
- `vendor/lib64/hw/audio.usb.default.so`
- `vendor/lib64/hw/audio.vehicle_display.default.so`
- `vendor/lib64/hw/camera.qcom.so`
- `vendor/lib64/hw/com.dsi.ant@1.0-impl.so`
- `vendor/lib64/hw/com.qti.chi.override.so`
- `vendor/lib64/hw/com.qualcomm.qti.bluetooth_audio@1.0-impl.so`
- `vendor/lib64/hw/displayfeature.default.so`
- `vendor/lib64/hw/gralloc.default.so`
- `vendor/lib64/hw/gralloc.kona.so`
- `vendor/lib64/hw/lights.kona.so`
- `vendor/lib64/hw/local_time.default.so`
- `vendor/lib64/hw/memtrack.kona.so`
- `vendor/lib64/hw/power.default.so`
- `vendor/lib64/hw/sound_trigger.primary.kona.so`
- `vendor/lib64/hw/vendor.qti.hardware.alarm@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.audiohalext@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.bluetooth_audio@2.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.bluetooth_audio@2.1-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.bluetooth_sar@1.1-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.btconfigstore@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.btconfigstore@2.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.capabilityconfigstore@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.fm@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.qccvndhal@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.qseecom@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.qteeconnector@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.sensorscalibrate@1.0-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.servicetracker@1.2-impl.so`
- `vendor/lib64/hw/vendor.qti.hardware.soter@1.0-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.citsensorservice@1.1-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.citvendorservice@1.0-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.displayfeature@1.0-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.micharge@1.0-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.mioob@1.0-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.misys@1.0-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.misys@2.0-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.misys@3.0-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.misys@4.0-impl.so`
- `vendor/lib64/hw/vendor.xiaomi.hardware.touchfeature@1.0-impl.so`
- `vendor/lib64/hw/vibrator.default.so`
- `vendor/lib64/hw/vulkan.adreno.so`
- `vendor/lib64/libGPreqcancel.so`
- `vendor/lib64/libGPreqcancel_svc.so`
- `vendor/lib64/libcert_parse.wpa_s.so`
- `vendor/lib64/libkeystore-engine-wifi-hidl.so`
- `vendor/lib64/libkeystore-wifi-hidl.so`
- `vendor/lib64/liblowi_wifihal.so`
- `vendor/lib64/libwifi-hal-ctrl.so`
- `vendor/lib64/libwifi-hal-qcom.so`
- `vendor/lib64/libwifi-hal.so`
- `vendor/lib64/libwpa_client.so`
- `vendor/lib64/libxtwifi_server_protocol.so`
- `vendor/lib64/libxtwifi_server_protocol_uri_v3.so`
- `vendor/lib64/vendor.qti.hardware.data.iwlan@1.0.so`
- `vendor/lib64/vendor.qti.hardware.wifi.hostapd@1.0.so`
- `vendor/lib64/vendor.qti.hardware.wifi.hostapd@1.1.so`
- `vendor/lib64/vendor.qti.hardware.wifi.hostapd@1.2.so`
- `vendor/lib64/vendor.qti.hardware.wifi.keystore@1.0.so`
- `vendor/lib64/vendor.qti.hardware.wifi.supplicant@2.0.so`
- `vendor/lib64/vendor.qti.hardware.wifi.supplicant@2.1.so`
- `vendor/lib64/vendor.qti.hardware.wifi.supplicant@2.2.so`
- `vendor/lib64/vendor.qti.hardware.wifi.wifilearner@1.0.so`
- `vendor/lib64/vendor.qti.hardware.wifidisplaysession@1.0.so`
- `vendor/lib64/vendor.xiaomi.cit.wifi@1.0.so`

## Partition filesystem and mount details
- **vendor:** `firmware/vendor_a.img: EROFS filesystem, compat: SB_CHKSUM, blocksize=12, exslots=0, uuid=A0EF8BBE-10ED-815E-B66C-097FEA684828, incompat: LZ4_0PADDING`
- **odm:** `firmware/odm_a.img: EROFS filesystem, compat: SB_CHKSUM, blocksize=12, exslots=0, uuid=FD575CD3-77D6-025F-B1F9-B6484AE5A9AC, incompat: LZ4_0PADDING`

## Relevance to OrangeFox WLAN bring-up
Use the WLAN paths, module names, firmware filenames, init triggers, HAL/service binaries, and configuration excerpts above to compare against the recovery kernel and OrangeFox ramdisk. A file's presence in vendor/ODM does not prove it can run in recovery.

### Compatibility checks still required
- Match each WLAN kernel module to the exact Pipa recovery kernel ABI and dependencies.
- Confirm the WLAN chipset/driver family and firmware filenames; do not transplant another device's chipset-specific stack.
- Check ELF architecture, linker dependencies, vendor interface versions, SELinux labels/domains, service users/groups, and init property triggers.
- Determine whether required modules and firmware are instead in `vendor_dlkm`, `system_dlkm`, `odm_dlkm`, or boot/vendor_boot ramdisks.
- Validate the resulting recovery build and test Wi-Fi on-device; static inventory alone cannot establish functional support.

## Analysis limitations
- Only `vendor_a.img` and `odm_a.img` are inspected. This is not a complete analysis of `super`, `vendor_boot`, `boot`, `system`, or DLKM partitions.
- This report inventories paths and selected text configuration references. It does not execute vendor binaries or load kernel modules.

