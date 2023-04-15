#
# Copyright (C) 2023 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Arrow stuff.
TARGET_BOOT_ANIMATION_RES := 720
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from dandelion device
$(call inherit-product, device/xiaomi/dandelion/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dandelion
PRODUCT_NAME := arrow_dandelion
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2006C3LI
PRODUCT_MANUFACTURER := xiaomi

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dandelion-user 11 RP1A.200720.011 V12.5.9.0.RCDINXM release-keys"
