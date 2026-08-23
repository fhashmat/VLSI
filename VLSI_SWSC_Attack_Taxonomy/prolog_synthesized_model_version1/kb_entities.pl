% ============================================================
% Synthesized Prolog Model Version 1
% Entities only.
% This model does not load or depend on the old raw/mapping model.
% ============================================================

% -----------------------------
% A_sw: software supply-chain attack categories
% -----------------------------

asw(package_introduction_or_misselection).
asw(source_repository_or_code_tampering).
asw(trusted_identity_or_maintainer_compromise).
asw(build_or_toolchain_compromise).
asw(distribution_hosting_or_update_compromise).
asw(signing_or_verification_compromise).
asw(vulnerability_or_configuration_exploitation).

% -----------------------------
% M_sw: software-side attacker capabilities
% -----------------------------

msw(consumed_software_behavior_control).
msw(source_or_repository_modification).
msw(trusted_project_or_maintainer_access).
msw(developer_or_maintainer_environment_control).
msw(build_or_toolchain_execution_control).
msw(distribution_or_update_path_control).
msw(signing_or_verification_control).
msw(vulnerability_or_configuration_based_control).

% -----------------------------
% A_vlsi: VLSI-side attack categories
% -----------------------------

avlsi(ip_theft_misuse_or_counterfeiting).
avlsi(design_tampering_or_malicious_modification).
avlsi(hardware_trojan_backdoor_or_logic_bomb).
avlsi(information_leakage_or_asset_exposure).
avlsi(side_channel_fault_or_physical_attack).
avlsi(hls_induced_security_vulnerability).
avlsi(ic_replacement_or_substitution).
avlsi(access_abuse_or_system_disruption).

% -----------------------------
% VLSI design-flow stages
% -----------------------------
% Stage list follows the paper's VLSI design-flow stages.

stage(stage_0_design_specification).
stage(stage_1_high_level_synthesis).
stage(stage_2_logic_synthesis).
stage(stage_3_post_synthesis_verification).
stage(stage_4_design_for_testability).
stage(stage_5_placement_and_routing).
stage(stage_6_static_timing_analysis).
stage(stage_7_physical_verification_and_signoff).
stage(stage_8_post_silicon_validation).
stage(stage_9_manufacturing_testing).

% -----------------------------
% Security outcomes
% -----------------------------

outcome(confidentiality).
outcome(integrity).
outcome(availability).
