CC = clang
CFLAGS = -Wall -arch arm64 -isysroot $(shell xcrun --sdk iphoneos --show-sdk-path)
LDFLAGS = -arch arm64 -isysroot $(shell xcrun --sdk iphoneos --show-sdk-path)

TARGET = MyKernelExtension

$(TARGET): src/$(TARGET).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(TARGET)