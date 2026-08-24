% ============================================================
% Feasibility entities for synthesized VLSI SWSC paths
%
% These facts encode category-level evidence support from:
% data/feasibility_v1/category_feasibility_summary_v1.csv
%
% Levels:
% high   = strong evidence support in v1
% medium = partial/indirect evidence support in v1
% low    = not enough evidence support in v1
% ============================================================

% -----------------------------
% A_sw feasibility
% -----------------------------

category_feasibility(asw, vulnerability_or_configuration_exploitation, high).
category_feasibility(asw, build_or_toolchain_compromise, high).
category_feasibility(asw, trusted_identity_or_maintainer_compromise, medium).

category_feasibility(asw, package_introduction_or_misselection, low).
category_feasibility(asw, source_repository_or_code_tampering, low).
category_feasibility(asw, distribution_hosting_or_update_compromise, low).
category_feasibility(asw, signing_or_verification_compromise, low).

% -----------------------------
% M_sw feasibility
% -----------------------------

category_feasibility(msw, consumed_software_behavior_control, high).
category_feasibility(msw, vulnerability_or_configuration_based_control, high).
category_feasibility(msw, build_or_toolchain_execution_control, high).
category_feasibility(msw, trusted_project_or_maintainer_access, medium).

category_feasibility(msw, source_or_repository_modification, low).
category_feasibility(msw, developer_or_maintainer_environment_control, low).
category_feasibility(msw, distribution_or_update_path_control, low).
category_feasibility(msw, signing_or_verification_control, low).

% -----------------------------
% A_vlsi feasibility
% -----------------------------

category_feasibility(avlsi, design_tampering_or_malicious_modification, medium).
category_feasibility(avlsi, access_abuse_or_system_disruption, medium).

category_feasibility(avlsi, hardware_trojan_backdoor_or_logic_bomb, low).
category_feasibility(avlsi, information_leakage_or_asset_exposure, low).
category_feasibility(avlsi, ip_theft_misuse_or_counterfeiting, low).
category_feasibility(avlsi, side_channel_fault_or_physical_attack, low).
category_feasibility(avlsi, hls_induced_security_vulnerability, low).
category_feasibility(avlsi, ic_replacement_or_substitution, low).

% -----------------------------
% Stages observed in v1 empirical evidence
% -----------------------------

observed_stage(stage_1_high_level_synthesis).
observed_stage(stage_2_logic_synthesis).
observed_stage(stage_3_post_synthesis_verification).
observed_stage(stage_4_design_for_testability).
observed_stage(stage_5_placement_and_routing).
observed_stage(stage_6_static_timing_analysis).
observed_stage(stage_7_physical_verification_and_signoff).
observed_stage(stage_9_manufacturing_testing).
