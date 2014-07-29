#
# Copyright (C) 2010 The Android Open Source Project
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

# rild
PRODUCT_PACKAGES := \
    rild \
    BasicSmsReceiver

PRODUCT_COPY_FILES := \
    device/asus/tilapia/fstab.grouper:root/fstab.grouper \
    device/asus/tilapia/init.tilapia.rc:root/init.grouper.rc\
    device/asus/tilapia/fstab/fstab.grouper.all-EXT4:system/extras/fstab/fstab.grouper.all-EXT4 \
    device/asus/tilapia/fstab/fstab.grouper.all-F2FS:system/extras/fstab/fstab.grouper.all-F2FS \
    device/asus/tilapia/fstab/fstab.grouper.data-F2FS:system/extras/fstab/fstab.grouper.data-F2FS \
    device/asus/tilapia/tools/repack-and-flash.sh:system/extras/tools/repack-and-flash.sh \
    device/asus/tilapia/tools/format-system.sh:system/extras/tools/format-system.sh \
    device/asus/tilapia/tools/kernel/repackimg.sh:system/extras/tools/kernel/repackimg.sh \
    device/asus/tilapia/tools/kernel/unpackimg.sh:system/extras/tools/kernel/unpackimg.sh \
    device/asus/tilapia/tools/kernel/cleanup.sh:system/extras//tools/kernel/cleanup.sh \
    device/asus/tilapia/tools/kernel/authors.txt:system/extras/tools/kernel/authors.txt \
    device/asus/tilapia/tools/kernel/bin/aik:system/extras/tools/kernel/bin/aik \
    device/asus/tilapia/tools/kernel/bin/busybox:system/extras/tools/kernel/bin/busybox \
    device/asus/tilapia/tools/kernel/bin/file:system/extras/tools/kernel/bin/file \
    device/asus/tilapia/tools/kernel/bin/lz4:system/extras/tools/kernel/bin/lz4 \
    device/asus/tilapia/tools/kernel/bin/magic:system/extras/tools/kernel/bin/magic \
    device/asus/tilapia/tools/kernel/bin/mkbootfs:system/extras/tools/kernel/bin/mkbootfs \
    device/asus/tilapia/tools/kernel/bin/mkbootimg:system/extras/tools/kernel/bin/mkbootimg \
    device/asus/tilapia/tools/kernel/bin/unpackbootimg:system/extras/tools/kernel/bin/unpackbootimg \
    device/asus/tilapia/tools/kernel/bin/xz:system/extras/tools/kernel/bin/xz

DEVICE_PACKAGE_OVERLAYS := \
    device/asus/tilapia/overlay

# the actual meat of the device-specific product definition
$(call inherit-product, device/asus/grouper/device-common.mk)

# inherit from the non-open-source side, if present
$(call inherit-product-if-exists, vendor/asus/tilapia/device-vendor.mk)

# F2FS
PRODUCT_PACKAGES += \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# Filesystem management tools
PRODUCT_PACKAGES += \
    setup_fs \
    e2fsck

# PowerEventMgr
PRODUCT_PACKAGES += \
    PowerEventMgr
