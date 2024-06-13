module "s3_bucket" {
    source = "./s3_and_users_service"
    s3_bucket_name = "my-s3-bucket"
    environment = "dev"
    project_name = "my-project"
    minimum_password_length = 8
    require_lowercase_characters = true
    require_numbers = true
    require_uppercase_characters = true
    require_symbols = true
    allow_users_to_change_password = true
    keybase_username = tolist(["test", "test2"])
    aws_username = tolist(["test", "test2"])
    bucket_arn = null
}
