# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from the proprietary version
-include vendor/vandroid/vandroids4ptx/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOARD_PLATFORM_GPU := mali-400
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := SC7731
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
BOARD_VENDOR := vandroid

# Config u-boot
TARGET_NO_BOOTLOADER := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 20000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1200000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1200000000

BOARD_BOOTIMAGE_PARTITION_SIZE := 20000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1200000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1536000000
BOARD_CACHEIMAGE_PARTITION_SIZE := 150000000
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := cyanogen_vandroids4ptx_defconfig
TARGET_KERNEL_SOURCE := kernel/vandroid/vandroids4ptx
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/advan/vandroids4ptx/dt.img

# RIL
BOARD_RIL_CLASS := ../../../device/advan/vandroids4ptx/ril

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := false
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/advan/vandroids4ptx/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/advan/vandroids4ptx/bluetooth/libbt_vndcfg.txt

# Wifi
BOARD_WLAN_DEVICE := sc2351
WPA_SUPPLICANT_VERSION := VER_2_1_DEVEL
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_sprdwl$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_sprdwl$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM := "/data/misc/wifi/fwpath"
WIFI_DRIVER_FW_PATH_STA := "sta_mode"
WIFI_DRIVER_FW_PATH_P2P := "p2p_mode"
WIFI_DRIVER_FW_PATH_AP := "ap_mode"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/sprdwl.ko"
WIFI_DRIVER_MODULE_NAME := "sprdwl"
BOARD_HAVE_vandroid_WIFI := true

# Hardware rendering
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
HWUI_COMPILE_FOR_PERF := true
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DSC8830_HWC

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Audio
BOARD_USES_TINYALSA_AUDIO := true
BOARD_USES_SS_VOIP := true
BOARD_USE_LIBATCHANNEL_WRAPPER := true

# Board specific features
BOARD_USE_vandroid_COLORFORMAT := true
COMMON_GLOBAL_CFLAGS += -DSPRD_HARDWARE

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.sc8830

# Init
TARGET_NR_SVC_SUPP_GIDS := 24
TARGET_PROVIDES_INIT_RC := true

# Recovery
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Assert
TARGET_OTA_ASSERT_DEVICE := vandroids4ptx

# Use dmalloc() for such low memory devices like us
MALLOC_IMPL := dlmalloc

# Use prebuilt webviewchromium to cut down build time
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Enable dex-preoptimization to speed up the first boot sequence
WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true
WITH_DEXPREOPT_COMP := false

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_BATTERY_DEVICE_NAME := "battery"
BACKLIGHT_PATH := /sys/class/backlight/panel/brightness

# CMHW
BOARD_HARDWARE_CLASS := device/advan/vandroids4ptx/cmhw/

# TWRP
##RECOVERY_VARIANT := twrp
RECOVERY_GRAPHICS_USE_LINELENGTH := true
SP1_NAME := "internal_sd"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/temp"
TWHAVE_SELINUX := true
TARGET_RECOVERY_INITRC := device/advan/vandroids4ptx/etc/init.rc
TARGET_RECOVERY_FSTAB := device/advan/vandroids4ptx/ramdisk/fstab.sc8830
TW_HAS_DOWNLOAD_MODE := true
DEVICE_RESOLUTION := 480x800
TW_THEME := portrait_mdpi
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"

# UMS
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
