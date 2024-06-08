#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from asphalt_prc device
$(call inherit-product, device/lenovo/asphalt_prc/device.mk)

PRODUCT_DEVICE := asphalt_prc
PRODUCT_NAME := omni_asphalt_prc
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB320FC
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB320FC-user 12  15.0.240_240411 release-keys"

BUILD_FINGERPRINT := Lenovo/TB320FC/TB320FC:12//15.0.240_240411:user/release-keys
