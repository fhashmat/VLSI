/* Example queries for the VLSI-SWSC attack taxonomy */

/*
Query all complete attack paths:

?- attack_path(A_sw, M, S, O).
*/

/*
Query all stages affected by a specific SWSC vector:

?- attack_path(distribute_backdoored_eda_tool, M, S, O).
*/

/*
Query all paths that lead to confidentiality outcomes:

?- attack_path(A_sw, M, S, confidentiality).
*/

/*
Query all paths possible at logic synthesis:

?- attack_path(A_sw, M, logic_synthesis, O).
*/