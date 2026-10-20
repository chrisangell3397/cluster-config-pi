#! /bin/bash

# Print header
echo -----------------------------------------------
echo 'Updating Cluster...'

# Get current directory and script location
CURRENT_DIR="$(pwd)"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
echo "Script directory: $SCRIPT_DIR"
echo "Current directory: $CURRENT_DIR"

# Force an update of the helm chart
helm upgrade tracker-testbed $SCRIPT_DIR/../tracker-testbed

# Print footer
echo Done

# End of script
