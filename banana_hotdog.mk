#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdog/device.mk)

# Inherit some common Bananadroid stuff.
$(call inherit-product, vendor/banana/config/common.mk)

# Supported Device Flags.
BANANA_MAINTAINER := NILOY
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_TOUCHGESTURES := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := banana_hotdog
PRODUCT_DEVICE := hotdog
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1917
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7TPro
PRODUCT_SYSTEM_DEVICE := OnePlus7TPro

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 3120
TARGET_BOOT_ANIMATION_RES := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7TPro/OnePlus7TPro:12/SKQ1.211113.001/Q.202303230244:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7TPro \
    TARGET_NAME=OnePlus7TPro \
    PRIVATE_BUILD_DESC="OnePlus7TPro-user 12 SKQ1.211113.001 Q.202303230244 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
