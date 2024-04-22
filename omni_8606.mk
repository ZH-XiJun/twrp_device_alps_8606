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

# Inherit from 8606 device
$(call inherit-product, device/alps/8606/device.mk)

PRODUCT_DEVICE := 8606
PRODUCT_NAME := omni_8606
PRODUCT_BRAND := alps
PRODUCT_MODEL := 8606
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_kct6737m_xs375_65_m0-user 6.0 MRA58K 1567415757 test-keys"

BUILD_FINGERPRINT := alps/full_kct6737m_xs375_65_m0/kct6737m_xs375_65_m0:6.0/MRA58K/1567415757:user/test-keys
