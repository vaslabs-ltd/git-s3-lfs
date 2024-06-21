module "exsiting-s3_bucket" {
  source         = "../.."
  environment    = "exsisting-bucket-mix-users-dev"
  project_name   = "exsisting-bucket-mix-users-project"
  s3_bucket_name = "exsitingS3bucketmixUsers"
  bucket_arn     = "arn:aws:s3:::exsitingS3bucketMixUsers"
  new_users = {
    "irodotos" : {
      "iam" : "exsisting-bucket-new-user-irodotos"
      "keybase" : "irodotos7"
    },
    "vasilis" : {
      "iam" : "exsisting-bucket-new-user-vasilis"
      "keybase" : "vasilis7"
    }
  }
  exsisting_users = tolist(["exsisting-bucket-exsisting-user-irodotos", "exsisting-bucket-exsisting-user-vasilis"])
}