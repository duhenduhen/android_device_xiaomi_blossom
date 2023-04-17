#
# Copyright (C) 2023 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/dandelion/dandelion-vendor.mk)

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_em.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_em.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration_bluetooth_legacy_hal.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_bluetooth_legacy_hal.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# DTB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl.custom \
    fastbootd

# Rootdir
PRODUCT_PACKAGES += \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6762.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc

PRODUCT_PACKAGES += \
    ueventd.mt6765.rc

PRODUCT_PACKAGES += \
    fstab.enableswap \
    fstab.mt6762 \
    fstab.mt6765

PRODUCT_PACKAGES += \
    fstab.mt6762.ramdisk \
    fstab.mt6765.ramdisk

PRODUCT_PACKAGES += \
    init.recovery.mt6765.rc

# Screen Resolution
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.nonblocking_ffs=0 \
    persist.adb.nonblocking_ffs=0
