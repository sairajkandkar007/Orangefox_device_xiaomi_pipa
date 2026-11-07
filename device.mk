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
# Use explicit source:destination pairs to avoid source-only PRODUCT_COPY_FILES entries.
PIPA_RECOVERY_ROOT := $(LOCAL_PATH)/recovery/root
PRODUCT_COPY_FILES += $(foreach f,$(shell find $(PIPA_RECOVERY_ROOT) -type f),$(f):recovery/root/$(patsubst $(PIPA_RECOVERY_ROOT)/%,%,$(f)))

# Recovery Wi-Fi userspace support.
TW_INCLUDE_WIFI := true

TWRP_REQUIRED_MODULES += miui_prebuilt
