#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Palladium stuff
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Inherit from Realme RMX1801
$(call inherit-product, device/realme/RMX1801/device.mk)

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

PRODUCT_NAME := palladium_RMX1801
PRODUCT_DEVICE := RMX1801
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := oppo
PRODUCT_MODEL := Realme 2 Pro
PRODUCT_ARCH := arm64

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := RMX1801
TARGET_VENDOR_DEVICE_NAME := RMX1801

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1801"

# Official
PALLADIUM_BUILD_TYPE := OFFICIAL

#PALLADIUM-PROPS
PRODUCT_PRODUCT_PROPERTIES += \
	ro.palladiumdevice.maintainer=sairpa \
	ro.palladiumdevice.cpu=SD660 \
	ro.palladiumdevice.display=6.30 \
	ro.palladiumdevice.displaytype=Full HD LCD \
	ro.palladiumdevice.battery=3500mAh \
	ro.palladiumdevice.camera=16MP+16MP