CC = xcrun -sdk iphoneos clang
CFLAGS = -Wall -Wextra -arch arm64 -isysroot $(shell xcrun --sdk iphoneos --show-sdk-path) -fno-common -mkernel -nostdlib -fno-builtin -ffreestanding -DKERNEL -DKERNEL_PRIVATE -DDRIVER_PRIVATE -DAPPLE -DNeXT
LDFLAGS = -arch arm64 -isysroot $(shell xcrun --sdk iphoneos --show-sdk-path) -Xlinker -kext -nostdlib -lkmod -lcc_kext

TARGET = MyKernelExtension

$(TARGET): src/$(TARGET).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(TARGET)