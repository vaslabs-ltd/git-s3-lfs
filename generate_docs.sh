#!/bin/bash

generate_docs_in_readme() {
    module=$1
    cd $module
    terraform-docs markdown . --output-file README.md
    cd -
}

for module in $(ls -a s3_*); do
    terraform fmt
    generate_docs_in_readme $module
done

# terraform fmt sqs_to_sns
# terraform fmt s3_to_sqs
# terraform fmt tests


# generate_docs_in_readme sqs_to_sns
# generate_docs_in_readme s3_to_sqs