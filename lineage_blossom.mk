#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Malloc
PRODUCT_DISABLE_SCUDO := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# always nuke audiofx
NUKE_AUDIOFX := true

# always append time of day
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

# AxionAOSP flags start
# Camera
AXION_CAMERA_REAR_INFO := 13
AXION_CAMERA_FRONT_INFO := 5
PRODUCT_NO_CAMERA := false

# Processor
AXION_PROCESSOR := Mediatek_Helio_G25_/_G35

# Maintainer
AXION_MAINTAINER := fukiame

# Perf anim override
PERF_ANIM_OVERRIDE := true

# LOS apps
TARGET_INCLUDES_LOS_PREBUILTS := true

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil

# AxionAOSP flags end

PRODUCT_NAME := lineage_blossom
PRODUCT_DEVICE := blossom
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
