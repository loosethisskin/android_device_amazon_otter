# Inherit device configuration for Kindle Fire
$(call inherit-product, device/amazon/otter/full_otter.mk)
$(call inherit-product, device/amazon/otter-common/omni_otter.mk)

PRODUCT_NAME := omni_otter
PRODUCT_DEVICE := otter
PRODUCT_MODEL := Amazon Kindle Fire
PRODUCT_RELEASE_NAME := KFire
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Amazon

