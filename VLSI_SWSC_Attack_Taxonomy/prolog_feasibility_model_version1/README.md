# Prolog Feasibility Model v1

This folder contains the Prolog feasibility layer for the synthesized VLSI SWSC attack-path model.

The core model generates possible paths:

A_sw -> M_sw -> A_vlsi -> Stage -> Outcome

The feasibility layer classifies those possible paths as High, Medium, or Low.

The feasibility labels are evidence-support labels. They do not mean that an attack has been fully validated.

## Files

- feasibility_entities.pl: category-level feasibility support for A_sw, M_sw, A_vlsi, and observed stages.
- feasibility_evidence_facts.pl: raw evidence facts E1-E50 and evidence-to-category mappings M1-M40.
- feasibility_rules.pl: High/Medium/Low feasibility scoring rules.
- load.pl: loads the core synthesized model and the feasibility layer.
- queries.pl: query helpers for feasibility and evidence counts.
- run_feasibility_queries.sh: runs the main feasibility summary query.

## Current result

High feasibility paths: 60
Medium feasibility paths: 346
Low feasibility paths: 311
Total scored paths: 717
Raw evidence facts: 50
Evidence-to-category mappings: 40

## How to run

From the repository root:

./prolog_feasibility_model_version1/run_feasibility_queries.sh

## Interpretation

The core Prolog model enumerates possible paths. The feasibility Prolog layer applies evidence support from Tables 1-3 and Figure 3 to classify those paths.

High means the main parts of the path have evidence support. Medium means some important parts have evidence support, but not all. Low means the path is possible in the model, but the current v1 evidence layer does not support it enough for discussion.
