# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i9100/full_i9100.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := GalaxyS2
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9100
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K XXLPQ release-keys"

# Inherit common build.prop overrides
-include vendor/supernexus/configs/common_versions.mk

# Copy GalaxyS3 specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/supernexus/prebuilt/i9100/media/bootanimation.zip:system/media/bootanimation.zip 

# Inherit drm blobs
-include vendor/supernexus/configs/common_drm_phone.mk
