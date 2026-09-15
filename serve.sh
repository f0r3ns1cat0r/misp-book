#!/bin/bash
# Live-preview the book locally with hot reload.
# (Executable code cells render from the committed _freeze/ cache unless you
#  export MISP_URL / MISP_KEY / QUARTO_PYTHON — see README.md.)

if [ "$1" = "shutdown" ]; then
    pkill -f "quarto preview" 2>/dev/null
    echo "Goodbye!"
    exit 0
fi

quarto preview .
