#include <stdlib.h>
#include <sys/syscall.h>

int dup(int old_fd)
{
    int ret;
    __asm__ volatile
    (
    "int $0x80;"
    : "=a" (ret)
    : "0"(SYS_dup), "D"(old_fd)
    : "cc", "rcx", "r11", "memory"
    );
    return ret;
}


