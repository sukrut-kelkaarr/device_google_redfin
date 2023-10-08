#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2023 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
TARGET_DISABLE_EPPE := true
EVO_BUILD_TYPE := OFFICIAL
TARGET_IS_PIXEL := true
TARGET_PIXEL_STAND_SUPPORTED := true

# Inherit device configuration
$(call inherit-product, device/google/redfin/aosp_redfin.mk)

include device/google/redfin/device-evolution.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5
PRODUCT_NAME := evolution_redfin

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=redfin \
    PRIVATE_BUILD_DESC="redfin-user 14 UP1A.231005.007 10754064 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:14/UP1A.231005.007/10754064:user/release-keys

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)