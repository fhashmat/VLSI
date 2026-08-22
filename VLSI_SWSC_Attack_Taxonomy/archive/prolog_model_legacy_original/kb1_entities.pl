/* KB1: Entity facts for the VLSI-SWSC attack taxonomy */

%VLSI_Design_Stages

stage(design_specifications). %stage0
stage(high_level_synthesis).  %stage1
stage(logic_synthesis). %stage2
stage(post_synthesis_verification). %stage3
stage(design_for_testability). %stage4
stage(placement_and_routing). %stage5
stage(physical_verification_and_signoff). %stage6
stage(post_silicon_validation). %stage7
stage(manufacturing_testing). %stage8

%SWSC_Attack_Vectors
swsc_vector(distribute_backdoored_eda_tool).

%Mechanisms
mechanism(attacker_controlled_eda_behavior).
mechanism(distribute_flowscripts_to_exfiltrate_data).
mechanism(distribute_eda_to_insert_trojan).
mechanism(distribute_input_artifacts_to_produce_trojanize_design).
mechanism(distribute_flowscipts_to_produce_trojanzie_design).
mechanism(distribute_eda_with_poor_testing_capabilities).
mechanism(distribute_flow_scripts_to_hinder_tool_testing_capabilities).
mechanism(distribute_eda_that_allows_testing_flaws).
mechanism(distribute_eda_input_artifacts_to_produce_unavailable_design).
mechanism(distribute_eda_tool_input_artifacts_that_degrade_their_performance).
mechanism(distribute_poor_performing_eda_tools).
mechanism(distribute_poor_performing_flow_scripts).
mechanism(remove_or_add_extra_input_artifacts).

%outcomes

outcome(confidentiality).
outcome(integrity).
outcome(availability).



