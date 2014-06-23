USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/amlogic/8726mxs/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := 8726mxs

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x30400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x4B400000

BOARD_FLASH_BLOCK_SIZE := 8192
BOARD_KERNEL_IMAGE_NAME := uImage
TARGET_KERNEL_SOURCE := kernel/amlogic/8726mxs
TARGET_KERNEL_CONFIG := meson6_g24twref_jb_defconfig

TARGET_PREBUILT_KERNEL := device/amlogic/8726mxs/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

KERNEL_EXTERNAL_MODULES:
	cp /home/trep/sources/android/out/target/product/8726mxs/obj/hardware/arm/gpu/mali/mali.ko /home/trep/sources/android/device/amlogic/8726mxs/recovery/root/boot/mali.ko
	cp /home/trep/sources/android/out/target/product/8726mxs/obj/hardware/arm/gpu/ump/ump.ko /home/trep/sources/android/device/amlogic/8726mxs/recovery/root/boot/ump.ko
	cp /home/trep/sources/android/out/target/product/8726mxs/obj/hardware/arm/gpu/mali/mali.ko /home/trep/sources/android/device/amlogic/8726mxs/recovery/root/system/lib/modules/mali.ko
	cp /home/trep/sources/android/out/target/product/8726mxs/obj/hardware/arm/gpu/ump/ump.ko /home/trep/sources/android/device/amlogic/8726mxs/recovery/root/system/lib/modules/ump.ko

TARGET_KERNEL_MODULES := KERNEL_EXTERNAL_MODULES
