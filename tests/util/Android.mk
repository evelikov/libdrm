LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/Makefile.sources

LOCAL_SRC_FILES := $(UTIL_FILES)

LOCAL_MODULE := libdrm_util

LOCAL_C_INCLUDES += \
	$(TARGET_OUT_HEADERS)/libdrm

include $(BUILD_STATIC_LIBRARY)
