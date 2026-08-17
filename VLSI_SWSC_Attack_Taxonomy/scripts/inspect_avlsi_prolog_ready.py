import csv
from pathlib import Path
from collections import Counter

path = Path("VLSI_SWSC_Attack_Taxonomy/data/Avlsi/avlsi_mechanism_mapping_prolog_ready.csv")

with path.open(newline="", encoding="utf-8-sig") as f:
    reader = csv.DictReader(f)
    rows = list(reader)

print("File:", path)

print("\nColumns:")
print(reader.fieldnames)

print("\nRows:", len(rows))

stage_counts = Counter(row.get("stage_S_norm", "").strip() for row in rows)
outcome_counts = Counter(row.get("outcome_O", "").strip() for row in rows)

print("\nStage values:")
for k, v in stage_counts.most_common():
    print(f"{k}: {v}")

print("\nOutcome values:")
for k, v in outcome_counts.most_common():
    print(f"{k}: {v}")

print("\nRows with unmapped stage:")
print(stage_counts.get("unmapped_to_model_stage", 0))

print("\nFirst 5 rows:")
for row in rows[:5]:
    print(row)
