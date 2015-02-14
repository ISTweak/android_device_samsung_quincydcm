#
# Copyright (C) 2011 The CyanogenMod Project
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/quincydcm/quincydcm-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/quincydcm/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    initlogo.rle \
    init.qcom.usb.rc

# BT firmware
PRODUCT_COPY_FILES += \
    device/samsung/quincydcm/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd

# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# Change the default locale to Japanese.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=ja \
    ro.product.locale.region=JP

# Inherit from quincy-common
$(call inherit-product, device/samsung/quincy-common/quincy-common.mk)

$(call inherit-product-if-exists, vendor/samsung/quincydcm/quincydcm-vendor.mk)
