#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

LOCAL_PATH := device/samsung/gt510wifi
PRODUCT_HARDWARE := gt510wifi
PRODUCT_SHIPPING_API_LEVEL := 21

# Inherit from common
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

# Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt510wifi/gt510wifi-vendor.mk)

# Inherit all languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Camera
PRODUCT_PACKAGES += Camera2

# Ramdisk
PRODUCT_PACKAGES += \
	init.target.rc

# Media (camera) configuration files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# This is a tablet.
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Inhert dalvik heap values from aosp
$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)
