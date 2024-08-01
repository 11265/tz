CC = xcrun -sdk iphoneos clang
CFLAGS = -Wall -arch arm64 -isysroot $(shell xcrun --sdk iphoneos --show-sdk-path) -fno-common -mkernel -nostdlib -fno-builtin -ffreestanding
LDFLAGS = -arch arm64 -isysroot $(shell xcrun --sdk iphoneos --show-sdk-path) -Xlinker -kext

TARGET = MyKernelExtension

$(TARGET): src/$(TARGET).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(TARGET)