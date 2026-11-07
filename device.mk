#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/pipa

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
TW_INCLUDE_FASTBOOTD := true

# API
PRODUCT_TARGET_VNDK_VERSION := 31
PRODUCT_SHIPPING_API_LEVEL := 30

# A/B
ENABLE_VIRTUAL_AB := true

# Boot Control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti.recovery \
    bootctrl.kona.recovery

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Copy the complete device recovery ramdisk overlay.
# This stages Pipa WLAN init, binaries, firmware and QCA6390 module metadata.
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*, $(LOCAL_PATH)/recovery/root, recovery/root)

# Recovery Wi-Fi userspace support (OrangeFox 14.1).
TW_INCLUDE_WIFI := true

TWRP_REQUIRED_MODULES += miui_prebuilt
