#
# Copyright (C) 2020 The DotOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from gram device
$(call inherit-product, device/xiaomi/gram/device.mk)

# Inherit some common DotOS stuff
$(call inherit-product, vendor/dot/config/common.mk)

DOT_OFFICIAL := true
WITH_GAPPS := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := dot_gram
PRODUCT_DEVICE := gram
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Poco M2 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
