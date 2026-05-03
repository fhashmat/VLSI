# VLSI Software Supply Chain Security Artifact

This repository contains the reproducibility artifacts for a research case study on software supply chain attacks in VLSI design flows.

## Repository Structure

```text
VLSI/
├── Threat_Model_Evaluation_Case_Study/
│   ├── S1_CA1T1_Distribute_Backdoored_EDA_Tool/
│   ├── S2_AA2T2_Remove_or_Add_Extra_Input_Artifacts/
│   └── S3_IA2T2_Distribute_EDA_Input_Artifacts_to_Produce_Unavailable_Designs/
│
├── Tools/
│   ├── Yosys/
│   └── OpenTimer/
│
└── README.md
```
## Tool Setup
The Tools/ directory contains setup notes for open-source VLSI tools used in the artifact.
```text
Tools/Yosys/
Tools/OpenTimer/
```
## Requirements
The artifact was prepared for a Linux environment. The following packages are generally required:
```bash
sudo apt-get update
sudo apt-get install -y gcc make git cmake g++ python3 zlib1g-dev libreadline-dev
```
