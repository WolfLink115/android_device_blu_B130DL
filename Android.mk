ifneq ($(filter B130DL,$(TARGET_DEVICE)),)

LOCAL_PATH := device/blu/B130DL

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
