#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oplus/lunaa

# Include the common OEM chipset BoardConfig.
include device/oplus/sm8350-common/BoardConfigCommon.mk

# Display
SOONG_CONFIG_qtidisplay_udfps := true
TARGET_SCREEN_DENSITY := 450

# Kernel
TARGET_KERNEL_CONFIG += vendor/lineage_yupik.config
TARGET_KERNEL_ADDITIONAL_FLAGS := CONFIG_OPLUS_CHG_OP9RT_PMIC_VOOCPHY=y

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# SEpolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Include the proprietary files BoardConfig.
include vendor/oplus/lunaa/BoardConfigVendor.mk
