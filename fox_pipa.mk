# Copyright (C) 2026 Pipa OrangeFox device tree
# SPDX-License-Identifier: Apache-2.0

PRODUCT_RELEASE_NAME := pipa

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, device/xiaomi/pipa/device.mk)
$(call inherit-product, vendor/fox/config/common.mk)

PRODUCT_DEVICE := pipa
PRODUCT_NAME := fox_pipa
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Xiaomi Pad 6

# OrangeFox 14.1 WLAN feature switch.
OF_ENABLE_WLAN := 1
TW_INCLUDE_WIFI := true
