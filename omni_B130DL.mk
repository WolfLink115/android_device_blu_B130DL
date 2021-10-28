$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/blu/B130DL/prebuilt/zImage:kernel
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := B130DL
PRODUCT_NAME := omni_B130DL
PRODUCT_BRAND := BLU
PRODUCT_MODEL := B130DL
PRODUCT_MANUFACTURER := BLU

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="View/omni_B130DL/B130DL:16.1.0/QQ3A.200805.001/WolfLink11510221107:eng/test-keys" \
    PRIVATE_BUILD_DESC="omni_B130DL-eng 16.1.0 QQ3A.200805.001 eng.WolfLink115.20211022.110740 test-keys"
