# VLSI-SWSC Taxonomy Data

This folder contains the source extraction, mapping, model-synthesis, and feasibility data used to construct and evaluate the VLSI-SWSC attack taxonomy.

The overall data flow is:

`A_sw source extraction -> software-side mechanism mapping -> A_vlsi source extraction -> bridge/model synthesis -> synthesized attack paths -> feasibility evaluation`

## Contents

- `Asw/`  
  Contains software supply-chain attack-vector extraction sheets and mappings from normalized `A_sw` vectors to candidate software-side mechanisms.

- `Avlsi/`  
  Contains VLSI-side attack-vector extraction sheets and mappings used to connect software-side capabilities to `A_vlsi` attack classes.

- `asw_avlsi_bridge_mapping.csv`  
  Contains the intermediate bridge mappings used to relate software-side mechanisms to VLSI-side attack classes during taxonomy construction.

- `model_synthesis_v1/`  
  Contains the synthesized model outputs, including model summary statistics and the complete set of 717 possible attack paths following:

  `A_sw -> M_sw -> A_vlsi -> Stage -> Outcome`

- `feasibility_v1/`  
  Contains the empirical evidence, category-level support, path-level feasibility results, and scripts used to classify the 717 synthesized paths as High, Medium, or Low feasibility.

## Notes

The extraction and mapping files represent the data-preparation and taxonomy-construction stages. The synthesized attack paths are model-generated possible attacks; the feasibility layer subsequently evaluates the degree of empirical support for those paths.

Detailed descriptions of the files and processing steps are provided in the README files within each subfolder.



