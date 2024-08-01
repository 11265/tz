THEOS_DEVICE_IP = 127.0.0.1
ARCHS = arm64
TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = MyKernelExtension

$(LIBRARY_NAME)_FILES = MyKernelExtension.c
$(LIBRARY_NAME)_CFLAGS = -fobjc-arc
$(LIBRARY_NAME)_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries
$(LIBRARY_NAME)_LIBRARIES = substrate

include $(THEOS_MAKE_PATH)/library.mk