#include <mach/mach_types.h>
#include <libkern/libkern.h>

kern_return_t MyKernelExtension_start(kmod_info_t * ki, void *d);
kern_return_t MyKernelExtension_stop(kmod_info_t *ki, void *d);

kern_return_t MyKernelExtension_start(kmod_info_t * ki, void *d)
{
    printf("MyKernelExtension: started\n");
    return KERN_SUCCESS;
}

kern_return_t MyKernelExtension_stop(kmod_info_t *ki, void *d)
{
    printf("MyKernelExtension: stopped\n");
    return KERN_SUCCESS;
}