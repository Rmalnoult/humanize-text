#!/bin/bash
# Install claude-writing-rules globally for Claude Code
# Symlinks CLAUDE.md and /humanize command into ~/.claude/

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"
COMMANDS_DIR="$CLAUDE_DIR/commands"

# Create dirs if needed
mkdir -p "$COMMANDS_DIR"

# Install global CLAUDE.md
if [ -f "$CLAUDE_DIR/CLAUDE.md" ]; then
  # Append to existing CLAUDE.md if it exists
  echo ""
  echo "~/.claude/CLAUDE.md already exists."
  echo "Options:"
  echo "  1) Append writing rules to existing file"
  echo "  2) Replace with writing rules only"
  echo "  3) Skip (manual install)"
  read -p "Choice [1/2/3]: " choice
  case $choice in
    1)
      echo "" >> "$CLAUDE_DIR/CLAUDE.md"
      echo "<!-- writing-rules-start -->" >> "$CLAUDE_DIR/CLAUDE.md"
      cat "$SCRIPT_DIR/CLAUDE.md" >> "$CLAUDE_DIR/CLAUDE.md"
      echo "<!-- writing-rules-end -->" >> "$CLAUDE_DIR/CLAUDE.md"
      echo "Appended writing rules to ~/.claude/CLAUDE.md"
      ;;
    2)
      cp "$SCRIPT_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md"
      echo "Replaced ~/.claude/CLAUDE.md with writing rules"
      ;;
    3)
      echo "Skipped. Copy manually: cp $SCRIPT_DIR/CLAUDE.md $CLAUDE_DIR/CLAUDE.md"
      ;;
  esac
else
  cp "$SCRIPT_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md"
  echo "Installed ~/.claude/CLAUDE.md"
fi

# Install /humanize command
cp "$SCRIPT_DIR/commands/humanize.md" "$COMMANDS_DIR/humanize.md"
echo "Installed /humanize command to $COMMANDS_DIR/humanize.md"

echo ""
echo "Done. Writing rules are now active in all Claude Code sessions."
echo "Use /humanize <file> to manually review and fix existing text."
