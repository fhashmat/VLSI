#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

swipl -q -s load.pl -s queries.pl -g "print_all_counts, nl, print_high_breakdowns, halt."
