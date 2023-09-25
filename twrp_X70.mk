#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The Team Win Recovery Project
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp config common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/cubot/X70/device.mk)

# Device identifier
PRODUCT_DEVICE := X70
PRODUCT_NAME := twrp_X70
PRODUCT_BRAND := CUBOT
PRODUCT_MODEL := X70
PRODUCT_MANUFACTURER := CUBOT

PRODUCT_GMS_CLIENTID_BASE := android-cubot
