LOCAL_PATH:=$(call my-dir)
MY_LOCAL_PATH := $(LOCAL_PATH)
include $(CLEAR_VARS)

include $(MY_LOCAL_PATH)/libreadline/Android.mk
include $(MY_LOCAL_PATH)/ncurses/Android.mk
include $(MY_LOCAL_PATH)/sqlite3/Android.mk