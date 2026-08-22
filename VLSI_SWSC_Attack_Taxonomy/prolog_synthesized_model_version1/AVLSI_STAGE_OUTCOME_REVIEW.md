# A_vlsi to Stage and Outcome Review Notes

## Criterion

A_vlsi is linked to a stage only when the VLSI-side attack class can plausibly be introduced, enabled, observed, or propagated at that stage.

A_vlsi is linked to an outcome based on its primary security effect:
- confidentiality: leakage, theft, exposure, reverse engineering, asset/IP compromise
- integrity: design modification, malicious functionality, tampering, Trojan/backdoor insertion
- availability: disablement, failure, unusable design, denial of correct operation

The model should avoid linking every A_vlsi category to every stage/outcome unless there is a clear rationale.

## Proposed A_vlsi to Stage/Outcome links

### 1. ip_theft_misuse_or_counterfeiting

Candidate stages:
- design_specifications
- high_level_synthesis
- logic_synthesis
- placement_and_routing
- physical_verification_and_signoff
- post_silicon_validation

Candidate outcomes:
- confidentiality
- integrity

Rationale:
This category involves theft, misuse, reverse engineering, overbuilding, cloning, or counterfeiting of IP/design assets. It mainly affects confidentiality, but can also affect integrity when misuse or counterfeit artifacts enter the flow.

### 2. design_tampering_or_malicious_modification

Candidate stages:
- design_specifications
- high_level_synthesis
- logic_synthesis
- post_synthesis_verification
- placement_and_routing
- physical_verification_and_signoff

Candidate outcomes:
- integrity
- availability

Rationale:
This category changes the design or processor behavior. The primary outcome is integrity compromise, but it can also cause availability loss if the modified design fails or becomes unusable.

### 3. hardware_trojan_backdoor_or_logic_bomb

Candidate stages:
- high_level_synthesis
- logic_synthesis
- post_synthesis_verification
- placement_and_routing
- physical_verification_and_signoff
- post_silicon_validation

Candidate outcomes:
- confidentiality
- integrity
- availability

Rationale:
Trojan, backdoor, and logic-bomb behavior can modify functionality, leak information, or disable the system depending on payload.

### 4. information_leakage_or_asset_exposure

Candidate stages:
- design_specifications
- high_level_synthesis
- logic_synthesis
- post_synthesis_verification
- placement_and_routing
- physical_verification_and_signoff
- post_silicon_validation

Candidate outcomes:
- confidentiality

Rationale:
This category is primarily about exposing design assets, secrets, test/debug information, or other sensitive information.

### 5. side_channel_fault_or_physical_attack

Candidate stages:
- high_level_synthesis
- logic_synthesis
- placement_and_routing
- physical_verification_and_signoff
- post_silicon_validation

Candidate outcomes:
- confidentiality
- integrity
- availability

Rationale:
Side-channel leakage affects confidentiality. Fault or physical attacks can also corrupt operation or disable the system, causing integrity or availability impact.

### 6. hls_induced_security_vulnerability

Candidate stages:
- high_level_synthesis
- post_synthesis_verification

Candidate outcomes:
- confidentiality
- integrity
- availability

Rationale:
This category is specific to HLS-generated design behavior, including leakage, control-flow/FSM weaknesses, fault susceptibility, scheduling/resource-sharing issues, reset/initialization issues, and interface/control-signal weaknesses.

### 7. ic_replacement_or_substitution

Candidate stages:
- post_silicon_validation

Candidate outcomes:
- integrity
- availability

Rationale:
This category is held separate because IC replacement/substitution is not directly caused by software-side design-flow control unless there is a clear path to substituted hardware. It is therefore restricted for now.

### 8. access_abuse_or_system_disruption

Candidate stages:
- design_specifications
- high_level_synthesis
- logic_synthesis
- post_synthesis_verification
- placement_and_routing
- physical_verification_and_signoff
- post_silicon_validation

Candidate outcomes:
- integrity
- availability

Rationale:
Privilege abuse or system disruption can affect correctness of design artifacts, tool execution, verification, or system operation. It primarily affects integrity and availability.
