module "s3_bucket" {
  source         = "../.."
  s3_bucket_name = "my-s3-bucket"
  environment    = "dev"
  project_name   = "my-project"
  new_users = {
    "irodotos" : {
      "iam" : "new-bucket-new-users-irodotos"
      "keybase" : "irodotos7"
    },
    "vasilis" : {
      "iam" : "new-bucket-new-users-vasilis"
      "keybase" : "vasilis7"
    }
  }
  exsisting_users = tolist(["new-bucket-mix-users-irodotos", "new-bucket-mix-users-vasilis"])
}
