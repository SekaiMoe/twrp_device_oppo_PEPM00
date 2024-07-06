#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oppo/pepm00

# Userdata
PRODUCT_FS_COMPRESSION := 1

TWRP_REQUIRED_MODULES += \
    magisk_prebuilt

PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/magisk

TARGET_RECOVERY_DEVICE_MODULES += \
    android.hidl.base@1.0 \
    libandroidicu \
    libcap \
    libdrm \
    libion \
    libpcrecpp \
    libxml2

# Fastboot
PRODUCT_PACKAGES += \
    otapreopt_script \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier
