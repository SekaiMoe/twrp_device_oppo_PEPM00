#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oppo/pepm00

# API
PRODUCT_SHIPPING_API_LEVEL := 31 #
PRODUCT_TARGET_VNDK_VERSION := 31

PRODUCT_USE_DYNAMIC_PARTITIONS := true # 动态分区# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

PRODUCT_PACKAGES += \
    otapreopt_script

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

