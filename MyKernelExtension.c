#include <sys/types.h>
#include <sys/systm.h>
#include <mach/mach_types.h>
#include <libkern/libkern.h>

kern_return_t MyKernelExtension_start(kmod_info_t * ki, void *d) {
    printf("MyKernelExtension: Started\n");
    return KERN_SUCCESS;
}

kern_return_t MyKernelExtension_stop(kmod_info_t *ki, void *d) {
    printf("MyKernelExtension: Stopped\n");
    return KERN_SUCCESS;
}

extern kern_return_t _start(kmod_info_t *ki, void *data);
extern kern_return_t _stop(kmod_info_t *ki, void *data);

KMOD_EXPLICIT_DECL(com.example.MyKernelExtension, "1.0", _start, _stop)

__private_extern__ kern_return_t _start(kmod_info_t *ki, void *data)
{
    return MyKernelExtension_start(ki, data);
}

__private_extern__ kern_return_t _stop(kmod_info_t *ki, void *data)
{
    return MyKernelExtension_stop(ki, data);
}