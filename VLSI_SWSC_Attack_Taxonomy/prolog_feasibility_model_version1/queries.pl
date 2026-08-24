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

% ============================================================
% High-feasibility breakdown queries
% ============================================================

high_by_asw(A_sw, Count) :-
    category_feasibility(asw, A_sw, _),
    aggregate_all(
        count,
        distinct((M_sw, A_vlsi, Stage, Outcome),
                 high_feasibility_path(A_sw, M_sw, A_vlsi, Stage, Outcome)),
        Count
    ),
    Count > 0.

high_by_msw(M_sw, Count) :-
    category_feasibility(msw, M_sw, _),
    aggregate_all(
        count,
        distinct((A_sw, A_vlsi, Stage, Outcome),
                 high_feasibility_path(A_sw, M_sw, A_vlsi, Stage, Outcome)),
        Count
    ),
    Count > 0.

high_by_avlsi(A_vlsi, Count) :-
    category_feasibility(avlsi, A_vlsi, _),
    aggregate_all(
        count,
        distinct((A_sw, M_sw, Stage, Outcome),
                 high_feasibility_path(A_sw, M_sw, A_vlsi, Stage, Outcome)),
        Count
    ),
    Count > 0.

high_by_stage(Stage, Count) :-
    stage(Stage),
    aggregate_all(
        count,
        distinct((A_sw, M_sw, A_vlsi, Outcome),
                 high_feasibility_path(A_sw, M_sw, A_vlsi, Stage, Outcome)),
        Count
    ),
    Count > 0.

high_by_outcome(Outcome, Count) :-
    outcome(Outcome),
    aggregate_all(
        count,
        distinct((A_sw, M_sw, A_vlsi, Stage),
                 high_feasibility_path(A_sw, M_sw, A_vlsi, Stage, Outcome)),
        Count
    ),
    Count > 0.

print_high_breakdowns :-
    writeln('High feasibility paths by A_sw:'),
    forall(high_by_asw(A, C), format('~w: ~w~n', [A, C])),
    nl,
    writeln('High feasibility paths by M_sw:'),
    forall(high_by_msw(M, C), format('~w: ~w~n', [M, C])),
    nl,
    writeln('High feasibility paths by A_vlsi:'),
    forall(high_by_avlsi(V, C), format('~w: ~w~n', [V, C])),
    nl,
    writeln('High feasibility paths by Stage:'),
    forall(high_by_stage(S, C), format('~w: ~w~n', [S, C])),
    nl,
    writeln('High feasibility paths by Outcome:'),
    forall(high_by_outcome(O, C), format('~w: ~w~n', [O, C])).
