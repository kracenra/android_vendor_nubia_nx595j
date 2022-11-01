#
# Copyright (C) 2018-2019 The LineageOS Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from msm8998-common
include device/nubia/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/nubia/nx595j

# Assert
TARGET_OTA_ASSERT_DEVICE := nx595j,NX595J

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Display
TARGET_SCREEN_DENSITY := 480

# Kernel
TARGET_KERNEL_CONFIG := nx595j_defconfig

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 6442450944
BOARD_USERDATAIMAGE_PARTITION_SIZE := 32212254720
BOARD_VENDORIMAGE_PARTITION_SIZE := 471859200 #471859200

# Security patch level
VENDOR_SECURITY_PATCH := 2018-11-01

# Inherit the proprietary files
include vendor/nubia/nx595j/BoardConfigVendor.mk
