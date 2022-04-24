LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := talkback
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_SRC_FILES := prebuilt/talkback-release-unsigned.apk
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
LOCAL_REQUIRED_MODULES := talkback_default_perms

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := talkback_default_perms
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/default-permissions
LOCAL_MODULE_STEM := default-permissions_talkback.xml
LOCAL_SRC_FILES := default-permissions_talkback.xml

include $(BUILD_PREBUILT)
