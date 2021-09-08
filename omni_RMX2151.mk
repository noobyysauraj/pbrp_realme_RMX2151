#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from RMX2151 device
$(call inherit-product, device/realme/RMX2151/device.mk)

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit some common Omni stuff.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recov

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX2151
PRODUCT_NAME := omni_RMX2151
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2151
PRODUCT_MANUFACTURER := realme
PRODUCT_RELEASE_NAME := realme RMX2151
