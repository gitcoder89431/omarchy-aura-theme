#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
THEME_FILE="${1:-$REPO_ROOT/walker.css}"

printf '%s\n' \
  "Open browser" \
  "Open terminal" \
  "Open editor" \
  "Toggle bluetooth" \
  "Run update check" \
  "Start dev session" \
  | walker -d -p "Aura Selection Demo" -t "$THEME_FILE"
