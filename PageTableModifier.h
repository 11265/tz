#ifndef PageTableModifier_h
#define PageTableModifier_h

#include <mach/mach_types.h>

kern_return_t modify_page_table(pid_t source_pid, pid_t target_pid, vm_address_t source_addr, vm_address_t target_addr, vm_size_t size);

#endif /* PageTableModifier_h */