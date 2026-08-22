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

