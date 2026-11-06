# OrangeFox 14.1 product for Xiaomi Pad 6 (Pipa)
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/fox_pipa.mk \
    $(LOCAL_DIR)/twrp_pipa.mk

# OrangeFox 14.1 uses the ap2a build target.
COMMON_LUNCH_CHOICES := \
    fox_pipa-ap2a-eng \
    fox_pipa-ap2a-userdebug \
    fox_pipa-ap2a-user \
    twrp_pipa-ap2a-eng
