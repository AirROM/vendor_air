# Inherit common tuff
$(call inherit-product, vendor/air/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/air/overlay/common_tablets_small

PRODUCT_PACKAGES += \
    NovaLauncher \
    NexusTools \
    CPUBoxDual \
    AxT9IME

# Inherit drm blobs
-include vendor/air/configs/common_drm_tablet.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf \
    vendor/air/prebuilt/common/lib/libDHWR.so:system/lib/libDHWR.so \
    vendor/air/prebuilt/common/lib/libDWP.so:system/lib/libDWP.so \
    vendor/air/prebuilt/common/lib/libXt9core.so:system/lib/libXt9core.so
