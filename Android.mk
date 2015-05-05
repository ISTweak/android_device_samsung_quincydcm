ifneq ($(filter quincydcm,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
