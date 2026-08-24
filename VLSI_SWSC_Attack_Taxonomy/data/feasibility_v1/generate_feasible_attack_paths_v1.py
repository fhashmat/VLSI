import csv
from collections import Counter
from pathlib import Path

PATHS_FILE = Path("data/model_synthesis_v1/synthesized_attack_paths_v1.csv")
SUMMARY_FILE = Path("data/feasibility_v1/category_feasibility_summary_v1.csv")
OUTPUT_FILE = Path("data/feasibility_v1/scored_possible_attack_paths_v1.csv")

# Stages with direct empirical evidence in feasibility_evidence_v1.csv.
# stage_0 and stage_8 are not included because v1 evidence does not directly
# observe design specification or post-silicon validation.
OBSERVED_STAGES = {
    "stage_1_high_level_synthesis",
    "stage_2_logic_synthesis",
    "stage_3_post_synthesis_verification",
    "stage_4_design_for_testability",
    "stage_5_placement_and_routing",
    "stage_6_static_timing_analysis",
    "stage_7_physical_verification_and_signoff",
    "stage_9_manufacturing_testing",
}

SCORE = {"Low": 1, "Medium": 2, "High": 3}


def load_category_summary(path):
    summary = {"A_sw": {}, "M_sw": {}, "A_vlsi": {}}

    with path.open(newline="") as f:
        reader = csv.DictReader(f)

        required = {
            "model_layer",
            "model_category",
            "supporting_evidence_ids",
            "direct_mapping_count",
            "indirect_mapping_count",
            "feasibility_level",
            "summary_rationale",
        }
        missing = required - set(reader.fieldnames or [])
        if missing:
            raise ValueError(f"Missing columns in category summary: {sorted(missing)}")

        for row in reader:
            layer = row["model_layer"]
            category = row["model_category"]

            if layer not in summary:
                raise ValueError(f"Unknown model_layer in summary: {layer}")

            summary[layer][category] = row

    return summary


def require_category(summary, layer, category):
    if category not in summary[layer]:
        raise ValueError(f"Missing {layer} category in feasibility summary: {category}")


def score_path(asw_row, msw_row, avlsi_row, stage):
    asw_level = asw_row["feasibility_level"]
    msw_level = msw_row["feasibility_level"]
    avlsi_level = avlsi_row["feasibility_level"]

    stage_evidence = "observed_in_v1" if stage in OBSERVED_STAGES else "not_observed_in_v1"

    asw_supported = SCORE[asw_level] >= 2
    msw_supported = SCORE[msw_level] >= 2
    avlsi_supported = SCORE[avlsi_level] >= 2
    observed_stage = stage_evidence == "observed_in_v1"

    # Strict High criterion:
    # The software supply-chain entry type, the software-side capability,
    # the VLSI-side category, and the stage must all have evidence support.
    if (
        asw_level == "High"
        and msw_level == "High"
        and avlsi_supported
        and observed_stage
    ):
        return (
            "High",
            "High because the A_sw category and M_sw capability both have High evidence support, "
            "the VLSI-side category has at least Medium support, and the stage is observed in the v1 evidence."
        )

    # Medium criterion:
    # The path has partial support, but it does not satisfy all High criteria.
    if (
        (asw_supported and msw_supported)
        or (asw_level == "High" and observed_stage)
        or (msw_level == "High" and observed_stage)
        or (avlsi_supported and observed_stage and (asw_supported or msw_supported))
    ):
        return (
            "Medium",
            "Medium because the path has partial or indirect evidence support, "
            "but it does not satisfy all High criteria."
        )

    return (
        "Low",
        "Low because the path is model-possible but weakly supported by the "
        "current v1 feasibility evidence."
    )


def main():
    if not PATHS_FILE.exists():
        raise FileNotFoundError(f"Missing model path file: {PATHS_FILE}")
    if not SUMMARY_FILE.exists():
        raise FileNotFoundError(f"Missing category feasibility summary: {SUMMARY_FILE}")

    summary = load_category_summary(SUMMARY_FILE)

    counts = Counter()

    with PATHS_FILE.open(newline="") as f_in, OUTPUT_FILE.open("w", newline="") as f_out:
        reader = csv.DictReader(f_in)

        required = {"A_sw", "M_sw", "A_vlsi", "Stage", "Outcome"}
        missing = required - set(reader.fieldnames or [])
        if missing:
            raise ValueError(f"Missing columns in path file: {sorted(missing)}")

        fieldnames = [
            "path_id",
            "A_sw",
            "M_sw",
            "A_vlsi",
            "Stage",
            "Outcome",
            "asw_feasibility",
            "msw_feasibility",
            "avlsi_feasibility",
            "stage_evidence",
            "feasibility_level",
            "asw_supporting_evidence_ids",
            "msw_supporting_evidence_ids",
            "avlsi_supporting_evidence_ids",
            "feasibility_rationale",
        ]

        writer = csv.DictWriter(f_out, fieldnames=fieldnames)
        writer.writeheader()

        for i, row in enumerate(reader, start=1):
            asw = row["A_sw"]
            msw = row["M_sw"]
            avlsi = row["A_vlsi"]
            stage = row["Stage"]

            require_category(summary, "A_sw", asw)
            require_category(summary, "M_sw", msw)
            require_category(summary, "A_vlsi", avlsi)

            asw_row = summary["A_sw"][asw]
            msw_row = summary["M_sw"][msw]
            avlsi_row = summary["A_vlsi"][avlsi]

            feasibility_level, rationale = score_path(asw_row, msw_row, avlsi_row, stage)
            stage_evidence = "observed_in_v1" if stage in OBSERVED_STAGES else "not_observed_in_v1"

            counts[feasibility_level] += 1

            writer.writerow({
                "path_id": f"P{i}",
                "A_sw": asw,
                "M_sw": msw,
                "A_vlsi": avlsi,
                "Stage": stage,
                "Outcome": row["Outcome"],
                "asw_feasibility": asw_row["feasibility_level"],
                "msw_feasibility": msw_row["feasibility_level"],
                "avlsi_feasibility": avlsi_row["feasibility_level"],
                "stage_evidence": stage_evidence,
                "feasibility_level": feasibility_level,
                "asw_supporting_evidence_ids": asw_row["supporting_evidence_ids"],
                "msw_supporting_evidence_ids": msw_row["supporting_evidence_ids"],
                "avlsi_supporting_evidence_ids": avlsi_row["supporting_evidence_ids"],
                "feasibility_rationale": rationale,
            })

    total = sum(counts.values())
    print(f"Wrote {OUTPUT_FILE}")
    print(f"Total paths scored: {total}")
    print(f"High: {counts['High']}")
    print(f"Medium: {counts['Medium']}")
    print(f"Low: {counts['Low']}")


if __name__ == "__main__":
    main()
