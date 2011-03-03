$(call inherit-product, device/nvidia/harmony/device_harmony.mk)

$(call inherit-product, vendor/aosp/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aosp_harmony
PRODUCT_BRAND := nvidia
PRODUCT_DEVICE := harmony
PRODUCT_MODEL := GTablet
PRODUCT_MANUFACTURER := malata
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=harmony BUILD_ID=FRG83D BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83D/75603:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83D 75603 release-keys"

#
# Set ro.modversion
#
ifdef AOSP_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=AOSP-$(shell date +%m%d%Y)-NIGHTLY-Harmony
else
    ifdef AOSP_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=AOSP-Beta2-Harmony
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=AOSP-Harmony-TEST
    endif
endif


