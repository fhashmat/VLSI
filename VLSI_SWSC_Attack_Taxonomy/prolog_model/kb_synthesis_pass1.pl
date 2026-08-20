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

% We will paste asw_pass1 facts here after verifying raw labels.

% -------------------------------------------------
% M_sw raw -> M_sw Pass 1 capability
% -------------------------------------------------

% We will paste msw_pass1 facts here after verifying M_sw labels.

% -------------------------------------------------
% A_vlsi raw -> A_vlsi Pass 1
% -------------------------------------------------

% We will paste avlsi_pass1 facts here after verifying A_vlsi labels.