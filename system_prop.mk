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

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.audio.offload.24bit.enable=false \
	vendor.audio.offload.buffer.size.kb=64 \
	vendor.audio.offload.gapless.enabled=true \
	persist.vendor.audio.hw.binder.size_kbyte=1024 \
	av.offload.enable=false \
	ro.vendor.audio.sdk.ssr=false \
	vendor.audio.av.streaming.offload.enable=false \
	ro.vendor.audio.ssr=false \
	af.fast_track_multiplier=1 \
	vendor.audio_hal.period_size=192 \
	ro.config.media_vol_steps=25 \
	vendor.voice.path.for.pcm.voip=true \
	persist.vendor.audio.fluence.mode=endfire \
	persist.vendor.audio.fluence.voicecall=true \
	ro.vendor.audio.sdk.fluencetype=fluence

PRODUCT_PROPERTY_OVERRIDES += \
	persist.audio.calfile0=/vendor/etc/acdbdata/Bluetooth_cal.acdb \
	persist.audio.calfile1=/vendor/etc/acdbdata/General_cal.acdb \
	persist.audio.calfile2=/vendor/etc/acdbdata/Global_cal.acdb \
	persist.audio.calfile3=/vendor/etc/acdbdata/Handset_cal.acdb \
	persist.audio.calfile4=/vendor/etc/acdbdata/Hdmi_cal.acdb \
	persist.audio.calfile5=/vendor/etc/acdbdata/Headset_cal.acdb \
	persist.audio.calfile6=/vendor/etc/acdbdata/Speaker_cal.acdb

# USB debugging at boot
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb  \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.debuggable=1 \
	persist.service.adb.enable=1

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
	ro.gps.agps_provider=1 \
	ro.pip.gated=0

# Hotspot WiFi
PRODUCT_PROPERTY_OVERRIDES += \
	sys.usb.rps_mask=10

# Media
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.mediacodec.binder.size=6 \
	vidc.enc.narrow.searchrange=1

# Power Manager
PRODUCT_PROPERTY_OVERRIDES += \
	pm.sleep_mode=1 \
	ro.ril.disable.power.collapse=1

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0

# NITZ
PRODUCT_PROPERTY_OVERRIDES += \
	persist.rild.nitz_plmn="" \
	persist.rild.nitz_long_ons_0="" \
	persist.rild.nitz_long_ons_1="" \
	persist.rild.nitz_long_ons_2="" \
	persist.rild.nitz_long_ons_3="" \
	persist.rild.nitz_short_ons_0="" \
	persist.rild.nitz_short_ons_1="" \
	persist.rild.nitz_short_ons_2="" \
	persist.rild.nitz_short_ons_3=""

# Boot
PRODUCT_PROPERTY_OVERRIDES += \
	sys.vendor.shutdown.waittime=500 \
	ro.build.shutdown_timeout=5

# CABL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0

# Disable RIL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.carrier=wifi-only \
	ro.radio.noril=1

# RAM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.low_ram=false

# Screen
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=0

# Treble
persist.media.treble_omx=false

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.snapshot_enabled=1 \
	persist.radio.snapshot_timer=22 \
	persist.radio.lte_vrte_ltd=1

# Volume
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.vc_call_vol_steps=15 \
	ro.config.media_vol_steps=30

# Misc
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.android.dateformat=dd-MM-yyyy \
    persist.sys.disable_rescue=true \
    ro.setupwizard.rotation_locked=true \
    net.tethering.noprovisioning=true
