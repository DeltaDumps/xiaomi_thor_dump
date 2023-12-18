#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from thor device
$(call inherit-product, device/xiaomi/thor/device.mk)

PRODUCT_DEVICE := thor
PRODUCT_NAME := lineage_thor
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2203121C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="thor-user 13 SKQ1.220303.001 V14.0.15.0.TLACNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/thor/thor:13/SKQ1.220303.001/V14.0.15.0.TLACNXM:user/release-keys
