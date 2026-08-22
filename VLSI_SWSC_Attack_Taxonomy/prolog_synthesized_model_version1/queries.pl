% ============================================================
% Query helpers for Synthesized Prolog Model Version 1
% ============================================================

% ------------------------------------------------------------
% Useful manual test command:
%
% cd ~/VLSI/VLSI_SWSC_Attack_Taxonomy/prolog_synthesized_model_version1
% swipl -q -s load.pl -g "entity_counts(A,M,V,S,O), writeln((A,M,V,S,O)), halt."
%
% Expected output:
% 7,8,8,7,3
% ------------------------------------------------------------

count_asw(N) :-
    findall(A, asw(A), L),
    length(L, N).

count_msw(N) :-
    findall(M, msw(M), L),
    length(L, N).

count_avlsi(N) :-
    findall(A, avlsi(A), L),
    length(L, N).

count_stages(N) :-
    findall(S, stage(S), L),
    length(L, N).

count_outcomes(N) :-
    findall(O, outcome(O), L),
    length(L, N).

entity_counts(A_sw, M_sw, A_vlsi, Stages, Outcomes) :-
    count_asw(A_sw),
    count_msw(M_sw),
    count_avlsi(A_vlsi),
    count_stages(Stages),
    count_outcomes(Outcomes).

% ------------------------------------------------------------
% Relationship counts
% ------------------------------------------------------------

count_asw_msw_pairs(N) :-
    findall((A_sw, M_sw), enables(A_sw, M_sw), L),
    length(L, N).

count_valid_asw_msw_pairs(N) :-
    findall((A_sw, M_sw), valid_asw_msw_pair(A_sw, M_sw), L),
    length(L, N).

count_msw_avlsi_pairs(N) :-
    findall((M_sw, A_vlsi), realizes_in_vlsi(M_sw, A_vlsi), L),
    length(L, N).

count_valid_msw_avlsi_pairs(N) :-
    findall((M_sw, A_vlsi), valid_msw_avlsi_pair(M_sw, A_vlsi), L),
    length(L, N).

count_possible_at_pairs(N) :-
    findall((A_vlsi, Stage), possible_at(A_vlsi, Stage), L),
    length(L, N).

count_affects_outcome_pairs(N) :-
    findall((A_vlsi, Outcome), affects_outcome(A_vlsi, Outcome), L),
    length(L, N).

count_causes_triples(N) :-
    findall((A_vlsi, Stage, Outcome), causes(A_vlsi, Stage, Outcome), L),
    length(L, N).

% ------------------------------------------------------------
% Final synthesized attack path queries
% ------------------------------------------------------------

count_attack_paths(N) :-
    findall((A_sw, M_sw, A_vlsi, Stage, Outcome),
            attack_path(A_sw, M_sw, A_vlsi, Stage, Outcome),
            L),
    length(L, N).

count_attack_paths_by_outcome(Outcome, N) :-
    outcome(Outcome),
    findall((A_sw, M_sw, A_vlsi, Stage),
            attack_path(A_sw, M_sw, A_vlsi, Stage, Outcome),
            L),
    length(L, N).

attack_paths_by_outcome(L) :-
    findall(Outcome-N,
            count_attack_paths_by_outcome(Outcome, N),
            L).

count_attack_paths_by_stage(Stage, N) :-
    stage(Stage),
    findall((A_sw, M_sw, A_vlsi, Outcome),
            attack_path(A_sw, M_sw, A_vlsi, Stage, Outcome),
            L),
    length(L, N).

attack_paths_by_stage(L) :-
    findall(Stage-N,
            count_attack_paths_by_stage(Stage, N),
            L).

count_attack_paths_by_avlsi(A_vlsi, N) :-
    avlsi(A_vlsi),
    findall((A_sw, M_sw, Stage, Outcome),
            attack_path(A_sw, M_sw, A_vlsi, Stage, Outcome),
            L),
    length(L, N).

attack_paths_by_avlsi(L) :-
    findall(A_vlsi-N,
            count_attack_paths_by_avlsi(A_vlsi, N),
            L).
