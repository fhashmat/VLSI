# P376: Build/Toolchain Compromise Leading to Information Leakage

This folder contains files for reproducing the P376 case-study attack.
This case study corresponds to taxonomy path **P376**:

- **$A_{\mathrm{sw}}$ — Build/Toolchain Compromise:** the attacker compromises a software component used in the VLSI toolchain.
- **$M_{\mathrm{sw}}$ — Build/Toolchain Execution Control:** the compromise gives the attacker control over code executed during the tool flow.
- **$A_{\mathrm{vlsi}}$ — Information Leakage or Asset Exposure:** the compromised execution is used to expose confidential design data.
- **Stage:** Logic Synthesis.
- **Outcome:** Confidentiality.


## P376 Attack: Backdoored Library Intercepting gzread() (Design Data Leakage)

### Goal
Demonstrate how a modified third-party compression library used by an EDA tool can silently leak confidential design data during normal execution.

---

### Target
- **Tool:** Yosys
- **Library:** libz.so.1
- **Intercepted Function:** `gzread()`
- **Stage Affected:** Stage 2 — Logic Synthesis
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
