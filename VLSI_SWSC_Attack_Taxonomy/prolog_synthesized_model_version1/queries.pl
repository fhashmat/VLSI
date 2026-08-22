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
%
% Meaning:
% A_sw   = 7
% M_sw   = 8
% A_vlsi = 8
% Stages = 7
% Outcomes = 3
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
