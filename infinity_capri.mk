# Copyright (C) 2025 Project InfinityX
# Device configuration for Motorola Capri (Moto G10 Power)
# Infinity-X product file that inherits Lineage/AOSP base product config.

# Inherit base product definitions (architecture, base packages, telephony).
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device (device specific BoardConfig and device.mk)
$(call inherit-product, device/motorola/capri/device.mk)

# Inherit vendor blobs and vendor product definitions
$(call inherit-product, vendor/motorola/capri/capri-vendor.mk)

# Optional Infinity vendor/product additions (if present)
$(call inherit-product-if-exists, vendor/infinity/config/common_full_phone.mk)

#
# Device identifier. Must come after inclusions above.
#
PRODUCT_NAME := infinity_capri
PRODUCT_DEVICE := capri
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G10 Power
PRODUCT_MANUFACTURER := motorola

INFINITY_MAINTAINER := Shipu


# GMS client id base (if required / used by base)
PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Build fingerprint and build props (override as needed)
