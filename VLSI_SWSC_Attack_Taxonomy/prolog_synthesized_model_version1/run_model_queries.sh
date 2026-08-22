#!/usr/bin/env bash
set -euo pipefail

# Run this script to reproduce the main query results
# for Synthesized Prolog Model Version 1.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "============================================================"
echo "Synthesized Prolog Model Version 1"
echo "============================================================"
echo

echo "[1] Entity counts: A_sw, M_sw, A_vlsi, Stages, Outcomes"
swipl -q -s load.pl -g 'entity_counts(A,M,V,S,O), writeln((A,M,V,S,O)), halt.'
echo

echo "[2] A_sw -> M_sw relationship count and validation"
swipl -q -s load.pl -g 'count_asw_msw_pairs(N), count_valid_asw_msw_pairs(V), invalid_enables_list(L), writeln((total=N,valid=V,invalid=L)), halt.'
echo

echo "[3] M_sw -> A_vlsi relationship count and validation"
swipl -q -s load.pl -g 'count_msw_avlsi_pairs(N), count_valid_msw_avlsi_pairs(V), invalid_realizes_list(L), writeln((total=N,valid=V,invalid=L)), halt.'
echo

echo "[4] A_vlsi -> Stage/Outcome relationship counts and validation"
swipl -q -s load.pl -g 'count_possible_at_pairs(P), count_affects_outcome_pairs(O), count_causes_triples(C), invalid_stage_outcome_links(L), writeln((possible_at=P,affects_outcome=O,causes=C,invalid=L)), halt.'
echo

echo "[5] Total synthesized attack paths"
swipl -q -s load.pl -g 'count_attack_paths(N), writeln(N), halt.'
echo

echo "[6] Attack paths by outcome"
swipl -q -s load.pl -g 'attack_paths_by_outcome(L), writeln(L), halt.'
echo

echo "[7] Attack paths by stage"
swipl -q -s load.pl -g 'attack_paths_by_stage(L), writeln(L), halt.'
echo

echo "[8] Attack paths by A_vlsi"
swipl -q -s load.pl -g 'attack_paths_by_avlsi(L), writeln(L), halt.'
echo

echo "Done."
