provider "aws" {
    version = ">= 4.34.0"
    region                      = "eu-west-1"
    access_key                  = "foo"
    secret_key                  = "bar"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true

    endpoints {
        dynamodb = var.localstack_endpoint
        kinesis  = var.localstack_endpoint
        lambda   = var.localstack_endpoint
        iam      = var.localstack_endpoint
        sns      = var.localstack_endpoint
        ec2      = var.localstack_endpoint
        s3       = var.localstack_endpoint
    }

}