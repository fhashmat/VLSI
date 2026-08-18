% Helper queries for demonstrating the Prolog attack-path model.

count_final_paths(N) :-
    setof(path(A_sw, A_vlsi, M_sw, M_vlsi, S, O),
          attack_path(A_sw, A_vlsi, M_sw, M_vlsi, S, O),
          Paths),
    length(Paths, N).

count_candidate_paths(N) :-
    setof(path(A_sw, A_vlsi, M_sw, M_vlsi, S, O),
          candidate_attack_path(A_sw, A_vlsi, M_sw, M_vlsi, S, O),
          Paths),
    length(Paths, N).

count_outcome(Outcome, N) :-
    setof(path(A_sw, A_vlsi, M_sw, M_vlsi, S),
          attack_path(A_sw, A_vlsi, M_sw, M_vlsi, S, Outcome),
          Paths),
    length(Paths, N).

count_stage(Stage, N) :-
    setof(path(A_sw, A_vlsi, M_sw, M_vlsi, O),
          attack_path(A_sw, A_vlsi, M_sw, M_vlsi, Stage, O),
          Paths),
    length(Paths, N).

show_outcome_breakdown :-
    count_outcome(confidentiality, C),
    count_outcome(integrity, I),
    count_outcome(availability, A),
    format('confidentiality-~w~n', [C]),
    format('integrity-~w~n', [I]),
    format('availability-~w~n', [A]).

show_stage_breakdown :-
    setof(S,
          A_sw^A_vlsi^M_sw^M_vlsi^O^attack_path(A_sw, A_vlsi, M_sw, M_vlsi, S, O),
          Stages),
    forall(member(S, Stages),
           (count_stage(S, N),
            format('~w-~w~n', [S, N]))).

show_example_path :-
    once(attack_path(typosquatting, A_vlsi, M_sw, M_vlsi, S, O)),
    format('typosquatting -> ~w -> ~w -> ~w -> ~w -> ~w~n',
           [M_sw, M_vlsi, A_vlsi, S, O]).

run_summary :-
    count_final_paths(Final),
    count_candidate_paths(Candidate),
    format('final_attack_paths-~w~n', [Final]),
    format('candidate_review_paths-~w~n', [Candidate]),
    nl,
    writeln('outcome_breakdown:'),
    show_outcome_breakdown,
    nl,
    writeln('stage_breakdown:'),
    show_stage_breakdown,
    nl,
    writeln('example_path:'),
    show_example_path.
