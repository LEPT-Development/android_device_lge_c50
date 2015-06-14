## Specify phone tech before including full_phone

#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name

PRODUCT_RELEASE_NAME := c50

# Inherit some common CM stuff.

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration

$(call inherit-product, device/lge/c50/device_c50.mk)

# Device identifier. This must come after all inclusions

PRODUCT_DEVICE := c50
PRODUCT_NAME := cm_c50
PRODUCT_BRAND := lge
PRODUCT_MODEL := c50
PRODUCT_MANUFACTURER := lge
