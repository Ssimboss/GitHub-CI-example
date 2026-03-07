#!/bin/bash

if [ "$1" = "-h" ] || [ "$1" = "--help" ] || [ "$1" = "help" ]; then
    echo "Usage: $0"
    echo "Checks if current branch state requires formatting."
    exit 0
fi

./format_code.sh
modified_files=$(git diff --name-only)
if [ -z "$modified_files" ]; then
    exit 0
else
    >&2 echo "[Error]: Format check failed next files need formatting"
    >&2 echo "$modified_files"
    >&2 echo "Possible solutions:"
    >&2 echo "1) Run \`./format_code.sh\` and commit the changes"
    >&2 echo "2) Update \`./format_code.sh\` behaviour"
    >&2 echo "3) Disable formatting for the problematic code"
    exit 1
fi
