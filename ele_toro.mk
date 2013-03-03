#
# Copyright (C) 2012 The CyanogenMod Project
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

# name
PRODUCT_RELEASE_NAME := GN-CDMA

# device
$(call inherit-product-if-exists, device/samsung/toro/full_toro.mk)

# cdma
$(call inherit-product, vendor/event/ele/config/cdma.mk)

# Inherit from toro device
$(call inherit-product, device/samsung/toro/device_vzw.mk)

# phone
$(call inherit-product, vendor/event/ele/config/common_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_COPY_FILES += \
    device/samsung/toro/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# products
PRODUCT_DEVICE := toro
PRODUCT_BRAND := Google
PRODUCT_NAME := ele_toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=424425 \
    PRODUCT_NAME=mysid \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03O 424425 release-keys" \
    BUILD_FINGERPRINT="google/mysid/toro:4.1.1/JRO03O/424425:user/release-keys"
