# Copyright (C) 2016 The Android Open Source Project
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

# Include common device configuration
$(call inherit-product, device/samsung/espressowifi/espresso-common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/espressowifi/overlay

# IR
PRODUCT_PACKAGES += \
    consumerir.piranha

# Hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/espressowifi/audio/audio_policy.conf:system/etc/audio_policy.conf
