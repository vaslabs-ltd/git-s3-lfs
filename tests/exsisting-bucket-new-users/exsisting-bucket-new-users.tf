module "exsiting-s3_bucket" {
  source         = "../.."
  environment    = "exsisting-bucket-new-users-dev"
  project_name   = "exsisting-bucket-new-users-project"
  s3_bucket_name = "exsitingS3bucketNewUsers"
  bucket_arn     = "arn:aws:s3:::exsitingS3bucketNewUsers"
  new_users = {
    "irodotos" : {
      "iam" : "exsisting-bucket-new-users-irodotos"
      "keybase" : "irodotos7"
    },
    "vasilis" : {
      "iam" : "exsisting-bucket-new-users-vasilis"
      "keybase" : "vasilis7"
    }
  }
}