#
# Copyright (C) 2015 The CyanogenMod Project
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

# Header path

TARGET_SPECIFIC_HEADER_PATH += device/lge/c50/include

# Bootloader

TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Platform

TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Vendor Init

TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm

# Architecture

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a53
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a53
TARGET_USE_KINGFISHER_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=c50 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 vmalloc=504m

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x80008000 --ramdisk_offset 0x82000000 --tags_offset 0x80000100 --dt device/lge/c50/dt.img

# prebuilt kernel

TARGET_PREBUILT_KERNEL := device/lge/c50/kernel

# else uncomment below to build from sauce

TARGET_KERNEL_SOURCE := kernel/lge/c50
TARGET_KERNEL_CONFIG := c50_mpcs_us_defconfig

# Storage

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 40
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_CRYPT := true
TW_NO_USB_STORAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_SCREEN_TIMEOUT := true

# Offmode Charging

COMMON_GLOBAL_CFLAGS += \
    -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' \
    -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

# Global flags

COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE

# Audio

BOARD_HAVE_QCOM_FM := true
AUDIO_FEATURE_ENABLED_FM := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
TARGET_USES_QCOM_MM_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true

# GPS

TARGET_NO_RPC := true

# Graphics

BOARD_EGL_CFG := device/lge/c50/prebuilt/egl.cfg
TARGET_DISPLAY_USE_RETIRE_FENCE := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION :=
TARGET_USES_ION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# Use qcom power hal

TARGET_POWERHAL_VARIANT := qcom
TARGET_USES_CPU_BOOST_HINT := true

TARGET_HW_DISK_ENCRYPTION := true

# Hardware tunables framework

BOARD_HARDWARE_CLASS := device/lge/c50/cmhw/

# Bluetooth

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/c50/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Wifi

BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"

# Enable WEBGL in WebKit

ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# QCOM hardware

BOARD_USES_QCOM_HARDWARE := true

# RIL

BOARD_RIL_CLASS := ../../../device/lge/c50/ril/

# Camera

USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
BOARD_USES_LEGACY_MMAP := true

# Number of supplementary service groups allowed by init

TARGET_NR_SVC_SUPP_GIDS := 28
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := false

# Time services

BOARD_USES_QC_TIME_SERVICES := true

# SELinux policies

include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
        device/lge/c50/sepolicy

BOARD_SEPOLICY_UNION += \
    device.te \
    file_contexts \
    file.te \
    genfs_contexts \
    hostapd.te \
    init_shell.te \
    init.te \
    kcal_dev.te \
    kernel.te \
    keystore.te \
    lge_touch_sysfs.te \
    mediaserver.te \
    mm-pp-daemon.te \
    mm-qcamerad.te \
    mpdecision.te \
    netd.te \
    nfc.te \
    platform_app.te \
    property_contexts \
    property.te \
    radio.te \
    rmt_storage.te \
    sensors.te \
    servicemanager.te \
    sysinit.te \
    system_app.te \
    system_server.te \
    tee.te \
    thermal-engine.te \
    ueventd.te \
    untrusted_app.te \
    vibe_data_file.te \
    vold.te \
    wcnss_service.te \
    wpa.te
