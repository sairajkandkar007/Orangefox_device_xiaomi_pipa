# Xiaomi Pad 6 (Pipa), A/B device without a dedicated recovery partition.
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_pipa.mk

COMMON_LUNCH_CHOICES := \
    twrp_pipa-user \
    twrp_pipa-userdebug \
    twrp_pipa-eng
