#
# Copyright (C) 2023 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# DTB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
