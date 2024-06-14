#!/bin/bash

generate_docs_in_readme() {
    module=$1
    cd $module
    terraform-docs markdown . --output-file ../README.md
    cd ..
}

for module in $(ls); do
    echo $module
    terraform fmt $module
done


generate_docs_in_readme s3_and_users_service