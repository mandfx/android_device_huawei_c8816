#
# Copyright (C) 2014 The CyanogenMod Project
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

## Specify phone tech before including full_phone
$(call inherit-product, vendor/mk/config/cdma.mk)

# Inherit some common mk stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from c8816 device
$(call inherit-product, device/huawei/c8816/c8816.mk)

# Torch
PRODUCT_PACKAGES += \
    Torch

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c8816
PRODUCT_NAME := mk_c8816
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := C8816
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := C8816

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="C8816-user 4.4.4 GRJ90 C92B185 release-keys" \
    BUILD_FINGERPRINT="Huawei/C8816/hwC8816:4.4.4/HuaweiC8816/C92B185:user/release-keys"

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN

#PRODUCT_LOCALES := zh_CN zh_TW en_US

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=c8816 \
    TARGET_DEVICE=c8816 \
    PRODUCT_MODEL=c8816