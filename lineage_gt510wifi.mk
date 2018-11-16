# Inherit from common
$(call inherit-product, device/samsung/gte-common/lineage.mk)

$(call inherit-product, device/samsung/gt510wifi/device.mk)

# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab A 9.7 WiFi

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gt510wifi
PRODUCT_NAME := lineage_gt510wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T550
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
  TARGET_DEVICE=gt510wifi \
  PRODUCT_NAME=gt510wifixx \
  BUILD_FINGERPRINT=samsung/gt510wifixx/gt510wifi:7.1.1/NMF26X/T550XXU1CQJ6:user/release-keys \
  PRIVATE_BUILD_DESC="gt510wifixx-user 7.1.1 NMF26X T550XXU1CQJ6 release-keys"
