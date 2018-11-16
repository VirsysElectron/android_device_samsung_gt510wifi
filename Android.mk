LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gt510wifi)

	include $(call all-makefiles-under,$(LOCAL_PATH))

	include $(CLEAR_VARS)

# Create links for audcal data files
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wcd9306; \
	ln -sf /data/misc/audio/wcd9306_anc.bin \
		$(TARGET_OUT)/etc/firmware/wcd9306/wcd9306_anc.bin;\
	ln -sf /data/misc/audio/mbhc.bin \
		$(TARGET_OUT)/etc/firmware/wcd9306/wcd9306_mbhc.bin;)
endif
