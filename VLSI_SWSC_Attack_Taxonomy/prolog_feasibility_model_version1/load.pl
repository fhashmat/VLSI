% Load the core synthesized attack-path model first.
:- consult('../prolog_synthesized_model_version1/load.pl').

% Load feasibility layer.
:- consult('feasibility_entities.pl').
:- consult('feasibility_evidence_facts.pl').
:- consult('feasibility_rules.pl').
