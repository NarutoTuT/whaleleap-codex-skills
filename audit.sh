#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
skills_dir="$repo_root/skills"
status=0
count=0
names_file="$(mktemp)"
trap 'rm -f "$names_file"' EXIT

[[ -d "$skills_dir" ]] || { echo "ERROR Missing Skills directory: $skills_dir" >&2; exit 1; }

for skill_dir in "$skills_dir"/*; do
  [[ -d "$skill_dir" ]] || continue
  count=$((count + 1))
  skill_md="$skill_dir/SKILL.md"
  folder_name="$(basename "$skill_dir")"

  if [[ ! -f "$skill_md" ]]; then
    echo "ERROR $folder_name has no SKILL.md"
    status=1
    continue
  fi

  skill_name="$(awk 'NR == 1 && $0 == "---" { frontmatter=1; next } frontmatter && $0 == "---" { exit } frontmatter && /^name:[[:space:]]*/ { sub(/^name:[[:space:]]*/, ""); gsub(/^["'\'' ]+|["'\'' ]+$/, ""); print; exit }' "$skill_md")"
  description="$(awk 'NR == 1 && $0 == "---" { frontmatter=1; next } frontmatter && $0 == "---" { exit } frontmatter && /^description:[[:space:]]*/ { sub(/^description:[[:space:]]*/, ""); print; exit }' "$skill_md")"

  if [[ -z "$skill_name" ]]; then
    echo "ERROR $folder_name is missing frontmatter name"
    status=1
  else
    printf '%s\n' "$skill_name" >> "$names_file"
    if [[ "$skill_name" != "$folder_name" ]]; then
      echo "ERROR $folder_name declares name: $skill_name"
      status=1
    fi
  fi

  if [[ -z "$description" ]]; then
    echo "ERROR $folder_name is missing frontmatter description"
    status=1
  fi
done

duplicates="$(sort "$names_file" | uniq -d)"
if [[ -n "$duplicates" ]]; then
  echo "ERROR Duplicate Skill names:"
  echo "$duplicates"
  status=1
fi

portability_hits="$(rg -n --hidden --glob '!*.pyc' --glob '!__pycache__/**' --glob '!**/data/**' '(/Users/[^/]+/|\.claude/skills)' "$skills_dir" || true)"
if [[ -n "$portability_hits" ]]; then
  echo "ERROR Non-portable path references found:"
  echo "$portability_hits"
  status=1
fi

if [[ "$status" -eq 0 ]]; then
  echo "PASS $count Skills passed structural and portability checks."
else
  echo "FAIL Audit found issues in $count Skills." >&2
fi

exit "$status"
