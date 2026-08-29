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
│   ├── README.md
│   ├── data/
│   │   ├── Asw/
│   │   ├── Avlsi/
│   │   ├── asw_avlsi_bridge_mapping.csv
│   │   ├── model_synthesis_v1/
│   │   └── feasibility_v1/
│   ├── prolog_synthesized_model_version1/
│   ├── prolog_feasibility_model_version1/
│   └── archive/
│
└── README.md
```
# VLSI-SWSC Attack Taxonomy and Prolog Models

The `VLSI_SWSC_Attack_Taxonomy/` directory contains the data and Prolog implementations used to construct and evaluate the VLSI-SWSC attack taxonomy.

The model follows:

`A_sw -> M_sw -> A_vlsi -> Stage -> Outcome`

## Taxonomy Data

The `data/` directory contains:

- `Asw/` — software supply-chain attack-vector extraction and mechanism mappings.
- `Avlsi/` — VLSI-side attack extraction and mechanism mappings.
- `asw_avlsi_bridge_mapping.csv` — mappings connecting software-side mechanisms to VLSI-side attacks.
- `model_synthesis_v1/` — synthesized model outputs, including 717 possible attack paths.
- `feasibility_v1/` — empirical evidence and feasibility results for the synthesized paths.

## Prolog Models

### Synthesized Attack Model

`prolog_synthesized_model_version1/` contains the Prolog implementation used to generate the 717 possible attack paths.

### Feasibility Model

`prolog_feasibility_model_version1/` contains the Prolog implementation used to classify the synthesized paths as:

- 60 High
- 346 Medium
- 311 Low

These labels indicate empirical support and do not imply experimental validation of all paths.



## Tool Setup

The Threat_Model_Evaluation_Case_Study/Tools/ directory contains setup notes for the open-source VLSI tools used in the case studies.

```text
Threat_Model_Evaluation_Case_Study/Tools/Yosys/
Threat_Model_Evaluation_Case_Study/Tools/OpenTimer/
```

## Requirements

The artifact was prepared for a Linux environment. The following packages are generally required:

```text
sudo apt-get update
sudo apt-get install -y gcc make git cmake g++ python3 zlib1g-dev libreadline-dev
```

Additional tool-specific dependencies are listed in the corresponding files under Threat_Model_Evaluation_Case_Study/Tools/.

## Running the Case Studies

Each case-study folder contains its own README with the exact steps for reproducing the corresponding taxonomy-derived attack.

A typical workflow is:

1. Build or install the required open-source tool.
2. Compile the provided wrapper library.
3. Run the tool in a controlled test environment.
4. Observe the generated output files or design changes.
5. Compare the observed result with the expected security impact.







