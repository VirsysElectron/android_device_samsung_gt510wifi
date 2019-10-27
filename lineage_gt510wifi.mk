#
# Copyright (C) 2019 The LineageOS Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/samsung/gt510wifi/device.mk)

# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab A 9.7 WiFi

# Boot animation
TARGET_SCREEN_WIDTH := 768
TARGET_SCREEN_HEIGHT := 1024

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gt510wifi
PRODUCT_NAME := lineage_gt510wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T550
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Set build fingerprint / ID / Product Name ect.
BUILD_FINGERPRINT := samsung/gt510wifixx/gt510wifi:7.1.1/NMF26X/T550XXU1CQJ6:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
  TARGET_DEVICE=gt510wifi \
  PRODUCT_NAME=gt510wifixx \
  PRIVATE_BUILD_DESC="gt510wifixx-user 7.1.1 NMF26X T550XXU1CQJ6 release-keys"

TARGET_VENDOR := Samsung
