#!/bin/bash

show_help() {
  cat << EOF
Usage: $0

Formats project\'s code according to specifications
EOF
  exit 0
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ] || [ "$1" = "help" ]; then
  show_help
fi

swiftformat .
exit 0
