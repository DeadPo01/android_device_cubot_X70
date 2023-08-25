#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The Team Win Recovery Project
#


LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),X70)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
