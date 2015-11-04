LOCAL_PATH:=$(call my-dir)
 
include $(CLEAR_VARS)
LOCAL_MODULE    := libreadline
LOCAL_SRC_FILES := libreadline.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libhistory
LOCAL_SRC_FILES := libhistory.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libncurses
LOCAL_SRC_FILES := libncurses.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/sqlite.h\
$(LOCAL_PATH)/../../libreadline\
$(LOCAL_PATH)/../../ncurses/include\

LOCAL_MODULE:=sqlite3
LOCAL_SRC_FILES:=sqlite3.c shell.c
LOCAL_CFLAGS += -D HAVE_READLINE=1 -D READLINE_LIBRARY=1
LOCAL_STATIC_LIBRARIES := libreadline libhistory libncurses

include $(BUILD_EXECUTABLE)