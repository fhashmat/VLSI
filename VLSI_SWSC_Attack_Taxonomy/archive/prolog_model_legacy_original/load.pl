
/* load.pl is the entry point of the prolog model. It loads all the entity files, generated facts files etc.
:- multifile swsc_vector/1.  this tells prolog that swsc vector facts may be identified in more than 1 file. 
 This tells Prolog that outcome/1 facts may be defined in more than one file.
 Example outcomes: confidentiality, integrity, availability.
:- multifile outcome/1.
% This tells Prolog that enables/2 facts may be defined in more than one file.
% This is used for ASW -> Msw.
% Example: enables(typosquatting, attacker_controlled_lookalike_software_artifact).
:- multifile enables/2.
 */
:- multifile swsc_vector/1. 
:- multifile vlsi_attack_vector/1.
:- multifile mechanism/1.
:- multifile stage/1.
:- multifile outcome/1.
:- multifile enables/2.
:- multifile realizes_in_vlsi/2.
:- multifile candidate_realizes_in_vlsi/2.
:- multifile mechanism_enables_attack/2.
:- multifile possible_at/2.
:- multifile causes/3.
/* 
% This allows swsc_vector/1 facts to appear in different places/files without Prolog warning.
:- discontiguous swsc_vector/1.
 */
:- discontiguous swsc_vector/1.
:- discontiguous vlsi_attack_vector/1.
:- discontiguous mechanism/1.
:- discontiguous stage/1.
:- discontiguous outcome/1.
:- discontiguous enables/2.
:- discontiguous realizes_in_vlsi/2.
:- discontiguous candidate_realizes_in_vlsi/2.
:- discontiguous mechanism_enables_attack/2.
:- discontiguous possible_at/2.
:- discontiguous causes/3.
/* 
Load the basic entity definitions.
 */
:- ensure_loaded(kb1_entities).
:- ensure_loaded(kb2_relationships).
:- ensure_loaded(kb_asw_generated).
:- ensure_loaded(kb_avlsi_generated).
:- ensure_loaded(kb_bridge_generated).
:- ensure_loaded(kb3_rules).

% Pass-1 synthesis layer.
:- ensure_loaded(kb_synthesis_pass1).
:- ensure_loaded(kb4_synthesized_rules).
