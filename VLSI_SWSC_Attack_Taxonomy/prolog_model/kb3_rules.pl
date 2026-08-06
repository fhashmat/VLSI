/* KB3: Inference rules for the VLSI-SWSC attack taxonomy */

/*
A right-hand-side path exists when:
1. mechanism M is possible at stage S
2. mechanism M at stage S causes outcome O
*/

rhs_path(M, S, O) :-
    possible_at(M, S),
    causes(M, S, O).