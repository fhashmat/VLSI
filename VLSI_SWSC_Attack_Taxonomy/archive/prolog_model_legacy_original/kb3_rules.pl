/* A_sw enables M_sw
   The software supply-chain attack vector gives the attacker a software-side capability.
   M_sw realizes M_vlsi
   The software-side capability is translated into a VLSI-side mechanism inside the VLSI flow.
   M_vlsi enables A_vlsi
   The VLSI-side mechanism makes a known VLSI attack class possible.
   M_vlsi is possible at stage S
   The VLSI-side mechanism can occur at a specific VLSI design stage.
   M_vlsi at stage S causes outcome O
   When that mechanism occurs at that stage, it causes a security outcome:
   confidentiality, integrity, or availability.
   Example: For example, typosquatting can introduce a lookalike software artifact. That artifact can realize a VLSI mechanism such as adding, removing, or bypassing logic. That mechanism enables a function-modifying Trojan, can appear at a VLSI design stage such as post-silicon validation, and can lead to an integrity impact.
   typosquatting
   → attacker_controlled_lookalike_software_artifact
   → add_remove_or_bypass_logic
   → function_modifying_trojan
   → post_silicon_validation
   → integrity
   Example Detail:
   1. A_sw enables M_sw: typosquatting enables attacker_controlled_lookalike_software_artifact
   A fake/lookalike package is introduced through typosquatting.
   So the attacker gets control over a software artifact that looks legitimate.
   2. M_sw realizes M_vlsi
   attacker_controlled_lookalike_software_artifact realizes add_remove_or_bypass_logic. That lookalike software artifact can affect the VLSI flow by adding, removing, or bypassing design logic.
   3. M_vlsi enables A_vlsi
   add_remove_or_bypass_logic enables function_modifying_trojan
   4. M_vlsi is possible at stage S
   add_remove_or_bypass_logic is possible at post_silicon_validation
   5. M_vlsi at stage S causes O
   add_remove_or_bypass_logic at post_silicon_validation causes integrity
 */

% Right-hand-side VLSI realization path:
% M_vlsi -> A_vlsi, M_vlsi -> S, and M_vlsi at S -> O.
/* Example: rhs_path is the right-hand-side VLSI realization rule. It starts from a VLSI-side mechanism and checks which VLSI attack class it enables, where it can occur in the design flow, and what security outcome it can cause.
A_sw enables M_sw
 add_remove_or_bypass_logic
→ function_modifying_trojan
→ post_silicon_validation
→ integrity
 */
rhs_path(M_vlsi, A_vlsi, S, O) :-
    mechanism_enables_attack(M_vlsi, A_vlsi),
    possible_at(M_vlsi, S),
    causes(M_vlsi, S, O).

% Complete ASW-to-AVLSI attack path:
% A_sw -> M_sw -> M_vlsi -> A_vlsi -> S -> O.

attack_path(A_sw, A_vlsi, M_sw, M_vlsi, S, O) :-
    enables(A_sw, M_sw),
    realizes_in_vlsi(M_sw, M_vlsi),
    mechanism_enables_attack(M_vlsi, A_vlsi),
    possible_at(M_vlsi, S),
    causes(M_vlsi, S, O).

% Candidate path using bridge rows marked review.
/*
Bridge decision rationale:
A bridge is marked "keep" when M_sw directly provides enough control to
realize M_vlsi. Example: attacker_controlled_source_code -> rtl_design_attack,
because source-code control can directly modify RTL design logic.
A bridge is marked "review" when the mapping is plausible but depends on extra
assumptions. Example: attacker_controlled_dependency_resolution ->
power_or_time_side_channel_exposure, because this only applies if the dependency
affects hardware generation, optimization, timing, or layout behavior.
Only "keep" mappings are used in attack_path/6. "review" mappings are kept
separately in candidate_attack_path/6 to avoid overclaiming.
*/
candidate_attack_path(A_sw, A_vlsi, M_sw, M_vlsi, S, O) :-
    enables(A_sw, M_sw),
    candidate_realizes_in_vlsi(M_sw, M_vlsi),
    mechanism_enables_attack(M_vlsi, A_vlsi),
    possible_at(M_vlsi, S),
    causes(M_vlsi, S, O).
