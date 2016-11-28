## Specify phone tech before including full_phone	
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := vandroids4ptx

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_vandroids4ptx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vandroids4ptx
PRODUCT_NAME := cm_vandroids4ptx
PRODUCT_BRAND := advan
PRODUCT_MODEL := Advan Vandroids4ptx
PRODUCT_MANUFACTURER := advan
PRODUCT_CHARACTERISTICS := phone
