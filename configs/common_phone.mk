$(call inherit-product, vendor/air/configs/common.mk)

PRODUCT_PACKAGES += \
    NovaLauncher \
    NexusTools \
    CPUBoxDual \
    AxT9IME \
    Torch

# Inherit drm blobs
-include vendor/air/configs/common_drm_phone.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf \
    vendor/air/prebuilt/common/lib/libDHWR.so:system/lib/libDHWR.so \
    vendor/air/prebuilt/common/lib/libDWP.so:system/lib/libDWP.so \
    vendor/air/prebuilt/common/lib/libXt9core.so:system/lib/libXt9core.so
