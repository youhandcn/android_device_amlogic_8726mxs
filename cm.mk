## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := 8726mxs

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/amlogic/8726mxs/device_8726mxs.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := 8726mxs
PRODUCT_NAME := cm_8726mxs
PRODUCT_BRAND := amlogic
PRODUCT_MODEL := 8726mxs
PRODUCT_MANUFACTURER := amlogic
