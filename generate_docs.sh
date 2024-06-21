#!/bin/bash

terraform fmt examples
terraform fmt 
terraform fmt tests

terraform-docs markdown . --output-file README.md