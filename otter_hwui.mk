# init.d script to create /data/local/hwui.deny
PRODUCT_COPY_FILES += \
    device/amazon/otter/prebuilt/etc/init.d/04hwui:system/etc/init.d/04hwui

# hwa settings app
PRODUCT_PACKAGES += \
    HwaSettings \

# hwui build.prop changes
PRODUCT_PROPERTY_OVERRIDES += \
    hwui.print_config=choice \
    hwui.use.blacklist=true
