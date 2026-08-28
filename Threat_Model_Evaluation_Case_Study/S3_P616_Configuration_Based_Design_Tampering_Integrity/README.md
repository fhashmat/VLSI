# S3: IA2T2: Distribute EDA Input Artifacts to Produce Unavailable Designs

This folder contains files for reproducing the IA2T2 case-study attack.
## IA2T2 Attack: Distribute EDA input Artifacts to Produce
Unavailable Designs

### Goal
Demonstrate how a trojanized runtime dependency used by an EDA tool can silently alter synthesis behavior during execution, resulting in the insertion of malicious logic into the generated circuit.

---

### Target
- **Tool:** Yosys  
- **Library:** libreadline.so.8  
- **Intercepted Function:** `readline()`  
- **Stage Affected:** Stage 2 — Synthesis  
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
The attack demonstrates that distributing a trojanized runtime dependency enables silent modification of synthesis behavior, allowing attackers to insert malicious hardware logic without modifying the EDA tool source code.
