module "exsiting-s3_bucket" {
    source = "../s3_and_users_service"
    s3_bucket_name = "existing-s3-bucket"
    environment = "exsisting-dev"
    project_name = "exsisting-bucket-project"
    bucket_arn = "arn:aws:s3:::exsitings3bucket"
    user = {
        "irodotos": {
            "iam": "exsisting-irodotos.gitlab"
            "keybase": "existing-irodotos7"
        },
        "vasilis": {
            "iam": "exsisting-vasilis.gitlab"
            "keybase": "exsisting-vasilis7"
        }
    }
}