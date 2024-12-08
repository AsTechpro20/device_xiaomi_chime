#
# Copyright (C) 2024 Lilium Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AfterLife stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Lineage Health
PRODUCT_PACKAGES += \
    vendor.lineage.health-service.default

# Inherit some stuff for AfterLife
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit some GO stuff

# Always preopt extracted APKs to prevent extracting out of the APK  for gms modules.
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true

# Enable whole-program R8 Java optimizations for SystemUI and system_server,
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true

# Reduce system server verbosity
PRODUCT_SYSTEM_SERVER_DEBUG_INFO := false

# Dexpreopt
WITH_DEXPREOPT_DEBUG_INFO := false

# Use the low memory allocator to save RSS.
MALLOC_SVELTE := true
MALLOC_SVELTE_FOR_LIBC32 := true
