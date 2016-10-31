# GPS
BOARD_GPS_LIBRARIES := yes
BOARD_GPS_LIBRARIES := true

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# GPS library
PRODUCT_PACKAGES += \
    libcurl

# GPS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
