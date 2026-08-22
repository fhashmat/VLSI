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
