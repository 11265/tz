#include <mach/mach_types.h>
#include <libkern/libkern.h>
#include <IOKit/IOLib.h>

kern_return_t MyKext_start(kmod_info_t *ki, void *d);
kern_return_t MyKext_stop(kmod_info_t *ki, void *d);

kern_return_t MyKext_start(kmod_info_t *ki, void *d) {
    IOLog("MyKext has been loaded!\n");
    return KERN_SUCCESS;
}

kern_return_t MyKext_stop(kmod_info_t *ki, void *d) {
    IOLog("MyKext is being unloaded!\n");
    return KERN_SUCCESS;
}

__attribute__((visibility("default"))) kern_return_t start(kmod_info_t *ki, void *d) {
    return MyKext_start(ki, d);
}

__attribute__((visibility("default"))) kern_return_t stop(kmod_info_t *ki, void *d) {
    return MyKext_stop(ki, d);
}
