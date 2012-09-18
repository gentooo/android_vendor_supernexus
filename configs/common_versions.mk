# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JRO03L BUILD_ID=JRO03L BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)
BUILD_VERSION = 0.1-BETA1

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sn.version=$(TARGET_PRODUCT)-$(BUILD_VERSION)-$(DATE)
