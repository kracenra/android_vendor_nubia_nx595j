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
$(call inherit-product, device/nubia/msm8998-common/msm8998.mk)

LOCAL_PATH := device/nubia/nx595j

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Properties
-include $(LOCAL_PATH)/properties.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# Consumerir
BOARD_HAVE_IR := true

# Display
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/display/qdcm_calib_data_jdi_r63452_1080p_5p5_mipi_cmd_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_jdi_r63452_1080p_5p5_mipi_cmd_panel.xml

# Fingerprint
BOARD_HAVE_NUBIA_FPC_FINGERPRINT := true

# Init
BOARD_WITH_ROOT_SYSTEM := true

# IR
BOARD_HAVE_NUBIA_IR := true

# Light
BOARD_HAVE_NUBIA_HOME_LED := true

# NFC
BOARD_HAVE_NUBIA_NFC := true

# Vibrator
BOARD_HAVE_NUBIA_VIBRATOR := true

# Wifi
PRODUCT_PACKAGES += \
    NX595JWifiOverlay

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/nubia/nx595j/nx595j-vendor.mk)
