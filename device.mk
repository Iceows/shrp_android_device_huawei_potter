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

# Specific huawei lib
PRODUCT_PACKAGES += \
    libhwlog.recovery \
    libimonitor.recovery \
    libxcollie.recovery
    
# Keymaster + libteec
TARGET_RECOVERY_DEVICE_MODULES += \
    android.hardware.keymaster@3.0 \
    android.hardware.keymaster@4.0 \
    android.hardware.keymaster@4.1 \
    android.hardware.gatekeeper@1.0 \
    android.hardware.confirmationui@1.0 \
    libkeymaster3device \
    libkeymaster4support \
    libkeymaster4_1support \
    libkeymaster_portable \
    libkeymaster_messages \
    libprotobuf-cpp-lite \
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
    libgatekeeper \
    libkeystore_binder \
    libsoftkeymasterdevice \
    libsoftkeymaster \
    libkeystore_aidl \
    libkeystore_parcelables \
    libutilscallstack \
    libdexfile \
    libservices \
    libkeystore-attestation-application-id \
    libtwrpfscrypt \
    libstatslog \
    libstatssocket \
    libhidlmemory
    
# Recovery link
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster3device.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4support.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4_1support.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_portable.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_messages.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libsoftkeymaster.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore_aidl.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore_parcelables.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libutilscallstack.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdexfile.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libservices.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore-attestation-application-id.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libsoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libsoft_attestation_cert.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcppbor_external.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcppbor.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcppcose_rkp.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhwbinder.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@3.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.1.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.gatekeeper@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.confirmationui@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory.token@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libgatekeeper.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore_binder.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtwrpfscrypt.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libprotobuf-cpp-lite.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libstatslog.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libstatssocket.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhidlmemory.so

TW_RECOVERY_ADDITIONAL_RELINK_FILES += \
    $(TARGET_OUT_EXECUTABLES)/keystore

# Blacklist
PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.bootimage.build.date.utc \
    ro.build.date.utc

# Usb
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=manufacture,adb,mtp \
    ro.sys.usb.storage.type=mtp,adb \
    sys.usb.configfs=1 \
    sys.usb.controller=ff100000.dwc3 \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0 \
    service.adb.root=1 \
    ro.debuggable=1


