% ============================================================
% Query helpers
% ============================================================

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
