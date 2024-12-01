#
# Copyright (C) 2024 Lilium Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Infinity-X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Lineage Health
PRODUCT_PACKAGES += \
    vendor.lineage.health-service.default

# Inherit some stuff for Infinity-X
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

#Infinity-X stuffs.
INFINITY_MAINTAINER := AsTechpro20
TARGET_SUPPORTS_BLUR := true
TARGET_ENABLE_BLUR := true

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
