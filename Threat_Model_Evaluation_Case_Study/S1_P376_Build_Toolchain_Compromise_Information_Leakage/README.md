# S1: CA1T1: Distribute Backdoored EDA Tool

This folder contains files for reproducing the CA1T1 case-study attack.


## CA1T1 Attack: Backdoored Library Intercepting gzread() (Design Data Leakage)

### Goal
Demonstrate how a modified third-party compression library used by an EDA tool can silently leak confidential design data during normal execution.

---

### Target
- **Tool:** Yosys
- **Library:** libz.so.1
- **Intercepted Function:** `gzread()`
- **Stage Affected:** Stage 2 — Synthesis
- **Security Impact:** Confidentiality violation (design/IP leakage)

---

### Step 1 — Prepare Input Design
Compress a Verilog file to trigger gzip processing:

```bash
gzip -c original_verilog.v > original_verilog.v.gz
```

---

### Step 2 — Create Malicious Wrapper Library
Create a wrapper (`trojan_z.c`) that intercepts `gzread()` and copies the decompressed data to an external file.

---

### Step 3 — Compile the Trojan Library

```bash
gcc -Wall -fPIC -shared -o libz_trojan.so trojan_z.c -ldl -lz
```

---

### Step 4 — Run Yosys with LD_PRELOAD

```bash
LD_PRELOAD=./libz_trojan.so yosys
```

Inside Yosys:

```bash
read_verilog original_verilog.v.gz
```

---

### Step 5 — Observe the Leak
After execution, the following files will be generated:

- `CA1T1_leaked_design.v` → leaked Verilog contents
- `called_log.txt` → function invocation log

These files contain the decompressed design data captured during normal tool execution.

---

### Impact
The attack demonstrates that modifying a commonly used third-party dependency allows an attacker to silently exfiltrate sensitive design data without affecting tool functionality.
