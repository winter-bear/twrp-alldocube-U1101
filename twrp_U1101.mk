#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X6815B device
$(call inherit-product, device/alldocube/U1101/device.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_RELEASE_NAME:= Alldocube-U1101
PRODUCT_DEVICE := U1101
PRODUCT_NAME := twrp_U1101
PRODUCT_BRAND := Alldocube
PRODUCT_MODEL := Alldocube X Pad
PRODUCT_MANUFACTURER := Alldocube


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_N7701-user 12 SP1A.210812.016 mp1V12111 release-keys"

BUILD_FINGERPRINT := ALLDOCUBE/full_N7701/N7701:12/SP1A.210812.016/mp1V12111:user/release-keys
