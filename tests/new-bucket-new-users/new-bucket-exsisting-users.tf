module "s3_bucket" {
  source         = "../.."
  s3_bucket_name = "my-s3-bucket"
  environment    = "dev"
  project_name   = "my-project"
  new_users = {
    "irodotos" : {
      "iam" : "new-bucket-new-user-irodotos"
      "keybase" : "irodotos7"
    },
    "vasilis" : {
      "iam" : "new-bucket-new-user-vasilis"
      "keybase" : "vasilis7"
    }
  }
}
