# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := I9000
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := galaxysmtd
PRODUCT_MODEL := GT-I9000
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"

# Inherit common build.prop overrides
-include vendor/supernexus/configs/common_versions.mk

# Copy device specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/supernexus/prebuilt/galaxysmtd/media/bootanimation.zip:system/media/bootanimation.zip 

# Inherit drm blobs
-include vendor/supernexus/configs/common_drm_phone.mk
