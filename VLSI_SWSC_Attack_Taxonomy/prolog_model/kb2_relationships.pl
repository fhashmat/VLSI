/* KB2 says 
which mechamism can happen at which stage?
which mechanism at that stage can cause which outcome? */

/*Format for KB2
feasibility(M, S, high).
feasibility(M, S, medium).
feasibility(M, S, low).
*/


feasibility(distribute_backdoored_eda_tool, design_specifications, high).
feasibility(distribute_backdoored_eda_tool, high_level_synthesis, high).
feasibility(distribute_backdoored_eda_tool, logic_synthesis, high).

causes(distribute_backdoored_eda_tool, design_specifications, confidentiality).
causes(distribute_backdoored_eda_tool, high_level_synthesis, confidentiality).
causes(distribute_backdoored_eda_tool, logic_synthesis, confidentiality).



