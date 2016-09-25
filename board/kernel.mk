# Kernel informations
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --board 1469708408 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000

# Kernel properties
TARGET_KERNEL_SOURCE := kernel_Lucky76/metal
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := wtk6753_65u_m0_Lucky76_defconfig
#TARGET_KERNEL_CONFIG := lucky76_metal_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

#TARGET_PREBUILT_KERNEL := device/ulefone/metal/prebuilt/Image.gz-dtb
#BOARD_CUSTOM_BOOTIMG := true

