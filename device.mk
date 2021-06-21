#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6250-common
$(call inherit-product, device/xiaomi/sm6250-common/common.mk)

# Inherit proprietary targets
$(call inherit-product-if-exists, vendor/xiaomi/gram/gram-vendor.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.device.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.device.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-camera.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-camera.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-map.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-normal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-normal.conf \
    $(LOCAL_PATH)/thermal/init_thermal-engine.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init_thermal-engine.rc

