ARCHS = arm64
TARGET = iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = PageTableModifier

PageTableModifier_FILES = PageTableModifier.c
PageTableModifier_CFLAGS = -fobjc-arc
PageTableModifier_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries
PageTableModifier_FRAMEWORKS = Foundation

include $(THEOS_MAKE_PATH)/library.mk