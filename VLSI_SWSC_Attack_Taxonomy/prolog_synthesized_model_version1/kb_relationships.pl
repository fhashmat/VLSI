% ============================================================
% Relationships for Synthesized Prolog Model Version 1
% ============================================================

% ------------------------------------------------------------
% A_sw -> M_sw
%
% Criterion:
% A_sw describes how the attacker affects the software supply chain.
% M_sw describes the software-side capability the attacker gains.
% ------------------------------------------------------------

enables(package_introduction_or_misselection,
        consumed_software_behavior_control).

enables(source_repository_or_code_tampering,
        source_or_repository_modification).

enables(trusted_identity_or_maintainer_compromise,
        trusted_project_or_maintainer_access).

enables(trusted_identity_or_maintainer_compromise,
        developer_or_maintainer_environment_control).

enables(build_or_toolchain_compromise,
        build_or_toolchain_execution_control).

enables(distribution_hosting_or_update_compromise,
        distribution_or_update_path_control).

enables(signing_or_verification_compromise,
        signing_or_verification_control).

enables(vulnerability_or_configuration_exploitation,
        vulnerability_or_configuration_based_control).

% ------------------------------------------------------------
% M_sw -> A_vlsi
%
% Criterion:
% M_sw is linked to A_vlsi only when the software-side capability
% can plausibly affect the design artifact, EDA tool behavior,
% verification result, build output, or release/update path in a way
% that produces that VLSI-side attack class.
% ------------------------------------------------------------

realizes_in_vlsi(consumed_software_behavior_control,
                 design_tampering_or_malicious_modification).
realizes_in_vlsi(consumed_software_behavior_control,
                 hardware_trojan_backdoor_or_logic_bomb).
realizes_in_vlsi(consumed_software_behavior_control,
                 information_leakage_or_asset_exposure).
realizes_in_vlsi(consumed_software_behavior_control,
                 hls_induced_security_vulnerability).
realizes_in_vlsi(consumed_software_behavior_control,
                 access_abuse_or_system_disruption).

realizes_in_vlsi(source_or_repository_modification,
                 design_tampering_or_malicious_modification).
realizes_in_vlsi(source_or_repository_modification,
                 hardware_trojan_backdoor_or_logic_bomb).
realizes_in_vlsi(source_or_repository_modification,
                 information_leakage_or_asset_exposure).
realizes_in_vlsi(source_or_repository_modification,
                 hls_induced_security_vulnerability).
realizes_in_vlsi(source_or_repository_modification,
                 access_abuse_or_system_disruption).

realizes_in_vlsi(trusted_project_or_maintainer_access,
                 design_tampering_or_malicious_modification).
realizes_in_vlsi(trusted_project_or_maintainer_access,
                 hardware_trojan_backdoor_or_logic_bomb).
realizes_in_vlsi(trusted_project_or_maintainer_access,
                 information_leakage_or_asset_exposure).
realizes_in_vlsi(trusted_project_or_maintainer_access,
                 access_abuse_or_system_disruption).

realizes_in_vlsi(developer_or_maintainer_environment_control,
                 ip_theft_misuse_or_counterfeiting).
realizes_in_vlsi(developer_or_maintainer_environment_control,
                 design_tampering_or_malicious_modification).
realizes_in_vlsi(developer_or_maintainer_environment_control,
                 hardware_trojan_backdoor_or_logic_bomb).
realizes_in_vlsi(developer_or_maintainer_environment_control,
                 information_leakage_or_asset_exposure).
realizes_in_vlsi(developer_or_maintainer_environment_control,
                 access_abuse_or_system_disruption).

realizes_in_vlsi(build_or_toolchain_execution_control,
                 design_tampering_or_malicious_modification).
realizes_in_vlsi(build_or_toolchain_execution_control,
                 hardware_trojan_backdoor_or_logic_bomb).
realizes_in_vlsi(build_or_toolchain_execution_control,
                 information_leakage_or_asset_exposure).
realizes_in_vlsi(build_or_toolchain_execution_control,
                 side_channel_fault_or_physical_attack).
realizes_in_vlsi(build_or_toolchain_execution_control,
                 hls_induced_security_vulnerability).
realizes_in_vlsi(build_or_toolchain_execution_control,
                 access_abuse_or_system_disruption).

realizes_in_vlsi(distribution_or_update_path_control,
                 design_tampering_or_malicious_modification).
realizes_in_vlsi(distribution_or_update_path_control,
                 hardware_trojan_backdoor_or_logic_bomb).
realizes_in_vlsi(distribution_or_update_path_control,
                 information_leakage_or_asset_exposure).
realizes_in_vlsi(distribution_or_update_path_control,
                 hls_induced_security_vulnerability).
realizes_in_vlsi(distribution_or_update_path_control,
                 access_abuse_or_system_disruption).

realizes_in_vlsi(signing_or_verification_control,
                 design_tampering_or_malicious_modification).
realizes_in_vlsi(signing_or_verification_control,
                 hardware_trojan_backdoor_or_logic_bomb).
realizes_in_vlsi(signing_or_verification_control,
                 information_leakage_or_asset_exposure).
realizes_in_vlsi(signing_or_verification_control,
                 access_abuse_or_system_disruption).

realizes_in_vlsi(vulnerability_or_configuration_based_control,
                 ip_theft_misuse_or_counterfeiting).
realizes_in_vlsi(vulnerability_or_configuration_based_control,
                 design_tampering_or_malicious_modification).
realizes_in_vlsi(vulnerability_or_configuration_based_control,
                 hardware_trojan_backdoor_or_logic_bomb).
realizes_in_vlsi(vulnerability_or_configuration_based_control,
                 information_leakage_or_asset_exposure).
realizes_in_vlsi(vulnerability_or_configuration_based_control,
                 side_channel_fault_or_physical_attack).
realizes_in_vlsi(vulnerability_or_configuration_based_control,
                 hls_induced_security_vulnerability).
realizes_in_vlsi(vulnerability_or_configuration_based_control,
                 access_abuse_or_system_disruption).


% ------------------------------------------------------------
% A_vlsi -> Stage
%
% Criterion:
% A_vlsi is linked to a stage only when the VLSI-side attack class
% can plausibly be introduced, enabled, observed, or propagated
% at that stage.
% ------------------------------------------------------------

possible_at(ip_theft_misuse_or_counterfeiting, stage_0_design_specification).
possible_at(ip_theft_misuse_or_counterfeiting, stage_1_high_level_synthesis).
possible_at(ip_theft_misuse_or_counterfeiting, stage_2_logic_synthesis).
possible_at(ip_theft_misuse_or_counterfeiting, stage_3_post_synthesis_verification).
possible_at(ip_theft_misuse_or_counterfeiting, stage_4_design_for_testability).
possible_at(ip_theft_misuse_or_counterfeiting, stage_5_placement_and_routing).
possible_at(ip_theft_misuse_or_counterfeiting, stage_6_static_timing_analysis).
possible_at(ip_theft_misuse_or_counterfeiting, stage_7_physical_verification_and_signoff).
possible_at(ip_theft_misuse_or_counterfeiting, stage_8_post_silicon_validation).
possible_at(ip_theft_misuse_or_counterfeiting, stage_9_manufacturing_testing).

possible_at(design_tampering_or_malicious_modification, stage_0_design_specification).
possible_at(design_tampering_or_malicious_modification, stage_1_high_level_synthesis).
possible_at(design_tampering_or_malicious_modification, stage_2_logic_synthesis).
possible_at(design_tampering_or_malicious_modification, stage_3_post_synthesis_verification).
possible_at(design_tampering_or_malicious_modification, stage_4_design_for_testability).
possible_at(design_tampering_or_malicious_modification, stage_5_placement_and_routing).
possible_at(design_tampering_or_malicious_modification, stage_6_static_timing_analysis).
possible_at(design_tampering_or_malicious_modification, stage_7_physical_verification_and_signoff).

possible_at(hardware_trojan_backdoor_or_logic_bomb, stage_1_high_level_synthesis).
possible_at(hardware_trojan_backdoor_or_logic_bomb, stage_2_logic_synthesis).
possible_at(hardware_trojan_backdoor_or_logic_bomb, stage_3_post_synthesis_verification).
possible_at(hardware_trojan_backdoor_or_logic_bomb, stage_4_design_for_testability).
possible_at(hardware_trojan_backdoor_or_logic_bomb, stage_5_placement_and_routing).
possible_at(hardware_trojan_backdoor_or_logic_bomb, stage_6_static_timing_analysis).
possible_at(hardware_trojan_backdoor_or_logic_bomb, stage_7_physical_verification_and_signoff).
possible_at(hardware_trojan_backdoor_or_logic_bomb, stage_8_post_silicon_validation).
possible_at(hardware_trojan_backdoor_or_logic_bomb, stage_9_manufacturing_testing).

possible_at(information_leakage_or_asset_exposure, stage_0_design_specification).
possible_at(information_leakage_or_asset_exposure, stage_1_high_level_synthesis).
possible_at(information_leakage_or_asset_exposure, stage_2_logic_synthesis).
possible_at(information_leakage_or_asset_exposure, stage_3_post_synthesis_verification).
possible_at(information_leakage_or_asset_exposure, stage_4_design_for_testability).
possible_at(information_leakage_or_asset_exposure, stage_5_placement_and_routing).
possible_at(information_leakage_or_asset_exposure, stage_6_static_timing_analysis).
possible_at(information_leakage_or_asset_exposure, stage_7_physical_verification_and_signoff).
possible_at(information_leakage_or_asset_exposure, stage_8_post_silicon_validation).
possible_at(information_leakage_or_asset_exposure, stage_9_manufacturing_testing).

possible_at(side_channel_fault_or_physical_attack, stage_1_high_level_synthesis).
possible_at(side_channel_fault_or_physical_attack, stage_2_logic_synthesis).
possible_at(side_channel_fault_or_physical_attack, stage_4_design_for_testability).
possible_at(side_channel_fault_or_physical_attack, stage_5_placement_and_routing).
possible_at(side_channel_fault_or_physical_attack, stage_6_static_timing_analysis).
possible_at(side_channel_fault_or_physical_attack, stage_7_physical_verification_and_signoff).
possible_at(side_channel_fault_or_physical_attack, stage_8_post_silicon_validation).
possible_at(side_channel_fault_or_physical_attack, stage_9_manufacturing_testing).

possible_at(hls_induced_security_vulnerability, stage_1_high_level_synthesis).
possible_at(hls_induced_security_vulnerability, stage_2_logic_synthesis).
possible_at(hls_induced_security_vulnerability, stage_3_post_synthesis_verification).

possible_at(ic_replacement_or_substitution, stage_8_post_silicon_validation).
possible_at(ic_replacement_or_substitution, stage_9_manufacturing_testing).

possible_at(access_abuse_or_system_disruption, stage_0_design_specification).
possible_at(access_abuse_or_system_disruption, stage_1_high_level_synthesis).
possible_at(access_abuse_or_system_disruption, stage_2_logic_synthesis).
possible_at(access_abuse_or_system_disruption, stage_3_post_synthesis_verification).
possible_at(access_abuse_or_system_disruption, stage_4_design_for_testability).
possible_at(access_abuse_or_system_disruption, stage_5_placement_and_routing).
possible_at(access_abuse_or_system_disruption, stage_6_static_timing_analysis).
possible_at(access_abuse_or_system_disruption, stage_7_physical_verification_and_signoff).
possible_at(access_abuse_or_system_disruption, stage_8_post_silicon_validation).
possible_at(access_abuse_or_system_disruption, stage_9_manufacturing_testing).

% ------------------------------------------------------------
% A_vlsi -> Outcome
%
% Criterion:
% Outcome is based on the primary security effect:
% confidentiality = leakage/theft/exposure
% integrity       = tampering/malicious modification
% availability    = disablement/unusable or disrupted operation
% ------------------------------------------------------------

affects_outcome(ip_theft_misuse_or_counterfeiting, confidentiality).
affects_outcome(ip_theft_misuse_or_counterfeiting, integrity).

affects_outcome(design_tampering_or_malicious_modification, integrity).
affects_outcome(design_tampering_or_malicious_modification, availability).

affects_outcome(hardware_trojan_backdoor_or_logic_bomb, confidentiality).
affects_outcome(hardware_trojan_backdoor_or_logic_bomb, integrity).
affects_outcome(hardware_trojan_backdoor_or_logic_bomb, availability).

affects_outcome(information_leakage_or_asset_exposure, confidentiality).

affects_outcome(side_channel_fault_or_physical_attack, confidentiality).
affects_outcome(side_channel_fault_or_physical_attack, integrity).
affects_outcome(side_channel_fault_or_physical_attack, availability).

affects_outcome(hls_induced_security_vulnerability, confidentiality).
affects_outcome(hls_induced_security_vulnerability, integrity).
affects_outcome(hls_induced_security_vulnerability, availability).

affects_outcome(ic_replacement_or_substitution, integrity).
affects_outcome(ic_replacement_or_substitution, availability).

affects_outcome(access_abuse_or_system_disruption, integrity).
affects_outcome(access_abuse_or_system_disruption, availability).

