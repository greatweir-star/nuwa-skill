#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required=(
  "skills/ppt-deck-studio/SKILL.md"
  "skills/ppt-deck-studio/agents/openai.yaml"
  "skills/ppt-deck-studio/examples/prompts.md"
  "docs/ppt-deck-studio-usage.md"
  "references/ppt-deck-studio/source-projects.md"
  "references/ppt-deck-studio/editable-pptx.md"
  "references/ppt-deck-studio/html-stage-deck.md"
  "references/ppt-deck-studio/image-card-deck.md"
  "references/ppt-deck-studio/style-systems.md"
  "references/ppt-deck-studio/quality-gates.md"
  "assets/ppt-deck-studio/html-stage-template.html"
  ".claude-plugin/ppt-deck-studio.json"
)

for path in "${required[@]}"; do
  if [[ ! -f "$root/$path" ]]; then
    echo "Missing: $path" >&2
    exit 1
  fi
done

if grep -R "TODO\\|\\[TODO\\]" \
  "$root/skills/ppt-deck-studio" \
  "$root/references/ppt-deck-studio" \
  "$root/docs/ppt-deck-studio-usage.md" >/dev/null; then
  echo "Found TODO residue" >&2
  exit 1
fi

echo "ppt-deck-studio files are ready"
