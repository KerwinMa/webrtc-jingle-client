LOCAL_PATH:= $(MY_GTEST_PATH)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
        $(MY_GTEST_PATH) \
        $(MY_GTEST_PATH)/include
LOCAL_MODULE:= gunit

ifeq ($(TARGET_ARCH),x86)
LOCAL_CFLAGS:= \
	-DGTEST_HAS_CLONE=0
endif

LOCAL_SRC_FILES:= src/gtest-all.cc
LOCAL_CPP_EXTENSION:= .cc
include $(BUILD_STATIC_LIBRARY)
