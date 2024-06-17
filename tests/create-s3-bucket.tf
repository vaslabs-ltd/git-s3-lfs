module "s3_bucket" {
  source         = "../s3_and_users_service"
  s3_bucket_name = "my-s3-bucket"
  environment    = "dev"
  project_name   = "my-project"
  new_users = {
    "irodotos" : {
      "iam" : "irodotos.gitlab"
      "keybase" : "irodotos7"
    },
    "vasilis" : {
      "iam" : "vasilis.gitlab"
      "keybase" : "vasilis7"
    }
  }
  tags = {
    key1 = "value1",
    key2 = "value2"
  }
}
