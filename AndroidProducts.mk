# OrangeFox product for Xiaomi Pad 6 (Pipa), Android 13 base
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/fox_pipa.mk \
    $(LOCAL_DIR)/twrp_pipa.mk

# Standard lunch targets; no Android 14 AP2A release suffix.
COMMON_LUNCH_CHOICES := \
    fox_pipa-eng \
    fox_pipa-userdebug \
    fox_pipa-user \
    twrp_pipa-userdebug
