export TW_DEFAULT_LANGUAGE="en_US"
export LC_ALL="C"
export ALLOW_MISSING_DEPENDENCIES=true

export OF_MAINTAINER="pipaDB"
export FOX_MAINTAINER_PATCH_VERSION="$(date +%y%m%d)"
export FOX_VARIANT="pipa-OFOX14.1"

# Optional OrangeFox utilities.
export FOX_USE_TAR_BINARY=1
export FOX_USE_LZ4_BINARY=1
export FOX_USE_ZSTD_BINARY=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_USE_UPDATED_MAGISKBOOT=1

# Pipa is a Virtual A/B device with dynamic partitions.
export FOX_VIRTUAL_AB_DEVICE=1
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"

# Device UI.
export OF_SCREEN_H=2880
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_QUICK_BACKUP_LIST="/boot;/data;"

# Device-specific recovery behavior.
export OF_NO_RELOAD_AFTER_DECRYPTION=1
export OF_DEFAULT_KEYMASTER_VERSION=4.0
export FOX_ALLOW_EARLY_SETTINGS_LOAD=1

# Experimental: retain only if vbmeta patching is required and thoroughly tested.
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1

# Dynamic partition tools.
export OF_ENABLE_LPTOOLS=1
