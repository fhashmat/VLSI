# Feasibility Analysis v1

This folder contains the feasibility layer for the synthesized VLSI-SWSC attack-path model.

The Prolog model enumerates possible attack paths. The feasibility layer does not alter the synthesized model; instead, it evaluates the empirical support for each model-generated path using evidence from the paper, including tool behavior, dependency exposure, CVEs, third-party library percentages, static-linking exposure, and library exposure across VLSI design stages.

The feasibility labels are evidence-support labels and do not indicate that every generated attack path has been experimentally validated.

## Files

- `feasibility_evidence_v1.csv`  
  Contains the empirical evidence used for feasibility analysis, including evidence identifiers, model layers, related tools and stages, measured properties, evidence sources, feasibility signals, and mapping rationales.

- `category_feasibility_summary_v1.csv`  
  Aggregates the evidence support for each `A_sw`, `M_sw`, and `A_vlsi` category and assigns category-level High, Medium, or Low feasibility support.

- `scored_possible_attack_paths_v1.csv`  
  Contains all 717 synthesized attack paths together with their `A_sw`, `M_sw`, `A_vlsi`, stage, outcome, supporting evidence identifiers, and final path-level feasibility classification.

- `high_feasibility_attack_paths_v1.csv`  
  Contains the 60 attack paths classified as High feasibility.

- `feasibility_results_summary_v1.csv`  
  Provides aggregate counts for the feasibility results.

- `generate_feasible_attack_paths_v1.py`  
  Applies the feasibility rubric to the synthesized attack paths using the category-level evidence summary and observed-stage evidence, generating the scored path dataset.

- `verify_feasibility_consistency_v1.py`  
  Verifies consistency between the CSV feasibility results and the Prolog feasibility model, including the expected counts of 60 High, 346 Medium, 311 Low, 717 total paths, 50 evidence facts, and 40 evidence mappings.

## Feasibility Rubric

In this rubric, `✓` indicates that the corresponding model component has sufficient evidence support in the current v1 evidence layer, while `✗` indicates insufficient support.

| A_sw evidence | M_sw evidence | A_vlsi evidence | Stage evidence | Final label |
|---|---|---|---|---|
| ✓ | ✓ | ✓ | ✓ | High |
| ✓ | ✓ | ✗ | ✓ / ✗ | Medium |
| ✓ | ✗ | ✓ / ✗ | ✓ | Medium |
| ✗ | ✓ | ✓ / ✗ | ✓ | Medium |
| ✓ / ✗ | ✓ / ✗ | ✓ | ✓, plus A_sw or M_sw has evidence | Medium |
| ✗ | ✗ | ✓ / ✗ | ✓ / ✗ | Low |

## Result Summary

The current feasibility evaluation produces:

- **60 High-feasibility paths**
- **346 Medium-feasibility paths**
- **311 Low-feasibility paths**
- **717 total synthesized paths**

The feasibility layer uses **50 empirical evidence facts** and **40 evidence-to-category mappings**.

## Interpretation

A High-feasibility path is a model-generated possible attack path with stronger empirical support under the current evidence set. Medium indicates partial support, while Low indicates limited support under the current evidence. These classifications prioritize model-generated paths for analysis and do not constitute experimental validation of all 717 attacks.
