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
