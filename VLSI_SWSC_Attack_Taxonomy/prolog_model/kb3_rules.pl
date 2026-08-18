% Right-hand-side VLSI realization path:
% M_vlsi -> A_vlsi, M_vlsi -> S, and M_vlsi at S -> O.

rhs_path(M_vlsi, A_vlsi, S, O) :-
    mechanism_enables_attack(M_vlsi, A_vlsi),
    possible_at(M_vlsi, S),
    causes(M_vlsi, S, O).

% Complete ASW-to-AVLSI attack path:
% A_sw -> M_sw -> M_vlsi -> A_vlsi -> S -> O.

attack_path(A_sw, A_vlsi, M_sw, M_vlsi, S, O) :-
    enables(A_sw, M_sw),
    realizes_in_vlsi(M_sw, M_vlsi),
    mechanism_enables_attack(M_vlsi, A_vlsi),
    possible_at(M_vlsi, S),
    causes(M_vlsi, S, O).

% Candidate path using bridge rows marked review.

candidate_attack_path(A_sw, A_vlsi, M_sw, M_vlsi, S, O) :-
    enables(A_sw, M_sw),
    candidate_realizes_in_vlsi(M_sw, M_vlsi),
    mechanism_enables_attack(M_vlsi, A_vlsi),
    possible_at(M_vlsi, S),
    causes(M_vlsi, S, O).
