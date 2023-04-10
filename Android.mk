LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := talkback
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_SRC_FILES := prebuilt/TalkBack.apk
LOCAL_OPTIONAL_USES_LIBRARIES := com.google.android.wearable androidx.window.extensions androidx.window.sidecar

include $(BUILD_PREBUILT)
