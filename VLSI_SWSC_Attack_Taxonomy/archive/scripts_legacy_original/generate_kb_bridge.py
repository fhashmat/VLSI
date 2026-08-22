import csv
from pathlib import Path

input_path = Path("VLSI_SWSC_Attack_Taxonomy/data/asw_avlsi_bridge_mapping.csv")
output_path = Path("VLSI_SWSC_Attack_Taxonomy/prolog_model/kb_bridge_generated.pl")

def clean(value):
    return (value or "").strip()

def get_col(row, *names):
    lowered = {k.strip().lower(): v for k, v in row.items()}
    for name in names:
        key = name.strip().lower()
        if key in lowered:
            return clean(lowered[key])
    return ""

with input_path.open(newline="", encoding="utf-8-sig") as f:
    reader = csv.DictReader(f)
    rows = list(reader)

keep_facts = set()
review_facts = set()
skipped = 0

for row in rows:
    m_sw = get_col(row, "M_sw", "M_SW")
    m_vlsi = get_col(row, "M_vlsi", "M_VLSI")
    decision = get_col(row, "decision").lower()

    if not m_sw or not m_vlsi:
        skipped += 1
        continue

    if decision == "keep":
        keep_facts.add((m_sw, m_vlsi))
    elif decision == "review":
        review_facts.add((m_sw, m_vlsi))
    else:
        skipped += 1

with output_path.open("w", encoding="utf-8") as out:
    out.write("% Auto-generated from asw_avlsi_bridge_mapping.csv\n")
    out.write("% Do not edit manually. Regenerate using scripts/generate_kb_bridge.py\n\n")

    out.write("% Final bridge facts used in attack_path/6\n")
    for m_sw, m_vlsi in sorted(keep_facts):
        out.write(f"realizes_in_vlsi({m_sw}, {m_vlsi}).\n")

    out.write("\n% Candidate bridge facts kept for later review\n")
    for m_sw, m_vlsi in sorted(review_facts):
        out.write(f"candidate_realizes_in_vlsi({m_sw}, {m_vlsi}).\n")

print("Generated:", output_path)
print("Input rows:", len(rows))
print("Keep bridge facts:", len(keep_facts))
print("Review candidate facts:", len(review_facts))
print("Skipped rows:", skipped)
