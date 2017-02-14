LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_xlog.c

LOCAL_MODULE := liblog_mtk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

# Provide a hexeditable drop in for liblog for special executables
# that are started with a clean environment, These executables 
# will need to be hexedited.

LOCAL_SRC_FILES := \
    mtk_xlog.c

LOCAL_SHARED_LIBRARIES := \
    liblog

LOCAL_MODULE := libmlg
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
