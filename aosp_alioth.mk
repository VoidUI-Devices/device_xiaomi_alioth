#
# Copyright (C) 2021-2022 The LineageOS Project
# Copyright (C) 2022 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common VoidUI stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# VoidUI Feature Flags
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1440
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true

# VoidUI Maintainer Flags
VOID_MAINTAINER := johnmart19
CUSTOM_BUILD_TYPE := OFFICIAL

# Updatable APEX
TARGET_SHIP_PREBUILT_APEX := true
$(call inherit-product-if-exists, vendor/pixel-additional/config.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := aosp_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth_global-user 11 RKQ1.200826.002 V13.0.3.0.SKHMIXM release-keys"

BUILD_FINGERPRINT := POCO/alioth_global/alioth:12/RKQ1.200826.002/V13.0.3.0.SKHMIXM:user/release-keys
