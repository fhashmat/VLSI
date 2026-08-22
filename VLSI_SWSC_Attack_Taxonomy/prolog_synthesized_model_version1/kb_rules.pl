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
% Valid M_sw -> A_vlsi relationship
% ------------------------------------------------------------

valid_msw_avlsi_pair(M_sw, A_vlsi) :-
    realizes_in_vlsi(M_sw, A_vlsi),
    msw(M_sw),
    avlsi(A_vlsi).

% ------------------------------------------------------------
% A_vlsi -> Stage/Outcome derived rule
% ------------------------------------------------------------

causes(A_vlsi, Stage, Outcome) :-
    possible_at(A_vlsi, Stage),
    affects_outcome(A_vlsi, Outcome).

valid_causes(A_vlsi, Stage, Outcome) :-
    causes(A_vlsi, Stage, Outcome),
    avlsi(A_vlsi),
    stage(Stage),
    outcome(Outcome).

% ------------------------------------------------------------
% Final synthesized attack path rule
%
% Modeled path:
% A_sw -> M_sw -> A_vlsi -> Stage -> Outcome
% ------------------------------------------------------------

attack_path(A_sw, M_sw, A_vlsi, Stage, Outcome) :-
    valid_asw_msw_pair(A_sw, M_sw),
    valid_msw_avlsi_pair(M_sw, A_vlsi),
    valid_causes(A_vlsi, Stage, Outcome).
