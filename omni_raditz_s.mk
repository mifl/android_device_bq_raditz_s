$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/raditz_s/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += device/bq/raditz_s/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := raditz_s
PRODUCT_NAME := omni_raditz_s
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris VS Plus
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=raditz_s
