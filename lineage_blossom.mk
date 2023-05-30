#
# Copyright (C) 2023 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit some common LineageOS stuff.
TARGET_BOOT_ANIMATION_RES := 720
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from blossom device
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := blossom
PRODUCT_NAME := lineage_blossom
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2006C3LI
PRODUCT_MANUFACTURER := xiaomi

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
