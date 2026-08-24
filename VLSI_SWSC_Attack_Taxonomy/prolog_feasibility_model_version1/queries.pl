% ============================================================
% Query helpers for feasibility model
% ============================================================

feasibility_counts(H, M, L, T) :-
    count_high_feasibility_paths(H),
    count_medium_feasibility_paths(M),
    count_low_feasibility_paths(L),
    count_all_feasibility_paths(T).

print_feasibility_counts :-
    feasibility_counts(H, M, L, T),
    format('High feasibility paths: ~w~n', [H]),
    format('Medium feasibility paths: ~w~n', [M]),
    format('Low feasibility paths: ~w~n', [L]),
    format('Total scored paths: ~w~n', [T]).

evidence_counts(E, M) :-
    aggregate_all(count, evidence(_, _, _, _, _, _, _, _), E),
    aggregate_all(count, evidence_mapping(_, _, _, _, _), M).

print_evidence_counts :-
    evidence_counts(E, M),
    format('Raw evidence facts: ~w~n', [E]),
    format('Evidence-to-category mappings: ~w~n', [M]).

print_all_counts :-
    print_feasibility_counts,
    print_evidence_counts.
