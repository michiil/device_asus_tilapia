# Release name
PRODUCT_RELEASE_NAME := tilapia

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/common_full_tablet_wifionly.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tilapia
PRODUCT_NAME := slim_tilapia
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.2/JOP40C/527662:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.2 JOP40C 527662 release-keys"
