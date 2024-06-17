module "exsiting-s3_bucket" {
  source         = "../s3_and_users_service"
  environment    = "exsisting-dev"
  project_name   = "exsisting-bucket-project"
  s3_bucket_name = "exsitings3bucket"
  bucket_arn     = "arn:aws:s3:::exsitings3bucket"
  new_users = {
    "irodotos" : {
      "iam" : "exsisting-irodotos.gitlab"
      "keybase" : "existing-irodotos7"
    },
    "vasilis" : {
      "iam" : "exsisting-vasilis.gitlab"
      "keybase" : "exsisting-vasilis7"
    }
  }
  exsisting_users = tolist(["arn:exsisting-irodotos.gitlab", "arn:exsisting-vasilis.gitlab"])
  tags = {
    key1 = "value1",
    key2 = "value2"
  }
}