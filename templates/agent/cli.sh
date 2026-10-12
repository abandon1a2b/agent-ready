#!/bin/sh
# Template only: implement explicit commands before publishing.
set -eu

command_name=${1:-help}
case "$command_name" in
  help|--help|-h)
    printf '%s\n' 'Script CLI template: no business commands implemented.'
    ;;
  *)
    printf '%s\n' 'Unsupported command. Run with help.' >&2
    exit 2
    ;;
esac
