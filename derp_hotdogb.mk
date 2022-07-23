#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)

# Inherit some common Derpfest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Setup Derp options
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Official-ify
DERP_BUILDTYPE := Official

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7T_CH/OnePlus7T:11/RKQ1.201022.002/2206241702:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7T \
    PRODUCT_NAME=OnePlus7T \
    PRIVATE_BUILD_DESC="OnePlus7T_EEA-user 10 QKQ1.190716.003 1909250940 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
