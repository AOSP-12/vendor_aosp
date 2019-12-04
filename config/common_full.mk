# Inherit common AOSP stuff
$(call inherit-product, vendor/aosp/config/common.mk)
$(call inherit-product, vendor/aosp/config/common_full_packages.xml)

PRODUCT_SIZE := full
