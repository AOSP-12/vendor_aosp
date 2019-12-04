# Telephony

IS_PHONE := true

# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# SPN-CONF
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Default ringtone
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.ringtone=Ring_Synth_04.ogg

# Inherit full common AOSP stuff
$(call inherit-product, vendor/aosp/config/common_full.mk)
