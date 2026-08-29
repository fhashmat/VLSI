# AVLSI Data

This folder contains VLSI-side attack-vector extraction sheets used to build the `M_sw -> A_vlsi` side of the VLSI-SWSC taxonomy.

Here, `A_vlsi` denotes the VLSI-side attack class that may be realized through a software-side capability represented by `M_sw`.

## Source Extraction Files

The current extraction sheets are based on the following VLSI and hardware-security papers:

- `liu_qu_vlsi_supply_chain_survey_avlsi.csv`  
  Liu et al., “VLSI Supply Chain Security Risks and Mitigation Techniques: A Survey.”

- `pundir_hls_security_vulnerabilities_avlsi.csv`  
  Pundir et al., “Analyzing Security Vulnerabilities Induced by High-Level Synthesis.”

- `secure_physical_design_avlsi.csv`  
  Tehranipoor et al., “Secure Physical Design.”

- `tehranipoor_koushanfar_hardware_trojan_taxonomy_avlsi.csv`  
  Tehranipoor and Koushanfar, “A Survey of Hardware Trojan Taxonomy and Detection.”

- `xiao_security_rule_checking_ic_design_avlsi.csv`  
  Xiao et al., “Security Rule Checking in IC Design.”

## Mechanism Mapping Files

- `avlsi_mechanism_mapping_master.csv`  
  Master curation file containing the normalized VLSI attack name, its role in the taxonomy, and the candidate software-side mechanism associated with that attack.

- `avlsi_mechanism_mapping_prolog_ready.csv`  
  Cleaned mapping used for model generation. It retains normalized `A_vlsi` attack vectors and their corresponding normalized software-side mechanisms in a Prolog-ready format.

The candidate mechanisms in these files are intermediate mappings used to connect software-side capabilities to the final `A_vlsi` attack classes in the taxonomy model.




