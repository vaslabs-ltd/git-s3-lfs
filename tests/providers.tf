provider "aws" {
  version                     = ">= 4.34.0"
  region                      = "eu-west-1"
  access_key                  = "foo"
  secret_key                  = "bar"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    iam = var.localstack_endpoint
    s3  = var.localstack_endpoint
  }

}