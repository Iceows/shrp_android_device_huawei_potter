DEVICE_PATH := device/huawei/potter

# Assert
TARGET_OTA_ASSERT_DEVICE := potter,hi6250

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi6250
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := hi6250
TARGET_BOARD_PLATFORM_GPU := kirin
BUILD_BROKEN_DUP_RULES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := dummykernel
BOARD_CUSTOM_BOOTIMG_MK := device/huawei/potter/custombootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x8000 --ramdisk_offset 0x01000000 --tags_offset 0x0100

# File System
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
TARGET_EXFAT_DRIVER := exfat
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# System as root
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_ROOT_EXTRA_FOLDERS := d hw_odm twres


BOARD_SEPOLICY_DIRS += \
    device/huawei/potter/sepolicy

BOARD_SEPOLICY_UNION += \
    tee.te \
    kernel.te \
    recovery.te \
    logd.te \
    vendor_init.te \
    device.te \
    file_contexts \
    init.te \
    recovery.te \
    

# Fstab and init.rc files
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/twrp.flags
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)

# Recovery
TW_THEME := shrp_dark_portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_NO_HAPTICS := true
TW_NO_SCREEN_BLANK := true
TW_USE_TOOLBOX := true
TW_DEFAULT_BRIGHTNESS := "2048"
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TW_USE_NEW_MINADBD := true
#TW_NO_SCREEN_TIMEOUT  := true


# Selinux
SELINUX_IGNORE_NEVERALLOWS := true
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

#SHRP-specific lines
SHRP_MAINTAINER := Yahia-Iceows
SHRP_DEVICE_CODE := potter
SHRP_FLASH := 1
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := /sys/class/leds/torch/brightness
SHRP_FONP_2 := 
SHRP_FONP_3 := 
SHRP_FLASH_MAX_BRIGHTNESS := 200
SHRP_REC := /dev/block/platform/hi_mci.0/by-name/recovery_ramdisk

# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock
# Default (if not set) is not using Express
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_EXPRESS := true
SHRP_EXPRESS_USE_DATA := true

SHRP_NOTCH := false
# Dark Mode
SHRP_DARK := true

SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_PATH := device/huawei/potter
#SHRP_OFFICIAL := true
#SHRP_EDL_MODE := 1
SHRP_INTERNAL := /sdcard
SHRP_EXTERNAL := /sdcard1

# Recovery Type (for "About" section only)
# Default (if not set): N/A
SHRP_REC_TYPE := Treble

# Device Type (for "About" section only)
# Default (if not set): N/A
SHRP_DEVICE_TYPE := A-Only

# Use this flag only if your device is A/B.
# Default (if not set) is no A/B device
# Set this variable when true ONLY (do not use "false" or similiar)
# SHRP_AB := true


# SHRP addons
SHRP_EXCLUDE_MAGISK_FLASH := true
