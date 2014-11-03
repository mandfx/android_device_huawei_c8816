
#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/huawei/c8816

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# media_profiles and media_codecs xmls for 8916
PRODUCT_COPY_FILES += \
    device/huawei/c8816/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/c8816/media/media_codecs.xml:system/etc/media_codecs.xml
	
PRODUCT_COPY_FILES += \
    device/huawei/c8816/prebuilt/system/etc/whitelist_appops.xml:system/etc/whitelist_appops.xml
	
# Logmask
PRODUCT_COPY_FILES += \
    device/huawei/c8816/prebuilt/system/etc/logmask/kernelevent.cfg:system/etc/logmask/kernelevent.cfg \
    device/huawei/c8816/prebuilt/system/etc/logmask/wifi.cfg:system/etc/logmask/wifi.cfg 

# GPS configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/izat.conf:system/etc/izat.conf \
	$(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf \
	$(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Pre-Jars
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/cneapiclient.jar:system/framework/cneapiclient.jar \
	$(LOCAL_PATH)/configs/qcmediaplayer.jar:system/framework/qcmediaplayer.jar

# Extended media support
PRODUCT_PACKAGES += \
    qcmediaplayer

PRODUCT_BOOT_JARS += qcmediaplayer
	
# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi


# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni


# HAL
PRODUCT_PACKAGES += \
    copybit.msm8610 \
    gralloc.msm8610 \
    hwcomposer.msm8610 \
    keystore.msm8610 \
    memtrack.msm8610 \
    power.msm8610 \
    liboverlay

#  libqcomvisualizer \
# libqcomvoiceprocessing
# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8916 \
    audio_policy.msm8916 \
    libaudio-resampler

# Audio configuration file
PRODUCT_COPY_FILES += \
    device/huawei/c8816/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilt/system/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	device/huawei/c8816/prebuilt/system/etc/globalAutoAdapt-conf.xml:system/etc/globalAutoAdapt-conf.xml

#wifi
PRODUCT_COPY_FILES += \
    device/huawei/c8816/prebuilt/system/etc/firmware/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/huawei/c8816/prebuilt/system/etc/firmware/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/huawei/c8816/prebuilt/system/etc/firmware/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/c8816/prebuilt/system/etc/firmware/wpa_supplicant_ath6kl.conf:system/etc/wifi/wpa_supplicant_ath6kl.conf \
    device/huawei/c8816/prebuilt/system/etc/firmware/wpa_supplicant_wcn.conf:system/etc/wifi/wpa_supplicant_wcn.conf 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/pronto_wlan.ko:system/lib/modules/pronto/pronto_wlan.ko 

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Power
PRODUCT_PACKAGES += \
	power.msm8610

# Crda
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem tools
PRODUCT_PACKAGES += \
    setup_fs

# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio
	
#fstab.qcom
PRODUCT_PACKAGES += \
    fstab.qcom

# GPS
PRODUCT_PACKAGES += \
    gps.msm8610
	

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8610

# Lights
PRODUCT_PACKAGES += \
    lights.msm8610

# Misc
PRODUCT_PACKAGES += \
    libxml2

#OEM Services library
PRODUCT_PACKAGES += \
    oem-services \
    libsubsystem_control \
    libSubSystemShutdown

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw


# Random
PRODUCT_PACKAGES += \
    qrngd \
    qrngp
	
# Prebuilt binary
PRODUCT_PACKAGES += \
    chargelog.sh \
    e2fsck_s \
    healthd \
    huawei_version \
    hw_scsi_switch \
    libqmi_oem_main \
    rmt_oeminfo \
    rmt_storage \
    test_diag \
    test_oeminfo \
    usb_update

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8916 \
    libcalmodule_akm \
    calmodule.cfg

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Vold
PRODUCT_PACKAGES += \
    vold.fstab

# Modules
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/modules/adsprpc.ko:system/lib/modules/adsprpc.ko \
	$(LOCAL_PATH)/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
	$(LOCAL_PATH)/modules/dma_test.ko:system/lib/modules/dma_test.ko \
	$(LOCAL_PATH)/modules/evbug.ko:system/lib/modules/evbug.ko \
	$(LOCAL_PATH)/modules/gpio_axis.ko:system/lib/modules/gpio_axis.ko \
	$(LOCAL_PATH)/modules/gpio_event.ko:system/lib/modules/gpio_event.ko \
	$(LOCAL_PATH)/modules/gpio_input.ko:system/lib/modules/gpio_input.ko \
	$(LOCAL_PATH)/modules/gpio_matrix.ko:system/lib/modules/gpio_matrix.ko\
	$(LOCAL_PATH)/modules/gpio_output.ko:system/lib/modules/gpio_output.ko \
	$(LOCAL_PATH)/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
	$(LOCAL_PATH)/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
	$(LOCAL_PATH)/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
	$(LOCAL_PATH)/modules/oprofile.ko:system/lib/modules/oprofile.ko \
	$(LOCAL_PATH)/modules/qcedev.ko:system/lib/modules/qcedev.ko \
	$(LOCAL_PATH)/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
	$(LOCAL_PATH)/modules/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko \
	$(LOCAL_PATH)/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
	$(LOCAL_PATH)/modules/spidev.ko:system/lib/modules/spidev.ko 

# Thermald
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/thermal-engine-8610.conf:system/etc/thermal-engine-8610.conf
    
# Spn config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml
	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml
	
# Update-Binary
PRODUCT_COPY_FILES += \
    device/huawei/c8816/update-binary:obj/EXECUTABLES/updater_intermediates/updater

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/huawei/c8816/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/huawei/c8816/prebuilt/system,system)

# Wifi
PRODUCT_PACKAGES += \
    libcurl \
    wcnss_service

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.remote.autoconnect=true \
    ro.bluetooth.request.master=true \
    ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
    ro.qualcomm.bluetooth.ftp=true \
    ro.qualcomm.bluetooth.sap=true 

#wifi
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	ro.sys.umsdirtyratio=20 \
	ro.wifi.channels=

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.whitelist=/system/etc/whitelist_appops.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so \
    persist.radio.apm_sim_not_pwdn=1
	

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/huawei/c8816/c8816-vendor.mk)
