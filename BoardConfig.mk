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

# Inherit from common
include device/samsung/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gt510wifi

# Audio
USE_QCOM_MIXER_PATHS := 1

# Include board config fragments
include device/samsung/gt510wifi/board/*.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt510wifi,gt510wifixx,SM-T550

# Init
TARGET_LIBINIT_MSM8916_DEFINES_FILE := $(LOCAL_PATH)/init/init_gta.cpp

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt510wifi_eur_defconfig

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11676942336
BOARD_FLASH_BLOCK_SIZE := 131072

# Ramdisk
BOARD_ROOT_EXTRA_FOLDERS := dsp efs firmware firmware-modem persist
BOARD_ROOT_EXTRA_SYMLINKS += /data/tombstones:/tombstones
