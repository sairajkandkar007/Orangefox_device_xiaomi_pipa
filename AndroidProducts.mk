# Xiaomi Pad 6 (Pipa) recovery product.
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_pipa.mk

# OrangeFox 14.1 uses the TWRP product target; OrangeFox features are
# configured by vendorsetup.sh through FOX_BUILD_DEVICE=pipa.
COMMON_LUNCH_CHOICES := \
    twrp_pipa-ap2a-eng \
    twrp_pipa-ap2a-userdebug \
    twrp_pipa-ap2a-user
