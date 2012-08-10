# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i777/full_i777.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := I777
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := i777
PRODUCT_MODEL := SGH-I777
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=SGH-I777 TARGET_DEVICE=SGH-I777 BUILD_FINGERPRINT=samsung/SGH-I777/SGH-I777:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="SGH-I777-user 4.0.3 IML74K XXLPQ release-keys"

# Inherit common build.prop overrides
-include vendor/supernexus/configs/common_versions.mk

# Copy device specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/supernexus/prebuilt/i777/media/bootanimation.zip:system/media/bootanimation.zip 

# Inherit drm blobs
-include vendor/supernexus/configs/common_drm_phone.mk
