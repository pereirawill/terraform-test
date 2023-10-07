#!/bin/bash

# This script downloads the terraform boilerplate files for Azure Terraform

files=("main.tf" "outputs.tf" "providers.tf" "variables.tf")
repo_url="https://raw.githubusercontent.com/pereirawill/terraform-test/main/boilerplate"

for file in "${files[@]}"; do
  echo "Downloading: $file"
  curl -sS -O "$repo_url/$file"
done
