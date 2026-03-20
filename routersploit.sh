#!/bin/bash

# Configuration
# Resolve symlink to find the actual directory where routersploit is installed
SCRIPT_DIR="$( cd "$( dirname "$(readlink -f "$0")" )" >/dev/null 2>&1 && pwd )"
ROUTERSPLOIT_DIR="$SCRIPT_DIR"

# Navigate to the routersploit directory so relative paths work correctly
cd "$ROUTERSPLOIT_DIR" || { echo "[!] Error: RouterSploit directory not found at $ROUTERSPLOIT_DIR"; exit 1; }

# Activate virtual environment
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
else
    echo "[!] Error: Virtual environment not found. Please create it in $ROUTERSPLOIT_DIR/venv"
    exit 1
fi

# Run RouterSploit with any arguments passed to the script
python rsf.py "$@"

# Deactivate the virtual environment (clean exit)
deactivate
