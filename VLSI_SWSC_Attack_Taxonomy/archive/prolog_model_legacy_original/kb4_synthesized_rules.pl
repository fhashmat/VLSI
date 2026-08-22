% Pass-1 synthesized attack paths.
% Clean model:
% A_sw_pass1 -> M_sw_pass1 -> A_vlsi_pass1 -> Stage -> Outcome
%
% M_vlsi_raw is used only internally to derive the bridge from old facts.
% It is not part of the counted synthesized path.

% -------------------------------------------------
% A_sw Pass 1 -> M_sw Pass 1
% -------------------------------------------------

asw_msw_pass1(A_sw_p1, M_sw_p1) :-
    enables(A_sw_raw, M_sw_raw),
    asw_pass1(A_sw_raw, A_sw_p1),
    msw_pass1(M_sw_raw, M_sw_p1).

% -------------------------------------------------
% M_sw Pass 1 -> A_vlsi Pass 1
% -------------------------------------------------

msw_avlsi_pass1(M_sw_p1, A_vlsi_p1) :-
    realizes_in_vlsi(M_sw_raw, M_vlsi_raw),
    msw_pass1(M_sw_raw, M_sw_p1),
    mechanism_enables_attack(M_vlsi_raw, A_vlsi_raw),
    avlsi_pass1(A_vlsi_raw, A_vlsi_p1).

% -------------------------------------------------
% A_vlsi Pass 1 -> Stage -> Outcome
% -------------------------------------------------

avlsi_stage_outcome_pass1(A_vlsi_p1, S, O) :-
    mechanism_enables_attack(M_vlsi_raw, A_vlsi_raw),
    possible_at(M_vlsi_raw, S),
    causes(M_vlsi_raw, S, O),
    avlsi_pass1(A_vlsi_raw, A_vlsi_p1).

% -------------------------------------------------
% Final Pass-1 synthesized path
% -------------------------------------------------

attack_path_pass1(A_sw_p1, M_sw_p1, A_vlsi_p1, S, O) :-
    asw_msw_pass1(A_sw_p1, M_sw_p1),
    msw_avlsi_pass1(M_sw_p1, A_vlsi_p1),
    avlsi_stage_outcome_pass1(A_vlsi_p1, S, O).
