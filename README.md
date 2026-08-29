# VLSI Software Supply Chain Security Artifact

This repository contains reproducibility artifacts for software supply chain attacks and taxonomy-based attack analysis in VLSI design flows.

## Repository Structure

```text
VLSI/

├── Threat_Model_Evaluation_Case_Study/
│   ├── README.md
│   ├── S1_P376_Build_Toolchain_Compromise_Information_Leakage/
│   ├── S2_P703_Configuration_Based_Flow_Disruption_Availability/
│   ├── S3_P616_Configuration_Based_Design_Tampering_Integrity/
│   └── Tools/
│       ├── Yosys/
│       └── OpenTimer/
│
├── VLSI_SWSC_Attack_Taxonomy/
│
└── README.md
```
Tool Setup

The Threat_Model_Evaluation_Case_Study/Tools/ directory contains setup notes for the open-source VLSI tools used in the case studies.

Threat_Model_Evaluation_Case_Study/Tools/Yosys/
Threat_Model_Evaluation_Case_Study/Tools/OpenTimer/

Requirements

The artifact was prepared for a Linux environment. The following packages are generally required:

sudo apt-get update
sudo apt-get install -y gcc make git cmake g++ python3 zlib1g-dev libreadline-dev

Additional tool-specific dependencies are listed in the corresponding files under Threat_Model_Evaluation_Case_Study/Tools/.

Running the Case Studies

Each case-study folder contains its own README with the exact steps for reproducing the corresponding taxonomy-derived attack.

A typical workflow is:

Build or install the required open-source tool.
Compile the provided wrapper library.
Run the tool in a controlled test environment.
Observe the generated output files or design changes.
Compare the observed result with the expected security impact.


Two important changes here:
- `Tools/` is now correctly nested under the case-study folder.
- The taxonomy folder is now visible in the root structure.

Later, after we finish the taxonomy READMEs, we can add one short section explaining the `717` synthesized paths and feasibility artifacts.




