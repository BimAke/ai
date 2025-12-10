#!/usr/bin/env bash
# Follow logs for specific unit.
# Usage: journal-follow-unit <unit_name>
# Example: journal-follow-unit ssh.service

if [ -z "$1" ]; then
  echo "Usage: journal-follow-unit <unit_name>"
  exit 1
fi

UNIT="$1"

journalctl -u "$UNIT" -f -o short-iso
