# Copyright 2005 The Android Open Source Project
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)


#some devices doesn't have lights module sholest as xt720
ifeq ($(TARGET_DEVICE), sholest)
LOCAL_CFLAGS += -DNO_LIGHTS_MODULE
endif


LOCAL_SRC_FILES:= \
	alarm.c \
	draw.c \
	events.c \
	hardware.c \
	screen.c \
	main.c

LOCAL_STATIC_LIBRARIES := libunz libcutils libc
LOCAL_SHARED_LIBRARIES := libhardware
LOCAL_C_INCLUDES := external/zlib
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= charge_only_mode

include $(BUILD_EXECUTABLE)

