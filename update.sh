#!/usr/bin/env sh

# Detect our OS
OS=$(uname -s)

# Mac-specific settings
if [[ $OS == 'Darwin' ]]; then

    echo "Running brew upgrade..."
    brew upgrade

    echo "Runnong brew update..."
    brew update
fi
