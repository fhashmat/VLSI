/* KB2 says 
which mechamism can happen at which stage?
which mechanism at that stage can cause which outcome? */

/*Format for KB2
possible_at(M, S).
*/

enables(distribute_backdoored_eda_tool, attacker_controlled_eda_behavior).
possible_at(attacker_controlled_eda_behavior, design_specifications).
possible_at(attacker_controlled_eda_behavior, high_level_synthesis).
possible_at(attacker_controlled_eda_behavior, logic_synthesis).

causes(attacker_controlled_eda_behavior, design_specifications, confidentiality).
causes(attacker_controlled_eda_behavior, high_level_synthesis, confidentiality).
causes(attacker_controlled_eda_behavior, logic_synthesis, confidentiality).


