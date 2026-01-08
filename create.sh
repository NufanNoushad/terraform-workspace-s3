#/bin/bash

# Shell script that automates workspace creation and resource deployment

set -e

echo "Initialising the Terraform Config"
terraform init

echo "✅ Creating and applying Dev Env"
terraform workspace new dev
terraform apply -auto-approve

echo "✅ Creating and applying Stage Env"
terraform workspace new stage
terraform apply -auto-approve

echo "✅ Creating and applying Prod Env"
terraform workspace new prod
terraform apply -auto-approve


