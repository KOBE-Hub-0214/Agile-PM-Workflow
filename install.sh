#!/usr/bin/env bash
# Agile PM Workflow — one-shot installer (macOS / Linux / Git Bash)
# Usage: ./install.sh [target]
#   target: a known IDE key (claude | kiro | trae | cursor | gemini) or an explicit skills dir path
#   default: claude  ->  ~/.claude/skills
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:-claude}"

case "$TARGET" in
  claude|kiro) SKILLS_DIR="$HOME/.claude/skills" ;;
  trae)        SKILLS_DIR="$HOME/.trae/skills" ;;
  cursor)      SKILLS_DIR="$HOME/.cursor/skills" ;;
  gemini)      SKILLS_DIR="$HOME/.gemini/skills" ;;
  *)           SKILLS_DIR="$TARGET" ;;   # treat as an explicit path
esac

IMPECCABLE_SUBDIRS=(impeccable arrange typeset colorize delight polish critique)

echo "==> Installing Agile PM Workflow into: $SKILLS_DIR"
mkdir -p "$SKILLS_DIR"

# 1) main workflow skill -> skills/agile-pm-workflow
echo "    - agile-pm-workflow"
rm -rf "$SKILLS_DIR/agile-pm-workflow"
mkdir -p "$SKILLS_DIR/agile-pm-workflow"
cp -RL "$SCRIPT_DIR/agile-pm-workflow_skill/." "$SKILLS_DIR/agile-pm-workflow/"

# 2) bundled Impeccable skills -> skills/<name>
for d in "${IMPECCABLE_SUBDIRS[@]}"; do
  echo "    - $d"
  rm -rf "$SKILLS_DIR/$d"
  cp -RL "$SCRIPT_DIR/impeccable_skill/$d" "$SKILLS_DIR/$d"
done

# 3) attribution files travel with the impeccable hub (Apache 2.0 requirement)
cp -f "$SCRIPT_DIR/impeccable_skill/LICENSE"   "$SKILLS_DIR/impeccable/LICENSE"
cp -f "$SCRIPT_DIR/impeccable_skill/NOTICE.md" "$SKILLS_DIR/impeccable/NOTICE.md"

echo ""
echo "==> Done. Installed 1 workflow skill + ${#IMPECCABLE_SUBDIRS[@]} Impeccable skills."
echo "    Restart your AI IDE, then type  /agile-pm-workflow  to start."
echo ""
echo "    Optional: UI/UX Pro Max (external, MIT) is NOT bundled."
echo "    Install separately for the full design-system stage:"
echo "      https://github.com/nextlevelbuilder/ui-ux-pro-max-skill"
