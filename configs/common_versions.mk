# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JRO03L BUILD_ID=JRO03L BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)
SUPERNEXUS_BUILD_VERSION = BUILD2

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sn.version=SuperNexus-$(TARGET_PRODUCT)-$(SUPERNEXUS_BUILD_VERSION)-$(DATE)
