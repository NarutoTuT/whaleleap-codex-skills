#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$repo_root/skills"
target_dir="$HOME/.agents/skills"
dry_run=false

usage() {
  cat <<'EOF'
Usage: ./install.sh [--target PATH] [--dry-run]

Creates one symlink per Skill. Existing unrelated paths are never overwritten.
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target)
      [[ $# -ge 2 ]] || { echo "Missing value for --target" >&2; exit 2; }
      target_dir="$2"
      shift 2
      ;;
    --dry-run)
      dry_run=true
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

[[ -d "$source_dir" ]] || { echo "Missing Skills directory: $source_dir" >&2; exit 1; }

if [[ "$dry_run" == false ]]; then
  mkdir -p "$target_dir"
fi

installed=0
unchanged=0
conflicts=0

for skill_dir in "$source_dir"/*; do
  [[ -d "$skill_dir" && -f "$skill_dir/SKILL.md" ]] || continue

  skill_name="$(basename "$skill_dir")"
  destination="$target_dir/$skill_name"

  if [[ -L "$destination" ]]; then
    current_target="$(readlink "$destination")"
    if [[ "$current_target" == "$skill_dir" ]]; then
      printf 'UNCHANGED %s\n' "$skill_name"
      unchanged=$((unchanged + 1))
    else
      printf 'CONFLICT  %s -> %s\n' "$destination" "$current_target" >&2
      conflicts=$((conflicts + 1))
    fi
    continue
  fi

  if [[ -e "$destination" ]]; then
    printf 'CONFLICT  %s already exists and was not changed\n' "$destination" >&2
    conflicts=$((conflicts + 1))
    continue
  fi

  if [[ "$dry_run" == true ]]; then
    printf 'WOULD LINK %s -> %s\n' "$destination" "$skill_dir"
  else
    ln -s "$skill_dir" "$destination"
    printf 'LINKED    %s -> %s\n' "$destination" "$skill_dir"
  fi
  installed=$((installed + 1))
done

printf '\nSummary: linked=%d unchanged=%d conflicts=%d target=%s\n' \
  "$installed" "$unchanged" "$conflicts" "$target_dir"

if [[ "$conflicts" -gt 0 ]]; then
  echo "Resolve conflicts manually; the installer never overwrites them." >&2
  exit 1
fi

