module "s3_bucket" {
    source = "../s3_and_users_service"
    s3_bucket_name = "existing-s3-bucket"
    environment = "dev"
    project_name = "my-project"
    bucket_arn = "arn:aws:s3:::exsitings3bucket"
    user = {
        "irodotos": {
            "iam": "irodotos.gitlab"
            "keybase": "irodotos7"
        },
        "vasilis": {
            "iam": "vasilis.gitlab"
            "keybase": "vasilis7"
        }
    }
}