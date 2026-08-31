#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PDF="$ROOT/release/Packings_of_Smoothed_Polygons_Lecture_Notes.pdf"
[[ -f "$PDF" ]] || { echo "Missing PDF: $PDF" >&2; exit 1; }
pages="$(pdfinfo "$PDF" | awk '/^Pages:/ {print $2}')"
[[ "$pages" -ge 120 ]] || { echo "Unexpectedly short PDF: $pages pages" >&2; exit 1; }
tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT
pdftotext "$PDF" "$tmp"
grep -q "Mahler" "$tmp" || { echo "Mahler material missing" >&2; exit 1; }
grep -q "Fuller" "$tmp" || { echo "Fuller-system material missing" >&2; exit 1; }
echo "OK: $(basename "$PDF") - $pages pages"
