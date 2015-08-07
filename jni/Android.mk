LOCAL_PATH:=$(call my-dir)
 
include $(CLEAR_VARS)
LOCAL_MODULE    := libreadline
LOCAL_SRC_FILES := libreadline/libreadline.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libhistory
LOCAL_SRC_FILES := libreadline/libhistory.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/sqlite.h $(LOCAL_PATH)/libreadline/include
LOCAL_MODULE:=sqlite3
LOCAL_SRC_FILES:=sqlite3.c shell.c
LOCAL_CFLAGS += -D HAVE_READLINE=1 -D READLINE_LIBRARY=1
LOCAL_STATIC_LIBRARIES := libreadline libhistory

include $(BUILD_EXECUTABLE)