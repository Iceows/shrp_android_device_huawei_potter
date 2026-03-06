#
# Copyright 2019 The Android Open Source Project
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

LOCAL_PATH := device/huawei/potter

# Kernel
PRODUCT_COPY_FILES += \
    device/huawei/potter/dummykernel:kernel
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Specific lib
PRODUCT_PACKAGES += \
    libhwlog.recovery \
    libimonitor.recovery \
    libxcollie.recovery
    
# Keymaster + libteec
TARGET_RECOVERY_DEVICE_MODULES += \
    android.hardware.keymaster@3.0 \
    libkeymaster3device \
    libkeymaster_portable \
    libkeymaster_messages \
    libpuresoftkeymasterdevice \
    libsoft_attestation_cert \
    libcppbor_external \
    libcppbor \
    libkeystore-engine-wifi-hidl \
    libcppcose_rkp \
    libhwbinder \
    libkeystore-wifi-hidl \
    android.hidl.memory@1.0 \
    android.hidl.memory.token@1.0 \
    libhidlmemory

# Recovery link
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster3device.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_portable.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_messages.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libsoft_attestation_cert.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcppbor_external.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcppbor.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcppcose_rkp.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhwbinder.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@3.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory.token@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhidlmemory.so

PRODUCT_PROPERTY_OVERRIDES += \
	ro.hardware.keystore=kirin710

# Blacklist
PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.bootimage.build.date.utc \
    ro.build.date.utc

# Usb
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=hisuite,adb,mtp \
    ro.sys.usb.storage.type=mtp,adb \
    sys.usb.config=mtp \
    sys.usb.configfs=1 \
    sys.usb.controller=ff100000.dwc3 \
    sys.usb.ffs.aio_compat=true \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0 \
    service.adb.root=1 \
    ro.debuggable=1


