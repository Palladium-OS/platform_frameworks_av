LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := tests
LOCAL_C_INCLUDES := \
    $(call include-path-for, audio-utils) \
    frameworks/av/media/libaaudio/include

# NDK recommends using this kind of relative path instead of an absolute path.
LOCAL_SRC_FILES:= ../src/write_sine.cpp
LOCAL_SHARED_LIBRARIES := libaaudio
LOCAL_MODULE := write_sine_ndk
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := tests
LOCAL_C_INCLUDES := \
    $(call include-path-for, audio-utils) \
    frameworks/av/media/libaaudio/include

LOCAL_SRC_FILES:= ../src/write_sine_threaded.cpp
LOCAL_SHARED_LIBRARIES := libaaudio
LOCAL_MODULE := write_sine_threaded_ndk
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := libaaudio_prebuilt
LOCAL_SRC_FILES := libaaudio.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)
