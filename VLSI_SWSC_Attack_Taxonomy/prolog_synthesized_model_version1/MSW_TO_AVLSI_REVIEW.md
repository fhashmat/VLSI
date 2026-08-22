# M_sw to A_vlsi Review Notes

## Criterion

M_sw is linked to A_vlsi only when the software-side capability can plausibly affect the design artifact, EDA tool behavior, verification result, build output, or release/update path in a way that produces that VLSI-side attack class.

The model should count top-level synthesized categories. Subcategories should be preserved as supporting taxonomy/evidence, not used directly for path multiplication.

## Proposed M_sw to A_vlsi links

### 1. consumed_software_behavior_control

Rationale: the attacker controls the behavior of software that the victim consumes, installs, imports, or executes.

Candidate A_vlsi links:
- design_tampering_or_malicious_modification
- hardware_trojan_backdoor_or_logic_bomb
- information_leakage_or_asset_exposure
- hls_induced_security_vulnerability
- access_abuse_or_system_disruption

### 2. source_or_repository_modification

Rationale: the attacker can modify source code, package contents, repository state, design scripts, or design-related software artifacts.

Candidate A_vlsi links:
- design_tampering_or_malicious_modification
- hardware_trojan_backdoor_or_logic_bomb
- information_leakage_or_asset_exposure
- hls_induced_security_vulnerability
- access_abuse_or_system_disruption

### 3. trusted_project_or_maintainer_access

Rationale: the attacker can act through trusted project, maintainer, or privileged account access. This capability matters when it allows changes to be merged, released, approved, or distributed as trusted artifacts.

Candidate A_vlsi links:
- design_tampering_or_malicious_modification
- hardware_trojan_backdoor_or_logic_bomb
- information_leakage_or_asset_exposure
- access_abuse_or_system_disruption

### 4. developer_or_maintainer_environment_control

Rationale: the attacker can influence the developer or maintainer environment used to create, modify, test, or release artifacts.

Candidate A_vlsi links:
- ip_theft_misuse_or_counterfeiting
- design_tampering_or_malicious_modification
- hardware_trojan_backdoor_or_logic_bomb
- information_leakage_or_asset_exposure
- access_abuse_or_system_disruption

### 5. build_or_toolchain_execution_control

Rationale: the attacker can control the build process, build job, build system, EDA script execution, or toolchain behavior.

Candidate A_vlsi links:
- design_tampering_or_malicious_modification
- hardware_trojan_backdoor_or_logic_bomb
- information_leakage_or_asset_exposure
- side_channel_fault_or_physical_attack
- hls_induced_security_vulnerability
- access_abuse_or_system_disruption

### 6. distribution_or_update_path_control

Rationale: the attacker can control how software artifacts are hosted, resolved, downloaded, versioned, mirrored, or updated.

Candidate A_vlsi links:
- design_tampering_or_malicious_modification
- hardware_trojan_backdoor_or_logic_bomb
- information_leakage_or_asset_exposure
- hls_induced_security_vulnerability
- access_abuse_or_system_disruption

### 7. signing_or_verification_control

Rationale: the attacker can control or bypass signing, certificate, or verification trust. This does not directly change the design by itself, but it can cause malicious or tampered artifacts to be accepted as trusted.

Candidate A_vlsi links:
- design_tampering_or_malicious_modification
- hardware_trojan_backdoor_or_logic_bomb
- information_leakage_or_asset_exposure
- access_abuse_or_system_disruption

### 8. vulnerability_or_configuration_based_control

Rationale: the attacker can gain software-side control through a vulnerable component, weak configuration, memory-safety issue, malicious component, or unmaintained/legacy dependency.

Candidate A_vlsi links:
- ip_theft_misuse_or_counterfeiting
- design_tampering_or_malicious_modification
- hardware_trojan_backdoor_or_logic_bomb
- information_leakage_or_asset_exposure
- side_channel_fault_or_physical_attack
- hls_induced_security_vulnerability
- access_abuse_or_system_disruption

## Held out for now

### ic_replacement_or_substitution

This category is kept in A_vlsi, but I am not linking it automatically in the first bridge pass because physical IC replacement/substitution may require a different supply-chain position than software-side control of tools, repositories, builds, or updates.

It should only be linked later if we have a clear software-side path that causes substitution of the IC, not merely modification of design artifacts.
