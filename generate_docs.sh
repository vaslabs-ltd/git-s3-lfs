#!/bin/bash

generate_docs_in_readme() {
    module=$1
    cd $module
    terraform-docs markdown . --output-file README.md
    cd ..
}

terraform fmt examples
terraform fmt 
terraform fmt tests

generate_docs_in_readme 