import csv
import subprocess
from collections import Counter
from pathlib import Path

SCORED_PATHS = Path("data/feasibility_v1/scored_possible_attack_paths_v1.csv")
HIGH_PATHS = Path("data/feasibility_v1/high_feasibility_attack_paths_v1.csv")

EXPECTED = {
    "High": 60,
    "Medium": 346,
    "Low": 311,
    "Total": 717,
    "Evidence": 50,
    "Mappings": 40,
}

def read_csv_rows(path):
    if not path.exists():
        raise FileNotFoundError(f"Missing file: {path}")
    with path.open(newline="") as f:
        return list(csv.DictReader(f))

def get_prolog_counts():
    cmd = [
        "swipl",
        "-q",
        "-s", "load.pl",
        "-s", "queries.pl",
        "-g",
        "feasibility_counts(H,Med,L,T), evidence_counts(E,Map), format('~w,~w,~w,~w,~w,~w~n',[H,Med,L,T,E,Map]), halt."
    ]

    result = subprocess.run(
        cmd,
        cwd="prolog_feasibility_model_version1",
        check=True,
        capture_output=True,
        text=True,
    )

    values = result.stdout.strip().split(",")
    if len(values) != 6:
        raise ValueError(f"Unexpected Prolog output: {result.stdout}")

    h, m, l, t, e, mp = map(int, values)
    return {
        "High": h,
        "Medium": m,
        "Low": l,
        "Total": t,
        "Evidence": e,
        "Mappings": mp,
    }

def main():
    scored_rows = read_csv_rows(SCORED_PATHS)
    high_rows = read_csv_rows(HIGH_PATHS)

    csv_counts = Counter(r["feasibility_level"] for r in scored_rows)
    prolog_counts = get_prolog_counts()

    print("CSV scored-path counts:")
    print(f"High: {csv_counts['High']}")
    print(f"Medium: {csv_counts['Medium']}")
    print(f"Low: {csv_counts['Low']}")
    print(f"Total: {len(scored_rows)}")

    print("\nHigh-path file:")
    print(f"Rows: {len(high_rows)}")
    print(f"Labels: {Counter(r['feasibility_level'] for r in high_rows)}")

    print("\nProlog counts:")
    for key in ["High", "Medium", "Low", "Total", "Evidence", "Mappings"]:
        print(f"{key}: {prolog_counts[key]}")

    assert len(scored_rows) == EXPECTED["Total"]
    assert csv_counts["High"] == EXPECTED["High"]
    assert csv_counts["Medium"] == EXPECTED["Medium"]
    assert csv_counts["Low"] == EXPECTED["Low"]

    assert len(high_rows) == EXPECTED["High"]
    assert set(r["feasibility_level"] for r in high_rows) == {"High"}

    for key, expected_value in EXPECTED.items():
        assert prolog_counts[key] == expected_value, (
            f"Prolog {key} mismatch: expected {expected_value}, got {prolog_counts[key]}"
        )

    assert prolog_counts["High"] == csv_counts["High"]
    assert prolog_counts["Medium"] == csv_counts["Medium"]
    assert prolog_counts["Low"] == csv_counts["Low"]
    assert prolog_counts["Total"] == len(scored_rows)

    print("\nConsistency check passed.")

if __name__ == "__main__":
    main()
