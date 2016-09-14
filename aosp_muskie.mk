#
# Copyright 2016 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_muskie
PRODUCT_DEVICE := muskie
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on muskie
PRODUCT_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := true

$(call inherit-product, device/google/muskie/utils.mk)
$(call inherit-product, device/google/muskie/device.mk)
$(call inherit-product-if-exists, vendor/google_devices/muskie/device-vendor.mk)

PRODUCT_PACKAGES += \
    Launcher3
