# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800
## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := MicroMax Doodle

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/micromax/doodle/doodle.mk)

# Web Rendering
PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := doodle
PRODUCT_NAME := cm_doodle
PRODUCT_BRAND := micromax
PRODUCT_MODEL := a111
PRODUCT_MANUFACTURER := micromax



UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
