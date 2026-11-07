# Xiaomi Pad 6 (Pipa), A/B device without a dedicated recovery partition.
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_pipa.mk

COMMON_LUNCH_CHOICES := \
    twrp_pipa-ap2a-user \
    twrp_pipa-ap2a-userdebug \
    twrp_pipa-ap2a-eng
