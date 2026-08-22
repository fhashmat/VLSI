% ============================================================
% Rules for Synthesized Prolog Model Version 1
% ============================================================

% ------------------------------------------------------------
% Valid A_sw -> M_sw relationship
% ------------------------------------------------------------

valid_asw_msw_pair(A_sw, M_sw) :-
    enables(A_sw, M_sw),
    asw(A_sw),
    msw(M_sw).

% ------------------------------------------------------------
% Relationship sanity checks
% These help catch typos or undeclared entities.
% ------------------------------------------------------------

invalid_enables(A_sw, M_sw, missing_asw_entity) :-
    enables(A_sw, M_sw),
    \+ asw(A_sw).

invalid_enables(A_sw, M_sw, missing_msw_entity) :-
    enables(A_sw, M_sw),
    \+ msw(M_sw).

% ------------------------------------------------------------
% Valid M_sw -> A_vlsi relationship
% ------------------------------------------------------------

valid_msw_avlsi_pair(M_sw, A_vlsi) :-
    realizes_in_vlsi(M_sw, A_vlsi),
    msw(M_sw),
    avlsi(A_vlsi).

invalid_realizes_in_vlsi(M_sw, A_vlsi, missing_msw_entity) :-
    realizes_in_vlsi(M_sw, A_vlsi),
    \+ msw(M_sw).

invalid_realizes_in_vlsi(M_sw, A_vlsi, missing_avlsi_entity) :-
    realizes_in_vlsi(M_sw, A_vlsi),
    \+ avlsi(A_vlsi).

% ------------------------------------------------------------
% A_vlsi -> Stage/Outcome derived rule
% ------------------------------------------------------------

causes(A_vlsi, Stage, Outcome) :-
    possible_at(A_vlsi, Stage),
    affects_outcome(A_vlsi, Outcome).

% ------------------------------------------------------------
% Validation checks
% ------------------------------------------------------------

valid_possible_at(A_vlsi, Stage) :-
    possible_at(A_vlsi, Stage),
    avlsi(A_vlsi),
    stage(Stage).

valid_affects_outcome(A_vlsi, Outcome) :-
    affects_outcome(A_vlsi, Outcome),
    avlsi(A_vlsi),
    outcome(Outcome).

valid_causes(A_vlsi, Stage, Outcome) :-
    causes(A_vlsi, Stage, Outcome),
    avlsi(A_vlsi),
    stage(Stage),
    outcome(Outcome).

invalid_possible_at(A_vlsi, Stage, missing_avlsi_entity) :-
    possible_at(A_vlsi, Stage),
    \+ avlsi(A_vlsi).

invalid_possible_at(A_vlsi, Stage, missing_stage_entity) :-
    possible_at(A_vlsi, Stage),
    \+ stage(Stage).

invalid_affects_outcome(A_vlsi, Outcome, missing_avlsi_entity) :-
    affects_outcome(A_vlsi, Outcome),
    \+ avlsi(A_vlsi).

invalid_affects_outcome(A_vlsi, Outcome, missing_outcome_entity) :-
    affects_outcome(A_vlsi, Outcome),
    \+ outcome(Outcome).
