/* KB3: Inference rules for the VLSI-SWSC attack taxonomy */

/*
A right-hand-side path exists when:
1. mechanism M is possible at stage S
2. mechanism M at stage S causes outcome O
*/

rhs_path(M, S, O) :-
    possible_at(M, S),
    causes(M, S, O).


/*
A complete VLSI-SWSC attack path exists when:
1. SWSC attack vector A_sw enables mechanism M
2. mechanism M is possible at stage S
3. mechanism M at stage S causes outcome O
*/

attack_path(A_sw, M, S, O) :-
    swsc_vector(A_sw),
    mechanism(M),
    stage(S),
    outcome(O),
    enables(A_sw, M),
    possible_at(M, S),
    causes(M, S, O).