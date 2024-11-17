#!/bin/bash

echo "Deploying CAP Engine Community Edition..."

# Check requirements
command -v git >/dev/null 2>&1 || { echo "Error: git is required but not installed." >&2; exit 1; }

# Update repository
git pull origin main

# Run setup steps
if [ -f "src/setup.sh" ]; then
    chmod +x src/setup.sh
    ./src/setup.sh
fi

echo "Deployment complete!"
