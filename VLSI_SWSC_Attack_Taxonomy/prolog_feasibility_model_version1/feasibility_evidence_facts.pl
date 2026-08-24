% ============================================================
% Evidence facts for feasibility model
%
% evidence(EvidenceID, Source, Stage, Tool, MetricGroup,
%          MetricName, MetricValue, ComponentOrLibrary).
%
% evidence_mapping(MappingID, EvidenceID, ModelLayer,
%                  ModelCategory, MappingStrength).
% ============================================================

% -----------------------------
% Raw evidence E1-E50
% -----------------------------

evidence(e1, table3, stage_2_logic_synthesis, yosys, tpl_percentage, shared_tpl_percent, '62.00', shared_third_party_libraries).
evidence(e2, table3, stage_2_logic_synthesis, yosys, static_linking, static_tpl_percent, '90.30', static_third_party_libraries).
evidence(e3, table2, stage_2_logic_synthesis, yosys, cve_exposure, high_risk_cves, '9_CVEs_at_9.8', third_party_libraries).
evidence(e4, table2, stage_2_logic_synthesis, yosys, dependency_exposure, static_tpl_maintainers, '881', static_third_party_libraries).
evidence(e5, table2, stage_2_logic_synthesis, yosys, dependency_exposure, oldest_static_tpl_update, '2010', static_third_party_libraries).
evidence(e6, table2, stage_2_logic_synthesis, yosys, dependency_exposure, shared_tpl_maintainers, '552', shared_third_party_libraries).
evidence(e7, table2, stage_2_logic_synthesis, yosys, dependency_exposure, oldest_shared_tpl_update, '2012', shared_third_party_libraries).
evidence(e8, figure3, stage_2_logic_synthesis, yosys, library_exposure, figure3_tool_specific_library_exposure, present, t2_yosys_libraries_logic_synthesis).
evidence(e9, figure3, stage_3_post_synthesis_verification, yosys, library_exposure, figure3_tool_specific_library_exposure, present, t2_yosys_libraries_post_synthesis_verification).
evidence(e10, table1, stage_2_logic_synthesis, yosys, tool_behavior, artifact_and_config_access, present, design_artifacts_and_configuration_files).

evidence(e11, table3, stage_2_logic_synthesis, abc, tpl_percentage, shared_tpl_percent, '16.67', shared_third_party_libraries).
evidence(e12, table3, stage_2_logic_synthesis, abc, static_linking, static_tpl_percent, '0.00', static_third_party_libraries).
evidence(e13, table2, stage_2_logic_synthesis, abc, cve_exposure, high_risk_cves, '0', third_party_libraries).
evidence(e14, table2, stage_2_logic_synthesis, abc, dependency_exposure, shared_tpl_maintainers, '1', shared_third_party_libraries).
evidence(e15, table2, stage_2_logic_synthesis, abc, dependency_exposure, oldest_shared_tpl_update, '2012', shared_third_party_libraries).
evidence(e16, figure3, stage_2_logic_synthesis, abc, library_exposure, figure3_tool_specific_library_exposure, present, t1_abc_libraries).
evidence(e17, table2, stage_2_logic_synthesis, abc, dependency_exposure, static_tpl_maintainers, '1', static_third_party_libraries).
evidence(e18, table2, stage_2_logic_synthesis, abc, dependency_exposure, oldest_static_tpl_update, '2016', static_third_party_libraries).
evidence(e19, table1, stage_2_logic_synthesis, abc, tool_behavior, artifact_and_config_access, present, design_artifacts_and_configuration_files).

evidence(e20, table3, stage_6_static_timing_analysis, opensta, tpl_percentage, shared_tpl_percent, '11.10', shared_third_party_libraries).
evidence(e21, table3, stage_6_static_timing_analysis, opensta, static_linking, static_tpl_percent, '5.37', static_third_party_libraries).
evidence(e22, table2, stage_6_static_timing_analysis, opensta, cve_exposure, high_risk_cves, '6_CVEs_at_9.8_2_CVEs_at_8.8_3_CVEs_at_7.8', third_party_libraries).
evidence(e23, table2, stage_6_static_timing_analysis, opensta, dependency_exposure, shared_tpl_maintainers, '156', shared_third_party_libraries).
evidence(e24, table2, stage_6_static_timing_analysis, opensta, dependency_exposure, oldest_shared_tpl_update, '2022', shared_third_party_libraries).
evidence(e25, table2, stage_6_static_timing_analysis, opensta, dependency_exposure, static_tpl_maintainers, '572', static_third_party_libraries).
evidence(e26, table2, stage_6_static_timing_analysis, opensta, dependency_exposure, oldest_static_tpl_update, '2015', static_third_party_libraries).
evidence(e27, figure3, stage_6_static_timing_analysis, opensta, library_exposure, figure3_tool_specific_library_exposure, present, t3_opensta_libraries).

evidence(e28, table3, stage_6_static_timing_analysis, opentimer, tpl_percentage, shared_tpl_percent, '12.50', shared_third_party_libraries).
evidence(e29, table3, stage_6_static_timing_analysis, opentimer, static_linking, static_tpl_percent, '0.17', static_third_party_libraries).
evidence(e30, table2, stage_6_static_timing_analysis, opentimer, cve_exposure, high_risk_cves, '0', third_party_libraries).
evidence(e31, table2, stage_6_static_timing_analysis, opentimer, dependency_exposure, shared_tpl_maintainers, '94', shared_third_party_libraries).
evidence(e32, table2, stage_6_static_timing_analysis, opentimer, dependency_exposure, oldest_shared_tpl_update, '2022', shared_third_party_libraries).
evidence(e33, table2, stage_6_static_timing_analysis, opentimer, dependency_exposure, static_tpl_maintainers, '1', static_third_party_libraries).
evidence(e34, table2, stage_6_static_timing_analysis, opentimer, dependency_exposure, oldest_static_tpl_update, '2018', static_third_party_libraries).
evidence(e35, figure3, stage_6_static_timing_analysis, opentimer, library_exposure, figure3_tool_specific_library_exposure, present, t5_opentimer_libraries).

evidence(e36, table1, stage_7_physical_verification_and_signoff, magic, tool_behavior, shell_injection, yes, tool_execution_path).
evidence(e37, table1, stage_7_physical_verification_and_signoff, magic, tool_behavior, third_party_tool_invoked, yes, third_party_tool_invocation).
evidence(e38, figure3, stage_7_physical_verification_and_signoff, magic, library_exposure, figure3_tool_specific_library_exposure, present, t6_magic_libraries).

evidence(e39, table3, stage_5_placement_and_routing, openlane, tpl_percentage, shared_tpl_percent, '57.80', shared_third_party_libraries).
evidence(e40, table3, stage_5_placement_and_routing, openlane, static_linking, static_tpl_percent, '0.00', static_third_party_libraries).
evidence(e41, table2, stage_5_placement_and_routing, openlane, cve_exposure, high_risk_cves, '8_CVEs_at_9.8_4_CVEs_at_8.8', third_party_libraries).
evidence(e42, table2, stage_5_placement_and_routing, openlane, dependency_exposure, shared_tpl_maintainers, '722', shared_third_party_libraries).
evidence(e43, table2, stage_5_placement_and_routing, openlane, dependency_exposure, oldest_shared_tpl_update, '2010', shared_third_party_libraries).
evidence(e44, figure3, stage_5_placement_and_routing, openlane, library_exposure, figure3_tool_specific_library_exposure, present, t4_openlane_libraries).

evidence(e45, table1, stage_1_high_level_synthesis, legup, tool_behavior, third_party_tool_invoked, yes, third_party_tool_invocation).
evidence(e46, table1, stage_1_high_level_synthesis, bambu, tool_behavior, third_party_tool_invoked, yes, third_party_tool_invocation).
evidence(e47, table1, stage_3_post_synthesis_verification, symbiyosys, tool_behavior, third_party_tool_invoked, yes, third_party_tool_invocation).
evidence(e48, table1, stage_5_placement_and_routing, qrouter, tool_behavior, shell_injection, yes, tool_execution_path).
evidence(e49, table1, stage_4_design_for_testability, fault, tool_behavior, artifact_access, present, design_test_artifacts).
evidence(e50, table1, stage_9_manufacturing_testing, atalanta, tool_behavior, artifact_access, present, test_manufacturing_artifacts).

% -----------------------------
% Evidence-to-model mappings M1-M40
% -----------------------------

evidence_mapping(m1, e2, asw, vulnerability_or_configuration_exploitation, direct).
evidence_mapping(m2, e2, msw, consumed_software_behavior_control, direct).
evidence_mapping(m3, e2, avlsi, design_tampering_or_malicious_modification, indirect).
evidence_mapping(m4, e2, avlsi, hardware_trojan_backdoor_or_logic_bomb, indirect).

evidence_mapping(m5, e3, asw, vulnerability_or_configuration_exploitation, direct).
evidence_mapping(m6, e3, msw, vulnerability_or_configuration_based_control, direct).

evidence_mapping(m7, e8, msw, consumed_software_behavior_control, direct).
evidence_mapping(m8, e9, msw, consumed_software_behavior_control, direct).

evidence_mapping(m9, e10, msw, consumed_software_behavior_control, direct).
evidence_mapping(m10, e10, avlsi, design_tampering_or_malicious_modification, indirect).
evidence_mapping(m11, e10, avlsi, access_abuse_or_system_disruption, indirect).

evidence_mapping(m12, e16, msw, consumed_software_behavior_control, direct).
evidence_mapping(m13, e19, msw, consumed_software_behavior_control, direct).
evidence_mapping(m14, e19, avlsi, design_tampering_or_malicious_modification, indirect).

evidence_mapping(m15, e22, asw, vulnerability_or_configuration_exploitation, direct).
evidence_mapping(m16, e22, msw, vulnerability_or_configuration_based_control, direct).
evidence_mapping(m17, e27, msw, consumed_software_behavior_control, direct).
evidence_mapping(m18, e26, asw, vulnerability_or_configuration_exploitation, indirect).

evidence_mapping(m19, e35, msw, consumed_software_behavior_control, direct).
evidence_mapping(m20, e34, asw, vulnerability_or_configuration_exploitation, indirect).
evidence_mapping(m21, e28, msw, consumed_software_behavior_control, indirect).

evidence_mapping(m22, e36, asw, build_or_toolchain_compromise, direct).
evidence_mapping(m23, e36, msw, build_or_toolchain_execution_control, direct).
evidence_mapping(m24, e37, msw, build_or_toolchain_execution_control, direct).
evidence_mapping(m25, e48, asw, build_or_toolchain_compromise, direct).
evidence_mapping(m26, e48, msw, build_or_toolchain_execution_control, direct).

evidence_mapping(m27, e38, msw, consumed_software_behavior_control, direct).
evidence_mapping(m28, e41, asw, vulnerability_or_configuration_exploitation, direct).
evidence_mapping(m29, e41, msw, vulnerability_or_configuration_based_control, direct).
evidence_mapping(m30, e44, msw, consumed_software_behavior_control, direct).
evidence_mapping(m31, e43, asw, vulnerability_or_configuration_exploitation, indirect).
evidence_mapping(m32, e39, msw, consumed_software_behavior_control, indirect).

evidence_mapping(m33, e45, asw, build_or_toolchain_compromise, direct).
evidence_mapping(m34, e45, msw, build_or_toolchain_execution_control, direct).
evidence_mapping(m35, e46, asw, build_or_toolchain_compromise, direct).
evidence_mapping(m36, e46, msw, build_or_toolchain_execution_control, direct).
evidence_mapping(m37, e47, asw, build_or_toolchain_compromise, direct).
evidence_mapping(m38, e47, msw, build_or_toolchain_execution_control, direct).
evidence_mapping(m39, e49, avlsi, access_abuse_or_system_disruption, indirect).
evidence_mapping(m40, e50, avlsi, access_abuse_or_system_disruption, indirect).

% Helper relation.
evidence_supports_category(EvidenceID, ModelLayer, ModelCategory, Strength) :-
    evidence_mapping(_, EvidenceID, ModelLayer, ModelCategory, Strength).
