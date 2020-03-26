NFC_PATH := device/samsung/msm8916-common/nfc

# NFC - tested only on j5(x)nlte
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.1 \
    android.hardware.nfc@1.1-service \
    vendor.nxp.nxpnfc@1.0 \
    vendor.nxp.hardware.nfc@1.0-service

PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.gsma.services.nfc \
    com.nxp.nfc.nq \
    nfc_nci.nqx.default \
    nqnfcee_access.xml \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(NFC_PATH)/libnfc-nci.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/libnfc-nci.conf \
    $(NFC_PATH)/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(NFC_PATH)/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/etc/nfc/libnfc-nxp.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml

DEVICE_MANIFEST_FILE += $(NFC_PATH)/manifest-nfc.xml
