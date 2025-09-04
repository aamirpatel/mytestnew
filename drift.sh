#!/bin/bash

# Refresh the state
terraform refresh

# Run terraform plan with detailed exit code
terraform plan -detailed-exitcode

# Capture the exit code
exit_code=$?

# Check the exit code and handle accordingly
if [ $exit_code -eq 0 ]; then
    echo "No changes needed."
elif [ $exit_code -eq 2 ]; then
    echo "Changes detected. Proceeding with apply..."
    terraform apply -auto-approve
else
    echo "Error occurred during plan."
    exit 1
fi
