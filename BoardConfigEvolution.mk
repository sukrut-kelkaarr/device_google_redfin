#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Add before redbull BoardConfigEvolution.mk
BOOT_KERNEL_MODULES += sec_touch.ko

include device/google/redbull/BoardConfigEvolution.mk

include vendor/google/redfin/BoardConfigVendor.mk
