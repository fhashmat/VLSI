# Synthesized Prolog Model Version 1

This folder contains the clean synthesized Prolog model.

This model does not load or depend on the older raw/mapping-based Prolog model in `prolog_model/`.

## Model structure

The modeled path is:

```text
A_sw -> M_sw -> A_vlsi -> Stage -> Outcome
```
where:

**A_sw** = synthesized software supply-chain attack category

**M_sw** = software-side attacker capability

**A_vlsi** = synthesized VLSI-side attack category

**Stage** = VLSI design-flow stage

**Outcome** = security outcome

## Files
**kb_entities.pl**        entity definitions

**kb_relationships.pl**   reviewed relationships between entities

**kb_rules.pl**           Prolog rules and validation checks

**queries.pl**            query helpers

**load.pl**               model loader

**run_model_queries.sh**  script to run main model queries

## Run the model

From the repository root:
```text
./prolog_synthesized_model_version1/run_model_queries.sh
```
Or run individual queries from inside this folder:
```text
cd ~/VLSI/VLSI_SWSC_Attack_Taxonomy/prolog_synthesized_model_version1
```

## Entity counts:
```text
swipl -q -s load.pl -g "entity_counts(A,M,V,S,O), writeln((A,M,V,S,O)), halt."
```

## Total synthesized attack paths:
```text
swipl -q -s load.pl -g "count_attack_paths(N), writeln(N), halt."
```

## Attack paths by outcome:
```text
swipl -q -s load.pl -g "attack_paths_by_outcome(L), writeln(L), halt."
```

## Attack paths by stage:
```text
swipl -q -s load.pl -g "attack_paths_by_stage(L), writeln(L), halt."
```

## Attack paths by A_vlsi category:
```text
swipl -q -s load.pl -g "attack_paths_by_avlsi(L), writeln(L), halt."
```


