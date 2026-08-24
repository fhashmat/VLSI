# Feasibility Analysis v1

This folder contains the feasibility layer for the synthesized VLSI SWSC attack-path model.

The Prolog model enumerates possible attack paths. The feasibility layer does not change the model. Instead, it assigns evidence-support levels to model-generated paths using empirical evidence from the paper, including tool behavior, dependency exposure, CVEs, third-party library percentages, static-linking exposure, and Figure 3 library exposure.

## Files

- `feasibility_evidence_v1.csv`: manually curated evidence from Tables 1–3 and Figure 3, together with evidence-to-model-category mappings.
- `scored_possible_attack_paths_v1.csv`: all model-generated possible attack paths with path-level feasibility scores.

## Feasibility rubric

The feasibility labels are evidence-support labels. They do not mean that an attack has been fully validated.

In this rubric, `✓` means that the corresponding part has evidence support in the current v1 evidence layer, and `✗` means that the current v1 evidence layer does not support that part enough.

| A_sw evidence | M_sw evidence | A_vlsi evidence | Stage evidence | Final label |
|---|---|---|---|---|
| ✓ | ✓ | ✓ | ✓ | High |
| ✓ | ✓ | ✗ | ✓ / ✗ | Medium |
| ✓ | ✗ | ✓ / ✗ | ✓ | Medium |
| ✗ | ✓ | ✓ / ✗ | ✓ | Medium |
| ✓ / ✗ | ✓ / ✗ | ✓ | ✓, plus A_sw or M_sw has evidence | Medium |
| ✗ | ✗ | ✓ / ✗ | ✓ / ✗ | Low |

Simple interpretation:

- High: all main parts of the path have evidence support.
- Medium: some important parts have evidence support, but not all.
- Low: the path is possible in the model, but the current v1 evidence layer does not support it enough for discussion.

## Important interpretation

The model output should be interpreted as possible paths. The feasibility layer prioritizes these paths based on empirical support. Therefore, a high-feasibility path is not claimed to be a validated attack; it is a model-generated path with stronger empirical support in the current dataset.
