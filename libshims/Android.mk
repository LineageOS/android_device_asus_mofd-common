LOCAL_PATH := $(call my-dir)

# Camera

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    gui/SensorManager.cpp \
    ui/GraphicBufferAllocator.cpp \
    ui/GraphicBuffer.cpp \
    ui/GraphicBufferMapper.cpp

LOCAL_SHARED_LIBRARIES := liblog libcutils libhardware libui libgui libbinder libsensor libutils libsync
LOCAL_MODULE := libshim_camera
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraParameters.cpp

LOCAL_MODULE := libshim_camera_parameters
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional

LOCAL_32_BIT_ONLY := true
include $(BUILD_SHARED_LIBRARY)

# ICU

include $(CLEAR_VARS)

LOCAL_SRC_FILES := icu55.c
LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE := libshim_icu
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

#GPSD

include $(CLEAR_VARS)

LOCAL_SRC_FILES := gpsd.cpp
LOCAL_SHARED_LIBRARIES := libgui libsensor
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE := libshim_gpsd
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# sensors

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     icu53.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE := libshim_sensors
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
