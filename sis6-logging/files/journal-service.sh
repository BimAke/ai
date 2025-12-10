#!/usr/bin/env bash
# Show logs for specific systemd unit.
# Usage: journal-by-unit <unit_name>
# Example: journal-by-unit ssh.service

if [ -z "$1" ]; then
  echo "Usage: journal-by-unit <unit_name>"
  exit 1
fi

UNIT="$1"

journalctl -u "$UNIT" -o short-iso
