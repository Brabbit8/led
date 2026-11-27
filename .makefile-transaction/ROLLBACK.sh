#!/bin/sh
set -eu

target=${1:?usage: ROLLBACK.sh TARGET_COPY [BASELINE_FILE]}
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
baseline=${2:-"$script_dir/BASELINE.Makefile"}

if [ ! -f "$target" ]; then
    echo "target copy not found: $target" >&2
    exit 2
fi
if [ ! -f "$baseline" ]; then
    echo "baseline file not found: $baseline" >&2
    exit 2
fi
cp -- "$baseline" "$target"
