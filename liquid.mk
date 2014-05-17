$(call inherit-product, device/samsung/quincydcm/full_quincydcm.mk)

# Inherit some common liquid stuff.
#$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SC-05D TARGET_DEVICE=SC-05D BUILD_FINGERPRINT="samsung/SC-05D/SC-05D:4.1.2/JZO54K/SC05DOMMSG:user/release-keys" PRIVATE_BUILD_DESC="SC-05D-user 4.1.2 JZO54K SC05DOMMSG release-keys"

TARGET_BOOTANIMATION_NAME := vertical-800x1280

PRODUCT_NAME := liquid_quincydcm
PRODUCT_DEVICE := quincydcm
