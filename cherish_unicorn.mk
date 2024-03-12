#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CherishOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# CherishOS stuff.
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true

# CherishOS Build.
CHERISH_BUILD_TYPE=UNOFFICIAL
WITH_GMS := true
#CHERISH_VANILLA := true
#TARGET_USES_PICO_GAPPS := true
TARGET_USES_MINI_GAPPS := true
#USE_PIXEL_CHARGING := true
#TARGET_INCLUDE_CARRIER_SETTINGS := true

# Cherish props
CHERISH_MAINTAINER := Minus
CHERISH_CHIPSET := SM8475
CHERISH_BATTERY := 4600mAh
CHERISH_DISPLAY := 1440X3200

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_NAME := cherish_unicorn
PRODUCT_DEVICE := unicorn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2206122SC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
