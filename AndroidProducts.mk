# OrangeFox 14.1 product for Xiaomi Pad 6 (Pipa)
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/fox_pipa.mk \
    $(LOCAL_DIR)/twrp_pipa.mk

COMMON_LUNCH_CHOICES := \
    fox_pipa-user \
    fox_pipa-userdebug \
    fox_pipa-eng \
    twrp_pipa-userdebug
