module "example_s3_with_users_bucket" {
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
  exsisting_users = tolist(["arn:exsisting-irodotos.gitlab", "arn:exsisting-vasilis.gitlab"])
  tags = {
    key1 = "value1",
    key2 = "value2"
  }
}
