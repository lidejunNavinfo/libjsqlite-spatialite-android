include $(CLEAR_VARS)
# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi
LOCAL_MODULE    := lzma

LOCAL_CFLAGS    := \
	$(lzma_flags)

LOCAL_C_INCLUDES := \
 $(LZMA_PATH)/api \
 $(LZMA_PATH)/common \
 $(LZMA_PATH)/lzma
LOCAL_SRC_FILES := \
	$(LZMA_PATH)/lzma/fastpos_table.c \
	$(LZMA_PATH)/lzma/fastpos_tablegen.c \
	$(LZMA_PATH)/lzma/lzma2_decoder.c \
	$(LZMA_PATH)/lzma/lzma2_encoder.c \
	$(LZMA_PATH)/lzma/lzma_decoder.c \
	$(LZMA_PATH)/lzma/lzma_encoder.c \
	$(LZMA_PATH)/lzma/lzma_encoder_optimum_fast.c \
	$(LZMA_PATH)/lzma/lzma_encoder_optimum_normal.c \
	$(LZMA_PATH)/lzma/lzma_encoder_presets.c
include $(BUILD_STATIC_LIBRARY)
