# ASW Data

This folder contains software supply-chain attack-vector extraction sheets used to build the `A_sw -> M_sw` side of the VLSI-SWSC taxonomy.

Here, `A_sw` denotes the software supply-chain attack vector, while `M_sw` denotes the software-side mechanism or attacker capability enabled by that vector.

## Source Extraction Files

The current extraction sheets are based on the following software supply-chain attack taxonomy and measurement papers:

- `ladisa_sok_figure4_asw_taxonomy.csv`  
  P. Ladisa, H. Plate, M. Martinez, and O. Barais, “SoK: Taxonomy of Attacks on Open-Source Software Supply Chains.”

- `backstabber_attack_examples_map.csv`  
  M. Ohm, H. Plate, A. Sykosch, and M. Meier, “Backstabber’s Knife Collection: A Review of Open Source Software Supply Chain Attacks.”

- `gokkaya_section5_ssc_attack_taxonomy.csv`  
  Gokkaya et al., “Software Supply Chain: A Taxonomy of Attacks, Mitigations and Risk Assessment Strategies.”

- `gu_section3_registry_threats.csv`  
  Y. Gu et al., “Investigating Package Related Security Threats in Software Registries.”

## Mechanism Mapping Files

- `asw_mechanism_mapping_master.csv`  
  Master curation file containing the normalized attack name, its role in the taxonomy (`A_sw`, subtype, root, execution trigger, or execution condition), and the candidate software-side mechanism associated with that attack.

- `asw_mechanism_mapping_prolog_ready.csv`  
  Cleaned mapping used for model generation. It retains the normalized `A_sw` attack vectors and their corresponding normalized software-side mechanisms in a Prolog-ready format.

The candidate mechanisms in these files are fine-grained intermediate mappings that are later consolidated into the final `M_sw` capability classes used in the taxonomy model.