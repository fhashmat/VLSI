import csv
from pathlib import Path

input_path = Path("VLSI_SWSC_Attack_Taxonomy/data/Avlsi/avlsi_mechanism_mapping_prolog_ready.csv")
output_path = Path("VLSI_SWSC_Attack_Taxonomy/prolog_model/kb_avlsi_generated.pl")

def split_values(value):
    value = (value or "").strip()
    if not value or value == "unmapped_to_model_stage":
        return []
    return [v.strip() for v in value.split(";") if v.strip()]

with input_path.open(newline="", encoding="utf-8-sig") as f:
    reader = csv.DictReader(f)
    rows = list(reader)

vlsi_attack_vectors = set()
mechanisms = set()
stages = set()
outcomes = set()

mechanism_attack_facts = set()
possible_at_facts = set()
causes_facts = set()

skipped_unmapped = 0

for row in rows:
    a_vlsi = row["vlsi_attack_vector_A"].strip()
    mechanism = row["mechanism_M"].strip()
    stage_values = split_values(row["stage_S_norm"])
    outcome_values = split_values(row["outcome_O"])

    if not stage_values:
        skipped_unmapped += 1
        continue

    vlsi_attack_vectors.add(a_vlsi)
    mechanisms.add(mechanism)
    mechanism_attack_facts.add((mechanism, a_vlsi))

    for stage in stage_values:
        stages.add(stage)
        possible_at_facts.add((mechanism, stage))

        for outcome in outcome_values:
            outcomes.add(outcome)
            causes_facts.add((mechanism, stage, outcome))

with output_path.open("w", encoding="utf-8") as out:
    out.write("% Auto-generated from avlsi_mechanism_mapping_prolog_ready.csv\n")
    out.write("% Do not edit manually. Regenerate using scripts/generate_kb_avlsi.py\n\n")

    for a in sorted(vlsi_attack_vectors):
        out.write(f"vlsi_attack_vector({a}).\n")

    out.write("\n")
    for m in sorted(mechanisms):
        out.write(f"mechanism({m}).\n")

    out.write("\n")
    for s in sorted(stages):
        out.write(f"stage({s}).\n")

    out.write("\n")
    for o in sorted(outcomes):
        out.write(f"outcome({o}).\n")

    out.write("\n")
    for mechanism, a_vlsi in sorted(mechanism_attack_facts):
        out.write(f"mechanism_enables_attack({mechanism}, {a_vlsi}).\n")

    out.write("\n")
    for mechanism, stage in sorted(possible_at_facts):
        out.write(f"possible_at({mechanism}, {stage}).\n")

    out.write("\n")
    for mechanism, stage, outcome in sorted(causes_facts):
        out.write(f"causes({mechanism}, {stage}, {outcome}).\n")

print("Generated:", output_path)
print("Input rows:", len(rows))
print("Skipped unmapped rows:", skipped_unmapped)
print("VLSI attack vectors:", len(vlsi_attack_vectors))
print("Mechanisms:", len(mechanisms))
print("Stages:", len(stages))
print("Outcomes:", len(outcomes))
print("mechanism_enables_attack facts:", len(mechanism_attack_facts))
print("possible_at facts:", len(possible_at_facts))
print("causes facts:", len(causes_facts))
