#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt510wifi/gt510wifi-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gt510wifi

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt510wifi/overlay
