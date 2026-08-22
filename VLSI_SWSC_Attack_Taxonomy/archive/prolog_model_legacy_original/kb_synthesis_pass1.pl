% Pass-1 synthesis mappings.
% These facts do not replace the raw model.
% They collapse raw labels into canonical Pass-1 labels.

:- discontiguous asw_pass1/2.
:- discontiguous msw_pass1/2.
:- discontiguous avlsi_pass1/2.

:- discontiguous asw_pass1_label/1.
:- discontiguous msw_pass1_label/1.
:- discontiguous avlsi_pass1_label/1.

% -------------------------------------------------
% A_sw Pass-1 canonical labels
% -------------------------------------------------

asw_pass1_label(malicious_package_creation).
asw_pass1_label(package_confusion).
asw_pass1_label(syntactic_or_visual_name_confusion).
asw_pass1_label(built_in_or_standard_package_impersonation).
asw_pass1_label(brand_or_trust_impersonation).
asw_pass1_label(dependency_confusion).
asw_pass1_label(typosquatting_or_combosquatting).
asw_pass1_label(typosquatting).
asw_pass1_label(source_or_package_tampering).
asw_pass1_label(malicious_contribution_or_merge_request).
asw_pass1_label(code_review_or_diff_evasion).
asw_pass1_label(repository_or_version_control_compromise).
asw_pass1_label(maintainer_role_acquisition).
asw_pass1_label(account_takeover).
asw_pass1_label(credential_compromise).
asw_pass1_label(social_engineering).
asw_pass1_label(session_hijacking).
asw_pass1_label(domain_takeover).
asw_pass1_label(developer_environment_compromise).
asw_pass1_label(privileged_project_account_compromise).
asw_pass1_label(maintainer_role_abuse).
asw_pass1_label(package_ownership_transfer).
asw_pass1_label(signing_identity_compromise).
asw_pass1_label(build_time_code_injection).
asw_pass1_label(malicious_build_execution).
asw_pass1_label(build_job_tampering).
asw_pass1_label(build_system_compromise).
asw_pass1_label(toolchain_compromise).
asw_pass1_label(malicious_package_distribution).
asw_pass1_label(package_reference_hijacking).
asw_pass1_label(download_or_network_redirection).
asw_pass1_label(version_downgrade_attack).
asw_pass1_label(hosting_or_repository_compromise).
asw_pass1_label(repository_or_mirror_poisoning).
asw_pass1_label(version_reuse_attack).
asw_pass1_label(package_tampering).
asw_pass1_label(signature_system_compromise).
asw_pass1_label(vulnerability_exploitation).
asw_pass1_label(configuration_weakness_exploitation).
asw_pass1_label(malicious_component_compromise).
asw_pass1_label(memory_safety_vulnerability_exploitation).
asw_pass1_label(unmaintained_or_legacy_component_exploitation).

% -------------------------------------------------
% A_vlsi Pass-1 canonical labels
% -------------------------------------------------

avlsi_pass1_label(ip_piracy_or_misuse).
avlsi_pass1_label(reverse_engineering).
avlsi_pass1_label(overbuilding).
avlsi_pass1_label(cloning_or_counterfeiting).
avlsi_pass1_label(physical_information_extraction_or_exploitation).
avlsi_pass1_label(ic_design_tampering).
avlsi_pass1_label(pre_fabrication_design_tampering).
avlsi_pass1_label(processor_design_modification).
avlsi_pass1_label(system_disablement).
avlsi_pass1_label(logic_bomb).
avlsi_pass1_label(information_leakage_or_exfiltration).
avlsi_pass1_label(hardware_or_security_backdoor).
avlsi_pass1_label(privilege_escalation).
avlsi_pass1_label(hardware_trojan_insertion).
avlsi_pass1_label(firmware_or_embedded_trojan_insertion).
avlsi_pass1_label(trojaned_ic_substitution).
avlsi_pass1_label(mask_level_trojan_insertion).
avlsi_pass1_label(taxonomy_label_review).
avlsi_pass1_label(functional_trojan).
avlsi_pass1_label(parametric_trojan).
avlsi_pass1_label(layout_changing_trojan).
avlsi_pass1_label(layout_preserving_trojan).
avlsi_pass1_label(externally_activated_trojan).
avlsi_pass1_label(internally_activated_trojan).
avlsi_pass1_label(always_on_trojan).
avlsi_pass1_label(condition_based_trojan).
avlsi_pass1_label(logic_triggered_trojan).
avlsi_pass1_label(sensor_triggered_trojan).
avlsi_pass1_label(information_leakage_trojan).
avlsi_pass1_label(rtl_level_trojan).
avlsi_pass1_label(gate_level_trojan).
avlsi_pass1_label(physical_design_induced_vulnerability).
avlsi_pass1_label(side_channel_leakage).
avlsi_pass1_label(fault_injection_attack).
avlsi_pass1_label(invasive_physical_attack).
avlsi_pass1_label(hls_information_or_key_leakage).
avlsi_pass1_label(hls_control_flow_or_fsm_vulnerability).
avlsi_pass1_label(hls_fault_injection_susceptibility).
avlsi_pass1_label(hls_side_channel_leakage).
avlsi_pass1_label(hls_side_channel_or_transformation_vulnerability).
avlsi_pass1_label(hls_reset_or_initialization_vulnerability).
avlsi_pass1_label(hls_interface_or_control_signal_vulnerability).
avlsi_pass1_label(hls_interface_or_call_method_vulnerability).
avlsi_pass1_label(hls_scheduling_vulnerability).
avlsi_pass1_label(hls_resource_sharing_vulnerability).
avlsi_pass1_label(hls_pipeline_imbalance_vulnerability).
avlsi_pass1_label(asset_leakage).
avlsi_pass1_label(test_or_debug_asset_leakage).
avlsi_pass1_label(ic_replacement_or_substitution).

% -------------------------------------------------
% M_sw Pass-1 canonical capability labels
% -------------------------------------------------

msw_pass1_label(consumed_software_behavior_control).
msw_pass1_label(source_or_repository_modification).
msw_pass1_label(trusted_project_access).
msw_pass1_label(maintainer_environment_control).
msw_pass1_label(trust_or_signature_control).
msw_pass1_label(build_process_control).
msw_pass1_label(development_tool_control).
msw_pass1_label(distribution_or_update_control).
msw_pass1_label(vulnerability_exploitation_capability).
msw_pass1_label(configuration_control).

% -------------------------------------------------
% A_sw raw -> A_sw Pass 1
% -------------------------------------------------
asw_pass1(develop_and_advertise_distinct_malicious_package, malicious_package_creation).
asw_pass1(create_new_package, malicious_package_creation).
asw_pass1(trojan_horse_package, malicious_package_creation).
asw_pass1(create_name_confusion_with_legitimate_package, package_confusion).

asw_pass1(altering_word_order, syntactic_or_visual_name_confusion).
asw_pass1(manipulating_word_separators, syntactic_or_visual_name_confusion).
asw_pass1(similarity_attack, syntactic_or_visual_name_confusion).
asw_pass1(case_sensitivity_confusion, syntactic_or_visual_name_confusion).
asw_pass1(built_in_package, built_in_or_standard_package_impersonation).
asw_pass1(brandjacking, brand_or_trust_impersonation).
asw_pass1(abuse_dependency_resolution_mechanism, dependency_confusion).

asw_pass1(combosquatting, typosquatting_or_combosquatting).
asw_pass1(typosquatting, typosquatting).
asw_pass1(typosquatting_in_registries, typosquatting).
asw_pass1(typosquatting_and_combosquatting, typosquatting_or_combosquatting).
asw_pass1(dependency_confusion, dependency_confusion).
asw_pass1(dependency_confusion_attack, dependency_confusion).

asw_pass1(subvert_legitimate_package, source_or_package_tampering).
asw_pass1(inject_into_sources_of_legitimate_package, source_or_package_tampering).
asw_pass1(infect_existing_package, source_or_package_tampering).
asw_pass1(inject_into_source, source_or_package_tampering).
asw_pass1(code_injection, source_or_package_tampering).
asw_pass1(introduce_malicious_code_through_hypocrite_merge_request, malicious_contribution_or_merge_request).
asw_pass1(pull_request_as_contributor, malicious_contribution_or_merge_request).
asw_pass1(exploit_rendering_weakness, code_review_or_diff_evasion).
asw_pass1(exploit_unicode_bidirectional_algorithm, code_review_or_diff_evasion).
asw_pass1(use_homoglyphs, code_review_or_diff_evasion).
asw_pass1(prevent_display_of_file_differences, code_review_or_diff_evasion).
asw_pass1(hide_in_generated_compiled_minified_code, code_review_or_diff_evasion).
asw_pass1(tamper_with_version_control_system, repository_or_version_control_compromise).
asw_pass1(compromise_version_control_system, repository_or_version_control_compromise).
asw_pass1(inject_into_repository_system, repository_or_version_control_compromise).

asw_pass1(contribute_as_maintainer, maintainer_role_acquisition).
asw_pass1(take_over_legitimate_account, account_takeover).
asw_pass1(reuse_of_compromised_credentials, credential_compromise).
asw_pass1(bruteforce, credential_compromise).
asw_pass1(reuse_of_leaked_api_tokens, credential_compromise).
asw_pass1(social_engineering_to_obtain_credentials, social_engineering).
asw_pass1(reuse_of_existing_session, session_hijacking).
asw_pass1(resurrect_expired_domain_associated_with_legitimate_account, domain_takeover).
asw_pass1(become_a_maintainer, maintainer_role_acquisition).
asw_pass1(compromise_maintainer_system, developer_environment_compromise).
asw_pass1(compromise_user_project_maintainer_administrator, privileged_project_account_compromise).
asw_pass1(distribute_as_package_maintainer, maintainer_role_abuse).
asw_pass1(bribe_or_blackmail_legitimate_user, social_engineering).
asw_pass1(commit_as_maintainer, maintainer_role_abuse).
asw_pass1(weak_or_compromised_credentials_or_api_tokens, credential_compromise).
asw_pass1(social_engineering_to_become_maintainer, social_engineering).
asw_pass1(package_maintainer_account_hijacking, account_takeover).
asw_pass1(ownership_transfer, package_ownership_transfer).
asw_pass1(account_takeover, account_takeover).
asw_pass1(phishing, social_engineering).
asw_pass1(credential_stuffing, credential_compromise).
asw_pass1(certificate_theft, signing_identity_compromise).

asw_pass1(inject_during_build_of_legitimate_package, build_time_code_injection).
asw_pass1(inject_during_the_build, build_time_code_injection).
asw_pass1(run_malicious_build, malicious_build_execution).
asw_pass1(run_malicious_build_on_shared_systems, malicious_build_execution).
asw_pass1(tamper_build_job_as_maintainer, build_job_tampering).
asw_pass1(tamper_with_exposed_build_system, build_system_compromise).
asw_pass1(compromise_build_system, build_system_compromise).
asw_pass1(compromised_tools, toolchain_compromise).

asw_pass1(distribute_malicious_version_of_legitimate_package, malicious_package_distribution).
asw_pass1(dangling_reference, package_reference_hijacking).
asw_pass1(mask_legitimate_package, package_reference_hijacking).
asw_pass1(mitm_attack, download_or_network_redirection).
asw_pass1(dns_cache_poisoning, download_or_network_redirection).
asw_pass1(tamper_legitimate_url, download_or_network_redirection).
asw_pass1(prevent_update_to_non_vulnerable_version, version_downgrade_attack).
asw_pass1(inject_into_hosting_system, hosting_or_repository_compromise).
asw_pass1(compromise_hosting_system, hosting_or_repository_compromise).
asw_pass1(manipulate_package_download, download_or_network_redirection).
asw_pass1(deploy_in_alternative_repository_or_mirror, repository_or_mirror_poisoning).
asw_pass1(package_redirection_hijacking, package_reference_hijacking).
asw_pass1(mirror_package_override, repository_or_mirror_poisoning).
asw_pass1(package_reference_attack, package_reference_hijacking).
asw_pass1(ghost_package_attack_in_mirrors, repository_or_mirror_poisoning).
asw_pass1(package_version_downgrade_attack, version_downgrade_attack).
asw_pass1(package_version_reuse_attack, version_reuse_attack).
asw_pass1(package_tampering_attack, package_tampering).
asw_pass1(package_version_downgrade, version_downgrade_attack).
asw_pass1(package_version_reuse, version_reuse_attack).
asw_pass1(exploitation_of_signature_system, signature_system_compromise).

asw_pass1(make_immature_vulnerability_exploitable, vulnerability_exploitation).
asw_pass1(exploit_weak_configuration, configuration_weakness_exploitation).
asw_pass1(exploit_vulnerabilities, vulnerability_exploitation).
asw_pass1(infect_through_malicious_component, malicious_component_compromise).
asw_pass1(use_after_free, memory_safety_vulnerability_exploitation).
asw_pass1(package_use_after_free, memory_safety_vulnerability_exploitation).
asw_pass1(exploiting_unmaintained_legacy_code, unmaintained_or_legacy_component_exploitation).
asw_pass1(misconfigurations, configuration_weakness_exploitation).

% We will paste asw_pass1 facts here after verifying raw labels.

% -------------------------------------------------
% M_sw raw -> M_sw Pass 1 capability
% -------------------------------------------------
msw_pass1(attacker_controlled_malicious_software_artifact, consumed_software_behavior_control).
msw_pass1(attacker_controlled_lookalike_software_artifact, consumed_software_behavior_control).
msw_pass1(attacker_controlled_legitimate_software_artifact, consumed_software_behavior_control).
msw_pass1(attacker_controlled_build_artifact, consumed_software_behavior_control).
msw_pass1(attacker_controlled_released_artifact, consumed_software_behavior_control).
msw_pass1(attacker_controlled_stale_mirror_artifact, consumed_software_behavior_control).
msw_pass1(attacker_controlled_reused_version_artifact, consumed_software_behavior_control).
msw_pass1(attacker_controlled_package_content_tampering, consumed_software_behavior_control).

msw_pass1(attacker_controlled_source_code, source_or_repository_modification).
msw_pass1(attacker_controlled_hidden_source_change, source_or_repository_modification).
msw_pass1(maintainer_level_source_control, source_or_repository_modification).
msw_pass1(attacker_controlled_version_control_system, source_or_repository_modification).

msw_pass1(compromised_legitimate_account_control, trusted_project_access).
msw_pass1(compromised_project_user_privileges, trusted_project_access).
msw_pass1(abused_legitimate_user_privileges, trusted_project_access).
msw_pass1(compromised_maintainer_system_control, maintainer_environment_control).

msw_pass1(attacker_controlled_build_execution, build_process_control).
msw_pass1(maintainer_level_build_job_control, build_process_control).
msw_pass1(attacker_controlled_build_system, build_process_control).

msw_pass1(maintainer_level_release_control, release_process_control).

msw_pass1(attacker_controlled_distribution_reference, distribution_or_update_control).
msw_pass1(attacker_controlled_distribution_channel, distribution_or_update_control).
msw_pass1(attacker_controlled_update_path, distribution_or_update_control).
msw_pass1(attacker_controlled_hosting_system, distribution_or_update_control).
msw_pass1(attacker_controlled_mirror_resolution, distribution_or_update_control).

msw_pass1(attacker_controlled_dependency_resolution, package_resolution_control).
msw_pass1(attacker_controlled_reused_package_name, package_resolution_control).
msw_pass1(attacker_controlled_package_name_resolution, package_resolution_control).
msw_pass1(attacker_controlled_dependency_reference, package_resolution_control).

msw_pass1(attacker_exploitable_vulnerable_dependency, vulnerability_exploitation_capability).

msw_pass1(attacker_controlled_signing_identity, trust_or_signature_control).
msw_pass1(attacker_controlled_signature_verification_bypass, trust_or_signature_control).

msw_pass1(attacker_controlled_insecure_development_configuration, configuration_control).
msw_pass1(attacker_controlled_development_tool, development_tool_control).
% We will paste msw_pass1 facts here after verifying M_sw labels.

% -------------------------------------------------
% A_vlsi raw -> A_vlsi Pass 1
% -------------------------------------------------

% We will paste avlsi_pass1 facts here after verifying A_vlsi labels.
avlsi_pass1(ip_theft_and_misuse, ip_piracy_or_misuse).
avlsi_pass1(ip_misuse, ip_piracy_or_misuse).
avlsi_pass1(reverse_engineering, reverse_engineering).
avlsi_pass1(over_building, overbuilding).
avlsi_pass1(cloning, cloning_or_counterfeiting).
avlsi_pass1(counterfeiting, cloning_or_counterfeiting).
avlsi_pass1(physical_information_exploitation, physical_information_extraction_or_exploitation).

avlsi_pass1(ic_tamper, ic_design_tampering).
avlsi_pass1(ic_design_tamper, ic_design_tampering).
avlsi_pass1(pre_fabrication_malicious_alteration, pre_fabrication_design_tampering).
avlsi_pass1(malicious_processor_modification, processor_design_modification).
avlsi_pass1(system_disablement, system_disablement).

avlsi_pass1(logic_bomb, logic_bomb).
avlsi_pass1(information_leak_backdoor, information_leakage_or_exfiltration).
avlsi_pass1(hidden_hardware_backdoor, hardware_or_security_backdoor).
avlsi_pass1(security_backdoor, hardware_or_security_backdoor).
avlsi_pass1(covert_information_leakage, information_leakage_or_exfiltration).
avlsi_pass1(privilege_escalation, privilege_escalation).
avlsi_pass1(login_backdoor, hardware_or_security_backdoor).
avlsi_pass1(password_stealing, information_leakage_or_exfiltration).

avlsi_pass1(hardware_trojan_insertion, hardware_trojan_insertion).
avlsi_pass1(hidden_hardware_trojan_program, hardware_trojan_insertion).
avlsi_pass1(firmware_trojan_insertion, firmware_or_embedded_trojan_insertion).
avlsi_pass1(trojan_ic_substitution, trojaned_ic_substitution).
avlsi_pass1(mask_level_trojan_insertion, mask_level_trojan_insertion).
avlsi_pass1(hardware_trojan_taxonomy, taxonomy_label_review).
avlsi_pass1(functional_trojan, functional_trojan).
avlsi_pass1(parametric_trojan, parametric_trojan).
avlsi_pass1(layout_changing_trojan, layout_changing_trojan).
avlsi_pass1(layout_preserving_trojan, layout_preserving_trojan).
avlsi_pass1(externally_activated_trojan, externally_activated_trojan).
avlsi_pass1(internally_activated_trojan, internally_activated_trojan).
avlsi_pass1(always_on_trojan, always_on_trojan).
avlsi_pass1(condition_based_trojan, condition_based_trojan).
avlsi_pass1(logic_triggered_trojan, logic_triggered_trojan).
avlsi_pass1(sensor_triggered_trojan, sensor_triggered_trojan).
avlsi_pass1(function_modifying_trojan, functional_trojan).
avlsi_pass1(specification_modifying_trojan, functional_trojan).
avlsi_pass1(information_transmitting_trojan, information_leakage_trojan).
avlsi_pass1(rtl_level_trojan, rtl_level_trojan).
avlsi_pass1(rtl_hardware_trojan, rtl_level_trojan).
avlsi_pass1(gate_level_hardware_trojan, gate_level_trojan).

avlsi_pass1(physical_design_induced_vulnerability, physical_design_induced_vulnerability).
avlsi_pass1(layout_level_side_channel_leakage, side_channel_leakage).
avlsi_pass1(physical_layout_side_channel_leakage, side_channel_leakage).
avlsi_pass1(power_side_channel_vulnerability, side_channel_leakage).
avlsi_pass1(em_side_channel_vulnerability, side_channel_leakage).
avlsi_pass1(laser_fault_injection, fault_injection_attack).
avlsi_pass1(timing_fault_injection, fault_injection_attack).
avlsi_pass1(em_fault_injection, fault_injection_attack).
avlsi_pass1(physical_layout_fault_injection, fault_injection_attack).
avlsi_pass1(micro_probing_attack, invasive_physical_attack).

avlsi_pass1(hls_induced_information_leakage, hls_information_or_key_leakage).
avlsi_pass1(hls_induced_key_leakage, hls_information_or_key_leakage).
avlsi_pass1(combinational_output_leakage, hls_information_or_key_leakage).
avlsi_pass1(passthrough_output_vulnerability, hls_information_or_key_leakage).
avlsi_pass1(latching_intermediate_values, hls_information_or_key_leakage).
avlsi_pass1(hls_induced_control_flow_violation, hls_control_flow_or_fsm_vulnerability).
avlsi_pass1(insecure_control_logic_extraction, hls_control_flow_or_fsm_vulnerability).
avlsi_pass1(fsm_fault_injection_vulnerability, hls_control_flow_or_fsm_vulnerability).
avlsi_pass1(hls_induced_fault_injection_susceptibility, hls_fault_injection_susceptibility).
avlsi_pass1(hls_induced_side_channel_leakage, hls_side_channel_leakage).
avlsi_pass1(function_flattening_vulnerability, hls_side_channel_or_transformation_vulnerability).
avlsi_pass1(no_reset_register_vulnerability, hls_reset_or_initialization_vulnerability).
avlsi_pass1(no_preset_register_vulnerability, hls_reset_or_initialization_vulnerability).
avlsi_pass1(uncleared_register_vulnerability, hls_reset_or_initialization_vulnerability).
avlsi_pass1(uncleared_io_register_vulnerability, hls_reset_or_initialization_vulnerability).
avlsi_pass1(lack_of_top_level_control_signals, hls_interface_or_control_signal_vulnerability).
avlsi_pass1(insecure_call_method_vulnerability, hls_interface_or_call_method_vulnerability).
avlsi_pass1(non_secure_scheduling, hls_scheduling_vulnerability).
avlsi_pass1(non_secure_resource_sharing, hls_resource_sharing_vulnerability).
avlsi_pass1(unbalanced_pipeline_vulnerability, hls_pipeline_imbalance_vulnerability).

avlsi_pass1(rtl_asset_leakage, asset_leakage).
avlsi_pass1(gate_level_asset_leakage, asset_leakage).
avlsi_pass1(dft_asset_leakage, test_or_debug_asset_leakage).
avlsi_pass1(dfd_asset_leakage, test_or_debug_asset_leakage).

avlsi_pass1(ic_chip_replacement, ic_replacement_or_substitution).