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
