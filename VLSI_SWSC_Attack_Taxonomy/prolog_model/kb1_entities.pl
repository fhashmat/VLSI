/* KB2: Relationship facts for the VLSI-SWSC attack taxonomy */

/* 
KB2 defines:
1. which mechanism can happen at which stage
2. which mechanism at that stage can cause which outcome
*/

possible_at(distribute_backdoored_eda_tool, design_specifications).
possible_at(distribute_backdoored_eda_tool, high_level_synthesis).
possible_at(distribute_backdoored_eda_tool, logic_synthesis).

causes(distribute_backdoored_eda_tool, design_specifications, confidentiality).
causes(distribute_backdoored_eda_tool, high_level_synthesis, confidentiality).
causes(distribute_backdoored_eda_tool, logic_synthesis, confidentiality).


