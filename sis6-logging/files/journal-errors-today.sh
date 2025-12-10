#!/usr/bin/env bash
# Show errors from journal for today.
# Usage: journal-errors-today

journalctl --since today -p err..emerg -o short-iso
