
# Inherit some common BananaDroid stuff
$(call inherit-product, vendor/banana/config/common.mk)

# Supported Device Flags. (Features)
BANANA_BUILD_TYPE := OFFICIAL
BANANA_MAINTAINER := @asriadirahim
TARGET_BOOT_ANIMATION_RES := 720
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDE_MATLOG := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GAPPS := true
TARGET_USE_GOOGLE_TELEPHONY := false

# Inherit device configuration
$(call inherit-product, device/google/walleye/aosp_walleye.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := banana_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:11/RP1A.201005.004.A1/6934943:user/release-keys

$(call inherit-product, vendor/google/walleye/walleye-vendor.mk)
