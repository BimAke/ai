#!/usr/bin/env bash
# Search for a pattern in systemd journal.
# Usage: journal-search <pattern>

if [ -z "$1" ]; then
  echo "Usage: journal-search <pattern>"
  exit 1
fi

PATTERN="$1"

journalctl -o short-iso -g "$PATTERN"
