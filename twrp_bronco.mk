#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from bronco device
$(call inherit-product, device/motorola/bronco/device.mk)

PRODUCT_DEVICE := bronco
PRODUCT_NAME := twrp_bronco
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Taro for arm64
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bronco-user 12 T3TBS33.2-47-2-4 d290d release-keys"

BUILD_FINGERPRINT := motorola/bronco/bronco:12/T3TBS33.2-47-2-4/d290d:user/release-keys
