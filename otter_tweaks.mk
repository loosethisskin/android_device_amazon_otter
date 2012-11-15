# kernel and build.prop tweaks
ifneq (,$(filter true 1,$(TARGET_INCLUDE_SYSCTL_TWEAK)))

PRODUCT_COPY_FILES += \
    device/amazon/otter/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/amazon/otter/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.purgeable_assets=1 \
    pm.sleep_mode=1 \
    wifi.supplicant_scan_interval=180 \
    windowsmgr.max_events_per_sec=200

endif

# OOM init.d script
ifneq (,$(filter true 1,$(TARGET_INCLUDE_OOM_TWEAK)))

PRODUCT_COPY_FILES += \
    device/amazon/otter/prebuilt/etc/init.d/02oom:system/etc/init.d/02oom \

endif

# mount options tweak
ifneq (,$(filter true 1,$(TARGET_INCLUDE_MOUNT_TWEAK)))

PRODUCT_COPY_FILES += \
    device/amazon/otter/prebuilt/etc/init.d/03mount:system/etc/init.d/03mount \

endif

# hwui: Allow to blacklist android applications
ifneq (,$(filter true 1,$(TARGET_INCLUDE_HWUI_SETTINGS)))

PRODUCT_COPY_FILES += \
    device/amazon/otter/prebuilt/etc/init.d/04hwui:system/etc/init.d/04hwui \

PRODUCT_PACKAGES += \
    HwaSettings \

PRODUCT_PROPERTY_OVERRIDES += \
    hwui.print_config=choice \
    hwui.use.blacklist=true

endif

# zram init.d script
ifneq (,$(filter true 1,$(TARGET_INCLUDE_ZRAM_SUPPORT)))

PRODUCT_COPY_FILES += \
    device/amazon/otter/prebuilt/etc/init.d/05zram:system/etc/init.d/05zram \

endif
